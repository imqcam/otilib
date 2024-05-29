MODULE diagotim22n1

   USE master_parameters
   USE real_utils

   IMPLICIT NONE

   INTEGER, PARAMETER :: num_im_dir = 23
   INTEGER, PARAMETER :: torder     = 1
   INTEGER, PARAMETER :: n_imdir_order(2) = [1,22]

   TYPE DONUMM22N1
     ! Real
     REAL(DP) :: R
     ! Order 1
     REAL(DP) :: E1
     REAL(DP) :: E2
     REAL(DP) :: E3
     REAL(DP) :: E4
     REAL(DP) :: E5
     REAL(DP) :: E6
     REAL(DP) :: E7
     REAL(DP) :: E8
     REAL(DP) :: E9
     REAL(DP) :: EA
     REAL(DP) :: EB
     REAL(DP) :: EC
     REAL(DP) :: ED
     REAL(DP) :: EE
     REAL(DP) :: EF
     REAL(DP) :: EG
     REAL(DP) :: EH
     REAL(DP) :: EI
     REAL(DP) :: EJ
     REAL(DP) :: EK
     REAL(DP) :: EL
     REAL(DP) :: EM
   END TYPE DONUMM22N1

   ! Constant imaginary directions.
   ! Order 1
   TYPE(DONUMM22N1), PARAMETER :: E1 = DONUMM22N1(0.0_dp,1.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: E2 = DONUMM22N1(0.0_dp,0.0_dp,1.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: E3 = DONUMM22N1(0.0_dp,0.0_dp,0.0_dp,1.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: E4 = DONUMM22N1(0.0_dp,0.0_dp,0.0_dp,0.0_dp,1.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: E5 = DONUMM22N1(0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,1.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: E6 = DONUMM22N1(0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,1.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: E7 = DONUMM22N1(0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,1.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: E8 = DONUMM22N1(0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,1.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: E9 = DONUMM22N1(0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,1.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: EA = DONUMM22N1(0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,1.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: EB = DONUMM22N1(0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,1.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: EC = DONUMM22N1(0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,1.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: ED = DONUMM22N1(0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,1.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: EE = DONUMM22N1(0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,1.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: EF = DONUMM22N1(0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,1.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: EG = DONUMM22N1(0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,1.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: EH = DONUMM22N1(0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,1.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: EI = DONUMM22N1(0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,1.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: EJ = DONUMM22N1(0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,1.0_dp,0.0_dp,0.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: EK = DONUMM22N1(0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,1.0_dp,0.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: EL = DONUMM22N1(0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,1.0_dp,0.0_dp)
   TYPE(DONUMM22N1), PARAMETER :: EM = DONUMM22N1(0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,0.0_dp,1.0_dp)


   INTERFACE OPERATOR(*)
      MODULE PROCEDURE DONUMM22N1_MUL_OO_SS,DONUMM22N1_MUL_RO_SS,DONUMM22N1_MUL_OR_SS,DONUMM22N1_MUL_OO_VS,&
                       DONUMM22N1_MUL_RO_VS,DONUMM22N1_MUL_OR_VS,DONUMM22N1_MUL_OO_MS,DONUMM22N1_MUL_RO_MS,&
                       DONUMM22N1_MUL_OR_MS,DONUMM22N1_MUL_OO_SV,DONUMM22N1_MUL_RO_SV,DONUMM22N1_MUL_OR_SV,&
                       DONUMM22N1_MUL_OO_SM,DONUMM22N1_MUL_RO_SM,DONUMM22N1_MUL_OR_SM
   END INTERFACE

   INTERFACE OPERATOR(+)
      MODULE PROCEDURE DONUMM22N1_ADD_OO_SS,DONUMM22N1_ADD_RO_SS,DONUMM22N1_ADD_OR_SS,DONUMM22N1_ADD_OO_VS,&
                       DONUMM22N1_ADD_RO_VS,DONUMM22N1_ADD_OR_VS,DONUMM22N1_ADD_OO_MS,DONUMM22N1_ADD_RO_MS,&
                       DONUMM22N1_ADD_OR_MS,DONUMM22N1_ADD_OO_SV,DONUMM22N1_ADD_RO_SV,DONUMM22N1_ADD_OR_SV,&
                       DONUMM22N1_ADD_OO_SM,DONUMM22N1_ADD_RO_SM,DONUMM22N1_ADD_OR_SM
   END INTERFACE

   INTERFACE OPERATOR(-)
      MODULE PROCEDURE DONUMM22N1_NEG,DONUMM22N1_SUB_OO_SS,DONUMM22N1_SUB_RO_SS,DONUMM22N1_SUB_OR_SS,&
                       DONUMM22N1_SUB_OO_VS,DONUMM22N1_SUB_RO_VS,DONUMM22N1_SUB_OR_VS,DONUMM22N1_SUB_OO_MS,&
                       DONUMM22N1_SUB_RO_MS,DONUMM22N1_SUB_OR_MS,DONUMM22N1_SUB_OO_SV,DONUMM22N1_SUB_RO_SV,&
                       DONUMM22N1_SUB_OR_SV,DONUMM22N1_SUB_OO_SM,DONUMM22N1_SUB_RO_SM,DONUMM22N1_SUB_OR_SM
   END INTERFACE

   INTERFACE OPERATOR(/)
      MODULE PROCEDURE DONUMM22N1_DIVISION_OO,DONUMM22N1_DIVISION_OR,DONUMM22N1_DIVISION_RO
   END INTERFACE

   INTERFACE ASSIGNMENT(=)
      MODULE PROCEDURE DONUMM22N1_ASSIGN_R
   END INTERFACE

   INTERFACE OPERATOR(**)
      MODULE PROCEDURE DONUMM22N1_POW_OR,DONUMM22N1_POW_RO,DONUMM22N1_POW_OO
   END INTERFACE

   INTERFACE PPRINT
      MODULE PROCEDURE DONUMM22N1_PPRINT_S,DONUMM22N1_PPRINT_V,DONUMM22N1_PPRINT_M
   END INTERFACE

   INTERFACE TRANSPOSE
      MODULE PROCEDURE DONUMM22N1_TRANSPOSE
   END INTERFACE

   INTERFACE MATMUL
      MODULE PROCEDURE DONUMM22N1_MATMUL_DONUMM22N1,R_MATMUL_DONUMM22N1,DONUMM22N1_MATMUL_R
   END INTERFACE

   INTERFACE DOT_PRODUCT
      MODULE PROCEDURE DONUMM22N1_DOT_PRODUCT_DONUMM22N1,R_DOT_PRODUCT_DONUMM22N1,DONUMM22N1_DOT_PRODUCT_R
   END INTERFACE

   INTERFACE UNFOLD
      MODULE PROCEDURE DONUMM22N1_TO_CR_MAT_S,DONUMM22N1_TO_CR_MAT_V,DONUMM22N1_TO_CR_MAT_M
   END INTERFACE

   INTERFACE TO_CR
      MODULE PROCEDURE DONUMM22N1_TO_CR_MAT_S,DONUMM22N1_TO_CR_MAT_V,DONUMM22N1_TO_CR_MAT_M
   END INTERFACE

   INTERFACE SIN
      MODULE PROCEDURE DONUMM22N1_SIN
   END INTERFACE

   INTERFACE COS
      MODULE PROCEDURE DONUMM22N1_COS
   END INTERFACE

   INTERFACE TAN
      MODULE PROCEDURE DONUMM22N1_TAN
   END INTERFACE

   INTERFACE ASIN
      MODULE PROCEDURE DONUMM22N1_ASIN
   END INTERFACE

   INTERFACE ACOS
      MODULE PROCEDURE DONUMM22N1_ACOS
   END INTERFACE

   INTERFACE ATAN
      MODULE PROCEDURE DONUMM22N1_ATAN
   END INTERFACE

   INTERFACE SINH
      MODULE PROCEDURE DONUMM22N1_SINH
   END INTERFACE

   INTERFACE COSH
      MODULE PROCEDURE DONUMM22N1_COSH
   END INTERFACE

   INTERFACE TANH
      MODULE PROCEDURE DONUMM22N1_TANH
   END INTERFACE

   INTERFACE SQRT
      MODULE PROCEDURE DONUMM22N1_SQRT
   END INTERFACE

   INTERFACE LOG
      MODULE PROCEDURE DONUMM22N1_LOG
   END INTERFACE

   INTERFACE EXP
      MODULE PROCEDURE DONUMM22N1_EXP
   END INTERFACE

   INTERFACE GEM
      MODULE PROCEDURE DONUMM22N1_GEM_OOO,DONUMM22N1_GEM_ROO,DONUMM22N1_GEM_ORO
   END INTERFACE

   INTERFACE FEVAL
      MODULE PROCEDURE DONUMM22N1_FEVAL
   END INTERFACE

   INTERFACE F2EVAL
      MODULE PROCEDURE DONUMM22N1_F2EVAL
   END INTERFACE

   INTERFACE REAL
      MODULE PROCEDURE DONUMM22N1_REAL
   END INTERFACE

   INTERFACE DET2X2
      MODULE PROCEDURE DONUMM22N1_det2x2
   END INTERFACE

   INTERFACE DET3X3
      MODULE PROCEDURE DONUMM22N1_det3x3
   END INTERFACE

   INTERFACE DET4X4
      MODULE PROCEDURE DONUMM22N1_det4x4
   END INTERFACE

   INTERFACE INV2X2
      MODULE PROCEDURE DONUMM22N1_INV2X2
   END INTERFACE

   INTERFACE INV3X3
      MODULE PROCEDURE DONUMM22N1_INV3X3
   END INTERFACE

   INTERFACE INV4X4
      MODULE PROCEDURE DONUMM22N1_INV4X4
   END INTERFACE

   INTERFACE GETIM
      MODULE PROCEDURE DONUMM22N1_GETIM_S,DONUMM22N1_GETIM_V,DONUMM22N1_GETIM_M
   END INTERFACE

   INTERFACE SETIM
      MODULE PROCEDURE DONUMM22N1_SETIM_S,DONUMM22N1_SETIM_V,DONUMM22N1_SETIM_M
   END INTERFACE

   CONTAINS

   ELEMENTAL SUBROUTINE DONUMM22N1_ASSIGN_R(RES,LHS)
      
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS 
      TYPE(DONUMM22N1), INTENT(OUT) :: RES 

      ! Assign like function 'LHS'
      ! Real
      RES%R = LHS

      ! Order 1
      RES%E1 = 0.0_dp
      RES%E2 = 0.0_dp
      RES%E3 = 0.0_dp
      RES%E4 = 0.0_dp
      RES%E5 = 0.0_dp
      RES%E6 = 0.0_dp
      RES%E7 = 0.0_dp
      RES%E8 = 0.0_dp
      RES%E9 = 0.0_dp
      RES%EA = 0.0_dp
      RES%EB = 0.0_dp
      RES%EC = 0.0_dp
      RES%ED = 0.0_dp
      RES%EE = 0.0_dp
      RES%EF = 0.0_dp
      RES%EG = 0.0_dp
      RES%EH = 0.0_dp
      RES%EI = 0.0_dp
      RES%EJ = 0.0_dp
      RES%EK = 0.0_dp
      RES%EL = 0.0_dp
      RES%EM = 0.0_dp

   END SUBROUTINE DONUMM22N1_ASSIGN_R

   ELEMENTAL FUNCTION DONUMM22N1_NEG(LHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS 
      TYPE(DONUMM22N1) :: RES 

      ! Negation like function '-LHS'
      ! Real
      RES%R = -LHS%R
      ! Order 1
      RES%E1 = -LHS%E1
      RES%E2 = -LHS%E2
      RES%E3 = -LHS%E3
      RES%E4 = -LHS%E4
      RES%E5 = -LHS%E5
      RES%E6 = -LHS%E6
      RES%E7 = -LHS%E7
      RES%E8 = -LHS%E8
      RES%E9 = -LHS%E9
      RES%EA = -LHS%EA
      RES%EB = -LHS%EB
      RES%EC = -LHS%EC
      RES%ED = -LHS%ED
      RES%EE = -LHS%EE
      RES%EF = -LHS%EF
      RES%EG = -LHS%EG
      RES%EH = -LHS%EH
      RES%EI = -LHS%EI
      RES%EJ = -LHS%EJ
      RES%EK = -LHS%EK
      RES%EL = -LHS%EL
      RES%EM = -LHS%EM

   END FUNCTION DONUMM22N1_NEG

   ELEMENTAL FUNCTION DONUMM22N1_ADD_OO_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS
      TYPE(DONUMM22N1), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES 

      ! Addition like function 'LHS + RHS'
      !  Real
      RES%R = LHS%R + RHS%R

      ! Order 1
      RES%E1 = LHS%E1 + RHS%E1
      RES%E2 = LHS%E2 + RHS%E2
      RES%E3 = LHS%E3 + RHS%E3
      RES%E4 = LHS%E4 + RHS%E4
      RES%E5 = LHS%E5 + RHS%E5
      RES%E6 = LHS%E6 + RHS%E6
      RES%E7 = LHS%E7 + RHS%E7
      RES%E8 = LHS%E8 + RHS%E8
      RES%E9 = LHS%E9 + RHS%E9
      RES%EA = LHS%EA + RHS%EA
      RES%EB = LHS%EB + RHS%EB
      RES%EC = LHS%EC + RHS%EC
      RES%ED = LHS%ED + RHS%ED
      RES%EE = LHS%EE + RHS%EE
      RES%EF = LHS%EF + RHS%EF
      RES%EG = LHS%EG + RHS%EG
      RES%EH = LHS%EH + RHS%EH
      RES%EI = LHS%EI + RHS%EI
      RES%EJ = LHS%EJ + RHS%EJ
      RES%EK = LHS%EK + RHS%EK
      RES%EL = LHS%EL + RHS%EL
      RES%EM = LHS%EM + RHS%EM

   END FUNCTION DONUMM22N1_ADD_OO_SS

   ELEMENTAL FUNCTION DONUMM22N1_ADD_RO_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(DONUMM22N1), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES 

      ! Addition like function 'LHS + RHS'
      ! Real
      RES%R = LHS + RHS%R

      ! Order 1
      RES%E1 =  + RHS%E1
      RES%E2 =  + RHS%E2
      RES%E3 =  + RHS%E3
      RES%E4 =  + RHS%E4
      RES%E5 =  + RHS%E5
      RES%E6 =  + RHS%E6
      RES%E7 =  + RHS%E7
      RES%E8 =  + RHS%E8
      RES%E9 =  + RHS%E9
      RES%EA =  + RHS%EA
      RES%EB =  + RHS%EB
      RES%EC =  + RHS%EC
      RES%ED =  + RHS%ED
      RES%EE =  + RHS%EE
      RES%EF =  + RHS%EF
      RES%EG =  + RHS%EG
      RES%EH =  + RHS%EH
      RES%EI =  + RHS%EI
      RES%EJ =  + RHS%EJ
      RES%EK =  + RHS%EK
      RES%EL =  + RHS%EL
      RES%EM =  + RHS%EM

   END FUNCTION DONUMM22N1_ADD_RO_SS

   ELEMENTAL FUNCTION DONUMM22N1_ADD_OR_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES 

      ! Addition like function 'LHS + RHS'
      ! Real
      RES%R = LHS%R + RHS

      ! Order 1
      RES%E1 = LHS%E1
      RES%E2 = LHS%E2
      RES%E3 = LHS%E3
      RES%E4 = LHS%E4
      RES%E5 = LHS%E5
      RES%E6 = LHS%E6
      RES%E7 = LHS%E7
      RES%E8 = LHS%E8
      RES%E9 = LHS%E9
      RES%EA = LHS%EA
      RES%EB = LHS%EB
      RES%EC = LHS%EC
      RES%ED = LHS%ED
      RES%EE = LHS%EE
      RES%EF = LHS%EF
      RES%EG = LHS%EG
      RES%EH = LHS%EH
      RES%EI = LHS%EI
      RES%EJ = LHS%EJ
      RES%EK = LHS%EK
      RES%EL = LHS%EL
      RES%EM = LHS%EM

   END FUNCTION DONUMM22N1_ADD_OR_SS

   ELEMENTAL FUNCTION DONUMM22N1_SUB_OO_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS
      TYPE(DONUMM22N1), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES 

      ! Addition like function 'LHS - RHS'
      !  Real
      RES%R = LHS%R - RHS%R

      ! Order 1
      RES%E1 = LHS%E1 - RHS%E1
      RES%E2 = LHS%E2 - RHS%E2
      RES%E3 = LHS%E3 - RHS%E3
      RES%E4 = LHS%E4 - RHS%E4
      RES%E5 = LHS%E5 - RHS%E5
      RES%E6 = LHS%E6 - RHS%E6
      RES%E7 = LHS%E7 - RHS%E7
      RES%E8 = LHS%E8 - RHS%E8
      RES%E9 = LHS%E9 - RHS%E9
      RES%EA = LHS%EA - RHS%EA
      RES%EB = LHS%EB - RHS%EB
      RES%EC = LHS%EC - RHS%EC
      RES%ED = LHS%ED - RHS%ED
      RES%EE = LHS%EE - RHS%EE
      RES%EF = LHS%EF - RHS%EF
      RES%EG = LHS%EG - RHS%EG
      RES%EH = LHS%EH - RHS%EH
      RES%EI = LHS%EI - RHS%EI
      RES%EJ = LHS%EJ - RHS%EJ
      RES%EK = LHS%EK - RHS%EK
      RES%EL = LHS%EL - RHS%EL
      RES%EM = LHS%EM - RHS%EM

   END FUNCTION DONUMM22N1_SUB_OO_SS

   ELEMENTAL FUNCTION DONUMM22N1_SUB_RO_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(DONUMM22N1), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES 

      ! Addition like function 'LHS - RHS'
      ! Real
      RES%R = LHS - RHS%R

      ! Order 1
      RES%E1 =  - RHS%E1
      RES%E2 =  - RHS%E2
      RES%E3 =  - RHS%E3
      RES%E4 =  - RHS%E4
      RES%E5 =  - RHS%E5
      RES%E6 =  - RHS%E6
      RES%E7 =  - RHS%E7
      RES%E8 =  - RHS%E8
      RES%E9 =  - RHS%E9
      RES%EA =  - RHS%EA
      RES%EB =  - RHS%EB
      RES%EC =  - RHS%EC
      RES%ED =  - RHS%ED
      RES%EE =  - RHS%EE
      RES%EF =  - RHS%EF
      RES%EG =  - RHS%EG
      RES%EH =  - RHS%EH
      RES%EI =  - RHS%EI
      RES%EJ =  - RHS%EJ
      RES%EK =  - RHS%EK
      RES%EL =  - RHS%EL
      RES%EM =  - RHS%EM

   END FUNCTION DONUMM22N1_SUB_RO_SS

   ELEMENTAL FUNCTION DONUMM22N1_SUB_OR_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES 

      ! Addition like function 'LHS - RHS'
      ! Real
      RES%R = LHS%R - RHS

      ! Order 1
      RES%E1 = LHS%E1
      RES%E2 = LHS%E2
      RES%E3 = LHS%E3
      RES%E4 = LHS%E4
      RES%E5 = LHS%E5
      RES%E6 = LHS%E6
      RES%E7 = LHS%E7
      RES%E8 = LHS%E8
      RES%E9 = LHS%E9
      RES%EA = LHS%EA
      RES%EB = LHS%EB
      RES%EC = LHS%EC
      RES%ED = LHS%ED
      RES%EE = LHS%EE
      RES%EF = LHS%EF
      RES%EG = LHS%EG
      RES%EH = LHS%EH
      RES%EI = LHS%EI
      RES%EJ = LHS%EJ
      RES%EK = LHS%EK
      RES%EL = LHS%EL
      RES%EM = LHS%EM

   END FUNCTION DONUMM22N1_SUB_OR_SS

   ELEMENTAL FUNCTION DONUMM22N1_MUL_OO_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS
      TYPE(DONUMM22N1), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES 

      !  Multiplication like function 'LHS*RHS'
      ! Order 1
      RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
      RES%E2 = LHS%R*RHS%E2 + LHS%E2*RHS%R
      RES%E3 = LHS%R*RHS%E3 + LHS%E3*RHS%R
      RES%E4 = LHS%R*RHS%E4 + LHS%E4*RHS%R
      RES%E5 = LHS%R*RHS%E5 + LHS%E5*RHS%R
      RES%E6 = LHS%R*RHS%E6 + LHS%E6*RHS%R
      RES%E7 = LHS%R*RHS%E7 + LHS%E7*RHS%R
      RES%E8 = LHS%R*RHS%E8 + LHS%E8*RHS%R
      RES%E9 = LHS%R*RHS%E9 + LHS%E9*RHS%R
      RES%EA = LHS%R*RHS%EA + LHS%EA*RHS%R
      RES%EB = LHS%R*RHS%EB + LHS%EB*RHS%R
      RES%EC = LHS%R*RHS%EC + LHS%EC*RHS%R
      RES%ED = LHS%R*RHS%ED + LHS%ED*RHS%R
      RES%EE = LHS%R*RHS%EE + LHS%EE*RHS%R
      RES%EF = LHS%R*RHS%EF + LHS%EF*RHS%R
      RES%EG = LHS%R*RHS%EG + LHS%EG*RHS%R
      RES%EH = LHS%R*RHS%EH + LHS%EH*RHS%R
      RES%EI = LHS%R*RHS%EI + LHS%EI*RHS%R
      RES%EJ = LHS%R*RHS%EJ + LHS%EJ*RHS%R
      RES%EK = LHS%R*RHS%EK + LHS%EK*RHS%R
      RES%EL = LHS%R*RHS%EL + LHS%EL*RHS%R
      RES%EM = LHS%R*RHS%EM + LHS%EM*RHS%R
      ! Order 0
      RES%R = LHS%R*RHS%R

   END FUNCTION DONUMM22N1_MUL_OO_SS

   ELEMENTAL FUNCTION DONUMM22N1_MUL_RO_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(DONUMM22N1), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES 

      ! Multiplication like function 'LHS*RHS'
      !  Real
      RES%R = LHS*RHS%R

      ! Order 1
      RES%E1 = LHS*RHS%E1
      RES%E2 = LHS*RHS%E2
      RES%E3 = LHS*RHS%E3
      RES%E4 = LHS*RHS%E4
      RES%E5 = LHS*RHS%E5
      RES%E6 = LHS*RHS%E6
      RES%E7 = LHS*RHS%E7
      RES%E8 = LHS*RHS%E8
      RES%E9 = LHS*RHS%E9
      RES%EA = LHS*RHS%EA
      RES%EB = LHS*RHS%EB
      RES%EC = LHS*RHS%EC
      RES%ED = LHS*RHS%ED
      RES%EE = LHS*RHS%EE
      RES%EF = LHS*RHS%EF
      RES%EG = LHS*RHS%EG
      RES%EH = LHS*RHS%EH
      RES%EI = LHS*RHS%EI
      RES%EJ = LHS*RHS%EJ
      RES%EK = LHS*RHS%EK
      RES%EL = LHS*RHS%EL
      RES%EM = LHS*RHS%EM

   END FUNCTION DONUMM22N1_MUL_RO_SS

   ELEMENTAL FUNCTION DONUMM22N1_MUL_OR_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES 

      ! Multiplication like function 'LHS*RHS'
      !  Real
      RES%R = LHS%R*RHS

      ! Order 1
      RES%E1 = LHS%E1*RHS
      RES%E2 = LHS%E2*RHS
      RES%E3 = LHS%E3*RHS
      RES%E4 = LHS%E4*RHS
      RES%E5 = LHS%E5*RHS
      RES%E6 = LHS%E6*RHS
      RES%E7 = LHS%E7*RHS
      RES%E8 = LHS%E8*RHS
      RES%E9 = LHS%E9*RHS
      RES%EA = LHS%EA*RHS
      RES%EB = LHS%EB*RHS
      RES%EC = LHS%EC*RHS
      RES%ED = LHS%ED*RHS
      RES%EE = LHS%EE*RHS
      RES%EF = LHS%EF*RHS
      RES%EG = LHS%EG*RHS
      RES%EH = LHS%EH*RHS
      RES%EI = LHS%EI*RHS
      RES%EJ = LHS%EJ*RHS
      RES%EK = LHS%EK*RHS
      RES%EL = LHS%EL*RHS
      RES%EM = LHS%EM*RHS

   END FUNCTION DONUMM22N1_MUL_OR_SS

   FUNCTION DONUMM22N1_ADD_OO_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS(:)
      TYPE(DONUMM22N1), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1)) 

      ! Addition like function 'LHS + RHS'
      !  Real
      RES%R = LHS%R + RHS%R

      ! Order 1
      RES%E1 = LHS%E1 + RHS%E1
      RES%E2 = LHS%E2 + RHS%E2
      RES%E3 = LHS%E3 + RHS%E3
      RES%E4 = LHS%E4 + RHS%E4
      RES%E5 = LHS%E5 + RHS%E5
      RES%E6 = LHS%E6 + RHS%E6
      RES%E7 = LHS%E7 + RHS%E7
      RES%E8 = LHS%E8 + RHS%E8
      RES%E9 = LHS%E9 + RHS%E9
      RES%EA = LHS%EA + RHS%EA
      RES%EB = LHS%EB + RHS%EB
      RES%EC = LHS%EC + RHS%EC
      RES%ED = LHS%ED + RHS%ED
      RES%EE = LHS%EE + RHS%EE
      RES%EF = LHS%EF + RHS%EF
      RES%EG = LHS%EG + RHS%EG
      RES%EH = LHS%EH + RHS%EH
      RES%EI = LHS%EI + RHS%EI
      RES%EJ = LHS%EJ + RHS%EJ
      RES%EK = LHS%EK + RHS%EK
      RES%EL = LHS%EL + RHS%EL
      RES%EM = LHS%EM + RHS%EM

   END FUNCTION DONUMM22N1_ADD_OO_VS

   FUNCTION DONUMM22N1_ADD_RO_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:)
      TYPE(DONUMM22N1), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1)) 

      ! Addition like function 'LHS + RHS'
      ! Real
      RES%R = LHS + RHS%R

      ! Order 1
      RES%E1 =  + RHS%E1
      RES%E2 =  + RHS%E2
      RES%E3 =  + RHS%E3
      RES%E4 =  + RHS%E4
      RES%E5 =  + RHS%E5
      RES%E6 =  + RHS%E6
      RES%E7 =  + RHS%E7
      RES%E8 =  + RHS%E8
      RES%E9 =  + RHS%E9
      RES%EA =  + RHS%EA
      RES%EB =  + RHS%EB
      RES%EC =  + RHS%EC
      RES%ED =  + RHS%ED
      RES%EE =  + RHS%EE
      RES%EF =  + RHS%EF
      RES%EG =  + RHS%EG
      RES%EH =  + RHS%EH
      RES%EI =  + RHS%EI
      RES%EJ =  + RHS%EJ
      RES%EK =  + RHS%EK
      RES%EL =  + RHS%EL
      RES%EM =  + RHS%EM

   END FUNCTION DONUMM22N1_ADD_RO_VS

   FUNCTION DONUMM22N1_ADD_OR_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS(:)
      REAL(DP), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1)) 

      ! Addition like function 'LHS + RHS'
      ! Real
      RES%R = LHS%R + RHS

      ! Order 1
      RES%E1 = LHS%E1
      RES%E2 = LHS%E2
      RES%E3 = LHS%E3
      RES%E4 = LHS%E4
      RES%E5 = LHS%E5
      RES%E6 = LHS%E6
      RES%E7 = LHS%E7
      RES%E8 = LHS%E8
      RES%E9 = LHS%E9
      RES%EA = LHS%EA
      RES%EB = LHS%EB
      RES%EC = LHS%EC
      RES%ED = LHS%ED
      RES%EE = LHS%EE
      RES%EF = LHS%EF
      RES%EG = LHS%EG
      RES%EH = LHS%EH
      RES%EI = LHS%EI
      RES%EJ = LHS%EJ
      RES%EK = LHS%EK
      RES%EL = LHS%EL
      RES%EM = LHS%EM

   END FUNCTION DONUMM22N1_ADD_OR_VS

   FUNCTION DONUMM22N1_SUB_OO_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS(:)
      TYPE(DONUMM22N1), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1)) 

      ! Addition like function 'LHS - RHS'
      !  Real
      RES%R = LHS%R - RHS%R

      ! Order 1
      RES%E1 = LHS%E1 - RHS%E1
      RES%E2 = LHS%E2 - RHS%E2
      RES%E3 = LHS%E3 - RHS%E3
      RES%E4 = LHS%E4 - RHS%E4
      RES%E5 = LHS%E5 - RHS%E5
      RES%E6 = LHS%E6 - RHS%E6
      RES%E7 = LHS%E7 - RHS%E7
      RES%E8 = LHS%E8 - RHS%E8
      RES%E9 = LHS%E9 - RHS%E9
      RES%EA = LHS%EA - RHS%EA
      RES%EB = LHS%EB - RHS%EB
      RES%EC = LHS%EC - RHS%EC
      RES%ED = LHS%ED - RHS%ED
      RES%EE = LHS%EE - RHS%EE
      RES%EF = LHS%EF - RHS%EF
      RES%EG = LHS%EG - RHS%EG
      RES%EH = LHS%EH - RHS%EH
      RES%EI = LHS%EI - RHS%EI
      RES%EJ = LHS%EJ - RHS%EJ
      RES%EK = LHS%EK - RHS%EK
      RES%EL = LHS%EL - RHS%EL
      RES%EM = LHS%EM - RHS%EM

   END FUNCTION DONUMM22N1_SUB_OO_VS

   FUNCTION DONUMM22N1_SUB_RO_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:)
      TYPE(DONUMM22N1), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1)) 

      ! Addition like function 'LHS - RHS'
      ! Real
      RES%R = LHS - RHS%R

      ! Order 1
      RES%E1 =  - RHS%E1
      RES%E2 =  - RHS%E2
      RES%E3 =  - RHS%E3
      RES%E4 =  - RHS%E4
      RES%E5 =  - RHS%E5
      RES%E6 =  - RHS%E6
      RES%E7 =  - RHS%E7
      RES%E8 =  - RHS%E8
      RES%E9 =  - RHS%E9
      RES%EA =  - RHS%EA
      RES%EB =  - RHS%EB
      RES%EC =  - RHS%EC
      RES%ED =  - RHS%ED
      RES%EE =  - RHS%EE
      RES%EF =  - RHS%EF
      RES%EG =  - RHS%EG
      RES%EH =  - RHS%EH
      RES%EI =  - RHS%EI
      RES%EJ =  - RHS%EJ
      RES%EK =  - RHS%EK
      RES%EL =  - RHS%EL
      RES%EM =  - RHS%EM

   END FUNCTION DONUMM22N1_SUB_RO_VS

   FUNCTION DONUMM22N1_SUB_OR_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS(:)
      REAL(DP), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1)) 

      ! Addition like function 'LHS - RHS'
      ! Real
      RES%R = LHS%R - RHS

      ! Order 1
      RES%E1 = LHS%E1
      RES%E2 = LHS%E2
      RES%E3 = LHS%E3
      RES%E4 = LHS%E4
      RES%E5 = LHS%E5
      RES%E6 = LHS%E6
      RES%E7 = LHS%E7
      RES%E8 = LHS%E8
      RES%E9 = LHS%E9
      RES%EA = LHS%EA
      RES%EB = LHS%EB
      RES%EC = LHS%EC
      RES%ED = LHS%ED
      RES%EE = LHS%EE
      RES%EF = LHS%EF
      RES%EG = LHS%EG
      RES%EH = LHS%EH
      RES%EI = LHS%EI
      RES%EJ = LHS%EJ
      RES%EK = LHS%EK
      RES%EL = LHS%EL
      RES%EM = LHS%EM

   END FUNCTION DONUMM22N1_SUB_OR_VS

   FUNCTION DONUMM22N1_MUL_OO_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS(:)
      TYPE(DONUMM22N1), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1)) 

      !  Multiplication like function 'LHS*RHS'
      ! Order 1
      RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
      RES%E2 = LHS%R*RHS%E2 + LHS%E2*RHS%R
      RES%E3 = LHS%R*RHS%E3 + LHS%E3*RHS%R
      RES%E4 = LHS%R*RHS%E4 + LHS%E4*RHS%R
      RES%E5 = LHS%R*RHS%E5 + LHS%E5*RHS%R
      RES%E6 = LHS%R*RHS%E6 + LHS%E6*RHS%R
      RES%E7 = LHS%R*RHS%E7 + LHS%E7*RHS%R
      RES%E8 = LHS%R*RHS%E8 + LHS%E8*RHS%R
      RES%E9 = LHS%R*RHS%E9 + LHS%E9*RHS%R
      RES%EA = LHS%R*RHS%EA + LHS%EA*RHS%R
      RES%EB = LHS%R*RHS%EB + LHS%EB*RHS%R
      RES%EC = LHS%R*RHS%EC + LHS%EC*RHS%R
      RES%ED = LHS%R*RHS%ED + LHS%ED*RHS%R
      RES%EE = LHS%R*RHS%EE + LHS%EE*RHS%R
      RES%EF = LHS%R*RHS%EF + LHS%EF*RHS%R
      RES%EG = LHS%R*RHS%EG + LHS%EG*RHS%R
      RES%EH = LHS%R*RHS%EH + LHS%EH*RHS%R
      RES%EI = LHS%R*RHS%EI + LHS%EI*RHS%R
      RES%EJ = LHS%R*RHS%EJ + LHS%EJ*RHS%R
      RES%EK = LHS%R*RHS%EK + LHS%EK*RHS%R
      RES%EL = LHS%R*RHS%EL + LHS%EL*RHS%R
      RES%EM = LHS%R*RHS%EM + LHS%EM*RHS%R
      ! Order 0
      RES%R = LHS%R*RHS%R

   END FUNCTION DONUMM22N1_MUL_OO_VS

   FUNCTION DONUMM22N1_MUL_RO_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:)
      TYPE(DONUMM22N1), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1)) 

      ! Multiplication like function 'LHS*RHS'
      !  Real
      RES%R = LHS*RHS%R

      ! Order 1
      RES%E1 = LHS*RHS%E1
      RES%E2 = LHS*RHS%E2
      RES%E3 = LHS*RHS%E3
      RES%E4 = LHS*RHS%E4
      RES%E5 = LHS*RHS%E5
      RES%E6 = LHS*RHS%E6
      RES%E7 = LHS*RHS%E7
      RES%E8 = LHS*RHS%E8
      RES%E9 = LHS*RHS%E9
      RES%EA = LHS*RHS%EA
      RES%EB = LHS*RHS%EB
      RES%EC = LHS*RHS%EC
      RES%ED = LHS*RHS%ED
      RES%EE = LHS*RHS%EE
      RES%EF = LHS*RHS%EF
      RES%EG = LHS*RHS%EG
      RES%EH = LHS*RHS%EH
      RES%EI = LHS*RHS%EI
      RES%EJ = LHS*RHS%EJ
      RES%EK = LHS*RHS%EK
      RES%EL = LHS*RHS%EL
      RES%EM = LHS*RHS%EM

   END FUNCTION DONUMM22N1_MUL_RO_VS

   FUNCTION DONUMM22N1_MUL_OR_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS(:)
      REAL(DP), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1)) 

      ! Multiplication like function 'LHS*RHS'
      !  Real
      RES%R = LHS%R*RHS

      ! Order 1
      RES%E1 = LHS%E1*RHS
      RES%E2 = LHS%E2*RHS
      RES%E3 = LHS%E3*RHS
      RES%E4 = LHS%E4*RHS
      RES%E5 = LHS%E5*RHS
      RES%E6 = LHS%E6*RHS
      RES%E7 = LHS%E7*RHS
      RES%E8 = LHS%E8*RHS
      RES%E9 = LHS%E9*RHS
      RES%EA = LHS%EA*RHS
      RES%EB = LHS%EB*RHS
      RES%EC = LHS%EC*RHS
      RES%ED = LHS%ED*RHS
      RES%EE = LHS%EE*RHS
      RES%EF = LHS%EF*RHS
      RES%EG = LHS%EG*RHS
      RES%EH = LHS%EH*RHS
      RES%EI = LHS%EI*RHS
      RES%EJ = LHS%EJ*RHS
      RES%EK = LHS%EK*RHS
      RES%EL = LHS%EL*RHS
      RES%EM = LHS%EM*RHS

   END FUNCTION DONUMM22N1_MUL_OR_VS

   FUNCTION DONUMM22N1_ADD_OO_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS(:,:)
      TYPE(DONUMM22N1), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

      ! Addition like function 'LHS + RHS'
      !  Real
      RES%R = LHS%R + RHS%R

      ! Order 1
      RES%E1 = LHS%E1 + RHS%E1
      RES%E2 = LHS%E2 + RHS%E2
      RES%E3 = LHS%E3 + RHS%E3
      RES%E4 = LHS%E4 + RHS%E4
      RES%E5 = LHS%E5 + RHS%E5
      RES%E6 = LHS%E6 + RHS%E6
      RES%E7 = LHS%E7 + RHS%E7
      RES%E8 = LHS%E8 + RHS%E8
      RES%E9 = LHS%E9 + RHS%E9
      RES%EA = LHS%EA + RHS%EA
      RES%EB = LHS%EB + RHS%EB
      RES%EC = LHS%EC + RHS%EC
      RES%ED = LHS%ED + RHS%ED
      RES%EE = LHS%EE + RHS%EE
      RES%EF = LHS%EF + RHS%EF
      RES%EG = LHS%EG + RHS%EG
      RES%EH = LHS%EH + RHS%EH
      RES%EI = LHS%EI + RHS%EI
      RES%EJ = LHS%EJ + RHS%EJ
      RES%EK = LHS%EK + RHS%EK
      RES%EL = LHS%EL + RHS%EL
      RES%EM = LHS%EM + RHS%EM

   END FUNCTION DONUMM22N1_ADD_OO_MS

   FUNCTION DONUMM22N1_ADD_RO_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:,:)
      TYPE(DONUMM22N1), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

      ! Addition like function 'LHS + RHS'
      ! Real
      RES%R = LHS + RHS%R

      ! Order 1
      RES%E1 =  + RHS%E1
      RES%E2 =  + RHS%E2
      RES%E3 =  + RHS%E3
      RES%E4 =  + RHS%E4
      RES%E5 =  + RHS%E5
      RES%E6 =  + RHS%E6
      RES%E7 =  + RHS%E7
      RES%E8 =  + RHS%E8
      RES%E9 =  + RHS%E9
      RES%EA =  + RHS%EA
      RES%EB =  + RHS%EB
      RES%EC =  + RHS%EC
      RES%ED =  + RHS%ED
      RES%EE =  + RHS%EE
      RES%EF =  + RHS%EF
      RES%EG =  + RHS%EG
      RES%EH =  + RHS%EH
      RES%EI =  + RHS%EI
      RES%EJ =  + RHS%EJ
      RES%EK =  + RHS%EK
      RES%EL =  + RHS%EL
      RES%EM =  + RHS%EM

   END FUNCTION DONUMM22N1_ADD_RO_MS

   FUNCTION DONUMM22N1_ADD_OR_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS(:,:)
      REAL(DP), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

      ! Addition like function 'LHS + RHS'
      ! Real
      RES%R = LHS%R + RHS

      ! Order 1
      RES%E1 = LHS%E1
      RES%E2 = LHS%E2
      RES%E3 = LHS%E3
      RES%E4 = LHS%E4
      RES%E5 = LHS%E5
      RES%E6 = LHS%E6
      RES%E7 = LHS%E7
      RES%E8 = LHS%E8
      RES%E9 = LHS%E9
      RES%EA = LHS%EA
      RES%EB = LHS%EB
      RES%EC = LHS%EC
      RES%ED = LHS%ED
      RES%EE = LHS%EE
      RES%EF = LHS%EF
      RES%EG = LHS%EG
      RES%EH = LHS%EH
      RES%EI = LHS%EI
      RES%EJ = LHS%EJ
      RES%EK = LHS%EK
      RES%EL = LHS%EL
      RES%EM = LHS%EM

   END FUNCTION DONUMM22N1_ADD_OR_MS

   FUNCTION DONUMM22N1_SUB_OO_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS(:,:)
      TYPE(DONUMM22N1), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

      ! Addition like function 'LHS - RHS'
      !  Real
      RES%R = LHS%R - RHS%R

      ! Order 1
      RES%E1 = LHS%E1 - RHS%E1
      RES%E2 = LHS%E2 - RHS%E2
      RES%E3 = LHS%E3 - RHS%E3
      RES%E4 = LHS%E4 - RHS%E4
      RES%E5 = LHS%E5 - RHS%E5
      RES%E6 = LHS%E6 - RHS%E6
      RES%E7 = LHS%E7 - RHS%E7
      RES%E8 = LHS%E8 - RHS%E8
      RES%E9 = LHS%E9 - RHS%E9
      RES%EA = LHS%EA - RHS%EA
      RES%EB = LHS%EB - RHS%EB
      RES%EC = LHS%EC - RHS%EC
      RES%ED = LHS%ED - RHS%ED
      RES%EE = LHS%EE - RHS%EE
      RES%EF = LHS%EF - RHS%EF
      RES%EG = LHS%EG - RHS%EG
      RES%EH = LHS%EH - RHS%EH
      RES%EI = LHS%EI - RHS%EI
      RES%EJ = LHS%EJ - RHS%EJ
      RES%EK = LHS%EK - RHS%EK
      RES%EL = LHS%EL - RHS%EL
      RES%EM = LHS%EM - RHS%EM

   END FUNCTION DONUMM22N1_SUB_OO_MS

   FUNCTION DONUMM22N1_SUB_RO_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:,:)
      TYPE(DONUMM22N1), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

      ! Addition like function 'LHS - RHS'
      ! Real
      RES%R = LHS - RHS%R

      ! Order 1
      RES%E1 =  - RHS%E1
      RES%E2 =  - RHS%E2
      RES%E3 =  - RHS%E3
      RES%E4 =  - RHS%E4
      RES%E5 =  - RHS%E5
      RES%E6 =  - RHS%E6
      RES%E7 =  - RHS%E7
      RES%E8 =  - RHS%E8
      RES%E9 =  - RHS%E9
      RES%EA =  - RHS%EA
      RES%EB =  - RHS%EB
      RES%EC =  - RHS%EC
      RES%ED =  - RHS%ED
      RES%EE =  - RHS%EE
      RES%EF =  - RHS%EF
      RES%EG =  - RHS%EG
      RES%EH =  - RHS%EH
      RES%EI =  - RHS%EI
      RES%EJ =  - RHS%EJ
      RES%EK =  - RHS%EK
      RES%EL =  - RHS%EL
      RES%EM =  - RHS%EM

   END FUNCTION DONUMM22N1_SUB_RO_MS

   FUNCTION DONUMM22N1_SUB_OR_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS(:,:)
      REAL(DP), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

      ! Addition like function 'LHS - RHS'
      ! Real
      RES%R = LHS%R - RHS

      ! Order 1
      RES%E1 = LHS%E1
      RES%E2 = LHS%E2
      RES%E3 = LHS%E3
      RES%E4 = LHS%E4
      RES%E5 = LHS%E5
      RES%E6 = LHS%E6
      RES%E7 = LHS%E7
      RES%E8 = LHS%E8
      RES%E9 = LHS%E9
      RES%EA = LHS%EA
      RES%EB = LHS%EB
      RES%EC = LHS%EC
      RES%ED = LHS%ED
      RES%EE = LHS%EE
      RES%EF = LHS%EF
      RES%EG = LHS%EG
      RES%EH = LHS%EH
      RES%EI = LHS%EI
      RES%EJ = LHS%EJ
      RES%EK = LHS%EK
      RES%EL = LHS%EL
      RES%EM = LHS%EM

   END FUNCTION DONUMM22N1_SUB_OR_MS

   FUNCTION DONUMM22N1_MUL_OO_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS(:,:)
      TYPE(DONUMM22N1), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

      !  Multiplication like function 'LHS*RHS'
      ! Order 1
      RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
      RES%E2 = LHS%R*RHS%E2 + LHS%E2*RHS%R
      RES%E3 = LHS%R*RHS%E3 + LHS%E3*RHS%R
      RES%E4 = LHS%R*RHS%E4 + LHS%E4*RHS%R
      RES%E5 = LHS%R*RHS%E5 + LHS%E5*RHS%R
      RES%E6 = LHS%R*RHS%E6 + LHS%E6*RHS%R
      RES%E7 = LHS%R*RHS%E7 + LHS%E7*RHS%R
      RES%E8 = LHS%R*RHS%E8 + LHS%E8*RHS%R
      RES%E9 = LHS%R*RHS%E9 + LHS%E9*RHS%R
      RES%EA = LHS%R*RHS%EA + LHS%EA*RHS%R
      RES%EB = LHS%R*RHS%EB + LHS%EB*RHS%R
      RES%EC = LHS%R*RHS%EC + LHS%EC*RHS%R
      RES%ED = LHS%R*RHS%ED + LHS%ED*RHS%R
      RES%EE = LHS%R*RHS%EE + LHS%EE*RHS%R
      RES%EF = LHS%R*RHS%EF + LHS%EF*RHS%R
      RES%EG = LHS%R*RHS%EG + LHS%EG*RHS%R
      RES%EH = LHS%R*RHS%EH + LHS%EH*RHS%R
      RES%EI = LHS%R*RHS%EI + LHS%EI*RHS%R
      RES%EJ = LHS%R*RHS%EJ + LHS%EJ*RHS%R
      RES%EK = LHS%R*RHS%EK + LHS%EK*RHS%R
      RES%EL = LHS%R*RHS%EL + LHS%EL*RHS%R
      RES%EM = LHS%R*RHS%EM + LHS%EM*RHS%R
      ! Order 0
      RES%R = LHS%R*RHS%R

   END FUNCTION DONUMM22N1_MUL_OO_MS

   FUNCTION DONUMM22N1_MUL_RO_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:,:)
      TYPE(DONUMM22N1), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

      ! Multiplication like function 'LHS*RHS'
      !  Real
      RES%R = LHS*RHS%R

      ! Order 1
      RES%E1 = LHS*RHS%E1
      RES%E2 = LHS*RHS%E2
      RES%E3 = LHS*RHS%E3
      RES%E4 = LHS*RHS%E4
      RES%E5 = LHS*RHS%E5
      RES%E6 = LHS*RHS%E6
      RES%E7 = LHS*RHS%E7
      RES%E8 = LHS*RHS%E8
      RES%E9 = LHS*RHS%E9
      RES%EA = LHS*RHS%EA
      RES%EB = LHS*RHS%EB
      RES%EC = LHS*RHS%EC
      RES%ED = LHS*RHS%ED
      RES%EE = LHS*RHS%EE
      RES%EF = LHS*RHS%EF
      RES%EG = LHS*RHS%EG
      RES%EH = LHS*RHS%EH
      RES%EI = LHS*RHS%EI
      RES%EJ = LHS*RHS%EJ
      RES%EK = LHS*RHS%EK
      RES%EL = LHS*RHS%EL
      RES%EM = LHS*RHS%EM

   END FUNCTION DONUMM22N1_MUL_RO_MS

   FUNCTION DONUMM22N1_MUL_OR_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS(:,:)
      REAL(DP), INTENT(IN) :: RHS
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

      ! Multiplication like function 'LHS*RHS'
      !  Real
      RES%R = LHS%R*RHS

      ! Order 1
      RES%E1 = LHS%E1*RHS
      RES%E2 = LHS%E2*RHS
      RES%E3 = LHS%E3*RHS
      RES%E4 = LHS%E4*RHS
      RES%E5 = LHS%E5*RHS
      RES%E6 = LHS%E6*RHS
      RES%E7 = LHS%E7*RHS
      RES%E8 = LHS%E8*RHS
      RES%E9 = LHS%E9*RHS
      RES%EA = LHS%EA*RHS
      RES%EB = LHS%EB*RHS
      RES%EC = LHS%EC*RHS
      RES%ED = LHS%ED*RHS
      RES%EE = LHS%EE*RHS
      RES%EF = LHS%EF*RHS
      RES%EG = LHS%EG*RHS
      RES%EH = LHS%EH*RHS
      RES%EI = LHS%EI*RHS
      RES%EJ = LHS%EJ*RHS
      RES%EK = LHS%EK*RHS
      RES%EL = LHS%EL*RHS
      RES%EM = LHS%EM*RHS

   END FUNCTION DONUMM22N1_MUL_OR_MS

   FUNCTION DONUMM22N1_ADD_OO_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS
      TYPE(DONUMM22N1), INTENT(IN) :: RHS(:)
      TYPE(DONUMM22N1) :: RES(SIZE(RHS,1)) 

      ! Addition like function 'LHS + RHS'
      !  Real
      RES%R = LHS%R + RHS%R

      ! Order 1
      RES%E1 = LHS%E1 + RHS%E1
      RES%E2 = LHS%E2 + RHS%E2
      RES%E3 = LHS%E3 + RHS%E3
      RES%E4 = LHS%E4 + RHS%E4
      RES%E5 = LHS%E5 + RHS%E5
      RES%E6 = LHS%E6 + RHS%E6
      RES%E7 = LHS%E7 + RHS%E7
      RES%E8 = LHS%E8 + RHS%E8
      RES%E9 = LHS%E9 + RHS%E9
      RES%EA = LHS%EA + RHS%EA
      RES%EB = LHS%EB + RHS%EB
      RES%EC = LHS%EC + RHS%EC
      RES%ED = LHS%ED + RHS%ED
      RES%EE = LHS%EE + RHS%EE
      RES%EF = LHS%EF + RHS%EF
      RES%EG = LHS%EG + RHS%EG
      RES%EH = LHS%EH + RHS%EH
      RES%EI = LHS%EI + RHS%EI
      RES%EJ = LHS%EJ + RHS%EJ
      RES%EK = LHS%EK + RHS%EK
      RES%EL = LHS%EL + RHS%EL
      RES%EM = LHS%EM + RHS%EM

   END FUNCTION DONUMM22N1_ADD_OO_SV

   FUNCTION DONUMM22N1_ADD_RO_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(DONUMM22N1), INTENT(IN) :: RHS(:)
      TYPE(DONUMM22N1) :: RES(SIZE(RHS,1)) 

      ! Addition like function 'LHS + RHS'
      ! Real
      RES%R = LHS + RHS%R

      ! Order 1
      RES%E1 =  + RHS%E1
      RES%E2 =  + RHS%E2
      RES%E3 =  + RHS%E3
      RES%E4 =  + RHS%E4
      RES%E5 =  + RHS%E5
      RES%E6 =  + RHS%E6
      RES%E7 =  + RHS%E7
      RES%E8 =  + RHS%E8
      RES%E9 =  + RHS%E9
      RES%EA =  + RHS%EA
      RES%EB =  + RHS%EB
      RES%EC =  + RHS%EC
      RES%ED =  + RHS%ED
      RES%EE =  + RHS%EE
      RES%EF =  + RHS%EF
      RES%EG =  + RHS%EG
      RES%EH =  + RHS%EH
      RES%EI =  + RHS%EI
      RES%EJ =  + RHS%EJ
      RES%EK =  + RHS%EK
      RES%EL =  + RHS%EL
      RES%EM =  + RHS%EM

   END FUNCTION DONUMM22N1_ADD_RO_SV

   FUNCTION DONUMM22N1_ADD_OR_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS(:)
      TYPE(DONUMM22N1) :: RES(SIZE(RHS,1)) 

      ! Addition like function 'LHS + RHS'
      ! Real
      RES%R = LHS%R + RHS

      ! Order 1
      RES%E1 = LHS%E1
      RES%E2 = LHS%E2
      RES%E3 = LHS%E3
      RES%E4 = LHS%E4
      RES%E5 = LHS%E5
      RES%E6 = LHS%E6
      RES%E7 = LHS%E7
      RES%E8 = LHS%E8
      RES%E9 = LHS%E9
      RES%EA = LHS%EA
      RES%EB = LHS%EB
      RES%EC = LHS%EC
      RES%ED = LHS%ED
      RES%EE = LHS%EE
      RES%EF = LHS%EF
      RES%EG = LHS%EG
      RES%EH = LHS%EH
      RES%EI = LHS%EI
      RES%EJ = LHS%EJ
      RES%EK = LHS%EK
      RES%EL = LHS%EL
      RES%EM = LHS%EM

   END FUNCTION DONUMM22N1_ADD_OR_SV

   FUNCTION DONUMM22N1_SUB_OO_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS
      TYPE(DONUMM22N1), INTENT(IN) :: RHS(:)
      TYPE(DONUMM22N1) :: RES(SIZE(RHS,1)) 

      ! Addition like function 'LHS - RHS'
      !  Real
      RES%R = LHS%R - RHS%R

      ! Order 1
      RES%E1 = LHS%E1 - RHS%E1
      RES%E2 = LHS%E2 - RHS%E2
      RES%E3 = LHS%E3 - RHS%E3
      RES%E4 = LHS%E4 - RHS%E4
      RES%E5 = LHS%E5 - RHS%E5
      RES%E6 = LHS%E6 - RHS%E6
      RES%E7 = LHS%E7 - RHS%E7
      RES%E8 = LHS%E8 - RHS%E8
      RES%E9 = LHS%E9 - RHS%E9
      RES%EA = LHS%EA - RHS%EA
      RES%EB = LHS%EB - RHS%EB
      RES%EC = LHS%EC - RHS%EC
      RES%ED = LHS%ED - RHS%ED
      RES%EE = LHS%EE - RHS%EE
      RES%EF = LHS%EF - RHS%EF
      RES%EG = LHS%EG - RHS%EG
      RES%EH = LHS%EH - RHS%EH
      RES%EI = LHS%EI - RHS%EI
      RES%EJ = LHS%EJ - RHS%EJ
      RES%EK = LHS%EK - RHS%EK
      RES%EL = LHS%EL - RHS%EL
      RES%EM = LHS%EM - RHS%EM

   END FUNCTION DONUMM22N1_SUB_OO_SV

   FUNCTION DONUMM22N1_SUB_RO_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(DONUMM22N1), INTENT(IN) :: RHS(:)
      TYPE(DONUMM22N1) :: RES(SIZE(RHS,1)) 

      ! Addition like function 'LHS - RHS'
      ! Real
      RES%R = LHS - RHS%R

      ! Order 1
      RES%E1 =  - RHS%E1
      RES%E2 =  - RHS%E2
      RES%E3 =  - RHS%E3
      RES%E4 =  - RHS%E4
      RES%E5 =  - RHS%E5
      RES%E6 =  - RHS%E6
      RES%E7 =  - RHS%E7
      RES%E8 =  - RHS%E8
      RES%E9 =  - RHS%E9
      RES%EA =  - RHS%EA
      RES%EB =  - RHS%EB
      RES%EC =  - RHS%EC
      RES%ED =  - RHS%ED
      RES%EE =  - RHS%EE
      RES%EF =  - RHS%EF
      RES%EG =  - RHS%EG
      RES%EH =  - RHS%EH
      RES%EI =  - RHS%EI
      RES%EJ =  - RHS%EJ
      RES%EK =  - RHS%EK
      RES%EL =  - RHS%EL
      RES%EM =  - RHS%EM

   END FUNCTION DONUMM22N1_SUB_RO_SV

   FUNCTION DONUMM22N1_SUB_OR_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS(:)
      TYPE(DONUMM22N1) :: RES(SIZE(RHS,1)) 

      ! Addition like function 'LHS - RHS'
      ! Real
      RES%R = LHS%R - RHS

      ! Order 1
      RES%E1 = LHS%E1
      RES%E2 = LHS%E2
      RES%E3 = LHS%E3
      RES%E4 = LHS%E4
      RES%E5 = LHS%E5
      RES%E6 = LHS%E6
      RES%E7 = LHS%E7
      RES%E8 = LHS%E8
      RES%E9 = LHS%E9
      RES%EA = LHS%EA
      RES%EB = LHS%EB
      RES%EC = LHS%EC
      RES%ED = LHS%ED
      RES%EE = LHS%EE
      RES%EF = LHS%EF
      RES%EG = LHS%EG
      RES%EH = LHS%EH
      RES%EI = LHS%EI
      RES%EJ = LHS%EJ
      RES%EK = LHS%EK
      RES%EL = LHS%EL
      RES%EM = LHS%EM

   END FUNCTION DONUMM22N1_SUB_OR_SV

   FUNCTION DONUMM22N1_MUL_OO_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS
      TYPE(DONUMM22N1), INTENT(IN) :: RHS(:)
      TYPE(DONUMM22N1) :: RES(SIZE(RHS,1)) 

      !  Multiplication like function 'LHS*RHS'
      ! Order 1
      RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
      RES%E2 = LHS%R*RHS%E2 + LHS%E2*RHS%R
      RES%E3 = LHS%R*RHS%E3 + LHS%E3*RHS%R
      RES%E4 = LHS%R*RHS%E4 + LHS%E4*RHS%R
      RES%E5 = LHS%R*RHS%E5 + LHS%E5*RHS%R
      RES%E6 = LHS%R*RHS%E6 + LHS%E6*RHS%R
      RES%E7 = LHS%R*RHS%E7 + LHS%E7*RHS%R
      RES%E8 = LHS%R*RHS%E8 + LHS%E8*RHS%R
      RES%E9 = LHS%R*RHS%E9 + LHS%E9*RHS%R
      RES%EA = LHS%R*RHS%EA + LHS%EA*RHS%R
      RES%EB = LHS%R*RHS%EB + LHS%EB*RHS%R
      RES%EC = LHS%R*RHS%EC + LHS%EC*RHS%R
      RES%ED = LHS%R*RHS%ED + LHS%ED*RHS%R
      RES%EE = LHS%R*RHS%EE + LHS%EE*RHS%R
      RES%EF = LHS%R*RHS%EF + LHS%EF*RHS%R
      RES%EG = LHS%R*RHS%EG + LHS%EG*RHS%R
      RES%EH = LHS%R*RHS%EH + LHS%EH*RHS%R
      RES%EI = LHS%R*RHS%EI + LHS%EI*RHS%R
      RES%EJ = LHS%R*RHS%EJ + LHS%EJ*RHS%R
      RES%EK = LHS%R*RHS%EK + LHS%EK*RHS%R
      RES%EL = LHS%R*RHS%EL + LHS%EL*RHS%R
      RES%EM = LHS%R*RHS%EM + LHS%EM*RHS%R
      ! Order 0
      RES%R = LHS%R*RHS%R

   END FUNCTION DONUMM22N1_MUL_OO_SV

   FUNCTION DONUMM22N1_MUL_RO_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(DONUMM22N1), INTENT(IN) :: RHS(:)
      TYPE(DONUMM22N1) :: RES(SIZE(RHS,1)) 

      ! Multiplication like function 'LHS*RHS'
      !  Real
      RES%R = LHS*RHS%R

      ! Order 1
      RES%E1 = LHS*RHS%E1
      RES%E2 = LHS*RHS%E2
      RES%E3 = LHS*RHS%E3
      RES%E4 = LHS*RHS%E4
      RES%E5 = LHS*RHS%E5
      RES%E6 = LHS*RHS%E6
      RES%E7 = LHS*RHS%E7
      RES%E8 = LHS*RHS%E8
      RES%E9 = LHS*RHS%E9
      RES%EA = LHS*RHS%EA
      RES%EB = LHS*RHS%EB
      RES%EC = LHS*RHS%EC
      RES%ED = LHS*RHS%ED
      RES%EE = LHS*RHS%EE
      RES%EF = LHS*RHS%EF
      RES%EG = LHS*RHS%EG
      RES%EH = LHS*RHS%EH
      RES%EI = LHS*RHS%EI
      RES%EJ = LHS*RHS%EJ
      RES%EK = LHS*RHS%EK
      RES%EL = LHS*RHS%EL
      RES%EM = LHS*RHS%EM

   END FUNCTION DONUMM22N1_MUL_RO_SV

   FUNCTION DONUMM22N1_MUL_OR_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS(:)
      TYPE(DONUMM22N1) :: RES(SIZE(RHS,1)) 

      ! Multiplication like function 'LHS*RHS'
      !  Real
      RES%R = LHS%R*RHS

      ! Order 1
      RES%E1 = LHS%E1*RHS
      RES%E2 = LHS%E2*RHS
      RES%E3 = LHS%E3*RHS
      RES%E4 = LHS%E4*RHS
      RES%E5 = LHS%E5*RHS
      RES%E6 = LHS%E6*RHS
      RES%E7 = LHS%E7*RHS
      RES%E8 = LHS%E8*RHS
      RES%E9 = LHS%E9*RHS
      RES%EA = LHS%EA*RHS
      RES%EB = LHS%EB*RHS
      RES%EC = LHS%EC*RHS
      RES%ED = LHS%ED*RHS
      RES%EE = LHS%EE*RHS
      RES%EF = LHS%EF*RHS
      RES%EG = LHS%EG*RHS
      RES%EH = LHS%EH*RHS
      RES%EI = LHS%EI*RHS
      RES%EJ = LHS%EJ*RHS
      RES%EK = LHS%EK*RHS
      RES%EL = LHS%EL*RHS
      RES%EM = LHS%EM*RHS

   END FUNCTION DONUMM22N1_MUL_OR_SV

   FUNCTION DONUMM22N1_ADD_OO_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS
      TYPE(DONUMM22N1), INTENT(IN) :: RHS(:,:)
      TYPE(DONUMM22N1) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

      ! Addition like function 'LHS + RHS'
      !  Real
      RES%R = LHS%R + RHS%R

      ! Order 1
      RES%E1 = LHS%E1 + RHS%E1
      RES%E2 = LHS%E2 + RHS%E2
      RES%E3 = LHS%E3 + RHS%E3
      RES%E4 = LHS%E4 + RHS%E4
      RES%E5 = LHS%E5 + RHS%E5
      RES%E6 = LHS%E6 + RHS%E6
      RES%E7 = LHS%E7 + RHS%E7
      RES%E8 = LHS%E8 + RHS%E8
      RES%E9 = LHS%E9 + RHS%E9
      RES%EA = LHS%EA + RHS%EA
      RES%EB = LHS%EB + RHS%EB
      RES%EC = LHS%EC + RHS%EC
      RES%ED = LHS%ED + RHS%ED
      RES%EE = LHS%EE + RHS%EE
      RES%EF = LHS%EF + RHS%EF
      RES%EG = LHS%EG + RHS%EG
      RES%EH = LHS%EH + RHS%EH
      RES%EI = LHS%EI + RHS%EI
      RES%EJ = LHS%EJ + RHS%EJ
      RES%EK = LHS%EK + RHS%EK
      RES%EL = LHS%EL + RHS%EL
      RES%EM = LHS%EM + RHS%EM

   END FUNCTION DONUMM22N1_ADD_OO_SM

   FUNCTION DONUMM22N1_ADD_RO_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(DONUMM22N1), INTENT(IN) :: RHS(:,:)
      TYPE(DONUMM22N1) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

      ! Addition like function 'LHS + RHS'
      ! Real
      RES%R = LHS + RHS%R

      ! Order 1
      RES%E1 =  + RHS%E1
      RES%E2 =  + RHS%E2
      RES%E3 =  + RHS%E3
      RES%E4 =  + RHS%E4
      RES%E5 =  + RHS%E5
      RES%E6 =  + RHS%E6
      RES%E7 =  + RHS%E7
      RES%E8 =  + RHS%E8
      RES%E9 =  + RHS%E9
      RES%EA =  + RHS%EA
      RES%EB =  + RHS%EB
      RES%EC =  + RHS%EC
      RES%ED =  + RHS%ED
      RES%EE =  + RHS%EE
      RES%EF =  + RHS%EF
      RES%EG =  + RHS%EG
      RES%EH =  + RHS%EH
      RES%EI =  + RHS%EI
      RES%EJ =  + RHS%EJ
      RES%EK =  + RHS%EK
      RES%EL =  + RHS%EL
      RES%EM =  + RHS%EM

   END FUNCTION DONUMM22N1_ADD_RO_SM

   FUNCTION DONUMM22N1_ADD_OR_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS(:,:)
      TYPE(DONUMM22N1) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

      ! Addition like function 'LHS + RHS'
      ! Real
      RES%R = LHS%R + RHS

      ! Order 1
      RES%E1 = LHS%E1
      RES%E2 = LHS%E2
      RES%E3 = LHS%E3
      RES%E4 = LHS%E4
      RES%E5 = LHS%E5
      RES%E6 = LHS%E6
      RES%E7 = LHS%E7
      RES%E8 = LHS%E8
      RES%E9 = LHS%E9
      RES%EA = LHS%EA
      RES%EB = LHS%EB
      RES%EC = LHS%EC
      RES%ED = LHS%ED
      RES%EE = LHS%EE
      RES%EF = LHS%EF
      RES%EG = LHS%EG
      RES%EH = LHS%EH
      RES%EI = LHS%EI
      RES%EJ = LHS%EJ
      RES%EK = LHS%EK
      RES%EL = LHS%EL
      RES%EM = LHS%EM

   END FUNCTION DONUMM22N1_ADD_OR_SM

   FUNCTION DONUMM22N1_SUB_OO_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS
      TYPE(DONUMM22N1), INTENT(IN) :: RHS(:,:)
      TYPE(DONUMM22N1) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

      ! Addition like function 'LHS - RHS'
      !  Real
      RES%R = LHS%R - RHS%R

      ! Order 1
      RES%E1 = LHS%E1 - RHS%E1
      RES%E2 = LHS%E2 - RHS%E2
      RES%E3 = LHS%E3 - RHS%E3
      RES%E4 = LHS%E4 - RHS%E4
      RES%E5 = LHS%E5 - RHS%E5
      RES%E6 = LHS%E6 - RHS%E6
      RES%E7 = LHS%E7 - RHS%E7
      RES%E8 = LHS%E8 - RHS%E8
      RES%E9 = LHS%E9 - RHS%E9
      RES%EA = LHS%EA - RHS%EA
      RES%EB = LHS%EB - RHS%EB
      RES%EC = LHS%EC - RHS%EC
      RES%ED = LHS%ED - RHS%ED
      RES%EE = LHS%EE - RHS%EE
      RES%EF = LHS%EF - RHS%EF
      RES%EG = LHS%EG - RHS%EG
      RES%EH = LHS%EH - RHS%EH
      RES%EI = LHS%EI - RHS%EI
      RES%EJ = LHS%EJ - RHS%EJ
      RES%EK = LHS%EK - RHS%EK
      RES%EL = LHS%EL - RHS%EL
      RES%EM = LHS%EM - RHS%EM

   END FUNCTION DONUMM22N1_SUB_OO_SM

   FUNCTION DONUMM22N1_SUB_RO_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(DONUMM22N1), INTENT(IN) :: RHS(:,:)
      TYPE(DONUMM22N1) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

      ! Addition like function 'LHS - RHS'
      ! Real
      RES%R = LHS - RHS%R

      ! Order 1
      RES%E1 =  - RHS%E1
      RES%E2 =  - RHS%E2
      RES%E3 =  - RHS%E3
      RES%E4 =  - RHS%E4
      RES%E5 =  - RHS%E5
      RES%E6 =  - RHS%E6
      RES%E7 =  - RHS%E7
      RES%E8 =  - RHS%E8
      RES%E9 =  - RHS%E9
      RES%EA =  - RHS%EA
      RES%EB =  - RHS%EB
      RES%EC =  - RHS%EC
      RES%ED =  - RHS%ED
      RES%EE =  - RHS%EE
      RES%EF =  - RHS%EF
      RES%EG =  - RHS%EG
      RES%EH =  - RHS%EH
      RES%EI =  - RHS%EI
      RES%EJ =  - RHS%EJ
      RES%EK =  - RHS%EK
      RES%EL =  - RHS%EL
      RES%EM =  - RHS%EM

   END FUNCTION DONUMM22N1_SUB_RO_SM

   FUNCTION DONUMM22N1_SUB_OR_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS(:,:)
      TYPE(DONUMM22N1) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

      ! Addition like function 'LHS - RHS'
      ! Real
      RES%R = LHS%R - RHS

      ! Order 1
      RES%E1 = LHS%E1
      RES%E2 = LHS%E2
      RES%E3 = LHS%E3
      RES%E4 = LHS%E4
      RES%E5 = LHS%E5
      RES%E6 = LHS%E6
      RES%E7 = LHS%E7
      RES%E8 = LHS%E8
      RES%E9 = LHS%E9
      RES%EA = LHS%EA
      RES%EB = LHS%EB
      RES%EC = LHS%EC
      RES%ED = LHS%ED
      RES%EE = LHS%EE
      RES%EF = LHS%EF
      RES%EG = LHS%EG
      RES%EH = LHS%EH
      RES%EI = LHS%EI
      RES%EJ = LHS%EJ
      RES%EK = LHS%EK
      RES%EL = LHS%EL
      RES%EM = LHS%EM

   END FUNCTION DONUMM22N1_SUB_OR_SM

   FUNCTION DONUMM22N1_MUL_OO_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS
      TYPE(DONUMM22N1), INTENT(IN) :: RHS(:,:)
      TYPE(DONUMM22N1) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

      !  Multiplication like function 'LHS*RHS'
      ! Order 1
      RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
      RES%E2 = LHS%R*RHS%E2 + LHS%E2*RHS%R
      RES%E3 = LHS%R*RHS%E3 + LHS%E3*RHS%R
      RES%E4 = LHS%R*RHS%E4 + LHS%E4*RHS%R
      RES%E5 = LHS%R*RHS%E5 + LHS%E5*RHS%R
      RES%E6 = LHS%R*RHS%E6 + LHS%E6*RHS%R
      RES%E7 = LHS%R*RHS%E7 + LHS%E7*RHS%R
      RES%E8 = LHS%R*RHS%E8 + LHS%E8*RHS%R
      RES%E9 = LHS%R*RHS%E9 + LHS%E9*RHS%R
      RES%EA = LHS%R*RHS%EA + LHS%EA*RHS%R
      RES%EB = LHS%R*RHS%EB + LHS%EB*RHS%R
      RES%EC = LHS%R*RHS%EC + LHS%EC*RHS%R
      RES%ED = LHS%R*RHS%ED + LHS%ED*RHS%R
      RES%EE = LHS%R*RHS%EE + LHS%EE*RHS%R
      RES%EF = LHS%R*RHS%EF + LHS%EF*RHS%R
      RES%EG = LHS%R*RHS%EG + LHS%EG*RHS%R
      RES%EH = LHS%R*RHS%EH + LHS%EH*RHS%R
      RES%EI = LHS%R*RHS%EI + LHS%EI*RHS%R
      RES%EJ = LHS%R*RHS%EJ + LHS%EJ*RHS%R
      RES%EK = LHS%R*RHS%EK + LHS%EK*RHS%R
      RES%EL = LHS%R*RHS%EL + LHS%EL*RHS%R
      RES%EM = LHS%R*RHS%EM + LHS%EM*RHS%R
      ! Order 0
      RES%R = LHS%R*RHS%R

   END FUNCTION DONUMM22N1_MUL_OO_SM

   FUNCTION DONUMM22N1_MUL_RO_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(DONUMM22N1), INTENT(IN) :: RHS(:,:)
      TYPE(DONUMM22N1) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

      ! Multiplication like function 'LHS*RHS'
      !  Real
      RES%R = LHS*RHS%R

      ! Order 1
      RES%E1 = LHS*RHS%E1
      RES%E2 = LHS*RHS%E2
      RES%E3 = LHS*RHS%E3
      RES%E4 = LHS*RHS%E4
      RES%E5 = LHS*RHS%E5
      RES%E6 = LHS*RHS%E6
      RES%E7 = LHS*RHS%E7
      RES%E8 = LHS*RHS%E8
      RES%E9 = LHS*RHS%E9
      RES%EA = LHS*RHS%EA
      RES%EB = LHS*RHS%EB
      RES%EC = LHS*RHS%EC
      RES%ED = LHS*RHS%ED
      RES%EE = LHS*RHS%EE
      RES%EF = LHS*RHS%EF
      RES%EG = LHS*RHS%EG
      RES%EH = LHS*RHS%EH
      RES%EI = LHS*RHS%EI
      RES%EJ = LHS*RHS%EJ
      RES%EK = LHS*RHS%EK
      RES%EL = LHS*RHS%EL
      RES%EM = LHS*RHS%EM

   END FUNCTION DONUMM22N1_MUL_RO_SM

   FUNCTION DONUMM22N1_MUL_OR_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS(:,:)
      TYPE(DONUMM22N1) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

      ! Multiplication like function 'LHS*RHS'
      !  Real
      RES%R = LHS%R*RHS

      ! Order 1
      RES%E1 = LHS%E1*RHS
      RES%E2 = LHS%E2*RHS
      RES%E3 = LHS%E3*RHS
      RES%E4 = LHS%E4*RHS
      RES%E5 = LHS%E5*RHS
      RES%E6 = LHS%E6*RHS
      RES%E7 = LHS%E7*RHS
      RES%E8 = LHS%E8*RHS
      RES%E9 = LHS%E9*RHS
      RES%EA = LHS%EA*RHS
      RES%EB = LHS%EB*RHS
      RES%EC = LHS%EC*RHS
      RES%ED = LHS%ED*RHS
      RES%EE = LHS%EE*RHS
      RES%EF = LHS%EF*RHS
      RES%EG = LHS%EG*RHS
      RES%EH = LHS%EH*RHS
      RES%EI = LHS%EI*RHS
      RES%EJ = LHS%EJ*RHS
      RES%EK = LHS%EK*RHS
      RES%EL = LHS%EL*RHS
      RES%EM = LHS%EM*RHS

   END FUNCTION DONUMM22N1_MUL_OR_SM

