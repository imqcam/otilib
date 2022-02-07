MODULE MDUAL1

  IMPLICIT NONE

  INTEGER, PARAMETER :: DP         = 8
  INTEGER, PARAMETER :: NUM_IM_DIR = 2
  INTEGER, PARAMETER :: TORDER     = 1

  TYPE MDNUM1
    ! Real
    REAL(DP) :: R
    ! Order 1
    REAL(DP) :: E1
  END TYPE MDNUM1

  ! Constant imaginary directions.
  ! Order 1
  TYPE(MDNUM1), PARAMETER :: E1 = MDNUM1(0.0_DP,1.0_DP)

  PRIVATE :: DP,TORDER,NUM_IM_DIR

  INTERFACE OPERATOR(*)
    MODULE PROCEDURE MDNUM1_MUL_OO_SS,MDNUM1_MUL_RO_SS,MDNUM1_MUL_OR_SS,MDNUM1_MUL_OO_VS,&
                     MDNUM1_MUL_RO_VS,MDNUM1_MUL_OR_VS,MDNUM1_MUL_OO_MS,MDNUM1_MUL_RO_MS,&
                     MDNUM1_MUL_OR_MS,MDNUM1_MUL_OO_SV,MDNUM1_MUL_RO_SV,MDNUM1_MUL_OR_SV,&
                     MDNUM1_MUL_OO_SM,MDNUM1_MUL_RO_SM,MDNUM1_MUL_OR_SM
  END INTERFACE

  INTERFACE OPERATOR(+)
    MODULE PROCEDURE MDNUM1_ADD_OO_SS,MDNUM1_ADD_RO_SS,MDNUM1_ADD_OR_SS,MDNUM1_ADD_OO_VS,&
                     MDNUM1_ADD_RO_VS,MDNUM1_ADD_OR_VS,MDNUM1_ADD_OO_MS,MDNUM1_ADD_RO_MS,&
                     MDNUM1_ADD_OR_MS,MDNUM1_ADD_OO_SV,MDNUM1_ADD_RO_SV,MDNUM1_ADD_OR_SV,&
                     MDNUM1_ADD_OO_SM,MDNUM1_ADD_RO_SM,MDNUM1_ADD_OR_SM
  END INTERFACE

  INTERFACE OPERATOR(-)
    MODULE PROCEDURE MDNUM1_NEG,MDNUM1_SUB_OO_SS,MDNUM1_SUB_RO_SS,MDNUM1_SUB_OR_SS,&
                     MDNUM1_SUB_OO_VS,MDNUM1_SUB_RO_VS,MDNUM1_SUB_OR_VS,MDNUM1_SUB_OO_MS,&
                     MDNUM1_SUB_RO_MS,MDNUM1_SUB_OR_MS,MDNUM1_SUB_OO_SV,MDNUM1_SUB_RO_SV,&
                     MDNUM1_SUB_OR_SV,MDNUM1_SUB_OO_SM,MDNUM1_SUB_RO_SM,MDNUM1_SUB_OR_SM
  END INTERFACE

  INTERFACE OPERATOR(/)
    MODULE PROCEDURE MDNUM1_DIVISION_OO,MDNUM1_DIVISION_OR,MDNUM1_DIVISION_RO
  END INTERFACE

  INTERFACE ASSIGNMENT(=)
    MODULE PROCEDURE MDNUM1_ASSIGN_R
  END INTERFACE

  INTERFACE OPERATOR(**)
    MODULE PROCEDURE MDNUM1_POW
  END INTERFACE

  INTERFACE PPRINT
    MODULE PROCEDURE MDNUM1_PPRINT_M_R,MDNUM1_PPRINT_V_R
  END INTERFACE

  INTERFACE TRANSPOSE
    MODULE PROCEDURE MDNUM1_TRANSPOSE
  END INTERFACE

  INTERFACE MATMUL
    MODULE PROCEDURE MDNUM1_MATMUL_MDNUM1,R_MATMUL_MDNUM1,MDNUM1_MATMUL_R
  END INTERFACE

  INTERFACE UNFOLD
    MODULE PROCEDURE MDNUM1_TO_CR_MAT_S,MDNUM1_TO_CR_MAT_V,MDNUM1_TO_CR_MAT_M
  END INTERFACE

  INTERFACE TO_CR
    MODULE PROCEDURE MDNUM1_TO_CR_MAT_S,MDNUM1_TO_CR_MAT_V,MDNUM1_TO_CR_MAT_M
  END INTERFACE

  INTERFACE SIN
    MODULE PROCEDURE MDNUM1_SIN
  END INTERFACE

  INTERFACE COS
    MODULE PROCEDURE MDNUM1_COS
  END INTERFACE

  INTERFACE TAN
    MODULE PROCEDURE MDNUM1_TAN
  END INTERFACE

  INTERFACE ASIN
    MODULE PROCEDURE MDNUM1_ASIN
  END INTERFACE

  INTERFACE ACOS
    MODULE PROCEDURE MDNUM1_ACOS
  END INTERFACE

  INTERFACE ATAN
    MODULE PROCEDURE MDNUM1_ATAN
  END INTERFACE

  INTERFACE SINH
    MODULE PROCEDURE MDNUM1_SINH
  END INTERFACE

  INTERFACE COSH
    MODULE PROCEDURE MDNUM1_COSH
  END INTERFACE

  INTERFACE TANH
    MODULE PROCEDURE MDNUM1_TANH
  END INTERFACE

  INTERFACE SQRT
    MODULE PROCEDURE MDNUM1_SQRT
  END INTERFACE

  INTERFACE LOG
    MODULE PROCEDURE MDNUM1_LOG
  END INTERFACE

  INTERFACE EXP
    MODULE PROCEDURE MDNUM1_EXP
  END INTERFACE

  INTERFACE GEM
    MODULE PROCEDURE MDNUM1_GEM_OOO,MDNUM1_GEM_ROO,MDNUM1_GEM_ORO
  END INTERFACE

  INTERFACE FEVAL
    MODULE PROCEDURE MDNUM1_FEVAL
  END INTERFACE

  INTERFACE REAL
    MODULE PROCEDURE MDNUM1_REAL
  END INTERFACE

  CONTAINS

  ELEMENTAL SUBROUTINE MDNUM1_ASSIGN_R(RES,LHS)
    
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS 
    TYPE(MDNUM1), INTENT(OUT) :: RES 

    ! Assign like function 'LHS'
    ! Real
    RES%R = LHS

    ! Order 1
    RES%E1 = 0.0_DP

  END SUBROUTINE MDNUM1_ASSIGN_R

  ELEMENTAL FUNCTION MDNUM1_NEG(LHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS 
    TYPE(MDNUM1) :: RES 

    ! Negation like function '-LHS'
    ! Real
    RES%R = -LHS%R
    ! Order 1
    RES%E1 = -LHS%E1

  END FUNCTION MDNUM1_NEG

  ELEMENTAL FUNCTION MDNUM1_ADD_OO_SS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS
    TYPE(MDNUM1), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES 

    ! Addition like function 'LHS + RHS'
    !  Real
    RES%R = LHS%R + RHS%R

    ! Order 1
    RES%E1 = LHS%E1 + RHS%E1

  END FUNCTION MDNUM1_ADD_OO_SS

  ELEMENTAL FUNCTION MDNUM1_ADD_RO_SS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS
    TYPE(MDNUM1), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS + RHS%R

    ! Order 1
    RES%E1 =  + RHS%E1

  END FUNCTION MDNUM1_ADD_RO_SS

  ELEMENTAL FUNCTION MDNUM1_ADD_OR_SS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS
    REAL(DP), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS%R + RHS

    ! Order 1
    RES%E1 = LHS%E1

  END FUNCTION MDNUM1_ADD_OR_SS

  ELEMENTAL FUNCTION MDNUM1_SUB_OO_SS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS
    TYPE(MDNUM1), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES 

    ! Addition like function 'LHS - RHS'
    !  Real
    RES%R = LHS%R - RHS%R

    ! Order 1
    RES%E1 = LHS%E1 - RHS%E1

  END FUNCTION MDNUM1_SUB_OO_SS

  ELEMENTAL FUNCTION MDNUM1_SUB_RO_SS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS
    TYPE(MDNUM1), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS - RHS%R

    ! Order 1
    RES%E1 =  - RHS%E1

  END FUNCTION MDNUM1_SUB_RO_SS

  ELEMENTAL FUNCTION MDNUM1_SUB_OR_SS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS
    REAL(DP), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS%R - RHS

    ! Order 1
    RES%E1 = LHS%E1

  END FUNCTION MDNUM1_SUB_OR_SS

  ELEMENTAL FUNCTION MDNUM1_MUL_OO_SS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS
    TYPE(MDNUM1), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES 

    !  Multiplication like function 'LHS*RHS'
    ! Order 1
    RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
    ! Order 0
    RES%R = LHS%R*RHS%R

  END FUNCTION MDNUM1_MUL_OO_SS

  ELEMENTAL FUNCTION MDNUM1_MUL_RO_SS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS
    TYPE(MDNUM1), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS*RHS%R

    ! Order 1
    RES%E1 = LHS*RHS%E1

  END FUNCTION MDNUM1_MUL_RO_SS

  ELEMENTAL FUNCTION MDNUM1_MUL_OR_SS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS
    REAL(DP), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS%R*RHS

    ! Order 1
    RES%E1 = LHS%E1*RHS

  END FUNCTION MDNUM1_MUL_OR_SS

  FUNCTION MDNUM1_ADD_OO_VS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS(:)
    TYPE(MDNUM1), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES(SIZE(LHS,1)) 

    ! Addition like function 'LHS + RHS'
    !  Real
    RES%R = LHS%R + RHS%R

    ! Order 1
    RES%E1 = LHS%E1 + RHS%E1

  END FUNCTION MDNUM1_ADD_OO_VS

  FUNCTION MDNUM1_ADD_RO_VS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS(:)
    TYPE(MDNUM1), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES(SIZE(LHS,1)) 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS + RHS%R

    ! Order 1
    RES%E1 =  + RHS%E1

  END FUNCTION MDNUM1_ADD_RO_VS

  FUNCTION MDNUM1_ADD_OR_VS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS(:)
    REAL(DP), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES(SIZE(LHS,1)) 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS%R + RHS

    ! Order 1
    RES%E1 = LHS%E1

  END FUNCTION MDNUM1_ADD_OR_VS

  FUNCTION MDNUM1_SUB_OO_VS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS(:)
    TYPE(MDNUM1), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES(SIZE(LHS,1)) 

    ! Addition like function 'LHS - RHS'
    !  Real
    RES%R = LHS%R - RHS%R

    ! Order 1
    RES%E1 = LHS%E1 - RHS%E1

  END FUNCTION MDNUM1_SUB_OO_VS

  FUNCTION MDNUM1_SUB_RO_VS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS(:)
    TYPE(MDNUM1), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES(SIZE(LHS,1)) 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS - RHS%R

    ! Order 1
    RES%E1 =  - RHS%E1

  END FUNCTION MDNUM1_SUB_RO_VS

  FUNCTION MDNUM1_SUB_OR_VS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS(:)
    REAL(DP), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES(SIZE(LHS,1)) 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS%R - RHS

    ! Order 1
    RES%E1 = LHS%E1

  END FUNCTION MDNUM1_SUB_OR_VS

  FUNCTION MDNUM1_MUL_OO_VS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS(:)
    TYPE(MDNUM1), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES(SIZE(LHS,1)) 

    !  Multiplication like function 'LHS*RHS'
    ! Order 1
    RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
    ! Order 0
    RES%R = LHS%R*RHS%R

  END FUNCTION MDNUM1_MUL_OO_VS

  FUNCTION MDNUM1_MUL_RO_VS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS(:)
    TYPE(MDNUM1), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES(SIZE(LHS,1)) 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS*RHS%R

    ! Order 1
    RES%E1 = LHS*RHS%E1

  END FUNCTION MDNUM1_MUL_RO_VS

  FUNCTION MDNUM1_MUL_OR_VS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS(:)
    REAL(DP), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES(SIZE(LHS,1)) 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS%R*RHS

    ! Order 1
    RES%E1 = LHS%E1*RHS

  END FUNCTION MDNUM1_MUL_OR_VS

  FUNCTION MDNUM1_ADD_OO_MS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS(:,:)
    TYPE(MDNUM1), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

    ! Addition like function 'LHS + RHS'
    !  Real
    RES%R = LHS%R + RHS%R

    ! Order 1
    RES%E1 = LHS%E1 + RHS%E1

  END FUNCTION MDNUM1_ADD_OO_MS

  FUNCTION MDNUM1_ADD_RO_MS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS(:,:)
    TYPE(MDNUM1), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS + RHS%R

    ! Order 1
    RES%E1 =  + RHS%E1

  END FUNCTION MDNUM1_ADD_RO_MS

  FUNCTION MDNUM1_ADD_OR_MS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS(:,:)
    REAL(DP), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS%R + RHS

    ! Order 1
    RES%E1 = LHS%E1

  END FUNCTION MDNUM1_ADD_OR_MS

  FUNCTION MDNUM1_SUB_OO_MS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS(:,:)
    TYPE(MDNUM1), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

    ! Addition like function 'LHS - RHS'
    !  Real
    RES%R = LHS%R - RHS%R

    ! Order 1
    RES%E1 = LHS%E1 - RHS%E1

  END FUNCTION MDNUM1_SUB_OO_MS

  FUNCTION MDNUM1_SUB_RO_MS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS(:,:)
    TYPE(MDNUM1), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS - RHS%R

    ! Order 1
    RES%E1 =  - RHS%E1

  END FUNCTION MDNUM1_SUB_RO_MS

  FUNCTION MDNUM1_SUB_OR_MS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS(:,:)
    REAL(DP), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS%R - RHS

    ! Order 1
    RES%E1 = LHS%E1

  END FUNCTION MDNUM1_SUB_OR_MS

  FUNCTION MDNUM1_MUL_OO_MS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS(:,:)
    TYPE(MDNUM1), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

    !  Multiplication like function 'LHS*RHS'
    ! Order 1
    RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
    ! Order 0
    RES%R = LHS%R*RHS%R

  END FUNCTION MDNUM1_MUL_OO_MS

  FUNCTION MDNUM1_MUL_RO_MS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS(:,:)
    TYPE(MDNUM1), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS*RHS%R

    ! Order 1
    RES%E1 = LHS*RHS%E1

  END FUNCTION MDNUM1_MUL_RO_MS

  FUNCTION MDNUM1_MUL_OR_MS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS(:,:)
    REAL(DP), INTENT(IN) :: RHS
    TYPE(MDNUM1) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS%R*RHS

    ! Order 1
    RES%E1 = LHS%E1*RHS

  END FUNCTION MDNUM1_MUL_OR_MS

  FUNCTION MDNUM1_ADD_OO_SV(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS
    TYPE(MDNUM1), INTENT(IN) :: RHS(:)
    TYPE(MDNUM1) :: RES(SIZE(RHS,1)) 

    ! Addition like function 'LHS + RHS'
    !  Real
    RES%R = LHS%R + RHS%R

    ! Order 1
    RES%E1 = LHS%E1 + RHS%E1

  END FUNCTION MDNUM1_ADD_OO_SV

  FUNCTION MDNUM1_ADD_RO_SV(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS
    TYPE(MDNUM1), INTENT(IN) :: RHS(:)
    TYPE(MDNUM1) :: RES(SIZE(RHS,1)) 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS + RHS%R

    ! Order 1
    RES%E1 =  + RHS%E1

  END FUNCTION MDNUM1_ADD_RO_SV

  FUNCTION MDNUM1_ADD_OR_SV(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS
    REAL(DP), INTENT(IN) :: RHS(:)
    TYPE(MDNUM1) :: RES(SIZE(RHS,1)) 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS%R + RHS

    ! Order 1
    RES%E1 = LHS%E1

  END FUNCTION MDNUM1_ADD_OR_SV

  FUNCTION MDNUM1_SUB_OO_SV(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS
    TYPE(MDNUM1), INTENT(IN) :: RHS(:)
    TYPE(MDNUM1) :: RES(SIZE(RHS,1)) 

    ! Addition like function 'LHS - RHS'
    !  Real
    RES%R = LHS%R - RHS%R

    ! Order 1
    RES%E1 = LHS%E1 - RHS%E1

  END FUNCTION MDNUM1_SUB_OO_SV

  FUNCTION MDNUM1_SUB_RO_SV(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS
    TYPE(MDNUM1), INTENT(IN) :: RHS(:)
    TYPE(MDNUM1) :: RES(SIZE(RHS,1)) 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS - RHS%R

    ! Order 1
    RES%E1 =  - RHS%E1

  END FUNCTION MDNUM1_SUB_RO_SV

  FUNCTION MDNUM1_SUB_OR_SV(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS
    REAL(DP), INTENT(IN) :: RHS(:)
    TYPE(MDNUM1) :: RES(SIZE(RHS,1)) 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS%R - RHS

    ! Order 1
    RES%E1 = LHS%E1

  END FUNCTION MDNUM1_SUB_OR_SV

  FUNCTION MDNUM1_MUL_OO_SV(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS
    TYPE(MDNUM1), INTENT(IN) :: RHS(:)
    TYPE(MDNUM1) :: RES(SIZE(RHS,1)) 

    !  Multiplication like function 'LHS*RHS'
    ! Order 1
    RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
    ! Order 0
    RES%R = LHS%R*RHS%R

  END FUNCTION MDNUM1_MUL_OO_SV

  FUNCTION MDNUM1_MUL_RO_SV(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS
    TYPE(MDNUM1), INTENT(IN) :: RHS(:)
    TYPE(MDNUM1) :: RES(SIZE(RHS,1)) 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS*RHS%R

    ! Order 1
    RES%E1 = LHS*RHS%E1

  END FUNCTION MDNUM1_MUL_RO_SV

  FUNCTION MDNUM1_MUL_OR_SV(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS
    REAL(DP), INTENT(IN) :: RHS(:)
    TYPE(MDNUM1) :: RES(SIZE(RHS,1)) 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS%R*RHS

    ! Order 1
    RES%E1 = LHS%E1*RHS

  END FUNCTION MDNUM1_MUL_OR_SV

  FUNCTION MDNUM1_ADD_OO_SM(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS
    TYPE(MDNUM1), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM1) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

    ! Addition like function 'LHS + RHS'
    !  Real
    RES%R = LHS%R + RHS%R

    ! Order 1
    RES%E1 = LHS%E1 + RHS%E1

  END FUNCTION MDNUM1_ADD_OO_SM

  FUNCTION MDNUM1_ADD_RO_SM(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS
    TYPE(MDNUM1), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM1) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS + RHS%R

    ! Order 1
    RES%E1 =  + RHS%E1

  END FUNCTION MDNUM1_ADD_RO_SM

  FUNCTION MDNUM1_ADD_OR_SM(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS
    REAL(DP), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM1) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS%R + RHS

    ! Order 1
    RES%E1 = LHS%E1

  END FUNCTION MDNUM1_ADD_OR_SM

  FUNCTION MDNUM1_SUB_OO_SM(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS
    TYPE(MDNUM1), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM1) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

    ! Addition like function 'LHS - RHS'
    !  Real
    RES%R = LHS%R - RHS%R

    ! Order 1
    RES%E1 = LHS%E1 - RHS%E1

  END FUNCTION MDNUM1_SUB_OO_SM

  FUNCTION MDNUM1_SUB_RO_SM(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS
    TYPE(MDNUM1), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM1) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS - RHS%R

    ! Order 1
    RES%E1 =  - RHS%E1

  END FUNCTION MDNUM1_SUB_RO_SM

  FUNCTION MDNUM1_SUB_OR_SM(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS
    REAL(DP), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM1) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS%R - RHS

    ! Order 1
    RES%E1 = LHS%E1

  END FUNCTION MDNUM1_SUB_OR_SM

  FUNCTION MDNUM1_MUL_OO_SM(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS
    TYPE(MDNUM1), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM1) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

    !  Multiplication like function 'LHS*RHS'
    ! Order 1
    RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
    ! Order 0
    RES%R = LHS%R*RHS%R

  END FUNCTION MDNUM1_MUL_OO_SM

  FUNCTION MDNUM1_MUL_RO_SM(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS
    TYPE(MDNUM1), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM1) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS*RHS%R

    ! Order 1
    RES%E1 = LHS*RHS%E1

  END FUNCTION MDNUM1_MUL_RO_SM

  FUNCTION MDNUM1_MUL_OR_SM(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS
    REAL(DP), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM1) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS%R*RHS

    ! Order 1
    RES%E1 = LHS%E1*RHS

  END FUNCTION MDNUM1_MUL_OR_SM

ELEMENTAL   FUNCTION MDNUM1_GEM_OOO(A,B,C)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: A 
    TYPE(MDNUM1), INTENT(IN) :: B 
    TYPE(MDNUM1), INTENT(IN) :: C 
    TYPE(MDNUM1) :: RES 

    !  General multiplication like function 'A*B + C'

    ! Order 0
    RES%R = C%R + A%R*B%R

    ! Order 1
    RES%E1 = C%E1 + A%R*B%E1 + A%E1*B%R

  END FUNCTION MDNUM1_GEM_OOO

ELEMENTAL   FUNCTION MDNUM1_GEM_ROO(A,B,C)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: A 
    TYPE(MDNUM1), INTENT(IN) :: B 
    TYPE(MDNUM1), INTENT(IN) :: C 
    TYPE(MDNUM1) :: RES 

    !  General multiplication like function 'A*B + C'
    ! Order 1
    RES%E1 = C%E1 + A*B%E1
    ! Order 0
    RES%R = C%R + A*B%R

  END FUNCTION MDNUM1_GEM_ROO

ELEMENTAL   FUNCTION MDNUM1_GEM_ORO(A,B,C)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: A 
    REAL(DP), INTENT(IN) :: B 
    TYPE(MDNUM1), INTENT(IN) :: C 
    TYPE(MDNUM1) :: RES 

    !  General multiplication like function 'A*B + C'

    ! Order 0
    RES%R = C%R + A%R*B

    ! Order 1
    RES%E1 = C%E1 + A%E1*B

  END FUNCTION MDNUM1_GEM_ORO

  FUNCTION MDNUM1_MATMUL_MDNUM1(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS(:,:)
    TYPE(MDNUM1), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM1) :: RES(SIZE(LHS,1),SIZE(RHS,2))

    !  Multiplication like function 'MATMUL(LHS,RHS)'
    ! Order 1
    RES%E1 = MATMUL(LHS%R,RHS%E1) + MATMUL(LHS%E1,RHS%R)
    ! Order 0
    RES%R = MATMUL(LHS%R,RHS%R)

  END FUNCTION MDNUM1_MATMUL_MDNUM1

  FUNCTION R_MATMUL_MDNUM1(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS(:,:)
    TYPE(MDNUM1), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM1) :: RES(SIZE(LHS,1),SIZE(RHS,2))

    ! Multiplication like function 'MATMUL(LHS,RHS)'
    !  Real
    RES%R = MATMUL(LHS,RHS%R)

    ! Order 1
    RES%E1 = MATMUL(LHS,RHS%E1)

  END FUNCTION R_MATMUL_MDNUM1

  FUNCTION MDNUM1_MATMUL_R(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS(:,:)
    REAL(DP), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM1) :: RES(SIZE(LHS,1),SIZE(RHS,2))

    ! Multiplication like function 'MATMUL(LHS,RHS)'
    !  Real
    RES%R = MATMUL(LHS%R,RHS)

    ! Order 1
    RES%E1 = MATMUL(LHS%E1,RHS)

  END FUNCTION MDNUM1_MATMUL_R

  FUNCTION MDNUM1_TRANSPOSE(LHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS(:,:)
    TYPE(MDNUM1) :: RES (SIZE(LHS,2),SIZE(LHS,1))

    ! Negation like function 'TRANSPOSE(LHS)'
    ! Real
    RES%R = TRANSPOSE(LHS%R)
    ! Order 1
    RES%E1 = TRANSPOSE(LHS%E1)

  END FUNCTION MDNUM1_TRANSPOSE

FUNCTION MDNUM1_TO_CR_MAT_S(VAL) RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: VAL
    REAL(DP) :: RES(NUM_IM_DIR,NUM_IM_DIR) 
    INTEGER :: NCOLS=1, NROWS=1


    ! R x R -> R (1, 1)
    RES(1+NROWS*0:NROWS*1,1+NCOLS*0:NCOLS*1) = VAL%R
    ! R x E1 -> E1 (2, 2)
    RES(1+NROWS*1:NROWS*2,1+NCOLS*1:NCOLS*2) = VAL%R
    ! E1 x R -> E1 (2, 1)
    RES(1+NROWS*1:NROWS*2,1+NCOLS*0:NCOLS*1) = VAL%E1
  END FUNCTION MDNUM1_TO_CR_MAT_S

FUNCTION MDNUM1_TO_CR_MAT_V(VAL) RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: VAL(:)
    REAL(DP) :: RES(NUM_IM_DIR*SIZE(VAL,1),NUM_IM_DIR) 
    INTEGER :: NCOLS=1, NROWS=1

    NROWS = SIZE(VAL,1)

    ! R x R -> R (1, 1)
    RES(1+NROWS*0:NROWS*1,1) = VAL%R
    ! R x E1 -> E1 (2, 2)
    RES(1+NROWS*1:NROWS*2,2) = VAL%R
    ! E1 x R -> E1 (2, 1)
    RES(1+NROWS*1:NROWS*2,1) = VAL%E1
  END FUNCTION MDNUM1_TO_CR_MAT_V

FUNCTION MDNUM1_TO_CR_MAT_M(VAL) RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: VAL(:,:)
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
  END FUNCTION MDNUM1_TO_CR_MAT_M

  ELEMENTAL FUNCTION MDNUM1_FEVAL(X,DER0,DER1)&
    RESULT(RES)
    IMPLICIT NONE
    !  Definitions
    REAL(DP) :: FACTOR, COEF
    TYPE(MDNUM1), INTENT(IN)  :: X
    REAL(DP), INTENT(IN)  :: DER0,DER1
    TYPE(MDNUM1) :: RES
    TYPE(MDNUM1) :: DX, DX_P

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
    ! Order 1
    RES%E1 = RES%E1+COEF*DX_P%E1
    
  END FUNCTION MDNUM1_FEVAL


  SUBROUTINE MDNUM1_PPRINT_M_R(X, FMT)
      IMPLICIT NONE
      REAL(DP),INTENT(IN) :: X(:,:)
      INTEGER :: I, J
      CHARACTER(*),INTENT(IN),OPTIONAL :: FMT
      CHARACTER(:),ALLOCATABLE :: out_fmt
      
      IF (PRESENT(fmt)) THEN
        out_fmt = fmt
      ELSE
        out_fmt = 'F10.4'
      END IF
      
      write(*,'(A)',advance='no') "["
      
      DO I=1,SIZE(X,1)
        
        IF (I == 1) THEN
          write(*,'(A)',advance='no') "["
        ELSE
          write(*,'(A)',advance='no') " ["
        END IF 

        DO J=1,SIZE(X,2)
          
          write(*,'('//trim(out_fmt)//')',advance='no') X(I,J)

        END DO
        
        write(*,'(A)') "]"
      
      END DO

      write(*,'(A)') "]"

  END SUBROUTINE MDNUM1_PPRINT_M_R

  SUBROUTINE MDNUM1_PPRINT_V_R(X, FMT)
      IMPLICIT NONE
      REAL(DP),INTENT(IN) :: X(:)
      INTEGER :: I
      CHARACTER(*),INTENT(IN),OPTIONAL :: FMT
      CHARACTER(:),ALLOCATABLE :: out_fmt
      
      IF (PRESENT(fmt)) THEN
        out_fmt = fmt
      ELSE
        out_fmt = 'F10.4'
      END IF
      
      write(*,'(A)',advance='no') "["
      
      DO I=1,SIZE(X,1)

        write(*,'('//trim(out_fmt)//')',advance='no') X(I)

      END DO

      write(*,'(A)') "]"

  END SUBROUTINE MDNUM1_PPRINT_V_R

  FUNCTION MDNUM1_DIVISION_OO(X,Y) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      TYPE(MDNUM1), INTENT(IN) :: X
      TYPE(MDNUM1), INTENT(IN) :: Y
      TYPE(MDNUM1) :: RES

      RES = X*(Y**(-1.d0))

  END FUNCTION MDNUM1_DIVISION_OO

  FUNCTION MDNUM1_DIVISION_OR(X,Y) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      TYPE(MDNUM1), INTENT(IN) :: X
      REAL(DP), INTENT(IN) :: Y
      TYPE(MDNUM1) :: RES

      RES = X*(Y**(-1.d0))

  END FUNCTION MDNUM1_DIVISION_OR

  FUNCTION MDNUM1_DIVISION_RO(X,Y) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      REAL(DP), INTENT(IN) :: X
      TYPE(MDNUM1), INTENT(IN) :: Y
      TYPE(MDNUM1) :: RES

      RES = X*(Y**(-1.d0))

  END FUNCTION MDNUM1_DIVISION_RO

  ELEMENTAL FUNCTION MDNUM1_REAL(X) RESULT(RES)
      IMPLICIT NONE
      TYPE(MDNUM1), INTENT(IN) :: X
      REAL(DP) :: RES

      RES = X%R

  END FUNCTION MDNUM1_REAL

  FUNCTION MDNUM1_SQRT(X) RESULT(RES)
      IMPLICIT NONE
      TYPE(MDNUM1), INTENT(IN) :: X
      TYPE(MDNUM1) :: RES

      RES = X**0.5_DP

  END FUNCTION MDNUM1_SQRT

  ELEMENTAL FUNCTION MDNUM1_TAN(X) RESULT(RES)

    TYPE(MDNUM1), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1
    TYPE(MDNUM1) :: RES
    
    DER0 = TAN(X%R)
    DER1 = TAN(X%R)**2 + 1

    RES = FEVAL(X,DER0,DER1)

  END FUNCTION MDNUM1_TAN

  ELEMENTAL FUNCTION MDNUM1_COS(X) RESULT(RES)

    TYPE(MDNUM1), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1
    TYPE(MDNUM1) :: RES
    
    DER0 = COS(X%R)
    DER1 = -SIN(X%R)

    RES = FEVAL(X,DER0,DER1)

  END FUNCTION MDNUM1_COS

  ELEMENTAL FUNCTION MDNUM1_SIN(X) RESULT(RES)

    TYPE(MDNUM1), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1
    TYPE(MDNUM1) :: RES
    
    DER0 = SIN(X%R)
    DER1 = COS(X%R)

    RES = FEVAL(X,DER0,DER1)

  END FUNCTION MDNUM1_SIN

  ELEMENTAL FUNCTION MDNUM1_ATAN(X) RESULT(RES)

    TYPE(MDNUM1), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1
    TYPE(MDNUM1) :: RES
    
    DER0 = ATAN(X%R)
    DER1 = 1D0/(X%R**2 + 1)

    RES = FEVAL(X,DER0,DER1)

  END FUNCTION MDNUM1_ATAN

  ELEMENTAL FUNCTION MDNUM1_ACOS(X) RESULT(RES)

    TYPE(MDNUM1), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1
    TYPE(MDNUM1) :: RES
    
    DER0 = ACOS(X%R)
    DER1 = -1/SQRT(1 - X%R**2)

    RES = FEVAL(X,DER0,DER1)

  END FUNCTION MDNUM1_ACOS

  ELEMENTAL FUNCTION MDNUM1_ASIN(X) RESULT(RES)

    TYPE(MDNUM1), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1
    TYPE(MDNUM1) :: RES
    
    DER0 = ASIN(X%R)
    DER1 = 1/SQRT(1 - X%R**2)

    RES = FEVAL(X,DER0,DER1)

  END FUNCTION MDNUM1_ASIN

  ELEMENTAL FUNCTION MDNUM1_TANH(X) RESULT(RES)

    TYPE(MDNUM1), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1
    TYPE(MDNUM1) :: RES
    
    DER0 = TANH(X%R)
    DER1 = 1 - TANH(X%R)**2

    RES = FEVAL(X,DER0,DER1)

  END FUNCTION MDNUM1_TANH

  ELEMENTAL FUNCTION MDNUM1_COSH(X) RESULT(RES)

    TYPE(MDNUM1), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1
    TYPE(MDNUM1) :: RES
    
    DER0 = COSH(X%R)
    DER1 = SINH(X%R)

    RES = FEVAL(X,DER0,DER1)

  END FUNCTION MDNUM1_COSH

  ELEMENTAL FUNCTION MDNUM1_SINH(X) RESULT(RES)

    TYPE(MDNUM1), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1
    TYPE(MDNUM1) :: RES
    
    DER0 = SINH(X%R)
    DER1 = COSH(X%R)

    RES = FEVAL(X,DER0,DER1)

  END FUNCTION MDNUM1_SINH

  ELEMENTAL FUNCTION MDNUM1_EXP(X) RESULT(RES)

    TYPE(MDNUM1), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1
    TYPE(MDNUM1) :: RES
    
    DER0 = EXP(X%R)
    DER1 = EXP(X%R)

    RES = FEVAL(X,DER0,DER1)

  END FUNCTION MDNUM1_EXP

  ELEMENTAL FUNCTION MDNUM1_LOG(X) RESULT(RES)

    TYPE(MDNUM1), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1
    TYPE(MDNUM1) :: RES
    
    DER0 = LOG(X%R)
    DER1 = 1D0/X%R

    RES = FEVAL(X,DER0,DER1)

  END FUNCTION MDNUM1_LOG

  ELEMENTAL FUNCTION MDNUM1_POW(X,E) RESULT(RES)

    TYPE(MDNUM1), INTENT(IN) :: X
    REAL(DP), INTENT(IN) :: E
    REAL(DP) :: DER0,DER1
    TYPE(MDNUM1) :: RES
    
    DER0=0.0d0
    DER1=0.0d0
    
    DER0 = X%R**E
    IF ((E-0)/=0.0d0) THEN
      DER1 = E*X%R**(E - 1)
    END IF

    RES = FEVAL(X,DER0,DER1)

  END FUNCTION MDNUM1_POW

END MODULE MDUAL1
