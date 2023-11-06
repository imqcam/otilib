! ============================================================================= 
! 
!     OTISTAMOD: Module to support OTI numbers in Fortran.
! 
! This module enables Hypercomplex Automatic Differentiation in Fortran. In 
! particular. The modality of this implementation is a dense memory operation
! with a semi-sparse 
! 
! author:--:Mauricio Aristizabal, PhD
! date:----:2023-oct-25
! lastmod:-:2023-oct-25
! 
! ----------------------------------------------------------------------------- 
MODULE OTISTAMOD
  ! ===========================================================================
  USE master_parameters
  USE real_utils
  ! ===========================================================================
  IMPLICIT NONE
  ! ===========================================================================
  !    PARAMETER DEFINITIONS
  ! ---------------------------------------------------------------------------
  INTEGER, PARAMETER :: max_nimdir = 6 !> Maximum number of imaginary dirs.
  INTEGER, PARAMETER :: m_max  = 2     !> Maximum number of imaginary basis.
  INTEGER, PARAMETER :: n_max  = 3     !> Maximum truncation order.
  INTEGER, PARAMETER :: n_imdir_order(n_max,m_max) = [[1,2,3]]
  ! ***************************************************************************

  ! ===========================================================================
  ! Definition of the OTI number type. this number is static in memory.
  ! ** Do not modfy the size of the array alone. **  
  ! ---------------------------------------------------------------------------
  TYPE oti_t
   real(dp)   :: r               !> Real coefficient.
   real(dp)   :: im(max_imdir-1) !> Imaginary directions
   integer(2) :: act_ord         !> Actual order of the number.
   integer(2) :: trc_ord         !> Truncation number of the number.
   integer(4) :: num_m_active    !> Number of active im basis.
  END TYPE oti_t
  ! ===========================================================================

  ! ===========================================================================  
  !    FUNCTION AND OPERATOR OVERLOADING DEFINITIONS.
  ! ---------------------------------------------------------------------------
  ! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  INTERFACE OPERATOR(*)
  MODULE PROCEDURE oti_mul_oo_ss,oti_mul_ro_ss,oti_mul_or_ss,oti_mul_oo_vs,&
    oti_mul_ro_vs,oti_mul_or_vs,oti_mul_oo_ms,oti_mul_ro_ms,oti_mul_or_ms,&
    oti_mul_oo_sv,oti_mul_ro_sv,oti_mul_or_sv,oti_mul_oo_sm,oti_mul_ro_sm,&
    oti_mul_or_sm
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE OPERATOR(+)
  MODULE PROCEDURE oti_add_oo_ss,oti_add_ro_ss,oti_add_or_ss,oti_add_oo_vs,&
    oti_add_ro_vs,oti_add_or_vs,oti_add_oo_ms,oti_add_ro_ms,oti_add_or_ms,&
    oti_add_oo_sv,oti_add_ro_sv,oti_add_or_sv,oti_add_oo_sm,oti_add_ro_sm,&
    oti_add_or_sm
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE OPERATOR(-)
  MODULE PROCEDURE oti_neg,oti_sub_oo_ss,oti_sub_ro_ss,oti_sub_or_ss,&
    oti_sub_oo_vs,oti_sub_ro_vs,oti_sub_or_vs,oti_sub_oo_ms,oti_sub_ro_ms,&
    oti_sub_or_ms,oti_sub_oo_sv,oti_sub_ro_sv,oti_sub_or_sv,oti_sub_oo_sm,&
    oti_sub_ro_sm,oti_sub_or_sm
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE OPERATOR(/)
  MODULE PROCEDURE oti_division_oo,oti_division_or,oti_division_ro
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE ASSIGNMENT(=)
  MODULE PROCEDURE oti_assign_r
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE OPERATOR(**)
  MODULE PROCEDURE oti_pow_or,oti_pow_ro,oti_pow_oo
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE PPRINT
  MODULE PROCEDURE oti_pprint_s,oti_pprint_v,oti_pprint_m
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE TRANSPOSE
  MODULE PROCEDURE oti_transpose
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE MATMUL
  MODULE PROCEDURE oti_matmul_oti,r_matmul_oti,oti_matmul_r
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE DOT_PRODUCT
  MODULE PROCEDURE oti_dot_product_oti,r_dot_product_oti,oti_dot_product_r
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE UNFOLD
  MODULE PROCEDURE oti_to_cr_mat_s,oti_to_cr_mat_v,oti_to_cr_mat_m
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE TO_CR
  MODULE PROCEDURE oti_to_cr_mat_s,oti_to_cr_mat_v,oti_to_cr_mat_m
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE SIN
  MODULE PROCEDURE oti_sin
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE COS
  MODULE PROCEDURE oti_cos
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE TAN
  MODULE PROCEDURE oti_tan
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE ASIN
  MODULE PROCEDURE oti_asin
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE ACOS
  MODULE PROCEDURE oti_acos
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE ATAN
  MODULE PROCEDURE oti_atan
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE SINH
  MODULE PROCEDURE oti_sinh
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE COSH
  MODULE PROCEDURE oti_cosh
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE TANH
  MODULE PROCEDURE oti_tanh
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE SQRT
  MODULE PROCEDURE oti_sqrt
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE LOG
  MODULE PROCEDURE oti_log
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE EXP
  MODULE PROCEDURE oti_exp
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE GEM
  MODULE PROCEDURE oti_gem_ooo,oti_gem_roo,oti_gem_oro
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE FEVAL
  MODULE PROCEDURE oti_feval
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE F2EVAL
  MODULE PROCEDURE oti_f2eval
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE REAL
  MODULE PROCEDURE oti_real
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE DET2X2
  MODULE PROCEDURE oti_det2x2
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE DET3X3
  MODULE PROCEDURE oti_det3x3
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE DET4X4
  MODULE PROCEDURE oti_det4x4
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE INV2X2
  MODULE PROCEDURE oti_inv2x2
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE INV3X3
  MODULE PROCEDURE oti_inv3x3
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE INV4X4
  MODULE PROCEDURE oti_inv4x4
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE GETIM
  MODULE PROCEDURE oti_getim_s,oti_getim_v,oti_getim_m
  END INTERFACE
  ! --------------------------------------------------------------------------
  INTERFACE SETIM
  MODULE PROCEDURE oti_setim_s,oti_setim_v,oti_setim_m
  END INTERFACE
  ! --------------------------------------------------------------------------
