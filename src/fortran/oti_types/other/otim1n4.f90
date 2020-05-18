MODULE OTIM1N4

  IMPLICIT NONE

  INTEGER, PARAMETER :: DP         = 8
  INTEGER, PARAMETER :: NUM_IM_DIR = 5
  INTEGER, PARAMETER :: TORDER     = 4

  TYPE ONUMM1N4
    ! Real
    REAL(DP) :: R
    ! Order 1
    REAL(DP) :: E1
    ! Order 2
    REAL(DP) :: E11
    ! Order 3
    REAL(DP) :: E111
    ! Order 4
    REAL(DP) :: E1111
  END TYPE ONUMM1N4

  INTERFACE OPERATOR(*)
    MODULE PROCEDURE ONUMM1N4_MUL_ONUMM1N4,R_MUL_ONUMM1N4,ONUMM1N4_MUL_R
  END INTERFACE

  INTERFACE OPERATOR(+)
    MODULE PROCEDURE ONUMM1N4_ADD_ONUMM1N4,R_ADD_ONUMM1N4,ONUMM1N4_ADD_R
  END INTERFACE

  INTERFACE OPERATOR(-)
    MODULE PROCEDURE ONUMM1N4_NEG,ONUMM1N4_SUB_ONUMM1N4,R_SUB_ONUMM1N4,ONUMM1N4_SUB_R
  END INTERFACE

  INTERFACE ASSIGNMENT(=)
    MODULE PROCEDURE ONUMM1N4_ASSIGN_R
  END INTERFACE

  INTERFACE TRANSPOSE
    MODULE PROCEDURE ONUMM1N4_TRANSPOSE
  END INTERFACE

  INTERFACE MATMUL
    MODULE PROCEDURE ONUMM1N4_MATMUL_ONUMM1N4,R_MATMUL_ONUMM1N4,ONUMM1N4_MATMUL_R
  END INTERFACE

  CONTAINS

  ELEMENTAL SUBROUTINE ONUMM1N4_ASSIGN_R(RES,LHS)
    
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS 
    TYPE(ONUMM1N4), INTENT(OUT) :: RES 

    ! Assign like function 'LHS'
    ! Real
    RES%R = LHS
    ! Order 1
    RES%E1 = 0.0_dp
    ! Order 2
    RES%E11 = 0.0_dp
    ! Order 3
    RES%E111 = 0.0_dp
    ! Order 4
    RES%E1111 = 0.0_dp

  END SUBROUTINE ONUMM1N4_ASSIGN_R

  ELEMENTAL FUNCTION ONUMM1N4_ADD_ONUMM1N4(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUMM1N4), INTENT(IN) :: LHS 
    TYPE(ONUMM1N4), INTENT(IN) :: RHS 
    TYPE(ONUMM1N4) :: RES 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS%R + RHS%R
    ! Order 1
    RES%E1 = LHS%E1 + RHS%E1
    ! Order 2
    RES%E11 = LHS%E11 + RHS%E11
    ! Order 3
    RES%E111 = LHS%E111 + RHS%E111
    ! Order 4
    RES%E1111 = LHS%E1111 + RHS%E1111

  END FUNCTION ONUMM1N4_ADD_ONUMM1N4

  ELEMENTAL FUNCTION R_ADD_ONUMM1N4(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS 
    TYPE(ONUMM1N4), INTENT(IN) :: RHS 
    TYPE(ONUMM1N4) :: RES 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS + RHS%R
    ! Order 1
    RES%E1 =  + RHS%E1
    ! Order 2
    RES%E11 =  + RHS%E11
    ! Order 3
    RES%E111 =  + RHS%E111
    ! Order 4
    RES%E1111 =  + RHS%E1111

  END FUNCTION R_ADD_ONUMM1N4

  ELEMENTAL FUNCTION ONUMM1N4_ADD_R(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUMM1N4), INTENT(IN) :: LHS 
    REAL(DP), INTENT(IN) :: RHS 
    TYPE(ONUMM1N4) :: RES 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS%R + RHS
    ! Order 1
    RES%E1 = LHS%E1
    ! Order 2
    RES%E11 = LHS%E11
    ! Order 3
    RES%E111 = LHS%E111
    ! Order 4
    RES%E1111 = LHS%E1111

  END FUNCTION ONUMM1N4_ADD_R

  ELEMENTAL FUNCTION ONUMM1N4_NEG(LHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUMM1N4), INTENT(IN) :: LHS 
    TYPE(ONUMM1N4) :: RES 

    ! Negation like function '-LHS'
    ! Real
    RES%R = -LHS%R
    ! Order 1
    RES%E1 = -LHS%E1
    ! Order 2
    RES%E11 = -LHS%E11
    ! Order 3
    RES%E111 = -LHS%E111
    ! Order 4
    RES%E1111 = -LHS%E1111

  END FUNCTION ONUMM1N4_NEG

  ELEMENTAL FUNCTION ONUMM1N4_SUB_ONUMM1N4(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUMM1N4), INTENT(IN) :: LHS 
    TYPE(ONUMM1N4), INTENT(IN) :: RHS 
    TYPE(ONUMM1N4) :: RES 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS%R - RHS%R
    ! Order 1
    RES%E1 = LHS%E1 - RHS%E1
    ! Order 2
    RES%E11 = LHS%E11 - RHS%E11
    ! Order 3
    RES%E111 = LHS%E111 - RHS%E111
    ! Order 4
    RES%E1111 = LHS%E1111 - RHS%E1111

  END FUNCTION ONUMM1N4_SUB_ONUMM1N4

  ELEMENTAL FUNCTION R_SUB_ONUMM1N4(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS 
    TYPE(ONUMM1N4), INTENT(IN) :: RHS 
    TYPE(ONUMM1N4) :: RES 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS - RHS%R
    ! Order 1
    RES%E1 =  - RHS%E1
    ! Order 2
    RES%E11 =  - RHS%E11
    ! Order 3
    RES%E111 =  - RHS%E111
    ! Order 4
    RES%E1111 =  - RHS%E1111

  END FUNCTION R_SUB_ONUMM1N4

  ELEMENTAL FUNCTION ONUMM1N4_SUB_R(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUMM1N4), INTENT(IN) :: LHS 
    REAL(DP), INTENT(IN) :: RHS 
    TYPE(ONUMM1N4) :: RES 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS%R - RHS
    ! Order 1
    RES%E1 = LHS%E1
    ! Order 2
    RES%E11 = LHS%E11
    ! Order 3
    RES%E111 = LHS%E111
    ! Order 4
    RES%E1111 = LHS%E1111

  END FUNCTION ONUMM1N4_SUB_R

  ELEMENTAL FUNCTION ONUMM1N4_MUL_ONUMM1N4(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUMM1N4), INTENT(IN) :: LHS 
    TYPE(ONUMM1N4), INTENT(IN) :: RHS 
    TYPE(ONUMM1N4) :: RES 

    ! Multiplication like function 'LHS*RHS'
    ! Real
    RES%R = LHS%R*RHS%R
    ! Order 1
    RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
    ! Order 2
    RES%E11 = LHS%R*RHS%E11 + LHS%E11*RHS%R + LHS%E1*RHS%E1
    ! Order 3
    RES%E111 = LHS%R*RHS%E111 + LHS%E111*RHS%R + LHS%E1*RHS%E11
    ! Order 4
    RES%E1111 = LHS%R*RHS%E1111 + LHS%E1111*RHS%R + LHS%E1*RHS%E111 &
              + LHS%E11*RHS%E11

  END FUNCTION ONUMM1N4_MUL_ONUMM1N4

  ELEMENTAL FUNCTION R_MUL_ONUMM1N4(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS 
    TYPE(ONUMM1N4), INTENT(IN) :: RHS 
    TYPE(ONUMM1N4) :: RES 

    ! Multiplication like function 'LHS*RHS'
    ! Real
    RES%R = LHS*RHS%R
    ! Order 1
    RES%E1 = LHS*RHS%E1
    ! Order 2
    RES%E11 = LHS*RHS%E11
    ! Order 3
    RES%E111 = LHS*RHS%E111
    ! Order 4
    RES%E1111 = LHS*RHS%E1111

  END FUNCTION R_MUL_ONUMM1N4

  ELEMENTAL FUNCTION ONUMM1N4_MUL_R(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUMM1N4), INTENT(IN) :: LHS 
    REAL(DP), INTENT(IN) :: RHS 
    TYPE(ONUMM1N4) :: RES 

    ! Multiplication like function 'LHS*RHS'
    ! Real
    RES%R = LHS%R*RHS
    ! Order 1
    RES%E1 = LHS%E1*RHS
    ! Order 2
    RES%E11 = LHS%E11*RHS
    ! Order 3
    RES%E111 = LHS%E111*RHS
    ! Order 4
    RES%E1111 = LHS%E1111*RHS

  END FUNCTION ONUMM1N4_MUL_R

  FUNCTION ONUMM1N4_MATMUL_ONUMM1N4(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUMM1N4), INTENT(IN) :: LHS(:,:) 
    TYPE(ONUMM1N4), INTENT(IN) :: RHS(:,:) 
    TYPE(ONUMM1N4) :: TMP 
    TYPE(ONUMM1N4) :: RES(SIZE(LHS,1),SIZE(RHS,2)) 
    INTEGER :: I,J,K 

    ! Dimension check
    IF (SIZE(LHS,2) /= SIZE(RHS,1)) THEN
      STOP "Runtime error: " // &
           "Dimension mismatch in MATMUL."
    END IF
    DO I = 1, SIZE(LHS,1)
      DO J = 1, SIZE(RHS,2)
        TMP = 0.0_DP
        DO K = 1, SIZE(LHS,2)
          TMP = TMP + LHS( I, K )*RHS( K, J )
        END DO
        RES( I, J ) = TMP
      END DO
    END DO

  END FUNCTION ONUMM1N4_MATMUL_ONUMM1N4

  FUNCTION R_MATMUL_ONUMM1N4(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS(:,:) 
    TYPE(ONUMM1N4), INTENT(IN) :: RHS(:,:) 
    TYPE(ONUMM1N4) :: TMP 
    TYPE(ONUMM1N4) :: RES(SIZE(LHS,1),SIZE(RHS,2)) 
    INTEGER :: I,J,K 

    ! Dimension check
    IF (SIZE(LHS,2) /= SIZE(RHS,1)) THEN
      STOP "Runtime error: " // &
           "Dimension mismatch in MATMUL."
    END IF
    DO I = 1, SIZE(LHS,1)
      DO J = 1, SIZE(RHS,2)
        TMP = 0.0_DP
        DO K = 1, SIZE(LHS,2)
          TMP = TMP + LHS( I, K )*RHS( K, J )
        END DO
        RES( I, J ) = TMP
      END DO
    END DO

  END FUNCTION R_MATMUL_ONUMM1N4

  FUNCTION ONUMM1N4_MATMUL_R(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUMM1N4), INTENT(IN) :: LHS(:,:) 
    REAL(DP), INTENT(IN) :: RHS(:,:) 
    TYPE(ONUMM1N4) :: TMP 
    TYPE(ONUMM1N4) :: RES(SIZE(LHS,1),SIZE(RHS,2)) 
    INTEGER :: I,J,K 

    ! Dimension check
    IF (SIZE(LHS,2) /= SIZE(RHS,1)) THEN
      STOP "Runtime error: " // &
           "Dimension mismatch in MATMUL."
    END IF
    DO I = 1, SIZE(LHS,1)
      DO J = 1, SIZE(RHS,2)
        TMP = 0.0_DP
        DO K = 1, SIZE(LHS,2)
          TMP = TMP + LHS( I, K )*RHS( K, J )
        END DO
        RES( I, J ) = TMP
      END DO
    END DO

  END FUNCTION ONUMM1N4_MATMUL_R

  FUNCTION ONUMM1N4_TRANSPOSE(LHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUMM1N4), INTENT(IN) :: LHS(:,:) 
    TYPE(ONUMM1N4) :: RES(SIZE(LHS,2),SIZE(LHS,1)) 
    INTEGER :: I,J 

    DO I = 1, SIZE(LHS,1)
      DO J = 1, SIZE(LHS,2)
        RES( J, I ) = LHS( I, J )
      END DO
    END DO

  END FUNCTION ONUMM1N4_TRANSPOSE

END MODULE OTIM1N4