ELEMENTAL    FUNCTION DONUMM22N1_GEM_OOO(A,B,C)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: A 
      TYPE(DONUMM22N1), INTENT(IN) :: B 
      TYPE(DONUMM22N1), INTENT(IN) :: C 
      TYPE(DONUMM22N1) :: RES 

      !  General multiplication like function 'A*B + C'

      ! Order 0
      RES%R = C%R + A%R*B%R

      ! Order 1
      RES%E1 = C%E1 + A%R*B%E1 + A%E1*B%R
      RES%E2 = C%E2 + A%R*B%E2 + A%E2*B%R
      RES%E3 = C%E3 + A%R*B%E3 + A%E3*B%R
      RES%E4 = C%E4 + A%R*B%E4 + A%E4*B%R
      RES%E5 = C%E5 + A%R*B%E5 + A%E5*B%R
      RES%E6 = C%E6 + A%R*B%E6 + A%E6*B%R
      RES%E7 = C%E7 + A%R*B%E7 + A%E7*B%R
      RES%E8 = C%E8 + A%R*B%E8 + A%E8*B%R
      RES%E9 = C%E9 + A%R*B%E9 + A%E9*B%R
      RES%EA = C%EA + A%R*B%EA + A%EA*B%R
      RES%EB = C%EB + A%R*B%EB + A%EB*B%R
      RES%EC = C%EC + A%R*B%EC + A%EC*B%R
      RES%ED = C%ED + A%R*B%ED + A%ED*B%R
      RES%EE = C%EE + A%R*B%EE + A%EE*B%R
      RES%EF = C%EF + A%R*B%EF + A%EF*B%R
      RES%EG = C%EG + A%R*B%EG + A%EG*B%R
      RES%EH = C%EH + A%R*B%EH + A%EH*B%R
      RES%EI = C%EI + A%R*B%EI + A%EI*B%R
      RES%EJ = C%EJ + A%R*B%EJ + A%EJ*B%R
      RES%EK = C%EK + A%R*B%EK + A%EK*B%R
      RES%EL = C%EL + A%R*B%EL + A%EL*B%R
      RES%EM = C%EM + A%R*B%EM + A%EM*B%R

   END FUNCTION DONUMM22N1_GEM_OOO

