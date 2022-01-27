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

  PRIVATE :: DP,TORDER,DER_R_COS, &
             DER_R_SIN,DER_R_LOG,DER_R_EXP,DER_R_POW

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
    MODULE PROCEDURE MDNUM1_PPRINT_M_R
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

    ! Order 0
    RES%R = LHS%R*RHS%R

    ! Order 1
    RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R

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

    ! Order 0
    RES%R = LHS%R*RHS%R

    ! Order 1
    RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R

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

    ! Order 0
    RES%R = LHS%R*RHS%R

    ! Order 1
    RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R

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

    ! Order 0
    RES%R = LHS%R*RHS%R

    ! Order 1
    RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R

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

    ! Order 0
    RES%R = LHS%R*RHS%R

    ! Order 1
    RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R

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

    ! Order 0
    RES%R = C%R + A*B%R

    ! Order 1
    RES%E1 = C%E1 + A*B%E1

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

  FUNCTION MDNUM1_FEVAL(X,DERIVS)&
    RESULT(RES)
    IMPLICIT NONE
    !  Definitions
    REAL(DP) :: FACTOR, COEF
    TYPE(MDNUM1), INTENT(IN)  :: X
    REAL(DP), INTENT(IN)  :: DERIVS(2)
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
    RES = DERIVS(1)

    ! Sets order 1
    FACTOR = FACTOR * 1
    COEF = DERIVS(2) / FACTOR
    RES = GEM(COEF,DX_P,RES)
    
  END FUNCTION MDNUM1_FEVAL

  FUNCTION MDNUM1_MATMUL_MDNUM1(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUM1), INTENT(IN) :: LHS(:,:)
    TYPE(MDNUM1), INTENT(IN) :: RHS(:,:)
    TYPE(MDNUM1) :: RES(SIZE(LHS,1),SIZE(RHS,2))

    !  Multiplication like function 'MATMUL(LHS,RHS)'

    ! Order 0
    RES%R = MATMUL(LHS%R,RHS%R)

    ! Order 1
    RES%E1 = MATMUL(LHS%R,RHS%E1) + MATMUL(LHS%E1,RHS%R)

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

  PURE FUNCTION DER_R_COS( X ) RESULT(DERIVS)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER+1)
      REAL(DP), INTENT(IN) :: X
      INTEGER :: I
      INTEGER :: S
      INTEGER :: SIGN
      
      SIGN = 1
      S = 0

      DO I = 1,TORDER+1
      
          IF (S == 0) THEN
              DERIVS(I) = SIGN * COS(X)
          ELSE
              SIGN = SIGN * (-1);
              DERIVS(I) = SIGN * SIN(X)
          END IF 
      
          S = MOD((S+1),2)
       
      END DO

  END FUNCTION DER_R_COS

  PURE FUNCTION DER_R_SIN( X ) RESULT(DERIVS)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER+1)
      REAL(DP), INTENT(IN) :: X
      INTEGER :: I
      INTEGER :: S 
      INTEGER :: SIGN 
      
      SIGN = -1
      S = 1
      DO I = 1,TORDER+1
      
          IF (S == 0) THEN
              DERIVS(I) = SIGN * COS(X)
          ELSE
              SIGN = SIGN * (-1)
              DERIVS(I) = SIGN * SIN(X)
          END IF 
      
          S = MOD((S+1),2)
       
      END DO

  END FUNCTION DER_R_SIN

  PURE FUNCTION DER_R_LOG( X ) RESULT (DERIVS)
      IMPLICIT NONE  
      REAL(DP) :: DERIVS(TORDER+1)
      REAL(DP), INTENT(IN) :: X

      INTEGER :: SIGN 
      REAL(DP):: FACTOR 
      INTEGER :: I    

      SIGN = -1
      FACTOR = 1.0_DP

      DERIVS(1) = LOG(X)

      DO I = 2,TORDER +1
                   
          DERIVS(I) = FACTOR * SIGN**(I+1) / (X**I)
          FACTOR    = FACTOR * I
          
      END DO

  END FUNCTION DER_R_LOG

  PURE FUNCTION DER_R_EXP( X ) RESULT (DERIVS)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER+1)
      REAL(DP), INTENT(IN) :: X
      REAL(DP) :: VAL 
      INTEGER I

      VAL = EXP(X)

      DO I=1,TORDER+1
          DERIVS(I) = VAL
      END DO

  END FUNCTION DER_R_EXP

  PURE FUNCTION DER_R_POW( X, E ) RESULT (DERIVS)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: X ! Value
      REAL(DP), INTENT(IN) :: E ! Exponent
      REAL(DP) :: DERIVS(TORDER+1)
      REAL(DP) :: POWER_I 
      REAL(DP) :: X0 
      INTEGER  :: FLAG 
      REAL(DP) :: FACTOR
      INTEGER  ::  I
      
      POWER_I = E
      X0 = X
      FLAG = 0
      FACTOR = 1.0_DP

      DO I=1, TORDER+1
          IF( POWER_I /= 0.0_DP) THEN
              DERIVS(I) = FACTOR * ( X0 ** POWER_I )
              FACTOR = FACTOR*POWER_I
              POWER_I = POWER_I - 1
          ELSE
              IF (FLAG == 0 ) THEN
                  DERIVS(I) = FACTOR
                  FLAG = 1
              ELSE
                  DERIVS(I) = 0.0_DP
              END IF 
          END IF 
      END DO
  END FUNCTION DER_R_POW

  FUNCTION MDNUM1_SIN(X) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      TYPE(MDNUM1), INTENT(IN) :: X
      TYPE(MDNUM1) :: RES

      DERIVS = DER_R_SIN( X%R )

      RES = FEVAL(X,DERIVS)

  END FUNCTION MDNUM1_SIN

  FUNCTION MDNUM1_COS(X) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      TYPE(MDNUM1), INTENT(IN) :: X
      TYPE(MDNUM1) :: RES

      DERIVS = DER_R_COS( X%R )

      RES = FEVAL(X,DERIVS)

  END FUNCTION MDNUM1_COS

  FUNCTION MDNUM1_LOG(X) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      TYPE(MDNUM1), INTENT(IN) :: X
      TYPE(MDNUM1) :: RES

      DERIVS = DER_R_LOG( X%R )

      RES = FEVAL(X,DERIVS)

  END FUNCTION MDNUM1_LOG

  FUNCTION MDNUM1_EXP(X) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      TYPE(MDNUM1), INTENT(IN) :: X
      TYPE(MDNUM1) :: RES

      DERIVS = DER_R_EXP( X%R )

      RES = FEVAL(X,DERIVS)

  END FUNCTION MDNUM1_EXP

  FUNCTION MDNUM1_SQRT(X) RESULT(RES)
      IMPLICIT NONE
      TYPE(MDNUM1), INTENT(IN) :: X
      TYPE(MDNUM1) :: RES

      RES = X**0.5_DP

  END FUNCTION MDNUM1_SQRT

  FUNCTION MDNUM1_POW(X,E) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      TYPE(MDNUM1), INTENT(IN) :: X
      REAL(DP), INTENT(IN) :: E
      TYPE(MDNUM1) :: RES

      DERIVS = DER_R_POW( X%R, E )

      RES = FEVAL(X,DERIVS)

  END FUNCTION MDNUM1_POW

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

  SUBROUTINE MDNUM1_PPRINT_M_R(X, FMT)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: X(:,:)
      INTEGER :: I, J
      CHARACTER(*), INTENT(IN), OPTIONAL :: FMT
      CHARACTER(:),ALLOCATABLE :: out_fmt
      
      IF (PRESENT(fmt)) THEN
        out_fmt = ' '//fmt
      ELSE
        out_fmt = 'F8.3'
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
END MODULE MDUAL1
