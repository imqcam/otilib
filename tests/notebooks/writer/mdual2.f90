MODULE MDUAL2

  IMPLICIT NONE

  INTEGER, PARAMETER :: DP         = 8
  INTEGER, PARAMETER :: NUM_IM_DIR = 4
  INTEGER, PARAMETER :: TORDER     = 2

  TYPE MDNUM2
    ! Real
    REAL(DP) :: R
    ! Order 1
    REAL(DP) :: E1
    REAL(DP) :: E2
    ! Order 2
    REAL(DP) :: E12
  END TYPE MDNUM2

  ! Constant imaginary directions.
  ! Order 1
  TYPE(MDNUM2), PARAMETER :: E1 = MDNUM2(0.0_DP,1.0_DP,0.0_DP,0.0_DP)
  TYPE(MDNUM2), PARAMETER :: E2 = MDNUM2(0.0_DP,0.0_DP,1.0_DP,0.0_DP)
  ! Order 2
  TYPE(MDNUM2), PARAMETER :: E12 = MDNUM2(0.0_DP,0.0_DP,0.0_DP,1.0_DP)

  PRIVATE :: DP,TORDER,NUM_IM_DIR

  INTERFACE OPERATOR(*)
    MODULE PROCEDURE MDNUM2_MUL_OO_SS,MDNUM2_MUL_RO_SS,MDNUM2_MUL_OR_SS,MDNUM2_MUL_OO_VS,&
                     MDNUM2_MUL_RO_VS,MDNUM2_MUL_OR_VS,MDNUM2_MUL_OO_MS,MDNUM2_MUL_RO_MS,&
                     MDNUM2_MUL_OR_MS,MDNUM2_MUL_OO_SV,MDNUM2_MUL_RO_SV,MDNUM2_MUL_OR_SV,&
                     MDNUM2_MUL_OO_SM,MDNUM2_MUL_RO_SM,MDNUM2_MUL_OR_SM
  END INTERFACE

  INTERFACE OPERATOR(+)
    MODULE PROCEDURE MDNUM2_ADD_OO_SS,MDNUM2_ADD_RO_SS,MDNUM2_ADD_OR_SS,MDNUM2_ADD_OO_VS,&
                     MDNUM2_ADD_RO_VS,MDNUM2_ADD_OR_VS,MDNUM2_ADD_OO_MS,MDNUM2_ADD_RO_MS,&
                     MDNUM2_ADD_OR_MS,MDNUM2_ADD_OO_SV,MDNUM2_ADD_RO_SV,MDNUM2_ADD_OR_SV,&
                     MDNUM2_ADD_OO_SM,MDNUM2_ADD_RO_SM,MDNUM2_ADD_OR_SM
  END INTERFACE

  INTERFACE OPERATOR(-)
    MODULE PROCEDURE MDNUM2_NEG,MDNUM2_SUB_OO_SS,MDNUM2_SUB_RO_SS,MDNUM2_SUB_OR_SS,&
                     MDNUM2_SUB_OO_VS,MDNUM2_SUB_RO_VS,MDNUM2_SUB_OR_VS,MDNUM2_SUB_OO_MS,&
                     MDNUM2_SUB_RO_MS,MDNUM2_SUB_OR_MS,MDNUM2_SUB_OO_SV,MDNUM2_SUB_RO_SV,&
                     MDNUM2_SUB_OR_SV,MDNUM2_SUB_OO_SM,MDNUM2_SUB_RO_SM,MDNUM2_SUB_OR_SM
  END INTERFACE

  INTERFACE OPERATOR(/)
    MODULE PROCEDURE MDNUM2_DIVISION_OO,MDNUM2_DIVISION_OR,MDNUM2_DIVISION_RO
  END INTERFACE

  INTERFACE ASSIGNMENT(=)
    MODULE PROCEDURE MDNUM2_ASSIGN_R
  END INTERFACE

  INTERFACE OPERATOR(**)
    MODULE PROCEDURE MDNUM2_POW
  END INTERFACE

  INTERFACE PPRINT
    MODULE PROCEDURE MDNUM2_PPRINT_M_R,MDNUM2_PPRINT_V_R
  END INTERFACE

  INTERFACE TRANSPOSE
    MODULE PROCEDURE MDNUM2_TRANSPOSE
  END INTERFACE

  INTERFACE MATMUL
    MODULE PROCEDURE MDNUM2_MATMUL_MDNUM2,R_MATMUL_MDNUM2,MDNUM2_MATMUL_R
  END INTERFACE

  INTERFACE UNFOLD
    MODULE PROCEDURE MDNUM2_TO_CR_MAT_S,MDNUM2_TO_CR_MAT_V,MDNUM2_TO_CR_MAT_M
  END INTERFACE

  INTERFACE TO_CR
    MODULE PROCEDURE MDNUM2_TO_CR_MAT_S,MDNUM2_TO_CR_MAT_V,MDNUM2_TO_CR_MAT_M
  END INTERFACE

  INTERFACE SIN
    MODULE PROCEDURE MDNUM2_SIN
  END INTERFACE

  INTERFACE COS
    MODULE PROCEDURE MDNUM2_COS
  END INTERFACE

  INTERFACE TAN
    MODULE PROCEDURE MDNUM2_TAN
  END INTERFACE

  INTERFACE ASIN
    MODULE PROCEDURE MDNUM2_ASIN
  END INTERFACE

  INTERFACE ACOS
    MODULE PROCEDURE MDNUM2_ACOS
  END INTERFACE

  INTERFACE ATAN
    MODULE PROCEDURE MDNUM2_ATAN
  END INTERFACE

  INTERFACE SINH
    MODULE PROCEDURE MDNUM2_SINH
  END INTERFACE

  INTERFACE COSH
    MODULE PROCEDURE MDNUM2_COSH
  END INTERFACE

  INTERFACE TANH
    MODULE PROCEDURE MDNUM2_TANH
  END INTERFACE

  INTERFACE SQRT
    MODULE PROCEDURE MDNUM2_SQRT
  END INTERFACE

  INTERFACE LOG
    MODULE PROCEDURE MDNUM2_LOG
  END INTERFACE

  INTERFACE EXP
    MODULE PROCEDURE MDNUM2_EXP
  END INTERFACE

  INTERFACE GEM
    MODULE PROCEDURE MDNUM2_GEM_OOO,MDNUM2_GEM_ROO,MDNUM2_GEM_ORO
  END INTERFACE

  INTERFACE FEVAL
    MODULE PROCEDURE MDNUM2_FEVAL
  END INTERFACE

  INTERFACE REAL
    MODULE PROCEDURE MDNUM2_REAL
  END INTERFACE

  CONTAINS

  ELEMENTAL SUBROUTINE MDNUM2_ASSIGN_R(RES,LHS)
    
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS 
    TYPE(MDNUM2), INTENT(OUT) :: RES 

    ! Assign like function 'LHS'
    ! Real
    RES%R = LHS

    ! Order 1
    RES%E1 = 0.0_DP
    RES%E2 = 0.0_DP

    ! Order 2
    RES%E12 = 0.0_DP

  END SUBROUTINE MDNUM2_ASSIGN_R

  ELEMENTAL FUNCTION MDNUM2_NEG(LHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS 
    TYPE(MDNUM2) :: RES 

    ! Negation like function '-LHS'
    ! Real
    RES%R = -LHS%R
    ! Order 1
    RES%E1 = -LHS%E1
    RES%E2 = -LHS%E2
    ! Order 2
    RES%E12 = -LHS%E12

  END FUNCTION MDNUM2_NEG

  ELEMENTAL FUNCTION MDNUM2_ADD_OO_SS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS
    TYPE(MDNUM2), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES 

    ! Addition like function 'LHS + RHS'
    !  Real
    RES%R = LHS%R + RHS%R

    ! Order 1
    RES%E1 = LHS%E1 + RHS%E1
    RES%E2 = LHS%E2 + RHS%E2

    ! Order 2
    RES%E12 = LHS%E12 + RHS%E12

  END FUNCTION MDNUM2_ADD_OO_SS

  ELEMENTAL FUNCTION MDNUM2_ADD_RO_SS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS
    TYPE(MDNUM2), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS + RHS%R

    ! Order 1
    RES%E1 =  + RHS%E1
    RES%E2 =  + RHS%E2

    ! Order 2
    RES%E12 =  + RHS%E12

  END FUNCTION MDNUM2_ADD_RO_SS

  ELEMENTAL FUNCTION MDNUM2_ADD_OR_SS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS
    REAL(DP), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS%R + RHS

    ! Order 1
    RES%E1 = LHS%E1
    RES%E2 = LHS%E2

    ! Order 2
    RES%E12 = LHS%E12

  END FUNCTION MDNUM2_ADD_OR_SS

  ELEMENTAL FUNCTION MDNUM2_SUB_OO_SS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS
    TYPE(MDNUM2), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES 

    ! Addition like function 'LHS - RHS'
    !  Real
    RES%R = LHS%R - RHS%R

    ! Order 1
    RES%E1 = LHS%E1 - RHS%E1
    RES%E2 = LHS%E2 - RHS%E2

    ! Order 2
    RES%E12 = LHS%E12 - RHS%E12

  END FUNCTION MDNUM2_SUB_OO_SS

  ELEMENTAL FUNCTION MDNUM2_SUB_RO_SS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS
    TYPE(MDNUM2), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS - RHS%R

    ! Order 1
    RES%E1 =  - RHS%E1
    RES%E2 =  - RHS%E2

    ! Order 2
    RES%E12 =  - RHS%E12

  END FUNCTION MDNUM2_SUB_RO_SS

  ELEMENTAL FUNCTION MDNUM2_SUB_OR_SS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS
    REAL(DP), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS%R - RHS

    ! Order 1
    RES%E1 = LHS%E1
    RES%E2 = LHS%E2

    ! Order 2
    RES%E12 = LHS%E12

  END FUNCTION MDNUM2_SUB_OR_SS

  ELEMENTAL FUNCTION MDNUM2_MUL_OO_SS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS
    TYPE(MDNUM2), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES 

    !  Multiplication like function 'LHS*RHS'
    ! Order 2
    RES%E12 = LHS%R*RHS%E12 + LHS%E12*RHS%R +  &
           LHS%E1*RHS%E2 + LHS%E2*RHS%E1
    ! Order 1
    RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
    RES%E2 = LHS%R*RHS%E2 + LHS%E2*RHS%R
    ! Order 0
    RES%R = LHS%R*RHS%R

  END FUNCTION MDNUM2_MUL_OO_SS

  ELEMENTAL FUNCTION MDNUM2_MUL_RO_SS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS
    TYPE(MDNUM2), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS*RHS%R

    ! Order 1
    RES%E1 = LHS*RHS%E1
    RES%E2 = LHS*RHS%E2

    ! Order 2
    RES%E12 = LHS*RHS%E12

  END FUNCTION MDNUM2_MUL_RO_SS

  ELEMENTAL FUNCTION MDNUM2_MUL_OR_SS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS
    REAL(DP), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS%R*RHS

    ! Order 1
    RES%E1 = LHS%E1*RHS
    RES%E2 = LHS%E2*RHS

    ! Order 2
    RES%E12 = LHS%E12*RHS

  END FUNCTION MDNUM2_MUL_OR_SS

  FUNCTION MDNUM2_ADD_OO_VS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS(:)
    TYPE(MDNUM2), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES(SIZE(LHS,1)) 

    ! Addition like function 'LHS + RHS'
    !  Real
    RES%R = LHS%R + RHS%R

    ! Order 1
    RES%E1 = LHS%E1 + RHS%E1
    RES%E2 = LHS%E2 + RHS%E2

    ! Order 2
    RES%E12 = LHS%E12 + RHS%E12

  END FUNCTION MDNUM2_ADD_OO_VS

  FUNCTION MDNUM2_ADD_RO_VS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS(:)
    TYPE(MDNUM2), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES(SIZE(LHS,1)) 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS + RHS%R

    ! Order 1
    RES%E1 =  + RHS%E1
    RES%E2 =  + RHS%E2

    ! Order 2
    RES%E12 =  + RHS%E12

  END FUNCTION MDNUM2_ADD_RO_VS

  FUNCTION MDNUM2_ADD_OR_VS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS(:)
    REAL(DP), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES(SIZE(LHS,1)) 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS%R + RHS

    ! Order 1
    RES%E1 = LHS%E1
    RES%E2 = LHS%E2

    ! Order 2
    RES%E12 = LHS%E12

  END FUNCTION MDNUM2_ADD_OR_VS

  FUNCTION MDNUM2_SUB_OO_VS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS(:)
    TYPE(MDNUM2), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES(SIZE(LHS,1)) 

    ! Addition like function 'LHS - RHS'
    !  Real
    RES%R = LHS%R - RHS%R

    ! Order 1
    RES%E1 = LHS%E1 - RHS%E1
    RES%E2 = LHS%E2 - RHS%E2

    ! Order 2
    RES%E12 = LHS%E12 - RHS%E12

  END FUNCTION MDNUM2_SUB_OO_VS

  FUNCTION MDNUM2_SUB_RO_VS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS(:)
    TYPE(MDNUM2), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES(SIZE(LHS,1)) 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS - RHS%R

    ! Order 1
    RES%E1 =  - RHS%E1
    RES%E2 =  - RHS%E2

    ! Order 2
    RES%E12 =  - RHS%E12

  END FUNCTION MDNUM2_SUB_RO_VS

  FUNCTION MDNUM2_SUB_OR_VS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS(:)
    REAL(DP), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES(SIZE(LHS,1)) 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS%R - RHS

    ! Order 1
    RES%E1 = LHS%E1
    RES%E2 = LHS%E2

    ! Order 2
    RES%E12 = LHS%E12

  END FUNCTION MDNUM2_SUB_OR_VS

  FUNCTION MDNUM2_MUL_OO_VS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS(:)
    TYPE(MDNUM2), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES(SIZE(LHS,1)) 

    !  Multiplication like function 'LHS*RHS'
    ! Order 2
    RES%E12 = LHS%R*RHS%E12 + LHS%E12*RHS%R +  &
           LHS%E1*RHS%E2 + LHS%E2*RHS%E1
    ! Order 1
    RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
    RES%E2 = LHS%R*RHS%E2 + LHS%E2*RHS%R
    ! Order 0
    RES%R = LHS%R*RHS%R

  END FUNCTION MDNUM2_MUL_OO_VS

  FUNCTION MDNUM2_MUL_RO_VS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS(:)
    TYPE(MDNUM2), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES(SIZE(LHS,1)) 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS*RHS%R

    ! Order 1
    RES%E1 = LHS*RHS%E1
    RES%E2 = LHS*RHS%E2

    ! Order 2
    RES%E12 = LHS*RHS%E12

  END FUNCTION MDNUM2_MUL_RO_VS

  FUNCTION MDNUM2_MUL_OR_VS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS(:)
    REAL(DP), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES(SIZE(LHS,1)) 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS%R*RHS

    ! Order 1
    RES%E1 = LHS%E1*RHS
    RES%E2 = LHS%E2*RHS

    ! Order 2
    RES%E12 = LHS%E12*RHS

  END FUNCTION MDNUM2_MUL_OR_VS

  FUNCTION MDNUM2_ADD_OO_MS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS(:,:)
    TYPE(MDNUM2), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

    ! Addition like function 'LHS + RHS'
    !  Real
    RES%R = LHS%R + RHS%R

    ! Order 1
    RES%E1 = LHS%E1 + RHS%E1
    RES%E2 = LHS%E2 + RHS%E2

    ! Order 2
    RES%E12 = LHS%E12 + RHS%E12

  END FUNCTION MDNUM2_ADD_OO_MS

  FUNCTION MDNUM2_ADD_RO_MS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS(:,:)
    TYPE(MDNUM2), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS + RHS%R

    ! Order 1
    RES%E1 =  + RHS%E1
    RES%E2 =  + RHS%E2

    ! Order 2
    RES%E12 =  + RHS%E12

  END FUNCTION MDNUM2_ADD_RO_MS

  FUNCTION MDNUM2_ADD_OR_MS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS(:,:)
    REAL(DP), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS%R + RHS

    ! Order 1
    RES%E1 = LHS%E1
    RES%E2 = LHS%E2

    ! Order 2
    RES%E12 = LHS%E12

  END FUNCTION MDNUM2_ADD_OR_MS

  FUNCTION MDNUM2_SUB_OO_MS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS(:,:)
    TYPE(MDNUM2), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

    ! Addition like function 'LHS - RHS'
    !  Real
    RES%R = LHS%R - RHS%R

    ! Order 1
    RES%E1 = LHS%E1 - RHS%E1
    RES%E2 = LHS%E2 - RHS%E2

    ! Order 2
    RES%E12 = LHS%E12 - RHS%E12

  END FUNCTION MDNUM2_SUB_OO_MS

  FUNCTION MDNUM2_SUB_RO_MS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS(:,:)
    TYPE(MDNUM2), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS - RHS%R

    ! Order 1
    RES%E1 =  - RHS%E1
    RES%E2 =  - RHS%E2

    ! Order 2
    RES%E12 =  - RHS%E12

  END FUNCTION MDNUM2_SUB_RO_MS

  FUNCTION MDNUM2_SUB_OR_MS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS(:,:)
    REAL(DP), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS%R - RHS

    ! Order 1
    RES%E1 = LHS%E1
    RES%E2 = LHS%E2

    ! Order 2
    RES%E12 = LHS%E12

  END FUNCTION MDNUM2_SUB_OR_MS

  FUNCTION MDNUM2_MUL_OO_MS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS(:,:)
    TYPE(MDNUM2), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

    !  Multiplication like function 'LHS*RHS'
    ! Order 2
    RES%E12 = LHS%R*RHS%E12 + LHS%E12*RHS%R +  &
           LHS%E1*RHS%E2 + LHS%E2*RHS%E1
    ! Order 1
    RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
    RES%E2 = LHS%R*RHS%E2 + LHS%E2*RHS%R
    ! Order 0
    RES%R = LHS%R*RHS%R

  END FUNCTION MDNUM2_MUL_OO_MS

  FUNCTION MDNUM2_MUL_RO_MS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS(:,:)
    TYPE(MDNUM2), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS*RHS%R

    ! Order 1
    RES%E1 = LHS*RHS%E1
    RES%E2 = LHS*RHS%E2

    ! Order 2
    RES%E12 = LHS*RHS%E12

  END FUNCTION MDNUM2_MUL_RO_MS

  FUNCTION MDNUM2_MUL_OR_MS(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS(:,:)
    REAL(DP), INTENT(IN) :: RHS
    TYPE(MDNUM2) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS%R*RHS

    ! Order 1
    RES%E1 = LHS%E1*RHS
    RES%E2 = LHS%E2*RHS

    ! Order 2
    RES%E12 = LHS%E12*RHS

  END FUNCTION MDNUM2_MUL_OR_MS

  FUNCTION MDNUM2_ADD_OO_SV(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS
    TYPE(MDNUM2), INTENT(IN) :: RHS(:)
    TYPE(MDNUM2) :: RES(SIZE(RHS,1)) 

    ! Addition like function 'LHS + RHS'
    !  Real
    RES%R = LHS%R + RHS%R

    ! Order 1
    RES%E1 = LHS%E1 + RHS%E1
    RES%E2 = LHS%E2 + RHS%E2

    ! Order 2
    RES%E12 = LHS%E12 + RHS%E12

  END FUNCTION MDNUM2_ADD_OO_SV

  FUNCTION MDNUM2_ADD_RO_SV(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS
    TYPE(MDNUM2), INTENT(IN) :: RHS(:)
    TYPE(MDNUM2) :: RES(SIZE(RHS,1)) 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS + RHS%R

    ! Order 1
    RES%E1 =  + RHS%E1
    RES%E2 =  + RHS%E2

    ! Order 2
    RES%E12 =  + RHS%E12

  END FUNCTION MDNUM2_ADD_RO_SV

  FUNCTION MDNUM2_ADD_OR_SV(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS
    REAL(DP), INTENT(IN) :: RHS(:)
    TYPE(MDNUM2) :: RES(SIZE(RHS,1)) 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS%R + RHS

    ! Order 1
    RES%E1 = LHS%E1
    RES%E2 = LHS%E2

    ! Order 2
    RES%E12 = LHS%E12

  END FUNCTION MDNUM2_ADD_OR_SV

  FUNCTION MDNUM2_SUB_OO_SV(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS
    TYPE(MDNUM2), INTENT(IN) :: RHS(:)
    TYPE(MDNUM2) :: RES(SIZE(RHS,1)) 

    ! Addition like function 'LHS - RHS'
    !  Real
    RES%R = LHS%R - RHS%R

    ! Order 1
    RES%E1 = LHS%E1 - RHS%E1
    RES%E2 = LHS%E2 - RHS%E2

    ! Order 2
    RES%E12 = LHS%E12 - RHS%E12

  END FUNCTION MDNUM2_SUB_OO_SV

  FUNCTION MDNUM2_SUB_RO_SV(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS
    TYPE(MDNUM2), INTENT(IN) :: RHS(:)
    TYPE(MDNUM2) :: RES(SIZE(RHS,1)) 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS - RHS%R

    ! Order 1
    RES%E1 =  - RHS%E1
    RES%E2 =  - RHS%E2

    ! Order 2
    RES%E12 =  - RHS%E12

  END FUNCTION MDNUM2_SUB_RO_SV

  FUNCTION MDNUM2_SUB_OR_SV(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS
    REAL(DP), INTENT(IN) :: RHS(:)
    TYPE(MDNUM2) :: RES(SIZE(RHS,1)) 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS%R - RHS

    ! Order 1
    RES%E1 = LHS%E1
    RES%E2 = LHS%E2

    ! Order 2
    RES%E12 = LHS%E12

  END FUNCTION MDNUM2_SUB_OR_SV

  FUNCTION MDNUM2_MUL_OO_SV(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS
    TYPE(MDNUM2), INTENT(IN) :: RHS(:)
    TYPE(MDNUM2) :: RES(SIZE(RHS,1)) 

    !  Multiplication like function 'LHS*RHS'
    ! Order 2
    RES%E12 = LHS%R*RHS%E12 + LHS%E12*RHS%R +  &
           LHS%E1*RHS%E2 + LHS%E2*RHS%E1
    ! Order 1
    RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
    RES%E2 = LHS%R*RHS%E2 + LHS%E2*RHS%R
    ! Order 0
    RES%R = LHS%R*RHS%R

  END FUNCTION MDNUM2_MUL_OO_SV

  FUNCTION MDNUM2_MUL_RO_SV(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS
    TYPE(MDNUM2), INTENT(IN) :: RHS(:)
    TYPE(MDNUM2) :: RES(SIZE(RHS,1)) 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS*RHS%R

    ! Order 1
    RES%E1 = LHS*RHS%E1
    RES%E2 = LHS*RHS%E2

    ! Order 2
    RES%E12 = LHS*RHS%E12

  END FUNCTION MDNUM2_MUL_RO_SV

  FUNCTION MDNUM2_MUL_OR_SV(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS
    REAL(DP), INTENT(IN) :: RHS(:)
    TYPE(MDNUM2) :: RES(SIZE(RHS,1)) 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS%R*RHS

    ! Order 1
    RES%E1 = LHS%E1*RHS
    RES%E2 = LHS%E2*RHS

    ! Order 2
    RES%E12 = LHS%E12*RHS

  END FUNCTION MDNUM2_MUL_OR_SV

  FUNCTION MDNUM2_ADD_OO_SM(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS
    TYPE(MDNUM2), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM2) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

    ! Addition like function 'LHS + RHS'
    !  Real
    RES%R = LHS%R + RHS%R

    ! Order 1
    RES%E1 = LHS%E1 + RHS%E1
    RES%E2 = LHS%E2 + RHS%E2

    ! Order 2
    RES%E12 = LHS%E12 + RHS%E12

  END FUNCTION MDNUM2_ADD_OO_SM

  FUNCTION MDNUM2_ADD_RO_SM(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS
    TYPE(MDNUM2), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM2) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS + RHS%R

    ! Order 1
    RES%E1 =  + RHS%E1
    RES%E2 =  + RHS%E2

    ! Order 2
    RES%E12 =  + RHS%E12

  END FUNCTION MDNUM2_ADD_RO_SM

  FUNCTION MDNUM2_ADD_OR_SM(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS
    REAL(DP), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM2) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS%R + RHS

    ! Order 1
    RES%E1 = LHS%E1
    RES%E2 = LHS%E2

    ! Order 2
    RES%E12 = LHS%E12

  END FUNCTION MDNUM2_ADD_OR_SM

  FUNCTION MDNUM2_SUB_OO_SM(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS
    TYPE(MDNUM2), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM2) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

    ! Addition like function 'LHS - RHS'
    !  Real
    RES%R = LHS%R - RHS%R

    ! Order 1
    RES%E1 = LHS%E1 - RHS%E1
    RES%E2 = LHS%E2 - RHS%E2

    ! Order 2
    RES%E12 = LHS%E12 - RHS%E12

  END FUNCTION MDNUM2_SUB_OO_SM

  FUNCTION MDNUM2_SUB_RO_SM(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS
    TYPE(MDNUM2), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM2) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS - RHS%R

    ! Order 1
    RES%E1 =  - RHS%E1
    RES%E2 =  - RHS%E2

    ! Order 2
    RES%E12 =  - RHS%E12

  END FUNCTION MDNUM2_SUB_RO_SM

  FUNCTION MDNUM2_SUB_OR_SM(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS
    REAL(DP), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM2) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS%R - RHS

    ! Order 1
    RES%E1 = LHS%E1
    RES%E2 = LHS%E2

    ! Order 2
    RES%E12 = LHS%E12

  END FUNCTION MDNUM2_SUB_OR_SM

  FUNCTION MDNUM2_MUL_OO_SM(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS
    TYPE(MDNUM2), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM2) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

    !  Multiplication like function 'LHS*RHS'
    ! Order 2
    RES%E12 = LHS%R*RHS%E12 + LHS%E12*RHS%R +  &
           LHS%E1*RHS%E2 + LHS%E2*RHS%E1
    ! Order 1
    RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
    RES%E2 = LHS%R*RHS%E2 + LHS%E2*RHS%R
    ! Order 0
    RES%R = LHS%R*RHS%R

  END FUNCTION MDNUM2_MUL_OO_SM

  FUNCTION MDNUM2_MUL_RO_SM(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS
    TYPE(MDNUM2), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM2) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS*RHS%R

    ! Order 1
    RES%E1 = LHS*RHS%E1
    RES%E2 = LHS*RHS%E2

    ! Order 2
    RES%E12 = LHS*RHS%E12

  END FUNCTION MDNUM2_MUL_RO_SM

  FUNCTION MDNUM2_MUL_OR_SM(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS
    REAL(DP), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM2) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS%R*RHS

    ! Order 1
    RES%E1 = LHS%E1*RHS
    RES%E2 = LHS%E2*RHS

    ! Order 2
    RES%E12 = LHS%E12*RHS

  END FUNCTION MDNUM2_MUL_OR_SM

ELEMENTAL   FUNCTION MDNUM2_GEM_OOO(A,B,C)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: A 
    TYPE(MDNUM2), INTENT(IN) :: B 
    TYPE(MDNUM2), INTENT(IN) :: C 
    TYPE(MDNUM2) :: RES 

    !  General multiplication like function 'A*B + C'

    ! Order 0
    RES%R = C%R + A%R*B%R

    ! Order 1
    RES%E1 = C%E1 + A%R*B%E1 + A%E1*B%R
    RES%E2 = C%E2 + A%R*B%E2 + A%E2*B%R

    ! Order 2
    RES%E12 = C%E12 + A%R*B%E12 + A%E12*B%R + A%E1*B%E2 &
            + A%E2*B%E1

  END FUNCTION MDNUM2_GEM_OOO

ELEMENTAL   FUNCTION MDNUM2_GEM_ROO(A,B,C)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: A 
    TYPE(MDNUM2), INTENT(IN) :: B 
    TYPE(MDNUM2), INTENT(IN) :: C 
    TYPE(MDNUM2) :: RES 

    !  General multiplication like function 'A*B + C'
    ! Order 2
    RES%E12 = C%E12 + A*B%E12
    ! Order 1
    RES%E1 = C%E1 + A*B%E1
    RES%E2 = C%E2 + A*B%E2
    ! Order 0
    RES%R = C%R + A*B%R

  END FUNCTION MDNUM2_GEM_ROO

ELEMENTAL   FUNCTION MDNUM2_GEM_ORO(A,B,C)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: A 
    REAL(DP), INTENT(IN) :: B 
    TYPE(MDNUM2), INTENT(IN) :: C 
    TYPE(MDNUM2) :: RES 

    !  General multiplication like function 'A*B + C'

    ! Order 0
    RES%R = C%R + A%R*B

    ! Order 1
    RES%E1 = C%E1 + A%E1*B
    RES%E2 = C%E2 + A%E2*B

    ! Order 2
    RES%E12 = C%E12 + A%E12*B

  END FUNCTION MDNUM2_GEM_ORO

  FUNCTION MDNUM2_MATMUL_MDNUM2(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS(:,:)
    TYPE(MDNUM2), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM2) :: RES(SIZE(LHS,1),SIZE(RHS,2))

    !  Multiplication like function 'MATMUL(LHS,RHS)'
    ! Order 2
    RES%E12 = MATMUL(LHS%R,RHS%E12) + MATMUL(LHS%E12,RHS%R) +  &
           MATMUL(LHS%E1,RHS%E2) + MATMUL(LHS%E2,RHS%E1)
    ! Order 1
    RES%E1 = MATMUL(LHS%R,RHS%E1) + MATMUL(LHS%E1,RHS%R)
    RES%E2 = MATMUL(LHS%R,RHS%E2) + MATMUL(LHS%E2,RHS%R)
    ! Order 0
    RES%R = MATMUL(LHS%R,RHS%R)

  END FUNCTION MDNUM2_MATMUL_MDNUM2

  FUNCTION R_MATMUL_MDNUM2(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS(:,:)
    TYPE(MDNUM2), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM2) :: RES(SIZE(LHS,1),SIZE(RHS,2))

    ! Multiplication like function 'MATMUL(LHS,RHS)'
    !  Real
    RES%R = MATMUL(LHS,RHS%R)

    ! Order 1
    RES%E1 = MATMUL(LHS,RHS%E1)
    RES%E2 = MATMUL(LHS,RHS%E2)

    ! Order 2
    RES%E12 = MATMUL(LHS,RHS%E12)

  END FUNCTION R_MATMUL_MDNUM2

  FUNCTION MDNUM2_MATMUL_R(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS(:,:)
    REAL(DP), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM2) :: RES(SIZE(LHS,1),SIZE(RHS,2))

    ! Multiplication like function 'MATMUL(LHS,RHS)'
    !  Real
    RES%R = MATMUL(LHS%R,RHS)

    ! Order 1
    RES%E1 = MATMUL(LHS%E1,RHS)
    RES%E2 = MATMUL(LHS%E2,RHS)

    ! Order 2
    RES%E12 = MATMUL(LHS%E12,RHS)

  END FUNCTION MDNUM2_MATMUL_R

  FUNCTION MDNUM2_TRANSPOSE(LHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: LHS(:,:)
    TYPE(MDNUM2) :: RES (SIZE(LHS,2),SIZE(LHS,1))

    ! Negation like function 'TRANSPOSE(LHS)'
    ! Real
    RES%R = TRANSPOSE(LHS%R)
    ! Order 1
    RES%E1 = TRANSPOSE(LHS%E1)
    RES%E2 = TRANSPOSE(LHS%E2)
    ! Order 2
    RES%E12 = TRANSPOSE(LHS%E12)

  END FUNCTION MDNUM2_TRANSPOSE

FUNCTION MDNUM2_TO_CR_MAT_S(VAL) RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: VAL
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
    ! R x E12 -> E12 (4, 4)
    RES(1+NROWS*3:NROWS*4,1+NCOLS*3:NCOLS*4) = VAL%R
    ! E12 x R -> E12 (4, 1)
    RES(1+NROWS*3:NROWS*4,1+NCOLS*0:NCOLS*1) = VAL%E12
    ! E1 x E2 -> E12 (4, 3)
    RES(1+NROWS*3:NROWS*4,1+NCOLS*2:NCOLS*3) = VAL%E1
    ! E2 x E1 -> E12 (4, 2)
    RES(1+NROWS*3:NROWS*4,1+NCOLS*1:NCOLS*2) = VAL%E2
  END FUNCTION MDNUM2_TO_CR_MAT_S

FUNCTION MDNUM2_TO_CR_MAT_V(VAL) RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: VAL(:)
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
    ! R x E12 -> E12 (4, 4)
    RES(1+NROWS*3:NROWS*4,4) = VAL%R
    ! E12 x R -> E12 (4, 1)
    RES(1+NROWS*3:NROWS*4,1) = VAL%E12
    ! E1 x E2 -> E12 (4, 3)
    RES(1+NROWS*3:NROWS*4,3) = VAL%E1
    ! E2 x E1 -> E12 (4, 2)
    RES(1+NROWS*3:NROWS*4,2) = VAL%E2
  END FUNCTION MDNUM2_TO_CR_MAT_V

FUNCTION MDNUM2_TO_CR_MAT_M(VAL) RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM2), INTENT(IN) :: VAL(:,:)
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
    ! R x E12 -> E12 (4, 4)
    RES(1+NROWS*3:NROWS*4,1+NCOLS*3:NCOLS*4) = VAL%R
    ! E12 x R -> E12 (4, 1)
    RES(1+NROWS*3:NROWS*4,1+NCOLS*0:NCOLS*1) = VAL%E12
    ! E1 x E2 -> E12 (4, 3)
    RES(1+NROWS*3:NROWS*4,1+NCOLS*2:NCOLS*3) = VAL%E1
    ! E2 x E1 -> E12 (4, 2)
    RES(1+NROWS*3:NROWS*4,1+NCOLS*1:NCOLS*2) = VAL%E2
  END FUNCTION MDNUM2_TO_CR_MAT_M

  ELEMENTAL FUNCTION MDNUM2_FEVAL(X,DER0,DER1,DER2)&
    RESULT(RES)
    IMPLICIT NONE
    !  Definitions
    REAL(DP) :: FACTOR, COEF
    TYPE(MDNUM2), INTENT(IN)  :: X
    REAL(DP), INTENT(IN)  :: DER0,DER1,DER2
    TYPE(MDNUM2) :: RES
    TYPE(MDNUM2) :: DX, DX_P

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
    RES%E12 = RES%E12+COEF*DX_P%E12
    ! Order 1
    RES%E1 = RES%E1+COEF*DX_P%E1
    RES%E2 = RES%E2+COEF*DX_P%E2
    ! DX_P = DX_P * DX
    ! Order 2
    DX_P%E12 = DX_P%E1*DX%E2+DX_P%E2*DX%E1
    
    ! Sets order 2
    FACTOR = FACTOR * 2
    COEF = DER2 / FACTOR
    ! RES = RES COEF * DX_P
    ! Order 2
    RES%E12 = RES%E12+COEF*DX_P%E12
    
  END FUNCTION MDNUM2_FEVAL


  SUBROUTINE MDNUM2_PPRINT_M_R(X, FMT)
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

  END SUBROUTINE MDNUM2_PPRINT_M_R

  SUBROUTINE MDNUM2_PPRINT_V_R(X, FMT)
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

  END SUBROUTINE MDNUM2_PPRINT_V_R

  FUNCTION MDNUM2_DIVISION_OO(X,Y) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      TYPE(MDNUM2), INTENT(IN) :: X
      TYPE(MDNUM2), INTENT(IN) :: Y
      TYPE(MDNUM2) :: RES

      RES = X*(Y**(-1.d0))

  END FUNCTION MDNUM2_DIVISION_OO

  FUNCTION MDNUM2_DIVISION_OR(X,Y) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      TYPE(MDNUM2), INTENT(IN) :: X
      REAL(DP), INTENT(IN) :: Y
      TYPE(MDNUM2) :: RES

      RES = X*(Y**(-1.d0))

  END FUNCTION MDNUM2_DIVISION_OR

  FUNCTION MDNUM2_DIVISION_RO(X,Y) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      REAL(DP), INTENT(IN) :: X
      TYPE(MDNUM2), INTENT(IN) :: Y
      TYPE(MDNUM2) :: RES

      RES = X*(Y**(-1.d0))

  END FUNCTION MDNUM2_DIVISION_RO

  ELEMENTAL FUNCTION MDNUM2_REAL(X) RESULT(RES)
      IMPLICIT NONE
      TYPE(MDNUM2), INTENT(IN) :: X
      REAL(DP) :: RES

      RES = X%R

  END FUNCTION MDNUM2_REAL

  FUNCTION MDNUM2_SQRT(X) RESULT(RES)
      IMPLICIT NONE
      TYPE(MDNUM2), INTENT(IN) :: X
      TYPE(MDNUM2) :: RES

      RES = X**0.5_DP

  END FUNCTION MDNUM2_SQRT

  ELEMENTAL FUNCTION MDNUM2_TAN(X) RESULT(RES)

    TYPE(MDNUM2), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1,DER2
    TYPE(MDNUM2) :: RES
    
    DER0 = TAN(X%R)
    DER1 = TAN(X%R)**2 + 1
    DER2 = 2*(TAN(X%R)**2 + 1)*TAN(X%R)

    RES = FEVAL(X,DER0,DER1,DER2)

  END FUNCTION MDNUM2_TAN

  ELEMENTAL FUNCTION MDNUM2_COS(X) RESULT(RES)

    TYPE(MDNUM2), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1,DER2
    TYPE(MDNUM2) :: RES
    
    DER0 = COS(X%R)
    DER1 = -SIN(X%R)
    DER2 = -COS(X%R)

    RES = FEVAL(X,DER0,DER1,DER2)

  END FUNCTION MDNUM2_COS

  ELEMENTAL FUNCTION MDNUM2_SIN(X) RESULT(RES)

    TYPE(MDNUM2), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1,DER2
    TYPE(MDNUM2) :: RES
    
    DER0 = SIN(X%R)
    DER1 = COS(X%R)
    DER2 = -SIN(X%R)

    RES = FEVAL(X,DER0,DER1,DER2)

  END FUNCTION MDNUM2_SIN

  ELEMENTAL FUNCTION MDNUM2_ATAN(X) RESULT(RES)

    TYPE(MDNUM2), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1,DER2
    TYPE(MDNUM2) :: RES
    
    DER0 = ATAN(X%R)
    DER1 = 1D0/(X%R**2 + 1)
    DER2 = -2*X%R/(X%R**2 + 1)**2

    RES = FEVAL(X,DER0,DER1,DER2)

  END FUNCTION MDNUM2_ATAN

  ELEMENTAL FUNCTION MDNUM2_ACOS(X) RESULT(RES)

    TYPE(MDNUM2), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1,DER2
    TYPE(MDNUM2) :: RES
    
    DER0 = ACOS(X%R)
    DER1 = -1/SQRT(1 - X%R**2)
    DER2 = -X%R/(1 - X%R**2)**(3.0D0/2.0D0)

    RES = FEVAL(X,DER0,DER1,DER2)

  END FUNCTION MDNUM2_ACOS

  ELEMENTAL FUNCTION MDNUM2_ASIN(X) RESULT(RES)

    TYPE(MDNUM2), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1,DER2
    TYPE(MDNUM2) :: RES
    
    DER0 = ASIN(X%R)
    DER1 = 1/SQRT(1 - X%R**2)
    DER2 = X%R/(1 - X%R**2)**(3.0D0/2.0D0)

    RES = FEVAL(X,DER0,DER1,DER2)

  END FUNCTION MDNUM2_ASIN

  ELEMENTAL FUNCTION MDNUM2_TANH(X) RESULT(RES)

    TYPE(MDNUM2), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1,DER2
    TYPE(MDNUM2) :: RES
    
    DER0 = TANH(X%R)
    DER1 = 1 - TANH(X%R)**2
    DER2 = 2*(TANH(X%R)**2 - 1)*TANH(X%R)

    RES = FEVAL(X,DER0,DER1,DER2)

  END FUNCTION MDNUM2_TANH

  ELEMENTAL FUNCTION MDNUM2_COSH(X) RESULT(RES)

    TYPE(MDNUM2), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1,DER2
    TYPE(MDNUM2) :: RES
    
    DER0 = COSH(X%R)
    DER1 = SINH(X%R)
    DER2 = COSH(X%R)

    RES = FEVAL(X,DER0,DER1,DER2)

  END FUNCTION MDNUM2_COSH

  ELEMENTAL FUNCTION MDNUM2_SINH(X) RESULT(RES)

    TYPE(MDNUM2), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1,DER2
    TYPE(MDNUM2) :: RES
    
    DER0 = SINH(X%R)
    DER1 = COSH(X%R)
    DER2 = SINH(X%R)

    RES = FEVAL(X,DER0,DER1,DER2)

  END FUNCTION MDNUM2_SINH

  ELEMENTAL FUNCTION MDNUM2_EXP(X) RESULT(RES)

    TYPE(MDNUM2), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1,DER2
    TYPE(MDNUM2) :: RES
    
    DER0 = EXP(X%R)
    DER1 = EXP(X%R)
    DER2 = EXP(X%R)

    RES = FEVAL(X,DER0,DER1,DER2)

  END FUNCTION MDNUM2_EXP

  ELEMENTAL FUNCTION MDNUM2_LOG(X) RESULT(RES)

    TYPE(MDNUM2), INTENT(IN) :: X
    REAL(DP) :: DER0,DER1,DER2
    TYPE(MDNUM2) :: RES
    
    DER0 = LOG(X%R)
    DER1 = 1D0/X%R
    DER2 = -1/X%R**2

    RES = FEVAL(X,DER0,DER1,DER2)

  END FUNCTION MDNUM2_LOG

  ELEMENTAL FUNCTION MDNUM2_POW(X,E) RESULT(RES)

    TYPE(MDNUM2), INTENT(IN) :: X
    REAL(DP), INTENT(IN) :: E
    REAL(DP) :: DER0,DER1,DER2
    TYPE(MDNUM2) :: RES
    
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

  END FUNCTION MDNUM2_POW

END MODULE MDUAL2