ELEMENTAL    FUNCTION DONUMM22N1_GEM_ROO(A,B,C)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: A 
      TYPE(DONUMM22N1), INTENT(IN) :: B 
      TYPE(DONUMM22N1), INTENT(IN) :: C 
      TYPE(DONUMM22N1) :: RES 

      !  General multiplication like function 'A*B + C'
      ! Order 1
      RES%E1 = C%E1 + A*B%E1
      RES%E2 = C%E2 + A*B%E2
      RES%E3 = C%E3 + A*B%E3
      RES%E4 = C%E4 + A*B%E4
      RES%E5 = C%E5 + A*B%E5
      RES%E6 = C%E6 + A*B%E6
      RES%E7 = C%E7 + A*B%E7
      RES%E8 = C%E8 + A*B%E8
      RES%E9 = C%E9 + A*B%E9
      RES%EA = C%EA + A*B%EA
      RES%EB = C%EB + A*B%EB
      RES%EC = C%EC + A*B%EC
      RES%ED = C%ED + A*B%ED
      RES%EE = C%EE + A*B%EE
      RES%EF = C%EF + A*B%EF
      RES%EG = C%EG + A*B%EG
      RES%EH = C%EH + A*B%EH
      RES%EI = C%EI + A*B%EI
      RES%EJ = C%EJ + A*B%EJ
      RES%EK = C%EK + A*B%EK
      RES%EL = C%EL + A*B%EL
      RES%EM = C%EM + A*B%EM
      ! Order 0
      RES%R = C%R + A*B%R

   END FUNCTION DONUMM22N1_GEM_ROO

