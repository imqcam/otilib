MODULE OTIM1N1

  IMPLICIT NONE

  INTEGER, PARAMETER :: DP         = 8
  INTEGER, PARAMETER :: NUM_IM_DIR = 2
  INTEGER, PARAMETER :: TORDER     = 1

  TYPE ONUMM1N1
    ! Real
    REAL(DP) :: R
    ! Order 1
    REAL(DP) :: E1
  END TYPE ONUMM1N1

  INTERFACE OPERATOR(*)
    MODULE PROCEDURE ONUMM1N1_MUL_oo,ONUMM1N1_MUL_Ro,ONUMM1N1_MUL_oR
  END INTERFACE

  INTERFACE OPERATOR(+)
    MODULE PROCEDURE ONUMM1N1_ADD_oo,ONUMM1N1_ADD_Ro,ONUMM1N1_ADD_oR
  END INTERFACE

  INTERFACE OPERATOR(-)
    MODULE PROCEDURE ONUMM1N1_NEG,ONUMM1N1_SUB_oo,ONUMM1N1_SUB_Ro,ONUMM1N1_SUB_oR
  END INTERFACE

  INTERFACE ASSIGNMENT(=)
    MODULE PROCEDURE ONUMM1N1_ASSIGN_R
  END INTERFACE

  INTERFACE TRANSPOSE
    MODULE PROCEDURE ONUMM1N1_TRANSPOSE
  END INTERFACE

  INTERFACE MATMUL
    MODULE PROCEDURE ONUMM1N1_MATMUL_ONUMM1N1,R_MATMUL_ONUMM1N1,ONUMM1N1_MATMUL_R
  END INTERFACE

  CONTAINS

  ELEMENTAL SUBROUTINE ONUMM1N1_ASSIGN_R(RES,LHS)
    
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS 
    TYPE(ONUMM1N1), INTENT(OUT) :: RES 

    ! Assign like function 'LHS'
    ! Real
    RES%R = LHS
    ! Order 1
    RES%E1 = 0.0_dp

  END SUBROUTINE ONUMM1N1_ASSIGN_R

  ELEMENTAL FUNCTION ONUMM1N1_ADD_oo(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUMM1N1), INTENT(IN) :: LHS 
    TYPE(ONUMM1N1), INTENT(IN) :: RHS 
    TYPE(ONUMM1N1) :: RES 

    ! Addition like function 'LHS + RHS'
    !  Real
    RES%R = LHS%R + RHS%R
    ! Order 1
    RES%E1 = LHS%E1 + RHS%E1

  END FUNCTION ONUMM1N1_ADD_oo

  ELEMENTAL FUNCTION ONUMM1N1_ADD_Ro(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS 
    TYPE(ONUMM1N1), INTENT(IN) :: RHS 
    TYPE(ONUMM1N1) :: RES 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS + RHS%R
    ! Order 1
    RES%E1 =  + RHS%E1

  END FUNCTION ONUMM1N1_ADD_Ro

  ELEMENTAL FUNCTION ONUMM1N1_ADD_oR(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUMM1N1), INTENT(IN) :: LHS 
    REAL(DP), INTENT(IN) :: RHS 
    TYPE(ONUMM1N1) :: RES 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS%R + RHS
    ! Order 1
    RES%E1 = LHS%E1

  END FUNCTION ONUMM1N1_ADD_oR

  ELEMENTAL FUNCTION ONUMM1N1_NEG(LHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUMM1N1), INTENT(IN) :: LHS 
    TYPE(ONUMM1N1) :: RES 

    ! Negation like function '-LHS'
    ! Real
    RES%R = -LHS%R
    ! Order 1
    RES%E1 = -LHS%E1

  END FUNCTION ONUMM1N1_NEG

  ELEMENTAL FUNCTION ONUMM1N1_SUB_oo(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUMM1N1), INTENT(IN) :: LHS 
    TYPE(ONUMM1N1), INTENT(IN) :: RHS 
    TYPE(ONUMM1N1) :: RES 

    ! Addition like function 'LHS - RHS'
    !  Real
    RES%R = LHS%R - RHS%R
    ! Order 1
    RES%E1 = LHS%E1 - RHS%E1

  END FUNCTION ONUMM1N1_SUB_oo

  ELEMENTAL FUNCTION ONUMM1N1_SUB_Ro(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS 
    TYPE(ONUMM1N1), INTENT(IN) :: RHS 
    TYPE(ONUMM1N1) :: RES 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS - RHS%R
    ! Order 1
    RES%E1 =  - RHS%E1

  END FUNCTION ONUMM1N1_SUB_Ro

  ELEMENTAL FUNCTION ONUMM1N1_SUB_oR(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUMM1N1), INTENT(IN) :: LHS 
    REAL(DP), INTENT(IN) :: RHS 
    TYPE(ONUMM1N1) :: RES 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS%R - RHS
    ! Order 1
    RES%E1 = LHS%E1

  END FUNCTION ONUMM1N1_SUB_oR

  ELEMENTAL FUNCTION ONUMM1N1_MUL_oo(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUMM1N1), INTENT(IN) :: LHS 
    TYPE(ONUMM1N1), INTENT(IN) :: RHS 
    TYPE(ONUMM1N1) :: RES 

    !  Multiplication like function 'LHS*RHS'
    ! Real
    RES%R = LHS%R*RHS%R
    ! Order 1
    RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R

  END FUNCTION ONUMM1N1_MUL_oo

  ELEMENTAL FUNCTION ONUMM1N1_MUL_Ro(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS 
    TYPE(ONUMM1N1), INTENT(IN) :: RHS 
    TYPE(ONUMM1N1) :: RES 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS*RHS%R
    ! Order 1
    RES%E1 = LHS*RHS%E1

  END FUNCTION ONUMM1N1_MUL_Ro

  ELEMENTAL FUNCTION ONUMM1N1_MUL_oR(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUMM1N1), INTENT(IN) :: LHS 
    REAL(DP), INTENT(IN) :: RHS 
    TYPE(ONUMM1N1) :: RES 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS%R*RHS
    ! Order 1
    RES%E1 = LHS%E1*RHS

  END FUNCTION ONUMM1N1_MUL_oR

  FUNCTION ONUMM1N1_MATMUL_ONUMM1N1(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUMM1N1), INTENT(IN) :: LHS(:,:)
    TYPE(ONUMM1N1), INTENT(IN) :: RHS(:,:)
    TYPE(ONUMM1N1) :: RES(SIZE(LHS,1),SIZE(RHS,2))

    !  Multiplication like function 'MATMUL(LHS,RHS)'
    ! Real
    RES%R = MATMUL(LHS%R,RHS%R)
    ! Order 1
    RES%E1 = MATMUL(LHS%R,RHS%E1) + MATMUL(LHS%E1,RHS%R)

  END FUNCTION ONUMM1N1_MATMUL_ONUMM1N1

  FUNCTION R_MATMUL_ONUMM1N1(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS(:,:)
    TYPE(ONUMM1N1), INTENT(IN) :: RHS(:,:)
    TYPE(ONUMM1N1) :: RES(SIZE(LHS,1),SIZE(RHS,2))

    ! Multiplication like function 'MATMUL(LHS,RHS)'
    !  Real
    RES%R = MATMUL(LHS,RHS%R)
    ! Order 1
    RES%E1 = MATMUL(LHS,RHS%E1)

  END FUNCTION R_MATMUL_ONUMM1N1

  FUNCTION ONUMM1N1_MATMUL_R(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUMM1N1), INTENT(IN) :: LHS(:,:)
    REAL(DP), INTENT(IN) :: RHS(:,:)
    TYPE(ONUMM1N1) :: RES(SIZE(LHS,1),SIZE(RHS,2))

    ! Multiplication like function 'MATMUL(LHS,RHS)'
    !  Real
    RES%R = MATMUL(LHS%R,RHS)
    ! Order 1
    RES%E1 = MATMUL(LHS%E1,RHS)

  END FUNCTION ONUMM1N1_MATMUL_R

  FUNCTION ONUMM1N1_TRANSPOSE(LHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUMM1N1), INTENT(IN) :: LHS(:,:)
    TYPE(ONUMM1N1) :: RES (SIZE(LHS,2),SIZE(LHS,1))

    ! Negation like function 'TRANSPOSE(LHS)'
    ! Real
    RES%R = TRANSPOSE(LHS%R)
    ! Order 1
    RES%E1 = TRANSPOSE(LHS%E1)

  END FUNCTION ONUMM1N1_TRANSPOSE

END MODULE OTIM1N1