CONTAINS
  
   ELEMENTAL SUBROUTINE oti_assign_r(res,rhs)
      
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: rhs 
      TYPE(oti), INTENT(OUT) :: res 

      ! assign like function 'rhs'
      ! real
      res%r = rhs

      ! Set all imaginary directions to zero.
      res%im = 0.0_dp
      res%

   END SUBROUTINE oti_assign_r

   ELEMENTAL FUNCTION oti_neg(LHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS 
      TYPE(oti) :: RES 

      ! Negation like function '-LHS'
      ! Real
      RES%R = -LHS%R
      ! Order 1
      RES%E1 = -LHS%E1
      RES%E2 = -LHS%E2
      ! Order 2
      RES%E11 = -LHS%E11
      RES%E12 = -LHS%E12
      RES%E22 = -LHS%E22

   END FUNCTION oti_neg

   ELEMENTAL FUNCTION oti_add_oo_ss(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS
      TYPE(oti), INTENT(IN) :: RHS
      TYPE(oti) :: RES 

      ! Addition like function 'LHS + RHS'
      !  Real
      RES%R = LHS%R + RHS%R

      ! Order 1
      RES%E1 = LHS%E1 + RHS%E1
      RES%E2 = LHS%E2 + RHS%E2

      ! Order 2
      RES%E11 = LHS%E11 + RHS%E11
      RES%E12 = LHS%E12 + RHS%E12
      RES%E22 = LHS%E22 + RHS%E22

   END FUNCTION oti_ADD_OO_SS

   ELEMENTAL FUNCTION oti_ADD_RO_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(oti), INTENT(IN) :: RHS
      TYPE(oti) :: RES 

      ! Addition like function 'LHS + RHS'
      ! Real
      RES%R = LHS + RHS%R

      ! Order 1
      RES%E1 =  + RHS%E1
      RES%E2 =  + RHS%E2

      ! Order 2
      RES%E11 =  + RHS%E11
      RES%E12 =  + RHS%E12
      RES%E22 =  + RHS%E22

   END FUNCTION oti_ADD_RO_SS

   ELEMENTAL FUNCTION oti_ADD_OR_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS
      TYPE(oti) :: RES 

      ! Addition like function 'LHS + RHS'
      ! Real
      RES%R = LHS%R + RHS

      ! Order 1
      RES%E1 = LHS%E1
      RES%E2 = LHS%E2

      ! Order 2
      RES%E11 = LHS%E11
      RES%E12 = LHS%E12
      RES%E22 = LHS%E22

   END FUNCTION oti_ADD_OR_SS

   ELEMENTAL FUNCTION oti_SUB_OO_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS
      TYPE(oti), INTENT(IN) :: RHS
      TYPE(oti) :: RES 

      ! Addition like function 'LHS - RHS'
      !  Real
      RES%R = LHS%R - RHS%R

      ! Order 1
      RES%E1 = LHS%E1 - RHS%E1
      RES%E2 = LHS%E2 - RHS%E2

      ! Order 2
      RES%E11 = LHS%E11 - RHS%E11
      RES%E12 = LHS%E12 - RHS%E12
      RES%E22 = LHS%E22 - RHS%E22

   END FUNCTION oti_SUB_OO_SS

   ELEMENTAL FUNCTION oti_SUB_RO_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(oti), INTENT(IN) :: RHS
      TYPE(oti) :: RES 

      ! Addition like function 'LHS - RHS'
      ! Real
      RES%R = LHS - RHS%R

      ! Order 1
      RES%E1 =  - RHS%E1
      RES%E2 =  - RHS%E2

      ! Order 2
      RES%E11 =  - RHS%E11
      RES%E12 =  - RHS%E12
      RES%E22 =  - RHS%E22

   END FUNCTION oti_SUB_RO_SS

   ELEMENTAL FUNCTION oti_SUB_OR_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS
      TYPE(oti) :: RES 

      ! Addition like function 'LHS - RHS'
      ! Real
      RES%R = LHS%R - RHS

      ! Order 1
      RES%E1 = LHS%E1
      RES%E2 = LHS%E2

      ! Order 2
      RES%E11 = LHS%E11
      RES%E12 = LHS%E12
      RES%E22 = LHS%E22

   END FUNCTION oti_SUB_OR_SS

   ELEMENTAL FUNCTION oti_MUL_OO_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS
      TYPE(oti), INTENT(IN) :: RHS
      TYPE(oti) :: RES 

      !  Multiplication like function 'LHS*RHS'
      ! Order 2
      RES%E11 = LHS%R*RHS%E11 + LHS%E11*RHS%R + LHS%E1*RHS%E1
      RES%E12 = LHS%R*RHS%E12 + LHS%E12*RHS%R +  &
             LHS%E1*RHS%E2 + LHS%E2*RHS%E1
      RES%E22 = LHS%R*RHS%E22 + LHS%E22*RHS%R + LHS%E2*RHS%E2
      ! Order 1
      RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
      RES%E2 = LHS%R*RHS%E2 + LHS%E2*RHS%R
      ! Order 0
      RES%R = LHS%R*RHS%R

   END FUNCTION oti_MUL_OO_SS

   ELEMENTAL FUNCTION oti_MUL_RO_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(oti), INTENT(IN) :: RHS
      TYPE(oti) :: RES 

      ! Multiplication like function 'LHS*RHS'
      !  Real
      RES%R = LHS*RHS%R

      ! Order 1
      RES%E1 = LHS*RHS%E1
      RES%E2 = LHS*RHS%E2

      ! Order 2
      RES%E11 = LHS*RHS%E11
      RES%E12 = LHS*RHS%E12
      RES%E22 = LHS*RHS%E22

   END FUNCTION oti_MUL_RO_SS

   ELEMENTAL FUNCTION oti_MUL_OR_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS
      TYPE(oti) :: RES 

      ! Multiplication like function 'LHS*RHS'
      !  Real
      RES%R = LHS%R*RHS

      ! Order 1
      RES%E1 = LHS%E1*RHS
      RES%E2 = LHS%E2*RHS

      ! Order 2
      RES%E11 = LHS%E11*RHS
      RES%E12 = LHS%E12*RHS
      RES%E22 = LHS%E22*RHS

   END FUNCTION oti_MUL_OR_SS

   FUNCTION oti_ADD_OO_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS(:)
      TYPE(oti), INTENT(IN) :: RHS
      TYPE(oti) :: RES(SIZE(LHS,1)) 

      ! Addition like function 'LHS + RHS'
      !  Real
      RES%R = LHS%R + RHS%R

      ! Order 1
      RES%E1 = LHS%E1 + RHS%E1
      RES%E2 = LHS%E2 + RHS%E2

      ! Order 2
      RES%E11 = LHS%E11 + RHS%E11
      RES%E12 = LHS%E12 + RHS%E12
      RES%E22 = LHS%E22 + RHS%E22

   END FUNCTION oti_ADD_OO_VS

   FUNCTION oti_ADD_RO_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:)
      TYPE(oti), INTENT(IN) :: RHS
      TYPE(oti) :: RES(SIZE(LHS,1)) 

      ! Addition like function 'LHS + RHS'
      ! Real
      RES%R = LHS + RHS%R

      ! Order 1
      RES%E1 =  + RHS%E1
      RES%E2 =  + RHS%E2

      ! Order 2
      RES%E11 =  + RHS%E11
      RES%E12 =  + RHS%E12
      RES%E22 =  + RHS%E22

   END FUNCTION oti_ADD_RO_VS

   FUNCTION oti_ADD_OR_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS(:)
      REAL(DP), INTENT(IN) :: RHS
      TYPE(oti) :: RES(SIZE(LHS,1)) 

      ! Addition like function 'LHS + RHS'
      ! Real
      RES%R = LHS%R + RHS

      ! Order 1
      RES%E1 = LHS%E1
      RES%E2 = LHS%E2

      ! Order 2
      RES%E11 = LHS%E11
      RES%E12 = LHS%E12
      RES%E22 = LHS%E22

   END FUNCTION oti_ADD_OR_VS

   FUNCTION oti_SUB_OO_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS(:)
      TYPE(oti), INTENT(IN) :: RHS
      TYPE(oti) :: RES(SIZE(LHS,1)) 

      ! Addition like function 'LHS - RHS'
      !  Real
      RES%R = LHS%R - RHS%R

      ! Order 1
      RES%E1 = LHS%E1 - RHS%E1
      RES%E2 = LHS%E2 - RHS%E2

      ! Order 2
      RES%E11 = LHS%E11 - RHS%E11
      RES%E12 = LHS%E12 - RHS%E12
      RES%E22 = LHS%E22 - RHS%E22

   END FUNCTION oti_SUB_OO_VS

   FUNCTION oti_SUB_RO_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:)
      TYPE(oti), INTENT(IN) :: RHS
      TYPE(oti) :: RES(SIZE(LHS,1)) 

      ! Addition like function 'LHS - RHS'
      ! Real
      RES%R = LHS - RHS%R

      ! Order 1
      RES%E1 =  - RHS%E1
      RES%E2 =  - RHS%E2

      ! Order 2
      RES%E11 =  - RHS%E11
      RES%E12 =  - RHS%E12
      RES%E22 =  - RHS%E22

   END FUNCTION oti_SUB_RO_VS

   FUNCTION oti_SUB_OR_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS(:)
      REAL(DP), INTENT(IN) :: RHS
      TYPE(oti) :: RES(SIZE(LHS,1)) 

      ! Addition like function 'LHS - RHS'
      ! Real
      RES%R = LHS%R - RHS

      ! Order 1
      RES%E1 = LHS%E1
      RES%E2 = LHS%E2

      ! Order 2
      RES%E11 = LHS%E11
      RES%E12 = LHS%E12
      RES%E22 = LHS%E22

   END FUNCTION oti_SUB_OR_VS

   FUNCTION oti_MUL_OO_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS(:)
      TYPE(oti), INTENT(IN) :: RHS
      TYPE(oti) :: RES(SIZE(LHS,1)) 

      !  Multiplication like function 'LHS*RHS'
      ! Order 2
      RES%E11 = LHS%R*RHS%E11 + LHS%E11*RHS%R + LHS%E1*RHS%E1
      RES%E12 = LHS%R*RHS%E12 + LHS%E12*RHS%R +  &
             LHS%E1*RHS%E2 + LHS%E2*RHS%E1
      RES%E22 = LHS%R*RHS%E22 + LHS%E22*RHS%R + LHS%E2*RHS%E2
      ! Order 1
      RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
      RES%E2 = LHS%R*RHS%E2 + LHS%E2*RHS%R
      ! Order 0
      RES%R = LHS%R*RHS%R

   END FUNCTION oti_MUL_OO_VS

   FUNCTION oti_MUL_RO_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:)
      TYPE(oti), INTENT(IN) :: RHS
      TYPE(oti) :: RES(SIZE(LHS,1)) 

      ! Multiplication like function 'LHS*RHS'
      !  Real
      RES%R = LHS*RHS%R

      ! Order 1
      RES%E1 = LHS*RHS%E1
      RES%E2 = LHS*RHS%E2

      ! Order 2
      RES%E11 = LHS*RHS%E11
      RES%E12 = LHS*RHS%E12
      RES%E22 = LHS*RHS%E22

   END FUNCTION oti_MUL_RO_VS

   FUNCTION oti_MUL_OR_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS(:)
      REAL(DP), INTENT(IN) :: RHS
      TYPE(oti) :: RES(SIZE(LHS,1)) 

      ! Multiplication like function 'LHS*RHS'
      !  Real
      RES%R = LHS%R*RHS

      ! Order 1
      RES%E1 = LHS%E1*RHS
      RES%E2 = LHS%E2*RHS

      ! Order 2
      RES%E11 = LHS%E11*RHS
      RES%E12 = LHS%E12*RHS
      RES%E22 = LHS%E22*RHS

   END FUNCTION oti_MUL_OR_VS

   FUNCTION oti_ADD_OO_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS(:,:)
      TYPE(oti), INTENT(IN) :: RHS
      TYPE(oti) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

      ! Addition like function 'LHS + RHS'
      !  Real
      RES%R = LHS%R + RHS%R

      ! Order 1
      RES%E1 = LHS%E1 + RHS%E1
      RES%E2 = LHS%E2 + RHS%E2

      ! Order 2
      RES%E11 = LHS%E11 + RHS%E11
      RES%E12 = LHS%E12 + RHS%E12
      RES%E22 = LHS%E22 + RHS%E22

   END FUNCTION oti_ADD_OO_MS

   FUNCTION oti_ADD_RO_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:,:)
      TYPE(oti), INTENT(IN) :: RHS
      TYPE(oti) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

      ! Addition like function 'LHS + RHS'
      ! Real
      RES%R = LHS + RHS%R

      ! Order 1
      RES%E1 =  + RHS%E1
      RES%E2 =  + RHS%E2

      ! Order 2
      RES%E11 =  + RHS%E11
      RES%E12 =  + RHS%E12
      RES%E22 =  + RHS%E22

   END FUNCTION oti_ADD_RO_MS

   FUNCTION oti_ADD_OR_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS(:,:)
      REAL(DP), INTENT(IN) :: RHS
      TYPE(oti) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

      ! Addition like function 'LHS + RHS'
      ! Real
      RES%R = LHS%R + RHS

      ! Order 1
      RES%E1 = LHS%E1
      RES%E2 = LHS%E2

      ! Order 2
      RES%E11 = LHS%E11
      RES%E12 = LHS%E12
      RES%E22 = LHS%E22

   END FUNCTION oti_ADD_OR_MS

   FUNCTION oti_SUB_OO_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS(:,:)
      TYPE(oti), INTENT(IN) :: RHS
      TYPE(oti) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

      ! Addition like function 'LHS - RHS'
      !  Real
      RES%R = LHS%R - RHS%R

      ! Order 1
      RES%E1 = LHS%E1 - RHS%E1
      RES%E2 = LHS%E2 - RHS%E2

      ! Order 2
      RES%E11 = LHS%E11 - RHS%E11
      RES%E12 = LHS%E12 - RHS%E12
      RES%E22 = LHS%E22 - RHS%E22

   END FUNCTION oti_SUB_OO_MS

   FUNCTION oti_SUB_RO_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:,:)
      TYPE(oti), INTENT(IN) :: RHS
      TYPE(oti) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

      ! Addition like function 'LHS - RHS'
      ! Real
      RES%R = LHS - RHS%R

      ! Order 1
      RES%E1 =  - RHS%E1
      RES%E2 =  - RHS%E2

      ! Order 2
      RES%E11 =  - RHS%E11
      RES%E12 =  - RHS%E12
      RES%E22 =  - RHS%E22

   END FUNCTION oti_SUB_RO_MS

   FUNCTION oti_SUB_OR_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS(:,:)
      REAL(DP), INTENT(IN) :: RHS
      TYPE(oti) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

      ! Addition like function 'LHS - RHS'
      ! Real
      RES%R = LHS%R - RHS

      ! Order 1
      RES%E1 = LHS%E1
      RES%E2 = LHS%E2

      ! Order 2
      RES%E11 = LHS%E11
      RES%E12 = LHS%E12
      RES%E22 = LHS%E22

   END FUNCTION oti_SUB_OR_MS

   FUNCTION oti_MUL_OO_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS(:,:)
      TYPE(oti), INTENT(IN) :: RHS
      TYPE(oti) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

      !  Multiplication like function 'LHS*RHS'
      ! Order 2
      RES%E11 = LHS%R*RHS%E11 + LHS%E11*RHS%R + LHS%E1*RHS%E1
      RES%E12 = LHS%R*RHS%E12 + LHS%E12*RHS%R +  &
             LHS%E1*RHS%E2 + LHS%E2*RHS%E1
      RES%E22 = LHS%R*RHS%E22 + LHS%E22*RHS%R + LHS%E2*RHS%E2
      ! Order 1
      RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
      RES%E2 = LHS%R*RHS%E2 + LHS%E2*RHS%R
      ! Order 0
      RES%R = LHS%R*RHS%R

   END FUNCTION oti_MUL_OO_MS

   FUNCTION oti_MUL_RO_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:,:)
      TYPE(oti), INTENT(IN) :: RHS
      TYPE(oti) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

      ! Multiplication like function 'LHS*RHS'
      !  Real
      RES%R = LHS*RHS%R

      ! Order 1
      RES%E1 = LHS*RHS%E1
      RES%E2 = LHS*RHS%E2

      ! Order 2
      RES%E11 = LHS*RHS%E11
      RES%E12 = LHS*RHS%E12
      RES%E22 = LHS*RHS%E22

   END FUNCTION oti_MUL_RO_MS

   FUNCTION oti_MUL_OR_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS(:,:)
      REAL(DP), INTENT(IN) :: RHS
      TYPE(oti) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

      ! Multiplication like function 'LHS*RHS'
      !  Real
      RES%R = LHS%R*RHS

      ! Order 1
      RES%E1 = LHS%E1*RHS
      RES%E2 = LHS%E2*RHS

      ! Order 2
      RES%E11 = LHS%E11*RHS
      RES%E12 = LHS%E12*RHS
      RES%E22 = LHS%E22*RHS

   END FUNCTION oti_MUL_OR_MS

   FUNCTION oti_ADD_OO_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS
      TYPE(oti), INTENT(IN) :: RHS(:)
      TYPE(oti) :: RES(SIZE(RHS,1)) 

      ! Addition like function 'LHS + RHS'
      !  Real
      RES%R = LHS%R + RHS%R

      ! Order 1
      RES%E1 = LHS%E1 + RHS%E1
      RES%E2 = LHS%E2 + RHS%E2

      ! Order 2
      RES%E11 = LHS%E11 + RHS%E11
      RES%E12 = LHS%E12 + RHS%E12
      RES%E22 = LHS%E22 + RHS%E22

   END FUNCTION oti_ADD_OO_SV

   FUNCTION oti_ADD_RO_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(oti), INTENT(IN) :: RHS(:)
      TYPE(oti) :: RES(SIZE(RHS,1)) 

      ! Addition like function 'LHS + RHS'
      ! Real
      RES%R = LHS + RHS%R

      ! Order 1
      RES%E1 =  + RHS%E1
      RES%E2 =  + RHS%E2

      ! Order 2
      RES%E11 =  + RHS%E11
      RES%E12 =  + RHS%E12
      RES%E22 =  + RHS%E22

   END FUNCTION oti_ADD_RO_SV

   FUNCTION oti_ADD_OR_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS(:)
      TYPE(oti) :: RES(SIZE(RHS,1)) 

      ! Addition like function 'LHS + RHS'
      ! Real
      RES%R = LHS%R + RHS

      ! Order 1
      RES%E1 = LHS%E1
      RES%E2 = LHS%E2

      ! Order 2
      RES%E11 = LHS%E11
      RES%E12 = LHS%E12
      RES%E22 = LHS%E22

   END FUNCTION oti_ADD_OR_SV

   FUNCTION oti_SUB_OO_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS
      TYPE(oti), INTENT(IN) :: RHS(:)
      TYPE(oti) :: RES(SIZE(RHS,1)) 

      ! Addition like function 'LHS - RHS'
      !  Real
      RES%R = LHS%R - RHS%R

      ! Order 1
      RES%E1 = LHS%E1 - RHS%E1
      RES%E2 = LHS%E2 - RHS%E2

      ! Order 2
      RES%E11 = LHS%E11 - RHS%E11
      RES%E12 = LHS%E12 - RHS%E12
      RES%E22 = LHS%E22 - RHS%E22

   END FUNCTION oti_SUB_OO_SV

   FUNCTION oti_SUB_RO_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(oti), INTENT(IN) :: RHS(:)
      TYPE(oti) :: RES(SIZE(RHS,1)) 

      ! Addition like function 'LHS - RHS'
      ! Real
      RES%R = LHS - RHS%R

      ! Order 1
      RES%E1 =  - RHS%E1
      RES%E2 =  - RHS%E2

      ! Order 2
      RES%E11 =  - RHS%E11
      RES%E12 =  - RHS%E12
      RES%E22 =  - RHS%E22

   END FUNCTION oti_SUB_RO_SV

   FUNCTION oti_SUB_OR_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS(:)
      TYPE(oti) :: RES(SIZE(RHS,1)) 

      ! Addition like function 'LHS - RHS'
      ! Real
      RES%R = LHS%R - RHS

      ! Order 1
      RES%E1 = LHS%E1
      RES%E2 = LHS%E2

      ! Order 2
      RES%E11 = LHS%E11
      RES%E12 = LHS%E12
      RES%E22 = LHS%E22

   END FUNCTION oti_SUB_OR_SV

   FUNCTION oti_MUL_OO_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS
      TYPE(oti), INTENT(IN) :: RHS(:)
      TYPE(oti) :: RES(SIZE(RHS,1)) 

      !  Multiplication like function 'LHS*RHS'
      ! Order 2
      RES%E11 = LHS%R*RHS%E11 + LHS%E11*RHS%R + LHS%E1*RHS%E1
      RES%E12 = LHS%R*RHS%E12 + LHS%E12*RHS%R +  &
             LHS%E1*RHS%E2 + LHS%E2*RHS%E1
      RES%E22 = LHS%R*RHS%E22 + LHS%E22*RHS%R + LHS%E2*RHS%E2
      ! Order 1
      RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
      RES%E2 = LHS%R*RHS%E2 + LHS%E2*RHS%R
      ! Order 0
      RES%R = LHS%R*RHS%R

   END FUNCTION oti_MUL_OO_SV

   FUNCTION oti_MUL_RO_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(oti), INTENT(IN) :: RHS(:)
      TYPE(oti) :: RES(SIZE(RHS,1)) 

      ! Multiplication like function 'LHS*RHS'
      !  Real
      RES%R = LHS*RHS%R

      ! Order 1
      RES%E1 = LHS*RHS%E1
      RES%E2 = LHS*RHS%E2

      ! Order 2
      RES%E11 = LHS*RHS%E11
      RES%E12 = LHS*RHS%E12
      RES%E22 = LHS*RHS%E22

   END FUNCTION oti_MUL_RO_SV

   FUNCTION oti_MUL_OR_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS(:)
      TYPE(oti) :: RES(SIZE(RHS,1)) 

      ! Multiplication like function 'LHS*RHS'
      !  Real
      RES%R = LHS%R*RHS

      ! Order 1
      RES%E1 = LHS%E1*RHS
      RES%E2 = LHS%E2*RHS

      ! Order 2
      RES%E11 = LHS%E11*RHS
      RES%E12 = LHS%E12*RHS
      RES%E22 = LHS%E22*RHS

   END FUNCTION oti_MUL_OR_SV

   FUNCTION oti_ADD_OO_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS
      TYPE(oti), INTENT(IN) :: RHS(:,:)
      TYPE(oti) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

      ! Addition like function 'LHS + RHS'
      !  Real
      RES%R = LHS%R + RHS%R

      ! Order 1
      RES%E1 = LHS%E1 + RHS%E1
      RES%E2 = LHS%E2 + RHS%E2

      ! Order 2
      RES%E11 = LHS%E11 + RHS%E11
      RES%E12 = LHS%E12 + RHS%E12
      RES%E22 = LHS%E22 + RHS%E22

   END FUNCTION oti_ADD_OO_SM

   FUNCTION oti_ADD_RO_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(oti), INTENT(IN) :: RHS(:,:)
      TYPE(oti) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

      ! Addition like function 'LHS + RHS'
      ! Real
      RES%R = LHS + RHS%R

      ! Order 1
      RES%E1 =  + RHS%E1
      RES%E2 =  + RHS%E2

      ! Order 2
      RES%E11 =  + RHS%E11
      RES%E12 =  + RHS%E12
      RES%E22 =  + RHS%E22

   END FUNCTION oti_ADD_RO_SM

   FUNCTION oti_ADD_OR_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS(:,:)
      TYPE(oti) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

      ! Addition like function 'LHS + RHS'
      ! Real
      RES%R = LHS%R + RHS

      ! Order 1
      RES%E1 = LHS%E1
      RES%E2 = LHS%E2

      ! Order 2
      RES%E11 = LHS%E11
      RES%E12 = LHS%E12
      RES%E22 = LHS%E22

   END FUNCTION oti_ADD_OR_SM

   FUNCTION oti_SUB_OO_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS
      TYPE(oti), INTENT(IN) :: RHS(:,:)
      TYPE(oti) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

      ! Addition like function 'LHS - RHS'
      !  Real
      RES%R = LHS%R - RHS%R

      ! Order 1
      RES%E1 = LHS%E1 - RHS%E1
      RES%E2 = LHS%E2 - RHS%E2

      ! Order 2
      RES%E11 = LHS%E11 - RHS%E11
      RES%E12 = LHS%E12 - RHS%E12
      RES%E22 = LHS%E22 - RHS%E22

   END FUNCTION oti_SUB_OO_SM

   FUNCTION oti_SUB_RO_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(oti), INTENT(IN) :: RHS(:,:)
      TYPE(oti) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

      ! Addition like function 'LHS - RHS'
      ! Real
      RES%R = LHS - RHS%R

      ! Order 1
      RES%E1 =  - RHS%E1
      RES%E2 =  - RHS%E2

      ! Order 2
      RES%E11 =  - RHS%E11
      RES%E12 =  - RHS%E12
      RES%E22 =  - RHS%E22

   END FUNCTION oti_SUB_RO_SM

   FUNCTION oti_SUB_OR_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS(:,:)
      TYPE(oti) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

      ! Addition like function 'LHS - RHS'
      ! Real
      RES%R = LHS%R - RHS

      ! Order 1
      RES%E1 = LHS%E1
      RES%E2 = LHS%E2

      ! Order 2
      RES%E11 = LHS%E11
      RES%E12 = LHS%E12
      RES%E22 = LHS%E22

   END FUNCTION oti_SUB_OR_SM

   FUNCTION oti_MUL_OO_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS
      TYPE(oti), INTENT(IN) :: RHS(:,:)
      TYPE(oti) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

      !  Multiplication like function 'LHS*RHS'
      ! Order 2
      RES%E11 = LHS%R*RHS%E11 + LHS%E11*RHS%R + LHS%E1*RHS%E1
      RES%E12 = LHS%R*RHS%E12 + LHS%E12*RHS%R +  &
             LHS%E1*RHS%E2 + LHS%E2*RHS%E1
      RES%E22 = LHS%R*RHS%E22 + LHS%E22*RHS%R + LHS%E2*RHS%E2
      ! Order 1
      RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
      RES%E2 = LHS%R*RHS%E2 + LHS%E2*RHS%R
      ! Order 0
      RES%R = LHS%R*RHS%R

   END FUNCTION oti_MUL_OO_SM

   FUNCTION oti_MUL_RO_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(oti), INTENT(IN) :: RHS(:,:)
      TYPE(oti) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

      ! Multiplication like function 'LHS*RHS'
      !  Real
      RES%R = LHS*RHS%R

      ! Order 1
      RES%E1 = LHS*RHS%E1
      RES%E2 = LHS*RHS%E2

      ! Order 2
      RES%E11 = LHS*RHS%E11
      RES%E12 = LHS*RHS%E12
      RES%E22 = LHS*RHS%E22

   END FUNCTION oti_MUL_RO_SM

   FUNCTION oti_MUL_OR_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS(:,:)
      TYPE(oti) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

      ! Multiplication like function 'LHS*RHS'
      !  Real
      RES%R = LHS%R*RHS

      ! Order 1
      RES%E1 = LHS%E1*RHS
      RES%E2 = LHS%E2*RHS

      ! Order 2
      RES%E11 = LHS%E11*RHS
      RES%E12 = LHS%E12*RHS
      RES%E22 = LHS%E22*RHS

   END FUNCTION oti_MUL_OR_SM