ELEMENTAL    FUNCTION DONUMM22N1_GEM_ORO(A,B,C)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: A 
      REAL(DP), INTENT(IN) :: B 
      TYPE(DONUMM22N1), INTENT(IN) :: C 
      TYPE(DONUMM22N1) :: RES 

      !  General multiplication like function 'A*B + C'

      ! Order 0
      RES%R = C%R + A%R*B

      ! Order 1
      RES%E1 = C%E1 + A%E1*B
      RES%E2 = C%E2 + A%E2*B
      RES%E3 = C%E3 + A%E3*B
      RES%E4 = C%E4 + A%E4*B
      RES%E5 = C%E5 + A%E5*B
      RES%E6 = C%E6 + A%E6*B
      RES%E7 = C%E7 + A%E7*B
      RES%E8 = C%E8 + A%E8*B
      RES%E9 = C%E9 + A%E9*B
      RES%EA = C%EA + A%EA*B
      RES%EB = C%EB + A%EB*B
      RES%EC = C%EC + A%EC*B
      RES%ED = C%ED + A%ED*B
      RES%EE = C%EE + A%EE*B
      RES%EF = C%EF + A%EF*B
      RES%EG = C%EG + A%EG*B
      RES%EH = C%EH + A%EH*B
      RES%EI = C%EI + A%EI*B
      RES%EJ = C%EJ + A%EJ*B
      RES%EK = C%EK + A%EK*B
      RES%EL = C%EL + A%EL*B
      RES%EM = C%EM + A%EM*B

   END FUNCTION DONUMM22N1_GEM_ORO

   FUNCTION DONUMM22N1_MATMUL_DONUMM22N1(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS(:,:)
      TYPE(DONUMM22N1), INTENT(IN) :: RHS(:,:)
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1),SIZE(RHS,2))

      !  Multiplication like function 'MATMUL(lhs,rhs)'
      ! Order 1
      res%E1 = MATMUL(lhs%R,rhs%E1) + MATMUL(lhs%E1,rhs%R)
      res%E2 = MATMUL(lhs%R,rhs%E2) + MATMUL(lhs%E2,rhs%R)
      res%E3 = MATMUL(lhs%R,rhs%E3) + MATMUL(lhs%E3,rhs%R)
      res%E4 = MATMUL(lhs%R,rhs%E4) + MATMUL(lhs%E4,rhs%R)
      res%E5 = MATMUL(lhs%R,rhs%E5) + MATMUL(lhs%E5,rhs%R)
      res%E6 = MATMUL(lhs%R,rhs%E6) + MATMUL(lhs%E6,rhs%R)
      res%E7 = MATMUL(lhs%R,rhs%E7) + MATMUL(lhs%E7,rhs%R)
      res%E8 = MATMUL(lhs%R,rhs%E8) + MATMUL(lhs%E8,rhs%R)
      res%E9 = MATMUL(lhs%R,rhs%E9) + MATMUL(lhs%E9,rhs%R)
      res%EA = MATMUL(lhs%R,rhs%EA) + MATMUL(lhs%EA,rhs%R)
      res%EB = MATMUL(lhs%R,rhs%EB) + MATMUL(lhs%EB,rhs%R)
      res%EC = MATMUL(lhs%R,rhs%EC) + MATMUL(lhs%EC,rhs%R)
      res%ED = MATMUL(lhs%R,rhs%ED) + MATMUL(lhs%ED,rhs%R)
      res%EE = MATMUL(lhs%R,rhs%EE) + MATMUL(lhs%EE,rhs%R)
      res%EF = MATMUL(lhs%R,rhs%EF) + MATMUL(lhs%EF,rhs%R)
      res%EG = MATMUL(lhs%R,rhs%EG) + MATMUL(lhs%EG,rhs%R)
      res%EH = MATMUL(lhs%R,rhs%EH) + MATMUL(lhs%EH,rhs%R)
      res%EI = MATMUL(lhs%R,rhs%EI) + MATMUL(lhs%EI,rhs%R)
      res%EJ = MATMUL(lhs%R,rhs%EJ) + MATMUL(lhs%EJ,rhs%R)
      res%EK = MATMUL(lhs%R,rhs%EK) + MATMUL(lhs%EK,rhs%R)
      res%EL = MATMUL(lhs%R,rhs%EL) + MATMUL(lhs%EL,rhs%R)
      res%EM = MATMUL(lhs%R,rhs%EM) + MATMUL(lhs%EM,rhs%R)
      ! Order 0
      res%R = MATMUL(lhs%R,rhs%R)

   END FUNCTION DONUMM22N1_MATMUL_DONUMM22N1

   FUNCTION R_MATMUL_DONUMM22N1(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:,:)
      TYPE(DONUMM22N1), INTENT(IN) :: RHS(:,:)
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1),SIZE(RHS,2))

      ! Multiplication like function 'MATMUL(lhs,rhs)'
      !  Real
      res%R = MATMUL(lhs,rhs%R)

      ! Order 1
      res%E1 = MATMUL(lhs,rhs%E1)
      res%E2 = MATMUL(lhs,rhs%E2)
      res%E3 = MATMUL(lhs,rhs%E3)
      res%E4 = MATMUL(lhs,rhs%E4)
      res%E5 = MATMUL(lhs,rhs%E5)
      res%E6 = MATMUL(lhs,rhs%E6)
      res%E7 = MATMUL(lhs,rhs%E7)
      res%E8 = MATMUL(lhs,rhs%E8)
      res%E9 = MATMUL(lhs,rhs%E9)
      res%EA = MATMUL(lhs,rhs%EA)
      res%EB = MATMUL(lhs,rhs%EB)
      res%EC = MATMUL(lhs,rhs%EC)
      res%ED = MATMUL(lhs,rhs%ED)
      res%EE = MATMUL(lhs,rhs%EE)
      res%EF = MATMUL(lhs,rhs%EF)
      res%EG = MATMUL(lhs,rhs%EG)
      res%EH = MATMUL(lhs,rhs%EH)
      res%EI = MATMUL(lhs,rhs%EI)
      res%EJ = MATMUL(lhs,rhs%EJ)
      res%EK = MATMUL(lhs,rhs%EK)
      res%EL = MATMUL(lhs,rhs%EL)
      res%EM = MATMUL(lhs,rhs%EM)

   END FUNCTION R_MATMUL_DONUMM22N1

   FUNCTION DONUMM22N1_MATMUL_R(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS(:,:)
      REAL(DP), INTENT(IN) :: RHS(:,:)
      TYPE(DONUMM22N1) :: RES(SIZE(LHS,1),SIZE(RHS,2))

      ! Multiplication like function 'MATMUL(lhs,rhs)'
      !  Real
      res%R = MATMUL(lhs%R,rhs)

      ! Order 1
      res%E1 = MATMUL(lhs%E1,rhs)
      res%E2 = MATMUL(lhs%E2,rhs)
      res%E3 = MATMUL(lhs%E3,rhs)
      res%E4 = MATMUL(lhs%E4,rhs)
      res%E5 = MATMUL(lhs%E5,rhs)
      res%E6 = MATMUL(lhs%E6,rhs)
      res%E7 = MATMUL(lhs%E7,rhs)
      res%E8 = MATMUL(lhs%E8,rhs)
      res%E9 = MATMUL(lhs%E9,rhs)
      res%EA = MATMUL(lhs%EA,rhs)
      res%EB = MATMUL(lhs%EB,rhs)
      res%EC = MATMUL(lhs%EC,rhs)
      res%ED = MATMUL(lhs%ED,rhs)
      res%EE = MATMUL(lhs%EE,rhs)
      res%EF = MATMUL(lhs%EF,rhs)
      res%EG = MATMUL(lhs%EG,rhs)
      res%EH = MATMUL(lhs%EH,rhs)
      res%EI = MATMUL(lhs%EI,rhs)
      res%EJ = MATMUL(lhs%EJ,rhs)
      res%EK = MATMUL(lhs%EK,rhs)
      res%EL = MATMUL(lhs%EL,rhs)
      res%EM = MATMUL(lhs%EM,rhs)

   END FUNCTION DONUMM22N1_MATMUL_R

   FUNCTION DONUMM22N1_DOT_PRODUCT_DONUMM22N1(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS(:)
      TYPE(DONUMM22N1), INTENT(IN) :: RHS(SIZE(LHS))
      TYPE(DONUMM22N1) :: RES

      !  Multiplication like function 'DOT_PRODUCT(lhs,rhs)'
      ! Order 1
      res%E1 = DOT_PRODUCT(lhs%R,rhs%E1) + DOT_PRODUCT(lhs%E1,rhs%R)
      res%E2 = DOT_PRODUCT(lhs%R,rhs%E2) + DOT_PRODUCT(lhs%E2,rhs%R)
      res%E3 = DOT_PRODUCT(lhs%R,rhs%E3) + DOT_PRODUCT(lhs%E3,rhs%R)
      res%E4 = DOT_PRODUCT(lhs%R,rhs%E4) + DOT_PRODUCT(lhs%E4,rhs%R)
      res%E5 = DOT_PRODUCT(lhs%R,rhs%E5) + DOT_PRODUCT(lhs%E5,rhs%R)
      res%E6 = DOT_PRODUCT(lhs%R,rhs%E6) + DOT_PRODUCT(lhs%E6,rhs%R)
      res%E7 = DOT_PRODUCT(lhs%R,rhs%E7) + DOT_PRODUCT(lhs%E7,rhs%R)
      res%E8 = DOT_PRODUCT(lhs%R,rhs%E8) + DOT_PRODUCT(lhs%E8,rhs%R)
      res%E9 = DOT_PRODUCT(lhs%R,rhs%E9) + DOT_PRODUCT(lhs%E9,rhs%R)
      res%EA = DOT_PRODUCT(lhs%R,rhs%EA) + DOT_PRODUCT(lhs%EA,rhs%R)
      res%EB = DOT_PRODUCT(lhs%R,rhs%EB) + DOT_PRODUCT(lhs%EB,rhs%R)
      res%EC = DOT_PRODUCT(lhs%R,rhs%EC) + DOT_PRODUCT(lhs%EC,rhs%R)
      res%ED = DOT_PRODUCT(lhs%R,rhs%ED) + DOT_PRODUCT(lhs%ED,rhs%R)
      res%EE = DOT_PRODUCT(lhs%R,rhs%EE) + DOT_PRODUCT(lhs%EE,rhs%R)
      res%EF = DOT_PRODUCT(lhs%R,rhs%EF) + DOT_PRODUCT(lhs%EF,rhs%R)
      res%EG = DOT_PRODUCT(lhs%R,rhs%EG) + DOT_PRODUCT(lhs%EG,rhs%R)
      res%EH = DOT_PRODUCT(lhs%R,rhs%EH) + DOT_PRODUCT(lhs%EH,rhs%R)
      res%EI = DOT_PRODUCT(lhs%R,rhs%EI) + DOT_PRODUCT(lhs%EI,rhs%R)
      res%EJ = DOT_PRODUCT(lhs%R,rhs%EJ) + DOT_PRODUCT(lhs%EJ,rhs%R)
      res%EK = DOT_PRODUCT(lhs%R,rhs%EK) + DOT_PRODUCT(lhs%EK,rhs%R)
      res%EL = DOT_PRODUCT(lhs%R,rhs%EL) + DOT_PRODUCT(lhs%EL,rhs%R)
      res%EM = DOT_PRODUCT(lhs%R,rhs%EM) + DOT_PRODUCT(lhs%EM,rhs%R)
      ! Order 0
      res%R = DOT_PRODUCT(lhs%R,rhs%R)

   END FUNCTION DONUMM22N1_DOT_PRODUCT_DONUMM22N1

   FUNCTION R_DOT_PRODUCT_DONUMM22N1(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:)
      TYPE(DONUMM22N1), INTENT(IN) :: RHS(SIZE(LHS))
      TYPE(DONUMM22N1) :: RES

      ! Multiplication like function 'DOT_PRODUCT(lhs,rhs)'
      !  Real
      res%R = DOT_PRODUCT(lhs,rhs%R)

      ! Order 1
      res%E1 = DOT_PRODUCT(lhs,rhs%E1)
      res%E2 = DOT_PRODUCT(lhs,rhs%E2)
      res%E3 = DOT_PRODUCT(lhs,rhs%E3)
      res%E4 = DOT_PRODUCT(lhs,rhs%E4)
      res%E5 = DOT_PRODUCT(lhs,rhs%E5)
      res%E6 = DOT_PRODUCT(lhs,rhs%E6)
      res%E7 = DOT_PRODUCT(lhs,rhs%E7)
      res%E8 = DOT_PRODUCT(lhs,rhs%E8)
      res%E9 = DOT_PRODUCT(lhs,rhs%E9)
      res%EA = DOT_PRODUCT(lhs,rhs%EA)
      res%EB = DOT_PRODUCT(lhs,rhs%EB)
      res%EC = DOT_PRODUCT(lhs,rhs%EC)
      res%ED = DOT_PRODUCT(lhs,rhs%ED)
      res%EE = DOT_PRODUCT(lhs,rhs%EE)
      res%EF = DOT_PRODUCT(lhs,rhs%EF)
      res%EG = DOT_PRODUCT(lhs,rhs%EG)
      res%EH = DOT_PRODUCT(lhs,rhs%EH)
      res%EI = DOT_PRODUCT(lhs,rhs%EI)
      res%EJ = DOT_PRODUCT(lhs,rhs%EJ)
      res%EK = DOT_PRODUCT(lhs,rhs%EK)
      res%EL = DOT_PRODUCT(lhs,rhs%EL)
      res%EM = DOT_PRODUCT(lhs,rhs%EM)

   END FUNCTION R_DOT_PRODUCT_DONUMM22N1

   FUNCTION DONUMM22N1_DOT_PRODUCT_R(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS(:)
      REAL(DP), INTENT(IN) :: RHS(SIZE(LHS))
      TYPE(DONUMM22N1) :: RES

      ! Multiplication like function 'DOT_PRODUCT(lhs,rhs)'
      !  Real
      res%R = DOT_PRODUCT(lhs%R,rhs)

      ! Order 1
      res%E1 = DOT_PRODUCT(lhs%E1,rhs)
      res%E2 = DOT_PRODUCT(lhs%E2,rhs)
      res%E3 = DOT_PRODUCT(lhs%E3,rhs)
      res%E4 = DOT_PRODUCT(lhs%E4,rhs)
      res%E5 = DOT_PRODUCT(lhs%E5,rhs)
      res%E6 = DOT_PRODUCT(lhs%E6,rhs)
      res%E7 = DOT_PRODUCT(lhs%E7,rhs)
      res%E8 = DOT_PRODUCT(lhs%E8,rhs)
      res%E9 = DOT_PRODUCT(lhs%E9,rhs)
      res%EA = DOT_PRODUCT(lhs%EA,rhs)
      res%EB = DOT_PRODUCT(lhs%EB,rhs)
      res%EC = DOT_PRODUCT(lhs%EC,rhs)
      res%ED = DOT_PRODUCT(lhs%ED,rhs)
      res%EE = DOT_PRODUCT(lhs%EE,rhs)
      res%EF = DOT_PRODUCT(lhs%EF,rhs)
      res%EG = DOT_PRODUCT(lhs%EG,rhs)
      res%EH = DOT_PRODUCT(lhs%EH,rhs)
      res%EI = DOT_PRODUCT(lhs%EI,rhs)
      res%EJ = DOT_PRODUCT(lhs%EJ,rhs)
      res%EK = DOT_PRODUCT(lhs%EK,rhs)
      res%EL = DOT_PRODUCT(lhs%EL,rhs)
      res%EM = DOT_PRODUCT(lhs%EM,rhs)

   END FUNCTION DONUMM22N1_DOT_PRODUCT_R

   FUNCTION DONUMM22N1_TRANSPOSE(LHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: LHS(:,:)
      TYPE(DONUMM22N1) :: RES (SIZE(LHS,2),SIZE(LHS,1))

      ! Negation like function 'TRANSPOSE(LHS)'
      ! Real
      RES%R = TRANSPOSE(LHS%R)
      ! Order 1
      RES%E1 = TRANSPOSE(LHS%E1)
      RES%E2 = TRANSPOSE(LHS%E2)
      RES%E3 = TRANSPOSE(LHS%E3)
      RES%E4 = TRANSPOSE(LHS%E4)
      RES%E5 = TRANSPOSE(LHS%E5)
      RES%E6 = TRANSPOSE(LHS%E6)
      RES%E7 = TRANSPOSE(LHS%E7)
      RES%E8 = TRANSPOSE(LHS%E8)
      RES%E9 = TRANSPOSE(LHS%E9)
      RES%EA = TRANSPOSE(LHS%EA)
      RES%EB = TRANSPOSE(LHS%EB)
      RES%EC = TRANSPOSE(LHS%EC)
      RES%ED = TRANSPOSE(LHS%ED)
      RES%EE = TRANSPOSE(LHS%EE)
      RES%EF = TRANSPOSE(LHS%EF)
      RES%EG = TRANSPOSE(LHS%EG)
      RES%EH = TRANSPOSE(LHS%EH)
      RES%EI = TRANSPOSE(LHS%EI)
      RES%EJ = TRANSPOSE(LHS%EJ)
      RES%EK = TRANSPOSE(LHS%EK)
      RES%EL = TRANSPOSE(LHS%EL)
      RES%EM = TRANSPOSE(LHS%EM)

   END FUNCTION DONUMM22N1_TRANSPOSE

FUNCTION DONUMM22N1_TO_CR_MAT_S(VAL) RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: VAL
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
      ! R x E3 -> E3 (4, 4)
      RES(1+NROWS*3:NROWS*4,1+NCOLS*3:NCOLS*4) = VAL%R
      ! E3 x R -> E3 (4, 1)
      RES(1+NROWS*3:NROWS*4,1+NCOLS*0:NCOLS*1) = VAL%E3
      ! R x E4 -> E4 (5, 5)
      RES(1+NROWS*4:NROWS*5,1+NCOLS*4:NCOLS*5) = VAL%R
      ! E4 x R -> E4 (5, 1)
      RES(1+NROWS*4:NROWS*5,1+NCOLS*0:NCOLS*1) = VAL%E4
      ! R x E5 -> E5 (6, 6)
      RES(1+NROWS*5:NROWS*6,1+NCOLS*5:NCOLS*6) = VAL%R
      ! E5 x R -> E5 (6, 1)
      RES(1+NROWS*5:NROWS*6,1+NCOLS*0:NCOLS*1) = VAL%E5
      ! R x E6 -> E6 (7, 7)
      RES(1+NROWS*6:NROWS*7,1+NCOLS*6:NCOLS*7) = VAL%R
      ! E6 x R -> E6 (7, 1)
      RES(1+NROWS*6:NROWS*7,1+NCOLS*0:NCOLS*1) = VAL%E6
      ! R x E7 -> E7 (8, 8)
      RES(1+NROWS*7:NROWS*8,1+NCOLS*7:NCOLS*8) = VAL%R
      ! E7 x R -> E7 (8, 1)
      RES(1+NROWS*7:NROWS*8,1+NCOLS*0:NCOLS*1) = VAL%E7
      ! R x E8 -> E8 (9, 9)
      RES(1+NROWS*8:NROWS*9,1+NCOLS*8:NCOLS*9) = VAL%R
      ! E8 x R -> E8 (9, 1)
      RES(1+NROWS*8:NROWS*9,1+NCOLS*0:NCOLS*1) = VAL%E8
      ! R x E9 -> E9 (10, 10)
      RES(1+NROWS*9:NROWS*10,1+NCOLS*9:NCOLS*10) = VAL%R
      ! E9 x R -> E9 (10, 1)
      RES(1+NROWS*9:NROWS*10,1+NCOLS*0:NCOLS*1) = VAL%E9
      ! R x EA -> EA (11, 11)
      RES(1+NROWS*10:NROWS*11,1+NCOLS*10:NCOLS*11) = VAL%R
      ! EA x R -> EA (11, 1)
      RES(1+NROWS*10:NROWS*11,1+NCOLS*0:NCOLS*1) = VAL%EA
      ! R x EB -> EB (12, 12)
      RES(1+NROWS*11:NROWS*12,1+NCOLS*11:NCOLS*12) = VAL%R
      ! EB x R -> EB (12, 1)
      RES(1+NROWS*11:NROWS*12,1+NCOLS*0:NCOLS*1) = VAL%EB
      ! R x EC -> EC (13, 13)
      RES(1+NROWS*12:NROWS*13,1+NCOLS*12:NCOLS*13) = VAL%R
      ! EC x R -> EC (13, 1)
      RES(1+NROWS*12:NROWS*13,1+NCOLS*0:NCOLS*1) = VAL%EC
      ! R x ED -> ED (14, 14)
      RES(1+NROWS*13:NROWS*14,1+NCOLS*13:NCOLS*14) = VAL%R
      ! ED x R -> ED (14, 1)
      RES(1+NROWS*13:NROWS*14,1+NCOLS*0:NCOLS*1) = VAL%ED
      ! R x EE -> EE (15, 15)
      RES(1+NROWS*14:NROWS*15,1+NCOLS*14:NCOLS*15) = VAL%R
      ! EE x R -> EE (15, 1)
      RES(1+NROWS*14:NROWS*15,1+NCOLS*0:NCOLS*1) = VAL%EE
      ! R x EF -> EF (16, 16)
      RES(1+NROWS*15:NROWS*16,1+NCOLS*15:NCOLS*16) = VAL%R
      ! EF x R -> EF (16, 1)
      RES(1+NROWS*15:NROWS*16,1+NCOLS*0:NCOLS*1) = VAL%EF
      ! R x EG -> EG (17, 17)
      RES(1+NROWS*16:NROWS*17,1+NCOLS*16:NCOLS*17) = VAL%R
      ! EG x R -> EG (17, 1)
      RES(1+NROWS*16:NROWS*17,1+NCOLS*0:NCOLS*1) = VAL%EG
      ! R x EH -> EH (18, 18)
      RES(1+NROWS*17:NROWS*18,1+NCOLS*17:NCOLS*18) = VAL%R
      ! EH x R -> EH (18, 1)
      RES(1+NROWS*17:NROWS*18,1+NCOLS*0:NCOLS*1) = VAL%EH
      ! R x EI -> EI (19, 19)
      RES(1+NROWS*18:NROWS*19,1+NCOLS*18:NCOLS*19) = VAL%R
      ! EI x R -> EI (19, 1)
      RES(1+NROWS*18:NROWS*19,1+NCOLS*0:NCOLS*1) = VAL%EI
      ! R x EJ -> EJ (20, 20)
      RES(1+NROWS*19:NROWS*20,1+NCOLS*19:NCOLS*20) = VAL%R
      ! EJ x R -> EJ (20, 1)
      RES(1+NROWS*19:NROWS*20,1+NCOLS*0:NCOLS*1) = VAL%EJ
      ! R x EK -> EK (21, 21)
      RES(1+NROWS*20:NROWS*21,1+NCOLS*20:NCOLS*21) = VAL%R
      ! EK x R -> EK (21, 1)
      RES(1+NROWS*20:NROWS*21,1+NCOLS*0:NCOLS*1) = VAL%EK
      ! R x EL -> EL (22, 22)
      RES(1+NROWS*21:NROWS*22,1+NCOLS*21:NCOLS*22) = VAL%R
      ! EL x R -> EL (22, 1)
      RES(1+NROWS*21:NROWS*22,1+NCOLS*0:NCOLS*1) = VAL%EL
      ! R x EM -> EM (23, 23)
      RES(1+NROWS*22:NROWS*23,1+NCOLS*22:NCOLS*23) = VAL%R
      ! EM x R -> EM (23, 1)
      RES(1+NROWS*22:NROWS*23,1+NCOLS*0:NCOLS*1) = VAL%EM
   END FUNCTION DONUMM22N1_TO_CR_MAT_S

FUNCTION DONUMM22N1_TO_CR_MAT_V(VAL) RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: VAL(:)
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
      ! R x E3 -> E3 (4, 4)
      RES(1+NROWS*3:NROWS*4,4) = VAL%R
      ! E3 x R -> E3 (4, 1)
      RES(1+NROWS*3:NROWS*4,1) = VAL%E3
      ! R x E4 -> E4 (5, 5)
      RES(1+NROWS*4:NROWS*5,5) = VAL%R
      ! E4 x R -> E4 (5, 1)
      RES(1+NROWS*4:NROWS*5,1) = VAL%E4
      ! R x E5 -> E5 (6, 6)
      RES(1+NROWS*5:NROWS*6,6) = VAL%R
      ! E5 x R -> E5 (6, 1)
      RES(1+NROWS*5:NROWS*6,1) = VAL%E5
      ! R x E6 -> E6 (7, 7)
      RES(1+NROWS*6:NROWS*7,7) = VAL%R
      ! E6 x R -> E6 (7, 1)
      RES(1+NROWS*6:NROWS*7,1) = VAL%E6
      ! R x E7 -> E7 (8, 8)
      RES(1+NROWS*7:NROWS*8,8) = VAL%R
      ! E7 x R -> E7 (8, 1)
      RES(1+NROWS*7:NROWS*8,1) = VAL%E7
      ! R x E8 -> E8 (9, 9)
      RES(1+NROWS*8:NROWS*9,9) = VAL%R
      ! E8 x R -> E8 (9, 1)
      RES(1+NROWS*8:NROWS*9,1) = VAL%E8
      ! R x E9 -> E9 (10, 10)
      RES(1+NROWS*9:NROWS*10,10) = VAL%R
      ! E9 x R -> E9 (10, 1)
      RES(1+NROWS*9:NROWS*10,1) = VAL%E9
      ! R x EA -> EA (11, 11)
      RES(1+NROWS*10:NROWS*11,11) = VAL%R
      ! EA x R -> EA (11, 1)
      RES(1+NROWS*10:NROWS*11,1) = VAL%EA
      ! R x EB -> EB (12, 12)
      RES(1+NROWS*11:NROWS*12,12) = VAL%R
      ! EB x R -> EB (12, 1)
      RES(1+NROWS*11:NROWS*12,1) = VAL%EB
      ! R x EC -> EC (13, 13)
      RES(1+NROWS*12:NROWS*13,13) = VAL%R
      ! EC x R -> EC (13, 1)
      RES(1+NROWS*12:NROWS*13,1) = VAL%EC
      ! R x ED -> ED (14, 14)
      RES(1+NROWS*13:NROWS*14,14) = VAL%R
      ! ED x R -> ED (14, 1)
      RES(1+NROWS*13:NROWS*14,1) = VAL%ED
      ! R x EE -> EE (15, 15)
      RES(1+NROWS*14:NROWS*15,15) = VAL%R
      ! EE x R -> EE (15, 1)
      RES(1+NROWS*14:NROWS*15,1) = VAL%EE
      ! R x EF -> EF (16, 16)
      RES(1+NROWS*15:NROWS*16,16) = VAL%R
      ! EF x R -> EF (16, 1)
      RES(1+NROWS*15:NROWS*16,1) = VAL%EF
      ! R x EG -> EG (17, 17)
      RES(1+NROWS*16:NROWS*17,17) = VAL%R
      ! EG x R -> EG (17, 1)
      RES(1+NROWS*16:NROWS*17,1) = VAL%EG
      ! R x EH -> EH (18, 18)
      RES(1+NROWS*17:NROWS*18,18) = VAL%R
      ! EH x R -> EH (18, 1)
      RES(1+NROWS*17:NROWS*18,1) = VAL%EH
      ! R x EI -> EI (19, 19)
      RES(1+NROWS*18:NROWS*19,19) = VAL%R
      ! EI x R -> EI (19, 1)
      RES(1+NROWS*18:NROWS*19,1) = VAL%EI
      ! R x EJ -> EJ (20, 20)
      RES(1+NROWS*19:NROWS*20,20) = VAL%R
      ! EJ x R -> EJ (20, 1)
      RES(1+NROWS*19:NROWS*20,1) = VAL%EJ
      ! R x EK -> EK (21, 21)
      RES(1+NROWS*20:NROWS*21,21) = VAL%R
      ! EK x R -> EK (21, 1)
      RES(1+NROWS*20:NROWS*21,1) = VAL%EK
      ! R x EL -> EL (22, 22)
      RES(1+NROWS*21:NROWS*22,22) = VAL%R
      ! EL x R -> EL (22, 1)
      RES(1+NROWS*21:NROWS*22,1) = VAL%EL
      ! R x EM -> EM (23, 23)
      RES(1+NROWS*22:NROWS*23,23) = VAL%R
      ! EM x R -> EM (23, 1)
      RES(1+NROWS*22:NROWS*23,1) = VAL%EM
   END FUNCTION DONUMM22N1_TO_CR_MAT_V

FUNCTION DONUMM22N1_TO_CR_MAT_M(VAL) RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: VAL(:,:)
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
      ! R x E3 -> E3 (4, 4)
      RES(1+NROWS*3:NROWS*4,1+NCOLS*3:NCOLS*4) = VAL%R
      ! E3 x R -> E3 (4, 1)
      RES(1+NROWS*3:NROWS*4,1+NCOLS*0:NCOLS*1) = VAL%E3
      ! R x E4 -> E4 (5, 5)
      RES(1+NROWS*4:NROWS*5,1+NCOLS*4:NCOLS*5) = VAL%R
      ! E4 x R -> E4 (5, 1)
      RES(1+NROWS*4:NROWS*5,1+NCOLS*0:NCOLS*1) = VAL%E4
      ! R x E5 -> E5 (6, 6)
      RES(1+NROWS*5:NROWS*6,1+NCOLS*5:NCOLS*6) = VAL%R
      ! E5 x R -> E5 (6, 1)
      RES(1+NROWS*5:NROWS*6,1+NCOLS*0:NCOLS*1) = VAL%E5
      ! R x E6 -> E6 (7, 7)
      RES(1+NROWS*6:NROWS*7,1+NCOLS*6:NCOLS*7) = VAL%R
      ! E6 x R -> E6 (7, 1)
      RES(1+NROWS*6:NROWS*7,1+NCOLS*0:NCOLS*1) = VAL%E6
      ! R x E7 -> E7 (8, 8)
      RES(1+NROWS*7:NROWS*8,1+NCOLS*7:NCOLS*8) = VAL%R
      ! E7 x R -> E7 (8, 1)
      RES(1+NROWS*7:NROWS*8,1+NCOLS*0:NCOLS*1) = VAL%E7
      ! R x E8 -> E8 (9, 9)
      RES(1+NROWS*8:NROWS*9,1+NCOLS*8:NCOLS*9) = VAL%R
      ! E8 x R -> E8 (9, 1)
      RES(1+NROWS*8:NROWS*9,1+NCOLS*0:NCOLS*1) = VAL%E8
      ! R x E9 -> E9 (10, 10)
      RES(1+NROWS*9:NROWS*10,1+NCOLS*9:NCOLS*10) = VAL%R
      ! E9 x R -> E9 (10, 1)
      RES(1+NROWS*9:NROWS*10,1+NCOLS*0:NCOLS*1) = VAL%E9
      ! R x EA -> EA (11, 11)
      RES(1+NROWS*10:NROWS*11,1+NCOLS*10:NCOLS*11) = VAL%R
      ! EA x R -> EA (11, 1)
      RES(1+NROWS*10:NROWS*11,1+NCOLS*0:NCOLS*1) = VAL%EA
      ! R x EB -> EB (12, 12)
      RES(1+NROWS*11:NROWS*12,1+NCOLS*11:NCOLS*12) = VAL%R
      ! EB x R -> EB (12, 1)
      RES(1+NROWS*11:NROWS*12,1+NCOLS*0:NCOLS*1) = VAL%EB
      ! R x EC -> EC (13, 13)
      RES(1+NROWS*12:NROWS*13,1+NCOLS*12:NCOLS*13) = VAL%R
      ! EC x R -> EC (13, 1)
      RES(1+NROWS*12:NROWS*13,1+NCOLS*0:NCOLS*1) = VAL%EC
      ! R x ED -> ED (14, 14)
      RES(1+NROWS*13:NROWS*14,1+NCOLS*13:NCOLS*14) = VAL%R
      ! ED x R -> ED (14, 1)
      RES(1+NROWS*13:NROWS*14,1+NCOLS*0:NCOLS*1) = VAL%ED
      ! R x EE -> EE (15, 15)
      RES(1+NROWS*14:NROWS*15,1+NCOLS*14:NCOLS*15) = VAL%R
      ! EE x R -> EE (15, 1)
      RES(1+NROWS*14:NROWS*15,1+NCOLS*0:NCOLS*1) = VAL%EE
      ! R x EF -> EF (16, 16)
      RES(1+NROWS*15:NROWS*16,1+NCOLS*15:NCOLS*16) = VAL%R
      ! EF x R -> EF (16, 1)
      RES(1+NROWS*15:NROWS*16,1+NCOLS*0:NCOLS*1) = VAL%EF
      ! R x EG -> EG (17, 17)
      RES(1+NROWS*16:NROWS*17,1+NCOLS*16:NCOLS*17) = VAL%R
      ! EG x R -> EG (17, 1)
      RES(1+NROWS*16:NROWS*17,1+NCOLS*0:NCOLS*1) = VAL%EG
      ! R x EH -> EH (18, 18)
      RES(1+NROWS*17:NROWS*18,1+NCOLS*17:NCOLS*18) = VAL%R
      ! EH x R -> EH (18, 1)
      RES(1+NROWS*17:NROWS*18,1+NCOLS*0:NCOLS*1) = VAL%EH
      ! R x EI -> EI (19, 19)
      RES(1+NROWS*18:NROWS*19,1+NCOLS*18:NCOLS*19) = VAL%R
      ! EI x R -> EI (19, 1)
      RES(1+NROWS*18:NROWS*19,1+NCOLS*0:NCOLS*1) = VAL%EI
      ! R x EJ -> EJ (20, 20)
      RES(1+NROWS*19:NROWS*20,1+NCOLS*19:NCOLS*20) = VAL%R
      ! EJ x R -> EJ (20, 1)
      RES(1+NROWS*19:NROWS*20,1+NCOLS*0:NCOLS*1) = VAL%EJ
      ! R x EK -> EK (21, 21)
      RES(1+NROWS*20:NROWS*21,1+NCOLS*20:NCOLS*21) = VAL%R
      ! EK x R -> EK (21, 1)
      RES(1+NROWS*20:NROWS*21,1+NCOLS*0:NCOLS*1) = VAL%EK
      ! R x EL -> EL (22, 22)
      RES(1+NROWS*21:NROWS*22,1+NCOLS*21:NCOLS*22) = VAL%R
      ! EL x R -> EL (22, 1)
      RES(1+NROWS*21:NROWS*22,1+NCOLS*0:NCOLS*1) = VAL%EL
      ! R x EM -> EM (23, 23)
      RES(1+NROWS*22:NROWS*23,1+NCOLS*22:NCOLS*23) = VAL%R
      ! EM x R -> EM (23, 1)
      RES(1+NROWS*22:NROWS*23,1+NCOLS*0:NCOLS*1) = VAL%EM
   END FUNCTION DONUMM22N1_TO_CR_MAT_M

      SUBROUTINE DONUMM22N1_SETIM_S(VAL,IDX,RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(INOUT) :: VAL
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
      CASE(3)
         VAL%E3=RES
      CASE(4)
         VAL%E4=RES
      CASE(5)
         VAL%E5=RES
      CASE(6)
         VAL%E6=RES
      CASE(7)
         VAL%E7=RES
      CASE(8)
         VAL%E8=RES
      CASE(9)
         VAL%E9=RES
      CASE(10)
         VAL%EA=RES
      CASE(11)
         VAL%EB=RES
      CASE(12)
         VAL%EC=RES
      CASE(13)
         VAL%ED=RES
      CASE(14)
         VAL%EE=RES
      CASE(15)
         VAL%EF=RES
      CASE(16)
         VAL%EG=RES
      CASE(17)
         VAL%EH=RES
      CASE(18)
         VAL%EI=RES
      CASE(19)
         VAL%EJ=RES
      CASE(20)
         VAL%EK=RES
      CASE(21)
         VAL%EL=RES
      CASE(22)
         VAL%EM=RES

      END SELECT
   END SUBROUTINE DONUMM22N1_SETIM_S

      SUBROUTINE DONUMM22N1_SETIM_V(VAL,IDX,RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(INOUT) :: VAL(:)
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
      CASE(3)
         VAL%E3=RES
      CASE(4)
         VAL%E4=RES
      CASE(5)
         VAL%E5=RES
      CASE(6)
         VAL%E6=RES
      CASE(7)
         VAL%E7=RES
      CASE(8)
         VAL%E8=RES
      CASE(9)
         VAL%E9=RES
      CASE(10)
         VAL%EA=RES
      CASE(11)
         VAL%EB=RES
      CASE(12)
         VAL%EC=RES
      CASE(13)
         VAL%ED=RES
      CASE(14)
         VAL%EE=RES
      CASE(15)
         VAL%EF=RES
      CASE(16)
         VAL%EG=RES
      CASE(17)
         VAL%EH=RES
      CASE(18)
         VAL%EI=RES
      CASE(19)
         VAL%EJ=RES
      CASE(20)
         VAL%EK=RES
      CASE(21)
         VAL%EL=RES
      CASE(22)
         VAL%EM=RES

      END SELECT
   END SUBROUTINE DONUMM22N1_SETIM_V

      SUBROUTINE DONUMM22N1_SETIM_M(VAL,IDX,RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(INOUT) :: VAL(:,:)
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
      CASE(3)
         VAL%E3=RES
      CASE(4)
         VAL%E4=RES
      CASE(5)
         VAL%E5=RES
      CASE(6)
         VAL%E6=RES
      CASE(7)
         VAL%E7=RES
      CASE(8)
         VAL%E8=RES
      CASE(9)
         VAL%E9=RES
      CASE(10)
         VAL%EA=RES
      CASE(11)
         VAL%EB=RES
      CASE(12)
         VAL%EC=RES
      CASE(13)
         VAL%ED=RES
      CASE(14)
         VAL%EE=RES
      CASE(15)
         VAL%EF=RES
      CASE(16)
         VAL%EG=RES
      CASE(17)
         VAL%EH=RES
      CASE(18)
         VAL%EI=RES
      CASE(19)
         VAL%EJ=RES
      CASE(20)
         VAL%EK=RES
      CASE(21)
         VAL%EL=RES
      CASE(22)
         VAL%EM=RES

      END SELECT
   END SUBROUTINE DONUMM22N1_SETIM_M

FUNCTION DONUMM22N1_GETIM_S(VAL,IDX) RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: VAL
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
      CASE(3)
         RES=VAL%E3
      CASE(4)
         RES=VAL%E4
      CASE(5)
         RES=VAL%E5
      CASE(6)
         RES=VAL%E6
      CASE(7)
         RES=VAL%E7
      CASE(8)
         RES=VAL%E8
      CASE(9)
         RES=VAL%E9
      CASE(10)
         RES=VAL%EA
      CASE(11)
         RES=VAL%EB
      CASE(12)
         RES=VAL%EC
      CASE(13)
         RES=VAL%ED
      CASE(14)
         RES=VAL%EE
      CASE(15)
         RES=VAL%EF
      CASE(16)
         RES=VAL%EG
      CASE(17)
         RES=VAL%EH
      CASE(18)
         RES=VAL%EI
      CASE(19)
         RES=VAL%EJ
      CASE(20)
         RES=VAL%EK
      CASE(21)
         RES=VAL%EL
      CASE(22)
         RES=VAL%EM

      END SELECT
   END FUNCTION DONUMM22N1_GETIM_S

FUNCTION DONUMM22N1_GETIM_V(VAL,IDX) RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: VAL(:)
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
      CASE(3)
         RES=VAL%E3
      CASE(4)
         RES=VAL%E4
      CASE(5)
         RES=VAL%E5
      CASE(6)
         RES=VAL%E6
      CASE(7)
         RES=VAL%E7
      CASE(8)
         RES=VAL%E8
      CASE(9)
         RES=VAL%E9
      CASE(10)
         RES=VAL%EA
      CASE(11)
         RES=VAL%EB
      CASE(12)
         RES=VAL%EC
      CASE(13)
         RES=VAL%ED
      CASE(14)
         RES=VAL%EE
      CASE(15)
         RES=VAL%EF
      CASE(16)
         RES=VAL%EG
      CASE(17)
         RES=VAL%EH
      CASE(18)
         RES=VAL%EI
      CASE(19)
         RES=VAL%EJ
      CASE(20)
         RES=VAL%EK
      CASE(21)
         RES=VAL%EL
      CASE(22)
         RES=VAL%EM

      END SELECT
   END FUNCTION DONUMM22N1_GETIM_V

FUNCTION DONUMM22N1_GETIM_M(VAL,IDX) RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: VAL(:,:)
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
      CASE(3)
         RES=VAL%E3
      CASE(4)
         RES=VAL%E4
      CASE(5)
         RES=VAL%E5
      CASE(6)
         RES=VAL%E6
      CASE(7)
         RES=VAL%E7
      CASE(8)
         RES=VAL%E8
      CASE(9)
         RES=VAL%E9
      CASE(10)
         RES=VAL%EA
      CASE(11)
         RES=VAL%EB
      CASE(12)
         RES=VAL%EC
      CASE(13)
         RES=VAL%ED
      CASE(14)
         RES=VAL%EE
      CASE(15)
         RES=VAL%EF
      CASE(16)
         RES=VAL%EG
      CASE(17)
         RES=VAL%EH
      CASE(18)
         RES=VAL%EI
      CASE(19)
         RES=VAL%EJ
      CASE(20)
         RES=VAL%EK
      CASE(21)
         RES=VAL%EL
      CASE(22)
         RES=VAL%EM

      END SELECT
   END FUNCTION DONUMM22N1_GETIM_M

   SUBROUTINE DONUMM22N1_PPRINT_S(VAR,FMT,UNIT)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: VAR
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
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'E3 * '
      CALL PPRINT(VAR%E3,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'E4 * '
      CALL PPRINT(VAR%E4,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'E5 * '
      CALL PPRINT(VAR%E5,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'E6 * '
      CALL PPRINT(VAR%E6,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'E7 * '
      CALL PPRINT(VAR%E7,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'E8 * '
      CALL PPRINT(VAR%E8,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'E9 * '
      CALL PPRINT(VAR%E9,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'EA * '
      CALL PPRINT(VAR%EA,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'EB * '
      CALL PPRINT(VAR%EB,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'EC * '
      CALL PPRINT(VAR%EC,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'ED * '
      CALL PPRINT(VAR%ED,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'EE * '
      CALL PPRINT(VAR%EE,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'EF * '
      CALL PPRINT(VAR%EF,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'EG * '
      CALL PPRINT(VAR%EG,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'EH * '
      CALL PPRINT(VAR%EH,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'EI * '
      CALL PPRINT(VAR%EI,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'EJ * '
      CALL PPRINT(VAR%EJ,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'EK * '
      CALL PPRINT(VAR%EK,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'EL * '
      CALL PPRINT(VAR%EL,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='NO') '+ '
      WRITE(unt,'(A)',advance='NO') 'EM * '
      CALL PPRINT(VAR%EM,unit=unt,fmt=output_format)


   END SUBROUTINE DONUMM22N1_PPRINT_S

   SUBROUTINE DONUMM22N1_PPRINT_V(VAR,FMT,UNIT)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: VAR(:)
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
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E3 * '
      CALL PPRINT(VAR%E3,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E4 * '
      CALL PPRINT(VAR%E4,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E5 * '
      CALL PPRINT(VAR%E5,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E6 * '
      CALL PPRINT(VAR%E6,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E7 * '
      CALL PPRINT(VAR%E7,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E8 * '
      CALL PPRINT(VAR%E8,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E9 * '
      CALL PPRINT(VAR%E9,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EA * '
      CALL PPRINT(VAR%EA,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EB * '
      CALL PPRINT(VAR%EB,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EC * '
      CALL PPRINT(VAR%EC,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'ED * '
      CALL PPRINT(VAR%ED,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EE * '
      CALL PPRINT(VAR%EE,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EF * '
      CALL PPRINT(VAR%EF,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EG * '
      CALL PPRINT(VAR%EG,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EH * '
      CALL PPRINT(VAR%EH,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EI * '
      CALL PPRINT(VAR%EI,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EJ * '
      CALL PPRINT(VAR%EJ,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EK * '
      CALL PPRINT(VAR%EK,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EL * '
      CALL PPRINT(VAR%EL,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EM * '
      CALL PPRINT(VAR%EM,unit=unt,fmt=output_format)


   END SUBROUTINE DONUMM22N1_PPRINT_V

   SUBROUTINE DONUMM22N1_PPRINT_M(VAR,FMT,UNIT)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: VAR(:,:)
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
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E3 * '
      CALL PPRINT(VAR%E3,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E4 * '
      CALL PPRINT(VAR%E4,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E5 * '
      CALL PPRINT(VAR%E5,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E6 * '
      CALL PPRINT(VAR%E6,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E7 * '
      CALL PPRINT(VAR%E7,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E8 * '
      CALL PPRINT(VAR%E8,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'E9 * '
      CALL PPRINT(VAR%E9,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EA * '
      CALL PPRINT(VAR%EA,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EB * '
      CALL PPRINT(VAR%EB,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EC * '
      CALL PPRINT(VAR%EC,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'ED * '
      CALL PPRINT(VAR%ED,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EE * '
      CALL PPRINT(VAR%EE,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EF * '
      CALL PPRINT(VAR%EF,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EG * '
      CALL PPRINT(VAR%EG,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EH * '
      CALL PPRINT(VAR%EH,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EI * '
      CALL PPRINT(VAR%EI,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EJ * '
      CALL PPRINT(VAR%EJ,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EK * '
      CALL PPRINT(VAR%EK,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EL * '
      CALL PPRINT(VAR%EL,unit=unt,fmt=output_format)
      WRITE(unt,'(A)',advance='YES') '+ '
      WRITE(unt,'(A)',advance='YES') 'EM * '
      CALL PPRINT(VAR%EM,unit=unt,fmt=output_format)


   END SUBROUTINE DONUMM22N1_PPRINT_M

   ELEMENTAL FUNCTION DONUMM22N1_FEVAL(X,DER0,DER1)&
      RESULT(RES)
      IMPLICIT NONE
      !  Definitions
      REAL(DP) :: FACTOR, COEF
      TYPE(DONUMM22N1), INTENT(IN)  :: X
      REAL(DP), INTENT(IN)  :: DER0,DER1
      TYPE(DONUMM22N1) :: RES
      TYPE(DONUMM22N1) :: DX, DX_P

      FACTOR = 1.0_DP
      COEF   = 0.0_DP
      DX     = X
      DX_P   = X

      !  Set real part of deltas zero.
      DX%R = 0.0_dp
      DX_P%R = 0.0_dp

      ! Sets real part
      RES = DER0

      ! Sets order 1
      FACTOR = FACTOR * 1
      COEF = DER1 / FACTOR
      ! RES = RES COEF * DX_P
      ! Order 1
      RES%E1 = RES%E1+COEF*DX_P%E1
      RES%E2 = RES%E2+COEF*DX_P%E2
      RES%E3 = RES%E3+COEF*DX_P%E3
      RES%E4 = RES%E4+COEF*DX_P%E4
      RES%E5 = RES%E5+COEF*DX_P%E5
      RES%E6 = RES%E6+COEF*DX_P%E6
      RES%E7 = RES%E7+COEF*DX_P%E7
      RES%E8 = RES%E8+COEF*DX_P%E8
      RES%E9 = RES%E9+COEF*DX_P%E9
      RES%EA = RES%EA+COEF*DX_P%EA
      RES%EB = RES%EB+COEF*DX_P%EB
      RES%EC = RES%EC+COEF*DX_P%EC
      RES%ED = RES%ED+COEF*DX_P%ED
      RES%EE = RES%EE+COEF*DX_P%EE
      RES%EF = RES%EF+COEF*DX_P%EF
      RES%EG = RES%EG+COEF*DX_P%EG
      RES%EH = RES%EH+COEF*DX_P%EH
      RES%EI = RES%EI+COEF*DX_P%EI
      RES%EJ = RES%EJ+COEF*DX_P%EJ
      RES%EK = RES%EK+COEF*DX_P%EK
      RES%EL = RES%EL+COEF*DX_P%EL
      RES%EM = RES%EM+COEF*DX_P%EM
      
   END FUNCTION DONUMM22N1_FEVAL


  ! SUBROUTINE DONUMM22N1_PPRINT_M_R(X, FMT)
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

  ! END SUBROUTINE DONUMM22N1_PPRINT_M_R

  ! SUBROUTINE DONUMM22N1_PPRINT_V_R(X, FMT)
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

  ! END SUBROUTINE DONUMM22N1_PPRINT_V_R

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
  PURE FUNCTION DONUMM22N1_det2x2(A) RESULT(det)

    IMPLICIT NONE

    TYPE(DONUMM22N1), INTENT(IN) :: A(2,2)   !! Matrix
    TYPE(DONUMM22N1)             :: det

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
  PURE FUNCTION DONUMM22N1_det3x3(A) RESULT(det)
      
    IMPLICIT NONE

    TYPE(DONUMM22N1), INTENT(IN) :: A(3,3)   !! Matrix
    TYPE(DONUMM22N1)             :: det

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
  PURE FUNCTION DONUMM22N1_det4x4(A) RESULT(det)
      
    IMPLICIT NONE

    TYPE(DONUMM22N1), INTENT(IN) :: A(4,4)   !! Matrix
    TYPE(DONUMM22N1)             :: det

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
  PURE FUNCTION DONUMM22N1_cross3(a,b) RESULT(v)
      
    IMPLICIT NONE 

    TYPE(DONUMM22N1), DIMENSION (3),INTENT(IN) :: a,b
    TYPE(DONUMM22N1), DIMENSION (3) :: v
    
    v(1) = a(2) * b(3) - a(3) * b(2)
    v(2) = a(3) * b(1) - a(1) * b(3)
    v(3) = a(1) * b(2) - a(2) * b(1)

  END FUNCTION DONUMM22N1_cross3
  !===================================================================================================! 

  !***************************************************************************************************! 
  !> @brief Norm of a 3 element vector. # There is an intrinsic function named norm2.
  !!
  !! @param[in] a: Vector of 3 reals (rank 1).
  !! @param[in] b: Vector of 3 reals (rank 1).
  !!
  !***************************************************************************************************!
  FUNCTION DONUMM22N1_norm2_3(v) RESULT(n)
     
    IMPLICIT NONE 

    TYPE(DONUMM22N1), INTENT(IN) :: v(3)
    TYPE(DONUMM22N1) :: n
     
    n = SQRT( v(1)*v(1) + v(2)*v(2) + v(3)*v(3) )

  END FUNCTION DONUMM22N1_norm2_3
  !===================================================================================================! 

  ELEMENTAL FUNCTION DONUMM22N1_DIVISION_OO(X,Y) RESULT(RES)
      IMPLICIT NONE
      ! REAL(DP) :: DERIVS(TORDER + 1) 
      TYPE(DONUMM22N1), INTENT(IN) :: X
      TYPE(DONUMM22N1), INTENT(IN) :: Y
      TYPE(DONUMM22N1) :: RES

      RES = X*(Y**(-1.d0))

  END FUNCTION DONUMM22N1_DIVISION_OO

  ELEMENTAL FUNCTION DONUMM22N1_DIVISION_OR(X,Y) RESULT(RES)
      IMPLICIT NONE
      ! REAL(DP) :: DERIVS(TORDER + 1) 
      TYPE(DONUMM22N1), INTENT(IN) :: X
      REAL(DP), INTENT(IN) :: Y
      TYPE(DONUMM22N1) :: RES

      RES = X*(Y**(-1.d0))

  END FUNCTION DONUMM22N1_DIVISION_OR

  ELEMENTAL FUNCTION DONUMM22N1_DIVISION_RO(X,Y) RESULT(RES)
      IMPLICIT NONE
      ! REAL(DP) :: DERIVS(TORDER + 1) 
      REAL(DP), INTENT(IN) :: X
      TYPE(DONUMM22N1), INTENT(IN) :: Y
      TYPE(DONUMM22N1) :: RES

      RES = X*(Y**(-1.d0))

  END FUNCTION DONUMM22N1_DIVISION_RO

  ELEMENTAL FUNCTION DONUMM22N1_REAL(X) RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: X
      REAL(DP) :: RES

      RES = X%R

  END FUNCTION DONUMM22N1_REAL

  FUNCTION DONUMM22N1_SQRT(X) RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1), INTENT(IN) :: X
      TYPE(DONUMM22N1) :: RES

      RES = X**0.5_DP

  END FUNCTION DONUMM22N1_SQRT

   ELEMENTAL FUNCTION DONUMM22N1_TAN(X) RESULT(RES)

      TYPE(DONUMM22N1), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1
      TYPE(DONUMM22N1) :: RES
      
      DER0 = TAN(X%R)
      DER1 = TAN(X%R)**2 + 1

      RES = FEVAL(X,DER0,DER1)

   END FUNCTION DONUMM22N1_TAN

   ELEMENTAL FUNCTION DONUMM22N1_COS(X) RESULT(RES)

      TYPE(DONUMM22N1), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1
      TYPE(DONUMM22N1) :: RES
      
      DER0 = COS(X%R)
      DER1 = -SIN(X%R)

      RES = FEVAL(X,DER0,DER1)

   END FUNCTION DONUMM22N1_COS

   ELEMENTAL FUNCTION DONUMM22N1_SIN(X) RESULT(RES)

      TYPE(DONUMM22N1), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1
      TYPE(DONUMM22N1) :: RES
      
      DER0 = SIN(X%R)
      DER1 = COS(X%R)

      RES = FEVAL(X,DER0,DER1)

   END FUNCTION DONUMM22N1_SIN

   ELEMENTAL FUNCTION DONUMM22N1_ATAN(X) RESULT(RES)

      TYPE(DONUMM22N1), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1
      TYPE(DONUMM22N1) :: RES
      
      DER0 = ATAN(X%R)
      DER1 = 1D0/(X%R**2 + 1)

      RES = FEVAL(X,DER0,DER1)

   END FUNCTION DONUMM22N1_ATAN

   ELEMENTAL FUNCTION DONUMM22N1_ACOS(X) RESULT(RES)

      TYPE(DONUMM22N1), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1
      TYPE(DONUMM22N1) :: RES
      
      DER0 = ACOS(X%R)
      DER1 = -1/SQRT(1 - X%R**2)

      RES = FEVAL(X,DER0,DER1)

   END FUNCTION DONUMM22N1_ACOS

   ELEMENTAL FUNCTION DONUMM22N1_ASIN(X) RESULT(RES)

      TYPE(DONUMM22N1), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1
      TYPE(DONUMM22N1) :: RES
      
      DER0 = ASIN(X%R)
      DER1 = 1/SQRT(1 - X%R**2)

      RES = FEVAL(X,DER0,DER1)

   END FUNCTION DONUMM22N1_ASIN

   ELEMENTAL FUNCTION DONUMM22N1_TANH(X) RESULT(RES)

      TYPE(DONUMM22N1), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1
      TYPE(DONUMM22N1) :: RES
      
      DER0 = TANH(X%R)
      DER1 = 1 - TANH(X%R)**2

      RES = FEVAL(X,DER0,DER1)

   END FUNCTION DONUMM22N1_TANH

   ELEMENTAL FUNCTION DONUMM22N1_COSH(X) RESULT(RES)

      TYPE(DONUMM22N1), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1
      TYPE(DONUMM22N1) :: RES
      
      DER0 = COSH(X%R)
      DER1 = SINH(X%R)

      RES = FEVAL(X,DER0,DER1)

   END FUNCTION DONUMM22N1_COSH

   ELEMENTAL FUNCTION DONUMM22N1_SINH(X) RESULT(RES)

      TYPE(DONUMM22N1), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1
      TYPE(DONUMM22N1) :: RES
      
      DER0 = SINH(X%R)
      DER1 = COSH(X%R)

      RES = FEVAL(X,DER0,DER1)

   END FUNCTION DONUMM22N1_SINH

   ELEMENTAL FUNCTION DONUMM22N1_EXP(X) RESULT(RES)

      TYPE(DONUMM22N1), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1
      TYPE(DONUMM22N1) :: RES
      
      DER0 = EXP(X%R)
      DER1 = EXP(X%R)

      RES = FEVAL(X,DER0,DER1)

   END FUNCTION DONUMM22N1_EXP

   ELEMENTAL FUNCTION DONUMM22N1_LOG(X) RESULT(RES)

      TYPE(DONUMM22N1), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1
      TYPE(DONUMM22N1) :: RES
      
      DER0 = LOG(X%R)
      DER1 = 1D0/X%R

      RES = FEVAL(X,DER0,DER1)

   END FUNCTION DONUMM22N1_LOG

   ELEMENTAL FUNCTION DONUMM22N1_POW_OR(X,E) RESULT(RES)

      TYPE(DONUMM22N1), INTENT(IN) :: X
      REAL(DP), INTENT(IN) :: E
      REAL(DP) :: DER0,DER1
      TYPE(DONUMM22N1) :: RES
      
      DER0=0.0d0
      DER1=0.0d0
      
      DER0 = X%R**E
      IF ((E-0)/=0.0d0) THEN
         DER1 = E*X%R**(E - 1)
      END IF

      RES = FEVAL(X,DER0,DER1)

   END FUNCTION DONUMM22N1_POW_OR

   ELEMENTAL FUNCTION DONUMM22N1_POW_RO(E,X) RESULT(RES)

      TYPE(DONUMM22N1), INTENT(IN) :: X
      REAL(DP), INTENT(IN) :: E
      REAL(DP) :: DER0,DER1
      TYPE(DONUMM22N1) :: RES
      
      
      DER0 = E**X%R
      DER1 = E**X%R*LOG(E)

      RES = FEVAL(X,DER0,DER1)

   END FUNCTION DONUMM22N1_POW_RO

   ELEMENTAL FUNCTION DONUMM22N1_F2EVAL(X,Y,DER0_0,DER1_0,DER1_1)&
      RESULT(RES)
      IMPLICIT NONE
      !  Definitions
      REAL(DP) :: COEF, DELTA
      TYPE(DONUMM22N1), INTENT(IN)  :: X,Y
      REAL(DP), INTENT(IN)  :: DER0_0,DER1_0,DER1_1
      TYPE(DONUMM22N1) :: RES
      TYPE(DONUMM22N1) :: DX, DY

      COEF   = 0.0_DP
      DX     = X
      DY     = Y

      !  Set real part of deltas zero.
      DX%R = 0.0_dp
      DY%R = 0.0_dp

      ! Set real part
      RES = DER0_0

      ! Set order 1
      COEF = DER1_0 / 1.0_DP
      RES = RES + COEF*DX

      COEF = DER1_1 / 1.0_DP
      RES = RES + COEF*DY

      

   END FUNCTION DONUMM22N1_F2EVAL


   ELEMENTAL FUNCTION DONUMM22N1_POW_OO(X,Y) RESULT(RES)

      TYPE(DONUMM22N1), INTENT(IN) :: X, Y
      REAL(DP) :: DER0_0,DER1_0,DER1_1
      TYPE(DONUMM22N1) :: RES
      
      DER0_0 = X%R**Y%R
      DER1_0 = X%R**Y%R*Y%R/X%R
      DER1_1 = X%R**Y%R*LOG(X%R)

      RES = F2EVAL(X,Y,DER0_0,DER1_0,DER1_1)

   END FUNCTION DONUMM22N1_POW_OO


   FUNCTION DONUMM22N1_INV2X2(A,det)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1) , INTENT(IN) :: A(2,2) 
      TYPE(DONUMM22N1) , INTENT(IN), OPTIONAL :: det
      REAL(DP) :: detCalc
      TYPE(DONUMM22N1) :: RES(SIZE(A,1),SIZE(A,2)) 

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
      RES%E3=-MATMUL(RES%R,(MATMUL(A%E3,RES%R)))
      RES%E4=-MATMUL(RES%R,(MATMUL(A%E4,RES%R)))
      RES%E5=-MATMUL(RES%R,(MATMUL(A%E5,RES%R)))
      RES%E6=-MATMUL(RES%R,(MATMUL(A%E6,RES%R)))
      RES%E7=-MATMUL(RES%R,(MATMUL(A%E7,RES%R)))
      RES%E8=-MATMUL(RES%R,(MATMUL(A%E8,RES%R)))
      RES%E9=-MATMUL(RES%R,(MATMUL(A%E9,RES%R)))
      RES%EA=-MATMUL(RES%R,(MATMUL(A%EA,RES%R)))
      RES%EB=-MATMUL(RES%R,(MATMUL(A%EB,RES%R)))
      RES%EC=-MATMUL(RES%R,(MATMUL(A%EC,RES%R)))
      RES%ED=-MATMUL(RES%R,(MATMUL(A%ED,RES%R)))
      RES%EE=-MATMUL(RES%R,(MATMUL(A%EE,RES%R)))
      RES%EF=-MATMUL(RES%R,(MATMUL(A%EF,RES%R)))
      RES%EG=-MATMUL(RES%R,(MATMUL(A%EG,RES%R)))
      RES%EH=-MATMUL(RES%R,(MATMUL(A%EH,RES%R)))
      RES%EI=-MATMUL(RES%R,(MATMUL(A%EI,RES%R)))
      RES%EJ=-MATMUL(RES%R,(MATMUL(A%EJ,RES%R)))
      RES%EK=-MATMUL(RES%R,(MATMUL(A%EK,RES%R)))
      RES%EL=-MATMUL(RES%R,(MATMUL(A%EL,RES%R)))
      RES%EM=-MATMUL(RES%R,(MATMUL(A%EM,RES%R)))

   END FUNCTION DONUMM22N1_INV2X2

   FUNCTION DONUMM22N1_INV3X3(A,det)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1) , INTENT(IN) :: A(3,3) 
      TYPE(DONUMM22N1) , INTENT(IN), OPTIONAL :: det
      REAL(DP) :: detCalc
      TYPE(DONUMM22N1) :: RES(SIZE(A,1),SIZE(A,2)) 

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
      RES%E3=-MATMUL(RES%R,(MATMUL(A%E3,RES%R)))
      RES%E4=-MATMUL(RES%R,(MATMUL(A%E4,RES%R)))
      RES%E5=-MATMUL(RES%R,(MATMUL(A%E5,RES%R)))
      RES%E6=-MATMUL(RES%R,(MATMUL(A%E6,RES%R)))
      RES%E7=-MATMUL(RES%R,(MATMUL(A%E7,RES%R)))
      RES%E8=-MATMUL(RES%R,(MATMUL(A%E8,RES%R)))
      RES%E9=-MATMUL(RES%R,(MATMUL(A%E9,RES%R)))
      RES%EA=-MATMUL(RES%R,(MATMUL(A%EA,RES%R)))
      RES%EB=-MATMUL(RES%R,(MATMUL(A%EB,RES%R)))
      RES%EC=-MATMUL(RES%R,(MATMUL(A%EC,RES%R)))
      RES%ED=-MATMUL(RES%R,(MATMUL(A%ED,RES%R)))
      RES%EE=-MATMUL(RES%R,(MATMUL(A%EE,RES%R)))
      RES%EF=-MATMUL(RES%R,(MATMUL(A%EF,RES%R)))
      RES%EG=-MATMUL(RES%R,(MATMUL(A%EG,RES%R)))
      RES%EH=-MATMUL(RES%R,(MATMUL(A%EH,RES%R)))
      RES%EI=-MATMUL(RES%R,(MATMUL(A%EI,RES%R)))
      RES%EJ=-MATMUL(RES%R,(MATMUL(A%EJ,RES%R)))
      RES%EK=-MATMUL(RES%R,(MATMUL(A%EK,RES%R)))
      RES%EL=-MATMUL(RES%R,(MATMUL(A%EL,RES%R)))
      RES%EM=-MATMUL(RES%R,(MATMUL(A%EM,RES%R)))

   END FUNCTION DONUMM22N1_INV3X3

   FUNCTION DONUMM22N1_INV4X4(A,det)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(DONUMM22N1) , INTENT(IN) :: A(4,4) 
      TYPE(DONUMM22N1) , INTENT(IN), OPTIONAL :: det
      REAL(DP) :: detCalc
      TYPE(DONUMM22N1) :: RES(SIZE(A,1),SIZE(A,2)) 

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
      RES%E3=-MATMUL(RES%R,(MATMUL(A%E3,RES%R)))
      RES%E4=-MATMUL(RES%R,(MATMUL(A%E4,RES%R)))
      RES%E5=-MATMUL(RES%R,(MATMUL(A%E5,RES%R)))
      RES%E6=-MATMUL(RES%R,(MATMUL(A%E6,RES%R)))
      RES%E7=-MATMUL(RES%R,(MATMUL(A%E7,RES%R)))
      RES%E8=-MATMUL(RES%R,(MATMUL(A%E8,RES%R)))
      RES%E9=-MATMUL(RES%R,(MATMUL(A%E9,RES%R)))
      RES%EA=-MATMUL(RES%R,(MATMUL(A%EA,RES%R)))
      RES%EB=-MATMUL(RES%R,(MATMUL(A%EB,RES%R)))
      RES%EC=-MATMUL(RES%R,(MATMUL(A%EC,RES%R)))
      RES%ED=-MATMUL(RES%R,(MATMUL(A%ED,RES%R)))
      RES%EE=-MATMUL(RES%R,(MATMUL(A%EE,RES%R)))
      RES%EF=-MATMUL(RES%R,(MATMUL(A%EF,RES%R)))
      RES%EG=-MATMUL(RES%R,(MATMUL(A%EG,RES%R)))
      RES%EH=-MATMUL(RES%R,(MATMUL(A%EH,RES%R)))
      RES%EI=-MATMUL(RES%R,(MATMUL(A%EI,RES%R)))
      RES%EJ=-MATMUL(RES%R,(MATMUL(A%EJ,RES%R)))
      RES%EK=-MATMUL(RES%R,(MATMUL(A%EK,RES%R)))
      RES%EL=-MATMUL(RES%R,(MATMUL(A%EL,RES%R)))
      RES%EM=-MATMUL(RES%R,(MATMUL(A%EM,RES%R)))

   END FUNCTION DONUMM22N1_INV4X4

END MODULE diagotim22n1