ELEMENTAL    FUNCTION oti_GEM_OOO(A,B,C)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: A 
      TYPE(oti), INTENT(IN) :: B 
      TYPE(oti), INTENT(IN) :: C 
      TYPE(oti) :: RES 

      !  General multiplication like function 'A*B + C'

      ! Order 0
      RES%R = C%R + A%R*B%R

      ! Order 1
      RES%E1 = C%E1 + A%R*B%E1 + A%E1*B%R
      RES%E2 = C%E2 + A%R*B%E2 + A%E2*B%R

      ! Order 2
      RES%E11 = C%E11 + A%R*B%E11 + A%E11*B%R + A%E1*B%E1
      RES%E12 = C%E12 + A%R*B%E12 + A%E12*B%R + A%E1*B%E2 &
              + A%E2*B%E1
      RES%E22 = C%E22 + A%R*B%E22 + A%E22*B%R + A%E2*B%E2

   END FUNCTION oti_GEM_OOO

ELEMENTAL    FUNCTION oti_GEM_ROO(A,B,C)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: A 
      TYPE(oti), INTENT(IN) :: B 
      TYPE(oti), INTENT(IN) :: C 
      TYPE(oti) :: RES 

      !  General multiplication like function 'A*B + C'
      ! Order 2
      RES%E11 = C%E11 + A*B%E11
      RES%E12 = C%E12 + A*B%E12
      RES%E22 = C%E22 + A*B%E22
      ! Order 1
      RES%E1 = C%E1 + A*B%E1
      RES%E2 = C%E2 + A*B%E2
      ! Order 0
      RES%R = C%R + A*B%R

   END FUNCTION oti_GEM_ROO

ELEMENTAL    FUNCTION oti_GEM_ORO(A,B,C)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: A 
      REAL(DP), INTENT(IN) :: B 
      TYPE(oti), INTENT(IN) :: C 
      TYPE(oti) :: RES 

      !  General multiplication like function 'A*B + C'

      ! Order 0
      RES%R = C%R + A%R*B

      ! Order 1
      RES%E1 = C%E1 + A%E1*B
      RES%E2 = C%E2 + A%E2*B

      ! Order 2
      RES%E11 = C%E11 + A%E11*B
      RES%E12 = C%E12 + A%E12*B
      RES%E22 = C%E22 + A%E22*B

   END FUNCTION oti_GEM_ORO

   FUNCTION oti_MATMUL_oti(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS(:,:)
      TYPE(oti), INTENT(IN) :: RHS(:,:)
      TYPE(oti) :: RES(SIZE(LHS,1),SIZE(RHS,2))

      !  Multiplication like function 'MATMUL(LHS,RHS)'
      ! Order 2
      RES%E11 = MATMUL(LHS%R,RHS%E11) + MATMUL(LHS%E11,RHS%R) + MATMUL(LHS%E1,RHS%E1)
      RES%E12 = MATMUL(LHS%R,RHS%E12) + MATMUL(LHS%E12,RHS%R) +  &
             MATMUL(LHS%E1,RHS%E2) + MATMUL(LHS%E2,RHS%E1)
      RES%E22 = MATMUL(LHS%R,RHS%E22) + MATMUL(LHS%E22,RHS%R) + MATMUL(LHS%E2,RHS%E2)
      ! Order 1
      RES%E1 = MATMUL(LHS%R,RHS%E1) + MATMUL(LHS%E1,RHS%R)
      RES%E2 = MATMUL(LHS%R,RHS%E2) + MATMUL(LHS%E2,RHS%R)
      ! Order 0
      RES%R = MATMUL(LHS%R,RHS%R)

   END FUNCTION oti_MATMUL_oti

   FUNCTION R_MATMUL_oti(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:,:)
      TYPE(oti), INTENT(IN) :: RHS(:,:)
      TYPE(oti) :: RES(SIZE(LHS,1),SIZE(RHS,2))

      ! Multiplication like function 'MATMUL(LHS,RHS)'
      !  Real
      RES%R = MATMUL(LHS,RHS%R)

      ! Order 1
      RES%E1 = MATMUL(LHS,RHS%E1)
      RES%E2 = MATMUL(LHS,RHS%E2)

      ! Order 2
      RES%E11 = MATMUL(LHS,RHS%E11)
      RES%E12 = MATMUL(LHS,RHS%E12)
      RES%E22 = MATMUL(LHS,RHS%E22)

   END FUNCTION R_MATMUL_oti

   FUNCTION oti_MATMUL_R(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS(:,:)
      REAL(DP), INTENT(IN) :: RHS(:,:)
      TYPE(oti) :: RES(SIZE(LHS,1),SIZE(RHS,2))

      ! Multiplication like function 'MATMUL(LHS,RHS)'
      !  Real
      RES%R = MATMUL(LHS%R,RHS)

      ! Order 1
      RES%E1 = MATMUL(LHS%E1,RHS)
      RES%E2 = MATMUL(LHS%E2,RHS)

      ! Order 2
      RES%E11 = MATMUL(LHS%E11,RHS)
      RES%E12 = MATMUL(LHS%E12,RHS)
      RES%E22 = MATMUL(LHS%E22,RHS)

   END FUNCTION oti_MATMUL_R

   FUNCTION oti_DOT_PRODUCT_oti(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS(:)
      TYPE(oti), INTENT(IN) :: RHS(SIZE(LHS))
      TYPE(oti) :: RES

      !  Multiplication like function 'DOT_PRODUCT(LHS,RHS)'
      ! Order 2
      RES%E11 = DOT_PRODUCT(LHS%R,RHS%E11) + DOT_PRODUCT(LHS%E11,RHS%R) + DOT_PRODUCT(LHS%E1,RHS%E1)
      RES%E12 = DOT_PRODUCT(LHS%R,RHS%E12) + DOT_PRODUCT(LHS%E12,RHS%R) +  &
             DOT_PRODUCT(LHS%E1,RHS%E2) + DOT_PRODUCT(LHS%E2,RHS%E1)
      RES%E22 = DOT_PRODUCT(LHS%R,RHS%E22) + DOT_PRODUCT(LHS%E22,RHS%R) + DOT_PRODUCT(LHS%E2,RHS%E2)
      ! Order 1
      RES%E1 = DOT_PRODUCT(LHS%R,RHS%E1) + DOT_PRODUCT(LHS%E1,RHS%R)
      RES%E2 = DOT_PRODUCT(LHS%R,RHS%E2) + DOT_PRODUCT(LHS%E2,RHS%R)
      ! Order 0
      RES%R = DOT_PRODUCT(LHS%R,RHS%R)

   END FUNCTION oti_DOT_PRODUCT_oti

   FUNCTION R_DOT_PRODUCT_oti(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:)
      TYPE(oti), INTENT(IN) :: RHS(SIZE(LHS))
      TYPE(oti) :: RES

      ! Multiplication like function 'DOT_PRODUCT(LHS,RHS)'
      !  Real
      RES%R = DOT_PRODUCT(LHS,RHS%R)

      ! Order 1
      RES%E1 = DOT_PRODUCT(LHS,RHS%E1)
      RES%E2 = DOT_PRODUCT(LHS,RHS%E2)

      ! Order 2
      RES%E11 = DOT_PRODUCT(LHS,RHS%E11)
      RES%E12 = DOT_PRODUCT(LHS,RHS%E12)
      RES%E22 = DOT_PRODUCT(LHS,RHS%E22)

   END FUNCTION R_DOT_PRODUCT_oti

   FUNCTION oti_DOT_PRODUCT_R(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS(:)
      REAL(DP), INTENT(IN) :: RHS(SIZE(LHS))
      TYPE(oti) :: RES

      ! Multiplication like function 'DOT_PRODUCT(LHS,RHS)'
      !  Real
      RES%R = DOT_PRODUCT(LHS%R,RHS)

      ! Order 1
      RES%E1 = DOT_PRODUCT(LHS%E1,RHS)
      RES%E2 = DOT_PRODUCT(LHS%E2,RHS)

      ! Order 2
      RES%E11 = DOT_PRODUCT(LHS%E11,RHS)
      RES%E12 = DOT_PRODUCT(LHS%E12,RHS)
      RES%E22 = DOT_PRODUCT(LHS%E22,RHS)

   END FUNCTION oti_DOT_PRODUCT_R

   FUNCTION oti_TRANSPOSE(LHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: LHS(:,:)
      TYPE(oti) :: RES (SIZE(LHS,2),SIZE(LHS,1))

      ! Negation like function 'TRANSPOSE(LHS)'
      ! Real
      RES%R = TRANSPOSE(LHS%R)
      ! Order 1
      RES%E1 = TRANSPOSE(LHS%E1)
      RES%E2 = TRANSPOSE(LHS%E2)
      ! Order 2
      RES%E11 = TRANSPOSE(LHS%E11)
      RES%E12 = TRANSPOSE(LHS%E12)
      RES%E22 = TRANSPOSE(LHS%E22)

   END FUNCTION oti_TRANSPOSE

FUNCTION oti_TO_CR_MAT_S(VAL) RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: VAL
      REAL(DP) :: RES(NUM_IM_DIR,NUM_IM_DIR) 
      INTEGER :: NCOLS=1, NROWS=1


      ! R x R -> R (1, 1)
      RES(1+NROWS*0:NROWS*1,1+NCOLS*0:NCOLS*1) = VAL%R
      ! R x E1 -> E1 (2, 2)
      RES(1+NROWS*1:NROWS*2,1+NCOLS*1:NCOLS*2) = VAL%R
      ! E1 x R -> E1 (2, 1)
      RES(1+NROWS*1:NROWS*2,1+NCOLS*0:NCOLS*1) = VAL%E1
      ! R x E2 -> E2 (3, 3)
      RES(1+NROWS*2:NROWS*3,1+NCOLS*2:NCOLS*3) = VAL%R
      ! E2 x R -> E2 (3, 1)
      RES(1+NROWS*2:NROWS*3,1+NCOLS*0:NCOLS*1) = VAL%E2
      ! R x E11 -> E11 (4, 4)
      RES(1+NROWS*3:NROWS*4,1+NCOLS*3:NCOLS*4) = VAL%R
      ! E11 x R -> E11 (4, 1)
      RES(1+NROWS*3:NROWS*4,1+NCOLS*0:NCOLS*1) = VAL%E11
      ! E1 x E1 -> E11 (4, 2)
      RES(1+NROWS*3:NROWS*4,1+NCOLS*1:NCOLS*2) = VAL%E1
      ! R x E12 -> E12 (5, 5)
      RES(1+NROWS*4:NROWS*5,1+NCOLS*4:NCOLS*5) = VAL%R
      ! E12 x R -> E12 (5, 1)
      RES(1+NROWS*4:NROWS*5,1+NCOLS*0:NCOLS*1) = VAL%E12
      ! E1 x E2 -> E12 (5, 3)
      RES(1+NROWS*4:NROWS*5,1+NCOLS*2:NCOLS*3) = VAL%E1
      ! E2 x E1 -> E12 (5, 2)
      RES(1+NROWS*4:NROWS*5,1+NCOLS*1:NCOLS*2) = VAL%E2
      ! R x E22 -> E22 (6, 6)
      RES(1+NROWS*5:NROWS*6,1+NCOLS*5:NCOLS*6) = VAL%R
      ! E22 x R -> E22 (6, 1)
      RES(1+NROWS*5:NROWS*6,1+NCOLS*0:NCOLS*1) = VAL%E22
      ! E2 x E2 -> E22 (6, 3)
      RES(1+NROWS*5:NROWS*6,1+NCOLS*2:NCOLS*3) = VAL%E2
   END FUNCTION oti_TO_CR_MAT_S

FUNCTION oti_TO_CR_MAT_V(VAL) RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: VAL(:)
      REAL(DP) :: RES(NUM_IM_DIR*SIZE(VAL,1),NUM_IM_DIR) 
      INTEGER :: NCOLS=1, NROWS=1

      NROWS = SIZE(VAL,1)

      ! R x R -> R (1, 1)
      RES(1+NROWS*0:NROWS*1,1) = VAL%R
      ! R x E1 -> E1 (2, 2)
      RES(1+NROWS*1:NROWS*2,2) = VAL%R
      ! E1 x R -> E1 (2, 1)
      RES(1+NROWS*1:NROWS*2,1) = VAL%E1
      ! R x E2 -> E2 (3, 3)
      RES(1+NROWS*2:NROWS*3,3) = VAL%R
      ! E2 x R -> E2 (3, 1)
      RES(1+NROWS*2:NROWS*3,1) = VAL%E2
      ! R x E11 -> E11 (4, 4)
      RES(1+NROWS*3:NROWS*4,4) = VAL%R
      ! E11 x R -> E11 (4, 1)
      RES(1+NROWS*3:NROWS*4,1) = VAL%E11
      ! E1 x E1 -> E11 (4, 2)
      RES(1+NROWS*3:NROWS*4,2) = VAL%E1
      ! R x E12 -> E12 (5, 5)
      RES(1+NROWS*4:NROWS*5,5) = VAL%R
      ! E12 x R -> E12 (5, 1)
      RES(1+NROWS*4:NROWS*5,1) = VAL%E12
      ! E1 x E2 -> E12 (5, 3)
      RES(1+NROWS*4:NROWS*5,3) = VAL%E1
      ! E2 x E1 -> E12 (5, 2)
      RES(1+NROWS*4:NROWS*5,2) = VAL%E2
      ! R x E22 -> E22 (6, 6)
      RES(1+NROWS*5:NROWS*6,6) = VAL%R
      ! E22 x R -> E22 (6, 1)
      RES(1+NROWS*5:NROWS*6,1) = VAL%E22
      ! E2 x E2 -> E22 (6, 3)
      RES(1+NROWS*5:NROWS*6,3) = VAL%E2
   END FUNCTION oti_TO_CR_MAT_V

FUNCTION oti_TO_CR_MAT_M(VAL) RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: VAL(:,:)
      REAL(DP) :: RES(NUM_IM_DIR*SIZE(VAL,1),NUM_IM_DIR*SIZE(VAL,2)) 
      INTEGER :: NCOLS=1, NROWS=1

      NCOLS = SIZE(VAL,1)
      NROWS = SIZE(VAL,2)

      ! R x R -> R (1, 1)
      RES(1+NROWS*0:NROWS*1,1+NCOLS*0:NCOLS*1) = VAL%R
      ! R x E1 -> E1 (2, 2)
      RES(1+NROWS*1:NROWS*2,1+NCOLS*1:NCOLS*2) = VAL%R
      ! E1 x R -> E1 (2, 1)
      RES(1+NROWS*1:NROWS*2,1+NCOLS*0:NCOLS*1) = VAL%E1
      ! R x E2 -> E2 (3, 3)
      RES(1+NROWS*2:NROWS*3,1+NCOLS*2:NCOLS*3) = VAL%R
      ! E2 x R -> E2 (3, 1)
      RES(1+NROWS*2:NROWS*3,1+NCOLS*0:NCOLS*1) = VAL%E2
      ! R x E11 -> E11 (4, 4)
      RES(1+NROWS*3:NROWS*4,1+NCOLS*3:NCOLS*4) = VAL%R
      ! E11 x R -> E11 (4, 1)
      RES(1+NROWS*3:NROWS*4,1+NCOLS*0:NCOLS*1) = VAL%E11
      ! E1 x E1 -> E11 (4, 2)
      RES(1+NROWS*3:NROWS*4,1+NCOLS*1:NCOLS*2) = VAL%E1
      ! R x E12 -> E12 (5, 5)
      RES(1+NROWS*4:NROWS*5,1+NCOLS*4:NCOLS*5) = VAL%R
      ! E12 x R -> E12 (5, 1)
      RES(1+NROWS*4:NROWS*5,1+NCOLS*0:NCOLS*1) = VAL%E12
      ! E1 x E2 -> E12 (5, 3)
      RES(1+NROWS*4:NROWS*5,1+NCOLS*2:NCOLS*3) = VAL%E1
      ! E2 x E1 -> E12 (5, 2)
      RES(1+NROWS*4:NROWS*5,1+NCOLS*1:NCOLS*2) = VAL%E2
      ! R x E22 -> E22 (6, 6)
      RES(1+NROWS*5:NROWS*6,1+NCOLS*5:NCOLS*6) = VAL%R
      ! E22 x R -> E22 (6, 1)
      RES(1+NROWS*5:NROWS*6,1+NCOLS*0:NCOLS*1) = VAL%E22
      ! E2 x E2 -> E22 (6, 3)
      RES(1+NROWS*5:NROWS*6,1+NCOLS*2:NCOLS*3) = VAL%E2
   END FUNCTION oti_TO_CR_MAT_M

      SUBROUTINE oti_SETIM_S(VAL,IDX,RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(INOUT) :: VAL
      REAL(DP),INTENT(IN) :: RES 
      INTEGER, INTENT(IN) :: IDX

      SELECT CASE(IDX)
      ! Order 0
      CASE(0)
         VAL%R=RES

      ! Order 1
      CASE(1)
         VAL%E1=RES
      CASE(2)
         VAL%E2=RES

      ! Order 2
      CASE(3)
         VAL%E11=RES
      CASE(4)
         VAL%E12=RES
      CASE(5)
         VAL%E22=RES

      END SELECT
   END SUBROUTINE oti_SETIM_S

      SUBROUTINE oti_SETIM_V(VAL,IDX,RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(INOUT) :: VAL(:)
      REAL(DP),INTENT(IN) :: RES(SIZE(VAL)) 
      INTEGER, INTENT(IN) :: IDX

      SELECT CASE(IDX)
      ! Order 0
      CASE(0)
         VAL%R=RES

      ! Order 1
      CASE(1)
         VAL%E1=RES
      CASE(2)
         VAL%E2=RES

      ! Order 2
      CASE(3)
         VAL%E11=RES
      CASE(4)
         VAL%E12=RES
      CASE(5)
         VAL%E22=RES

      END SELECT
   END SUBROUTINE oti_SETIM_V

      SUBROUTINE oti_SETIM_M(VAL,IDX,RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(INOUT) :: VAL(:,:)
      REAL(DP),INTENT(IN) :: RES(SIZE(VAL,1),SIZE(VAL,2)) 
      INTEGER, INTENT(IN) :: IDX

      SELECT CASE(IDX)
      ! Order 0
      CASE(0)
         VAL%R=RES

      ! Order 1
      CASE(1)
         VAL%E1=RES
      CASE(2)
         VAL%E2=RES

      ! Order 2
      CASE(3)
         VAL%E11=RES
      CASE(4)
         VAL%E12=RES
      CASE(5)
         VAL%E22=RES

      END SELECT
   END SUBROUTINE oti_SETIM_M

FUNCTION oti_GETIM_S(VAL,IDX) RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: VAL
      REAL(DP) :: RES 
      INTEGER, INTENT(IN) :: IDX

      SELECT CASE(IDX)
      ! Order 0
      CASE(0)
         RES=VAL%R

      ! Order 1
      CASE(1)
         RES=VAL%E1
      CASE(2)
         RES=VAL%E2

      ! Order 2
      CASE(3)
         RES=VAL%E11
      CASE(4)
         RES=VAL%E12
      CASE(5)
         RES=VAL%E22

      END SELECT
   END FUNCTION oti_GETIM_S

FUNCTION oti_GETIM_V(VAL,IDX) RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: VAL(:)
      REAL(DP) :: RES(SIZE(VAL)) 
      INTEGER, INTENT(IN) :: IDX

      SELECT CASE(IDX)
      ! Order 0
      CASE(0)
         RES=VAL%R

      ! Order 1
      CASE(1)
         RES=VAL%E1
      CASE(2)
         RES=VAL%E2

      ! Order 2
      CASE(3)
         RES=VAL%E11
      CASE(4)
         RES=VAL%E12
      CASE(5)
         RES=VAL%E22

      END SELECT
   END FUNCTION oti_GETIM_V

FUNCTION oti_GETIM_M(VAL,IDX) RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: VAL(:,:)
      REAL(DP) :: RES(SIZE(VAL,1),SIZE(VAL,2)) 
      INTEGER, INTENT(IN) :: IDX

      SELECT CASE(IDX)
      ! Order 0
      CASE(0)
         RES=VAL%R

      ! Order 1
      CASE(1)
         RES=VAL%E1
      CASE(2)
         RES=VAL%E2

      ! Order 2
      CASE(3)
         RES=VAL%E11
      CASE(4)
         RES=VAL%E12
      CASE(5)
         RES=VAL%E22

      END SELECT
   END FUNCTION oti_GETIM_M

   SUBROUTINE oti_PPRINT_S(VAR,FMT,UNIT)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: VAR
      CHARACTER(len=*), INTENT(IN), OPTIONAL :: fmt
      INTEGER, INTENT(IN), OPTIONAL :: unit
      CHARACTER(len=:),ALLOCATABLE :: output_format
      INTEGER :: unt

      IF ( PRESENT(unit) ) THEN
         unt = unit
      ELSE
         unt = 6
      END IF

      IF ( PRESENT(fmt) ) THEN
         output_format = '('//trim(fmt)//')'
      ELSE
         output_format = '(F10.4)'
      END IF

      ! Pretty print function.
      !  Real
      CALL PPRINT(VAR%R,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') ' '

      !  Order 1
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'E1 * '
      CALL PPRINT(VAR%E1,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'E2 * '
      CALL PPRINT(VAR%E2,unit=unt,fmt=output_format)

      !  Order 2
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'E11 * '
      CALL PPRINT(VAR%E11,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'E12 * '
      CALL PPRINT(VAR%E12,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'E22 * '
      CALL PPRINT(VAR%E22,unit=unt,fmt=output_format)


   END SUBROUTINE oti_PPRINT_S

   SUBROUTINE oti_PPRINT_V(VAR,FMT,UNIT)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: VAR(:)
      CHARACTER(len=*), INTENT(IN), OPTIONAL :: fmt
      INTEGER, INTENT(IN), OPTIONAL :: unit
      CHARACTER(len=:),ALLOCATABLE :: output_format
      INTEGER :: unt

      IF ( PRESENT(unit) ) THEN
         unt = unit
      ELSE
         unt = 6
      END IF

      IF ( PRESENT(fmt) ) THEN
         output_format = '('//trim(fmt)//')'
      ELSE
         output_format = '(F10.4)'
      END IF

      ! Pretty print function.
      !  Real
      CALL PPRINT(VAR%R,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') ' '

      !  Order 1
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E1 * '
      CALL PPRINT(VAR%E1,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E2 * '
      CALL PPRINT(VAR%E2,unit=unt,fmt=output_format)

      !  Order 2
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E11 * '
      CALL PPRINT(VAR%E11,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E12 * '
      CALL PPRINT(VAR%E12,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E22 * '
      CALL PPRINT(VAR%E22,unit=unt,fmt=output_format)


   END SUBROUTINE oti_PPRINT_V

   SUBROUTINE oti_PPRINT_M(VAR,FMT,UNIT)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: VAR(:,:)
      CHARACTER(len=*), INTENT(IN), OPTIONAL :: fmt
      INTEGER, INTENT(IN), OPTIONAL :: unit
      CHARACTER(len=:),ALLOCATABLE :: output_format
      INTEGER :: unt

      IF ( PRESENT(unit) ) THEN
         unt = unit
      ELSE
         unt = 6
      END IF

      IF ( PRESENT(fmt) ) THEN
         output_format = '('//trim(fmt)//')'
      ELSE
         output_format = '(F10.4)'
      END IF

      ! Pretty print function.
      !  Real
      CALL PPRINT(VAR%R,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') ' '

      !  Order 1
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E1 * '
      CALL PPRINT(VAR%E1,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E2 * '
      CALL PPRINT(VAR%E2,unit=unt,fmt=output_format)

      !  Order 2
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E11 * '
      CALL PPRINT(VAR%E11,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E12 * '
      CALL PPRINT(VAR%E12,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E22 * '
      CALL PPRINT(VAR%E22,unit=unt,fmt=output_format)


   END SUBROUTINE oti_PPRINT_M

   ELEMENTAL FUNCTION oti_FEVAL(X,DER0,DER1,DER2)&
      RESULT(RES)
      IMPLICIT NONE
      !  Definitions
      REAL(DP) :: FACTOR, COEF
      TYPE(oti), INTENT(IN)  :: X
      REAL(DP), INTENT(IN)  :: DER0,DER1,DER2
      TYPE(oti) :: RES
      TYPE(oti) :: DX, DX_P

      FACTOR = 1.0_DP
      COEF   = 0.0_DP
      DX     = X
      DX_P   = X

      !  Set real part of deltas zero.
      DX%R = 0.0_DP
      DX_P%R = 0.0_DP

      ! Sets real part
      RES = DER0

      ! Sets order 1
      FACTOR = FACTOR * 1
      COEF = DER1 / FACTOR
      ! RES = RES COEF * DX_P
      ! Order 2
      RES%E11 = RES%E11+COEF*DX_P%E11
      RES%E12 = RES%E12+COEF*DX_P%E12
      RES%E22 = RES%E22+COEF*DX_P%E22
      ! Order 1
      RES%E1 = RES%E1+COEF*DX_P%E1
      RES%E2 = RES%E2+COEF*DX_P%E2
      ! DX_P = DX_P * DX
      ! Order 2
      DX_P%E11 = DX_P%E1*DX%E1
      DX_P%E12 = DX_P%E1*DX%E2+DX_P%E2*DX%E1
      DX_P%E22 = DX_P%E2*DX%E2
      
      ! Sets order 2
      FACTOR = FACTOR * 2
      COEF = DER2 / FACTOR
      ! RES = RES COEF * DX_P
      ! Order 2
      RES%E11 = RES%E11+COEF*DX_P%E11
      RES%E12 = RES%E12+COEF*DX_P%E12
      RES%E22 = RES%E22+COEF*DX_P%E22
      
   END FUNCTION oti_FEVAL


  ! SUBROUTINE oti_PPRINT_M_R(X, FMT)
  !     IMPLICIT NONE
  !     REAL(DP),INTENT(IN) :: X(:,:)
  !     INTEGER :: I, J
  !     CHARACTER(*),INTENT(IN),OPTIONAL :: FMT
  !     CHARACTER(:),ALLOCATABLE :: out_fmt
      
  !     IF (PRESENT(fmt)) THEN
  !       out_fmt = fmt
  !     ELSE
  !       out_fmt = 'F10.4'
  !     END IF
      
  !     write(*,'(A)',advance='no') "["
      
  !     DO I=1,SIZE(X,1)
        
  !       IF (I == 1) THEN
  !         write(*,'(A)',advance='no') "["
  !       ELSE
  !         write(*,'(A)',advance='no') " ["
  !       END IF 

  !       DO J=1,SIZE(X,2)
          
  !         write(*,'('//trim(out_fmt)//')',advance='no') X(I,J)

  !       END DO
        
  !       write(*,'(A)') "]"
      
  !     END DO

  !     write(*,'(A)') "]"

  ! END SUBROUTINE oti_PPRINT_M_R

  ! SUBROUTINE oti_PPRINT_V_R(X, FMT)
  !     IMPLICIT NONE
  !     REAL(DP),INTENT(IN) :: X(:)
  !     INTEGER :: I
  !     CHARACTER(*),INTENT(IN),OPTIONAL :: FMT
  !     CHARACTER(:),ALLOCATABLE :: out_fmt
      
  !     IF (PRESENT(fmt)) THEN
  !       out_fmt = fmt
  !     ELSE
  !       out_fmt = 'F10.4'
  !     END IF
      
  !     write(*,'(A)',advance='no') "["
      
  !     DO I=1,SIZE(X,1)

  !       write(*,'('//trim(out_fmt)//')',advance='no') X(I)

  !     END DO

  !     write(*,'(A)') "]"

  ! END SUBROUTINE oti_PPRINT_V_R

  ! !***************************************************************************************************! 
  ! !> @brief 2 x 2  matrix inversion.
  ! !!
  ! !! Taken from https://fortranwiki.org/fortran/show/Matrix+inversion
  ! !!
  ! !! @param[in] A: Matrix to be printed.
  ! !! @param[out] B: inverse of A.
  ! !!
  ! !***************************************************************************************************!
  ! PURE FUNCTION Rmatinv2x2(A,det) RESULT(B)

  !   IMPLICIT NONE

  !   REAL(dp), INTENT(IN) :: A(2,2)   !! Matrix
  !   REAL(dp), INTENT(IN), OPTIONAL :: det
  !   REAL(dp)             :: B(2,2)   !! Inverse matrix
  !   REAL(dp)             :: detinv

  !   IF ( PRESENT(det) ) THEN
  !     detinv = 1.0d0 / det
  !   ELSE
  !     ! Calculate the inverse determinant of the matrix
  !     detinv = 1.0d0 / det2x2(A)
  !   END IF

  !   ! Calculate the inverse of the matrix
  !   B(1,1) =  detinv * A(2,2)
  !   B(2,1) = -detinv * A(2,1)
  !   B(1,2) = -detinv * A(1,2)
  !   B(2,2) =  detinv * A(1,1)
  ! END FUNCTION
  ! !===================================================================================================! 
  
  ! !***************************************************************************************************! 
  ! !> @brief 3 x 3  matrix inversion.
  ! !!
  ! !! Taken from https://fortranwiki.org/fortran/show/Matrix+inversion
  ! !!
  ! !! @param[in]  A: Matrix to be printed.
  ! !! @param[out] B: inverse of A.
  ! !!
  ! !***************************************************************************************************!
  ! PURE FUNCTION Rmatinv3x3(A,det) RESULT(B)
      
  !     IMPLICIT NONE

  !     REAL(dp), INTENT(IN) :: A(3,3)   !! Matrix
  !     REAL(dp), INTENT(IN), OPTIONAL :: det
  !     REAL(dp)             :: B(3,3)   !! Inverse matrix
  !     REAL(dp)             :: detinv

  !     IF ( PRESENT(det) ) THEN
  !        detinv = 1.0d0/det
  !     ELSE
  !        ! Calculate the inverse determinant of the matrix
  !        detinv = 1.0d0/det3x3(A)
  !     END IF 

  !     ! Calculate the inverse of the matrix
  !     B(1,1) = + detinv * (A(2,2)*A(3,3) - A(2,3)*A(3,2))
  !     B(2,1) = - detinv * (A(2,1)*A(3,3) - A(2,3)*A(3,1))
  !     B(3,1) = + detinv * (A(2,1)*A(3,2) - A(2,2)*A(3,1))
  !     B(1,2) = - detinv * (A(1,2)*A(3,3) - A(1,3)*A(3,2))
  !     B(2,2) = + detinv * (A(1,1)*A(3,3) - A(1,3)*A(3,1))
  !     B(3,2) = - detinv * (A(1,1)*A(3,2) - A(1,2)*A(3,1))
  !     B(1,3) = + detinv * (A(1,2)*A(2,3) - A(1,3)*A(2,2))
  !     B(2,3) = - detinv * (A(1,1)*A(2,3) - A(1,3)*A(2,1))
  !     B(3,3) = + detinv * (A(1,1)*A(2,2) - A(1,2)*A(2,1))

  !  END FUNCTION
  !  !===================================================================================================! 

  !  !***************************************************************************************************! 
  !  !> @brief 4 x 4  matrix inversion.
  !  !!
  !  !! Taken from https://fortranwiki.org/fortran/show/Matrix+inversion
  !  !!
  !  !! @param[in]  A: Matrix to be printed.
  !  !! @param[in]  det: (optional) Determinant of A.
  !  !! @param[out] B: inverse of A.
  !  !!
  !  !***************************************************************************************************!
  !  PURE FUNCTION Rmatinv4x4(A,det) RESULT(B)
      
  !     IMPLICIT NONE

  !     REAL(dp), INTENT(IN) :: A(4,4)   !! Matrix
  !     REAL(dp), INTENT(IN), OPTIONAL :: det
  !     REAL(dp)             :: B(4,4)   !! Inverse matrix
  !     REAL(dp)             :: di  !! Determinant inverse

  !     ! Calculate the inverse determinant of the matrix
  !     IF ( PRESENT(det) ) THEN
  !        di = 1.0d0/det
  !     ELSE
  !        di = 1.0d0/det4x4(A)
  !     END IF 
      
  !     ! Calculate the inverse of the matrix
  !     B(1,1) = di*(A(2,2)*(A(3,3)*A(4,4)-A(3,4)*A(4,3))+A(2,3)*(A(3,4)*A(4,2)-A(3,2)*A(4,4))+A(2,4)*(A(3,2)*A(4,3)-A(3,3)*A(4,2)))
  !     B(2,1) = di*(A(2,1)*(A(3,4)*A(4,3)-A(3,3)*A(4,4))+A(2,3)*(A(3,1)*A(4,4)-A(3,4)*A(4,1))+A(2,4)*(A(3,3)*A(4,1)-A(3,1)*A(4,3)))
  !     B(3,1) = di*(A(2,1)*(A(3,2)*A(4,4)-A(3,4)*A(4,2))+A(2,2)*(A(3,4)*A(4,1)-A(3,1)*A(4,4))+A(2,4)*(A(3,1)*A(4,2)-A(3,2)*A(4,1)))
  !     B(4,1) = di*(A(2,1)*(A(3,3)*A(4,2)-A(3,2)*A(4,3))+A(2,2)*(A(3,1)*A(4,3)-A(3,3)*A(4,1))+A(2,3)*(A(3,2)*A(4,1)-A(3,1)*A(4,2)))
  !     B(1,2) = di*(A(1,2)*(A(3,4)*A(4,3)-A(3,3)*A(4,4))+A(1,3)*(A(3,2)*A(4,4)-A(3,4)*A(4,2))+A(1,4)*(A(3,3)*A(4,2)-A(3,2)*A(4,3)))
  !     B(2,2) = di*(A(1,1)*(A(3,3)*A(4,4)-A(3,4)*A(4,3))+A(1,3)*(A(3,4)*A(4,1)-A(3,1)*A(4,4))+A(1,4)*(A(3,1)*A(4,3)-A(3,3)*A(4,1)))
  !     B(3,2) = di*(A(1,1)*(A(3,4)*A(4,2)-A(3,2)*A(4,4))+A(1,2)*(A(3,1)*A(4,4)-A(3,4)*A(4,1))+A(1,4)*(A(3,2)*A(4,1)-A(3,1)*A(4,2)))
  !     B(4,2) = di*(A(1,1)*(A(3,2)*A(4,3)-A(3,3)*A(4,2))+A(1,2)*(A(3,3)*A(4,1)-A(3,1)*A(4,3))+A(1,3)*(A(3,1)*A(4,2)-A(3,2)*A(4,1)))
  !     B(1,3) = di*(A(1,2)*(A(2,3)*A(4,4)-A(2,4)*A(4,3))+A(1,3)*(A(2,4)*A(4,2)-A(2,2)*A(4,4))+A(1,4)*(A(2,2)*A(4,3)-A(2,3)*A(4,2)))
  !     B(2,3) = di*(A(1,1)*(A(2,4)*A(4,3)-A(2,3)*A(4,4))+A(1,3)*(A(2,1)*A(4,4)-A(2,4)*A(4,1))+A(1,4)*(A(2,3)*A(4,1)-A(2,1)*A(4,3)))
  !     B(3,3) = di*(A(1,1)*(A(2,2)*A(4,4)-A(2,4)*A(4,2))+A(1,2)*(A(2,4)*A(4,1)-A(2,1)*A(4,4))+A(1,4)*(A(2,1)*A(4,2)-A(2,2)*A(4,1)))
  !     B(4,3) = di*(A(1,1)*(A(2,3)*A(4,2)-A(2,2)*A(4,3))+A(1,2)*(A(2,1)*A(4,3)-A(2,3)*A(4,1))+A(1,3)*(A(2,2)*A(4,1)-A(2,1)*A(4,2)))
  !     B(1,4) = di*(A(1,2)*(A(2,4)*A(3,3)-A(2,3)*A(3,4))+A(1,3)*(A(2,2)*A(3,4)-A(2,4)*A(3,2))+A(1,4)*(A(2,3)*A(3,2)-A(2,2)*A(3,3)))
  !     B(2,4) = di*(A(1,1)*(A(2,3)*A(3,4)-A(2,4)*A(3,3))+A(1,3)*(A(2,4)*A(3,1)-A(2,1)*A(3,4))+A(1,4)*(A(2,1)*A(3,3)-A(2,3)*A(3,1)))
  !     B(3,4) = di*(A(1,1)*(A(2,4)*A(3,2)-A(2,2)*A(3,4))+A(1,2)*(A(2,1)*A(3,4)-A(2,4)*A(3,1))+A(1,4)*(A(2,2)*A(3,1)-A(2,1)*A(3,2)))
  !     B(4,4) = di*(A(1,1)*(A(2,2)*A(3,3)-A(2,3)*A(3,2))+A(1,2)*(A(2,3)*A(3,1)-A(2,1)*A(3,3))+A(1,3)*(A(2,1)*A(3,2)-A(2,2)*A(3,1)))
  !  END FUNCTION
  !  !===================================================================================================! 

  !***************************************************************************************************! 
  !> @brief 2 x 2  matrix determinant.
  !!
  !!
  !! @param[in] A: Matrix to be printed.
  !! @param[out] B: inverse of A.
  !!
  !***************************************************************************************************!
  PURE FUNCTION oti_det2x2(A) RESULT(det)

    IMPLICIT NONE

    TYPE(oti), INTENT(IN) :: A(2,2)   !! Matrix
    TYPE(oti)             :: det

    ! Calculate the determinant of the matrix
    det = (A(1,1)*A(2,2) - A(1,2)*A(2,1))

  END FUNCTION
  !===================================================================================================! 
  
  !***************************************************************************************************! 
  !> @brief 3 x 3  matrix determinant.
  !!
  !!
  !! @param[in]  A: Matrix to be printed.
  !! @param[out] B: inverse of A.
  !!
  !***************************************************************************************************!
  PURE FUNCTION oti_det3x3(A) RESULT(det)
      
    IMPLICIT NONE

    TYPE(oti), INTENT(IN) :: A(3,3)   !! Matrix
    TYPE(oti)             :: det

    ! Calculate the inverse determinant of the matrix
    det = (A(1,1)*A(2,2)*A(3,3) - A(1,1)*A(2,3)*A(3,2)&
         - A(1,2)*A(2,1)*A(3,3) + A(1,2)*A(2,3)*A(3,1)&
         + A(1,3)*A(2,1)*A(3,2) - A(1,3)*A(2,2)*A(3,1))

  END FUNCTION
  !===================================================================================================! 

  !***************************************************************************************************! 
  !> @brief 4 x 4  matrix determinant.
  !!
  !!
  !! @param[in]  A: Matrix to be printed.
  !! @param[out] B: inverse of A.
  !!
  !***************************************************************************************************!
  PURE FUNCTION oti_det4x4(A) RESULT(det)
      
    IMPLICIT NONE

    TYPE(oti), INTENT(IN) :: A(4,4)   !! Matrix
    TYPE(oti)             :: det

    ! Calculate the determinant of the matrix
    det = &
    (A(1,1)*(A(2,2)*(A(3,3)*A(4,4)-A(3,4)*A(4,3))+A(2,3)*(A(3,4)*A(4,2)-A(3,2)*A(4,4))+A(2,4)*(A(3,2)*A(4,3)-A(3,3)*A(4,2)))&
   - A(1,2)*(A(2,1)*(A(3,3)*A(4,4)-A(3,4)*A(4,3))+A(2,3)*(A(3,4)*A(4,1)-A(3,1)*A(4,4))+A(2,4)*(A(3,1)*A(4,3)-A(3,3)*A(4,1)))&
   + A(1,3)*(A(2,1)*(A(3,2)*A(4,4)-A(3,4)*A(4,2))+A(2,2)*(A(3,4)*A(4,1)-A(3,1)*A(4,4))+A(2,4)*(A(3,1)*A(4,2)-A(3,2)*A(4,1)))&
   - A(1,4)*(A(2,1)*(A(3,2)*A(4,3)-A(3,3)*A(4,2))+A(2,2)*(A(3,3)*A(4,1)-A(3,1)*A(4,3))+A(2,3)*(A(3,1)*A(4,2)-A(3,2)*A(4,1))))

  END FUNCTION
  !===================================================================================================! 
   
  !***************************************************************************************************! 
  !> @brief Cross product between two vectors.
  !!
  !! @param[in] a: Vector of 3 reals (rank 1).
  !! @param[in] b: Vector of 3 reals (rank 1).
  !!
  !***************************************************************************************************!
  PURE FUNCTION oti_cross3(a,b) RESULT(v)
      
    IMPLICIT NONE 

    TYPE(oti), DIMENSION (3),INTENT(IN) :: a,b
    TYPE(oti), DIMENSION (3) :: v
    
    v(1) = a(2) * b(3) - a(3) * b(2)
    v(2) = a(3) * b(1) - a(1) * b(3)
    v(3) = a(1) * b(2) - a(2) * b(1)

  END FUNCTION oti_cross3
  !===================================================================================================! 

  !***************************************************************************************************! 
  !> @brief Norm of a 3 element vector. # There is an intrinsic function named norm2.
  !!
  !! @param[in] a: Vector of 3 reals (rank 1).
  !! @param[in] b: Vector of 3 reals (rank 1).
  !!
  !***************************************************************************************************!
  FUNCTION oti_norm2_3(v) RESULT(n)
     
    IMPLICIT NONE 

    TYPE(oti), INTENT(IN) :: v(3)
    TYPE(oti) :: n
     
    n = SQRT( v(1)*v(1) + v(2)*v(2) + v(3)*v(3) )

  END FUNCTION oti_norm2_3
  !===================================================================================================! 

  FUNCTION oti_DIVISION_OO(X,Y) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      TYPE(oti), INTENT(IN) :: X
      TYPE(oti), INTENT(IN) :: Y
      TYPE(oti) :: RES

      RES = X*(Y**(-1.d0))

  END FUNCTION oti_DIVISION_OO

  FUNCTION oti_DIVISION_OR(X,Y) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      TYPE(oti), INTENT(IN) :: X
      REAL(DP), INTENT(IN) :: Y
      TYPE(oti) :: RES

      RES = X*(Y**(-1.d0))

  END FUNCTION oti_DIVISION_OR

  FUNCTION oti_DIVISION_RO(X,Y) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      REAL(DP), INTENT(IN) :: X
      TYPE(oti), INTENT(IN) :: Y
      TYPE(oti) :: RES

      RES = X*(Y**(-1.d0))

  END FUNCTION oti_DIVISION_RO

  ELEMENTAL FUNCTION oti_REAL(X) RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: X
      REAL(DP) :: RES

      RES = X%R

  END FUNCTION oti_REAL

  FUNCTION oti_SQRT(X) RESULT(RES)
      IMPLICIT NONE
      TYPE(oti), INTENT(IN) :: X
      TYPE(oti) :: RES

      RES = X**0.5_DP

  END FUNCTION oti_SQRT

   ELEMENTAL FUNCTION oti_TAN(X) RESULT(RES)

      TYPE(oti), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2
      TYPE(oti) :: RES
      
      DER0 = TAN(X%R)
      DER1 = TAN(X%R)**2 + 1
      DER2 = 2*(TAN(X%R)**2 + 1)*TAN(X%R)

      RES = FEVAL(X,DER0,DER1,DER2)

   END FUNCTION oti_TAN

   ELEMENTAL FUNCTION oti_COS(X) RESULT(RES)

      TYPE(oti), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2
      TYPE(oti) :: RES
      
      DER0 = COS(X%R)
      DER1 = -SIN(X%R)
      DER2 = -COS(X%R)

      RES = FEVAL(X,DER0,DER1,DER2)

   END FUNCTION oti_COS

   ELEMENTAL FUNCTION oti_SIN(X) RESULT(RES)

      TYPE(oti), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2
      TYPE(oti) :: RES
      
      DER0 = SIN(X%R)
      DER1 = COS(X%R)
      DER2 = -SIN(X%R)

      RES = FEVAL(X,DER0,DER1,DER2)

   END FUNCTION oti_SIN

   ELEMENTAL FUNCTION oti_ATAN(X) RESULT(RES)

      TYPE(oti), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2
      TYPE(oti) :: RES
      
      DER0 = ATAN(X%R)
      DER1 = 1D0/(X%R**2 + 1)
      DER2 = -2*X%R/(X%R**2 + 1)**2

      RES = FEVAL(X,DER0,DER1,DER2)

   END FUNCTION oti_ATAN

   ELEMENTAL FUNCTION oti_ACOS(X) RESULT(RES)

      TYPE(oti), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2
      TYPE(oti) :: RES
      
      DER0 = ACOS(X%R)
      DER1 = -1/SQRT(1 - X%R**2)
      DER2 = -X%R/(1 - X%R**2)**(3.0D0/2.0D0)

      RES = FEVAL(X,DER0,DER1,DER2)

   END FUNCTION oti_ACOS

   ELEMENTAL FUNCTION oti_ASIN(X) RESULT(RES)

      TYPE(oti), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2
      TYPE(oti) :: RES
      
      DER0 = ASIN(X%R)
      DER1 = 1/SQRT(1 - X%R**2)
      DER2 = X%R/(1 - X%R**2)**(3.0D0/2.0D0)

      RES = FEVAL(X,DER0,DER1,DER2)

   END FUNCTION oti_ASIN

   ELEMENTAL FUNCTION oti_TANH(X) RESULT(RES)

      TYPE(oti), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2
      TYPE(oti) :: RES
      
      DER0 = TANH(X%R)
      DER1 = 1 - TANH(X%R)**2
      DER2 = 2*(TANH(X%R)**2 - 1)*TANH(X%R)

      RES = FEVAL(X,DER0,DER1,DER2)

   END FUNCTION oti_TANH

   ELEMENTAL FUNCTION oti_COSH(X) RESULT(RES)

      TYPE(oti), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2
      TYPE(oti) :: RES
      
      DER0 = COSH(X%R)
      DER1 = SINH(X%R)
      DER2 = COSH(X%R)

      RES = FEVAL(X,DER0,DER1,DER2)

   END FUNCTION oti_COSH

   ELEMENTAL FUNCTION oti_SINH(X) RESULT(RES)

      TYPE(oti), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2
      TYPE(oti) :: RES
      
      DER0 = SINH(X%R)
      DER1 = COSH(X%R)
      DER2 = SINH(X%R)

      RES = FEVAL(X,DER0,DER1,DER2)

   END FUNCTION oti_SINH

   ELEMENTAL FUNCTION oti_EXP(X) RESULT(RES)

      TYPE(oti), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2
      TYPE(oti) :: RES
      
      DER0 = EXP(X%R)
      DER1 = EXP(X%R)
      DER2 = EXP(X%R)

      RES = FEVAL(X,DER0,DER1,DER2)

   END FUNCTION oti_EXP

   ELEMENTAL FUNCTION oti_LOG(X) RESULT(RES)

      TYPE(oti), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2
      TYPE(oti) :: RES
      
      DER0 = LOG(X%R)
      DER1 = 1D0/X%R
      DER2 = -1/X%R**2

      RES = FEVAL(X,DER0,DER1,DER2)

   END FUNCTION oti_LOG

   ELEMENTAL FUNCTION oti_POW_OR(X,E) RESULT(RES)

      TYPE(oti), INTENT(IN) :: X
      REAL(DP), INTENT(IN) :: E
      REAL(DP) :: DER0,DER1,DER2
      TYPE(oti) :: RES
      
      DER0=0.0d0
      DER1=0.0d0
      DER2=0.0d0
      
      DER0 = X%R**E
      IF ((E-0)/=0.0d0) THEN
         DER1 = E*X%R**(E - 1)
         IF ((E-1)/=0.0d0) THEN
            DER2 = E*X%R**(E - 2)*(E - 1)
         END IF
      END IF

      RES = FEVAL(X,DER0,DER1,DER2)

   END FUNCTION oti_POW_OR

   ELEMENTAL FUNCTION oti_POW_RO(E,X) RESULT(RES)

      TYPE(oti), INTENT(IN) :: X
      REAL(DP), INTENT(IN) :: E
      REAL(DP) :: DER0,DER1,DER2
      TYPE(oti) :: RES
      
      
      DER0 = E**X%R
      DER1 = E**X%R*LOG(E)
      DER2 = E**X%R*LOG(E)**2

      RES = FEVAL(X,DER0,DER1,DER2)

   END FUNCTION oti_POW_RO

   ELEMENTAL FUNCTION oti_F2EVAL(X,Y,DER0_0,DER1_0,DER1_1, &
                                  DER2_0,DER2_1,DER2_2)&
      RESULT(RES)
      IMPLICIT NONE
      !  Definitions
      REAL(DP) :: COEF, DELTA
      TYPE(oti), INTENT(IN)  :: X,Y
      REAL(DP), INTENT(IN)  :: DER0_0,DER1_0,DER1_1, &
                               DER2_0,DER2_1,DER2_2
      TYPE(oti) :: RES
      TYPE(oti) :: DX, DY

      COEF   = 0.0_DP
      DX     = X
      DY     = Y

      !  Set real part of deltas zero.
      DX%R = 0.0_DP
      DY%R = 0.0_DP

      ! Set real part
      RES = DER0_0

      ! Set order 1
      COEF = DER1_0 / 1.0_DP
      RES = RES + COEF*DX

      COEF = DER1_1 / 1.0_DP
      RES = RES + COEF*DY

      

      ! Set order 2
      COEF = DER2_0 / 2.0_DP
      RES = RES + COEF*DX*DX

      COEF = DER2_1 / 1.0_DP
      RES = RES + COEF*DX*DY

      COEF = DER2_2 / 2.0_DP
      RES = RES + COEF*DY*DY

      

   END FUNCTION oti_F2EVAL


   ELEMENTAL FUNCTION oti_POW_OO(X,Y) RESULT(RES)

      TYPE(oti), INTENT(IN) :: X, Y
      REAL(DP) :: DER0_0,DER1_0,DER1_1,DER2_0,DER2_1,DER2_2
      TYPE(oti) :: RES
      
      DER0_0 = X%R**Y%R
      DER1_0 = X%R**Y%R*Y%R/X%R
      DER1_1 = X%R**Y%R*LOG(X%R)
      DER2_0 = X%R**Y%R*Y%R*(Y%R - 1)/X%R**2
      DER2_1 = X%R**Y%R*(Y%R*LOG(X%R) + 1)/X%R
      DER2_2 = X%R**Y%R*LOG(X%R)**2

      RES = F2EVAL(X,Y,DER0_0,DER1_0,DER1_1,DER2_0,DER2_1,DER2_2)

   END FUNCTION oti_POW_OO


   FUNCTION oti_INV2X2(A,det)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti) , INTENT(IN) :: A(2,2) 
      TYPE(oti) , INTENT(IN), OPTIONAL :: det
      REAL(DP) :: detCalc
      TYPE(oti) :: RES(SIZE(A,1),SIZE(A,2)) 

      IF (PRESENT(det)) THEN
         detCalc=det%R
      ELSE
         detCalc=det2x2(A%R)
      END IF

      ! Get real part 
      RES%R=INV2X2(A%R,detCalc)

      ! Order 1
      RES%E1=-MATMUL(RES%R,(MATMUL(A%E1,RES%R)))
      RES%E2=-MATMUL(RES%R,(MATMUL(A%E2,RES%R)))

      ! Order 2
      RES%E11=-MATMUL(RES%R,(MATMUL(A%E11,RES%R)+MATMUL(A%E1,RES%E1)))
      RES%E12=-MATMUL(RES%R,(MATMUL(A%E12,RES%R)+MATMUL(A%E1,RES%E2)+&
             MATMUL(A%E2,RES%E1)))
      RES%E22=-MATMUL(RES%R,(MATMUL(A%E22,RES%R)+MATMUL(A%E2,RES%E2)))

   END FUNCTION oti_INV2X2

   FUNCTION oti_INV3X3(A,det)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti) , INTENT(IN) :: A(3,3) 
      TYPE(oti) , INTENT(IN), OPTIONAL :: det
      REAL(DP) :: detCalc
      TYPE(oti) :: RES(SIZE(A,1),SIZE(A,2)) 

      IF (PRESENT(det)) THEN
         detCalc=det%R
      ELSE
         detCalc=det3x3(A%R)
      END IF

      ! Get real part 
      RES%R=INV3X3(A%R,detCalc)

      ! Order 1
      RES%E1=-MATMUL(RES%R,(MATMUL(A%E1,RES%R)))
      RES%E2=-MATMUL(RES%R,(MATMUL(A%E2,RES%R)))

      ! Order 2
      RES%E11=-MATMUL(RES%R,(MATMUL(A%E11,RES%R)+MATMUL(A%E1,RES%E1)))
      RES%E12=-MATMUL(RES%R,(MATMUL(A%E12,RES%R)+MATMUL(A%E1,RES%E2)+&
             MATMUL(A%E2,RES%E1)))
      RES%E22=-MATMUL(RES%R,(MATMUL(A%E22,RES%R)+MATMUL(A%E2,RES%E2)))

   END FUNCTION oti_INV3X3

   FUNCTION oti_INV4X4(A,det)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(oti) , INTENT(IN) :: A(4,4) 
      TYPE(oti) , INTENT(IN), OPTIONAL :: det
      REAL(DP) :: detCalc
      TYPE(oti) :: RES(SIZE(A,1),SIZE(A,2)) 

      IF (PRESENT(det)) THEN
         detCalc=det%R
      ELSE
         detCalc=det4x4(A%R)
      END IF

      ! Get real part 
      RES%R=INV4X4(A%R,detCalc)

      ! Order 1
      RES%E1=-MATMUL(RES%R,(MATMUL(A%E1,RES%R)))
      RES%E2=-MATMUL(RES%R,(MATMUL(A%E2,RES%R)))

      ! Order 2
      RES%E11=-MATMUL(RES%R,(MATMUL(A%E11,RES%R)+MATMUL(A%E1,RES%E1)))
      RES%E12=-MATMUL(RES%R,(MATMUL(A%E12,RES%R)+MATMUL(A%E1,RES%E2)+&
             MATMUL(A%E2,RES%E1)))
      RES%E22=-MATMUL(RES%R,(MATMUL(A%E22,RES%R)+MATMUL(A%E2,RES%E2)))

   END FUNCTION oti_INV4X4

end module OTISTAMOD
