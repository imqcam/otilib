MODULE MDUALM3N3

  IMPLICIT NONE

  INTEGER, PARAMETER :: DP         = 8
  INTEGER, PARAMETER :: NUM_IM_DIR = 8
  INTEGER, PARAMETER :: TORDER     = 3

  TYPE MDNUMM3N3
    ! Real
    REAL(DP) :: R
    ! Order 1
    REAL(DP) :: E1
    REAL(DP) :: E2
    REAL(DP) :: E3
    ! Order 2
    REAL(DP) :: E12
    REAL(DP) :: E13
    REAL(DP) :: E23
    ! Order 3
    REAL(DP) :: E123
  END TYPE MDNUMM3N3

  ! Constant imaginary directions.
  ! Order 1
  TYPE(MDNUMM3N3) :: E1 = MDNUMM3N3(0.0_DP,1.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP)
  TYPE(MDNUMM3N3) :: E2 = MDNUMM3N3(0.0_DP,0.0_DP,1.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP)
  TYPE(MDNUMM3N3) :: E3 = MDNUMM3N3(0.0_DP,0.0_DP,0.0_DP,1.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP)
  ! Order 2
  TYPE(MDNUMM3N3) :: E12 = MDNUMM3N3(0.0_DP,0.0_DP,0.0_DP,0.0_DP,1.0_DP,0.0_DP,0.0_DP,0.0_DP)
  TYPE(MDNUMM3N3) :: E13 = MDNUMM3N3(0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,1.0_DP,0.0_DP,0.0_DP)
  TYPE(MDNUMM3N3) :: E23 = MDNUMM3N3(0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,1.0_DP,0.0_DP)
  ! Order 3
  TYPE(MDNUMM3N3) :: E123 = MDNUMM3N3(0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,1.0_DP)

  PRIVATE :: DP,TORDER,DER_R_COS, &
             DER_R_SIN,DER_R_LOG,DER_R_EXP,DER_R_POW

  INTERFACE OPERATOR(*)
    MODULE PROCEDURE MDNUMM3N3_MUL_OO,MDNUMM3N3_MUL_RO,MDNUMM3N3_MUL_OR
  END INTERFACE

  INTERFACE OPERATOR(+)
    MODULE PROCEDURE MDNUMM3N3_ADD_OO,MDNUMM3N3_ADD_RO,MDNUMM3N3_ADD_OR
  END INTERFACE

  INTERFACE OPERATOR(-)
    MODULE PROCEDURE MDNUMM3N3_NEG,MDNUMM3N3_SUB_OO,MDNUMM3N3_SUB_RO,MDNUMM3N3_SUB_OR
  END INTERFACE

  INTERFACE ASSIGNMENT(=)
    MODULE PROCEDURE MDNUMM3N3_ASSIGN_R
  END INTERFACE

  INTERFACE OPERATOR(**)
    MODULE PROCEDURE MDNUMM3N3_POW
  END INTERFACE

  INTERFACE TRANSPOSE
    MODULE PROCEDURE MDNUMM3N3_TRANSPOSE
  END INTERFACE

  INTERFACE MATMUL
    MODULE PROCEDURE MDNUMM3N3_MATMUL_MDNUMM3N3,R_MATMUL_MDNUMM3N3,MDNUMM3N3_MATMUL_R
  END INTERFACE

  INTERFACE SIN
    MODULE PROCEDURE MDNUMM3N3_SIN
  END INTERFACE

  INTERFACE COS
    MODULE PROCEDURE MDNUMM3N3_SIN
  END INTERFACE

  INTERFACE LOG
    MODULE PROCEDURE MDNUMM3N3_SIN
  END INTERFACE

  INTERFACE EXP
    MODULE PROCEDURE MDNUMM3N3_SIN
  END INTERFACE

  INTERFACE GEM
    MODULE PROCEDURE MDNUMM3N3_GEM_OOO,MDNUMM3N3_GEM_ROO,MDNUMM3N3_GEM_ORO
  END INTERFACE

  INTERFACE FEVAL
    MODULE PROCEDURE MDNUMM3N3_FEVAL
  END INTERFACE

  CONTAINS

  ELEMENTAL SUBROUTINE MDNUMM3N3_ASSIGN_R(RES,LHS)
    
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS 
    TYPE(MDNUMM3N3), INTENT(OUT) :: RES 

    ! Assign like function 'LHS'
    ! Real
    RES%R = LHS

    ! Order 1
    RES%E1 = 0.0_DP
    RES%E2 = 0.0_DP
    RES%E3 = 0.0_DP

    ! Order 2
    RES%E12 = 0.0_DP
    RES%E13 = 0.0_DP
    RES%E23 = 0.0_DP

    ! Order 3
    RES%E123 = 0.0_DP

  END SUBROUTINE MDNUMM3N3_ASSIGN_R

  ELEMENTAL FUNCTION MDNUMM3N3_ADD_OO(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUMM3N3), INTENT(IN) :: LHS 
    TYPE(MDNUMM3N3), INTENT(IN) :: RHS 
    TYPE(MDNUMM3N3) :: RES 

    ! Addition like function 'LHS + RHS'
    !  Real
    RES%R = LHS%R + RHS%R

    ! Order 1
    RES%E1 = LHS%E1 + RHS%E1
    RES%E2 = LHS%E2 + RHS%E2
    RES%E3 = LHS%E3 + RHS%E3

    ! Order 2
    RES%E12 = LHS%E12 + RHS%E12
    RES%E13 = LHS%E13 + RHS%E13
    RES%E23 = LHS%E23 + RHS%E23

    ! Order 3
    RES%E123 = LHS%E123 + RHS%E123

  END FUNCTION MDNUMM3N3_ADD_OO

  ELEMENTAL FUNCTION MDNUMM3N3_ADD_RO(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS 
    TYPE(MDNUMM3N3), INTENT(IN) :: RHS 
    TYPE(MDNUMM3N3) :: RES 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS + RHS%R

    ! Order 1
    RES%E1 =  + RHS%E1
    RES%E2 =  + RHS%E2
    RES%E3 =  + RHS%E3

    ! Order 2
    RES%E12 =  + RHS%E12
    RES%E13 =  + RHS%E13
    RES%E23 =  + RHS%E23

    ! Order 3
    RES%E123 =  + RHS%E123

  END FUNCTION MDNUMM3N3_ADD_RO

  ELEMENTAL FUNCTION MDNUMM3N3_ADD_OR(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUMM3N3), INTENT(IN) :: LHS 
    REAL(DP), INTENT(IN) :: RHS 
    TYPE(MDNUMM3N3) :: RES 

    ! Addition like function 'LHS + RHS'
    ! Real
    RES%R = LHS%R + RHS

    ! Order 1
    RES%E1 = LHS%E1
    RES%E2 = LHS%E2
    RES%E3 = LHS%E3

    ! Order 2
    RES%E12 = LHS%E12
    RES%E13 = LHS%E13
    RES%E23 = LHS%E23

    ! Order 3
    RES%E123 = LHS%E123

  END FUNCTION MDNUMM3N3_ADD_OR

  ELEMENTAL FUNCTION MDNUMM3N3_NEG(LHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUMM3N3), INTENT(IN) :: LHS 
    TYPE(MDNUMM3N3) :: RES 

    ! Negation like function '-LHS'
    ! Real
    RES%R = -LHS%R
    ! Order 1
    RES%E1 = -LHS%E1
    RES%E2 = -LHS%E2
    RES%E3 = -LHS%E3
    ! Order 2
    RES%E12 = -LHS%E12
    RES%E13 = -LHS%E13
    RES%E23 = -LHS%E23
    ! Order 3
    RES%E123 = -LHS%E123

  END FUNCTION MDNUMM3N3_NEG

  ELEMENTAL FUNCTION MDNUMM3N3_SUB_OO(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUMM3N3), INTENT(IN) :: LHS 
    TYPE(MDNUMM3N3), INTENT(IN) :: RHS 
    TYPE(MDNUMM3N3) :: RES 

    ! Addition like function 'LHS - RHS'
    !  Real
    RES%R = LHS%R - RHS%R

    ! Order 1
    RES%E1 = LHS%E1 - RHS%E1
    RES%E2 = LHS%E2 - RHS%E2
    RES%E3 = LHS%E3 - RHS%E3

    ! Order 2
    RES%E12 = LHS%E12 - RHS%E12
    RES%E13 = LHS%E13 - RHS%E13
    RES%E23 = LHS%E23 - RHS%E23

    ! Order 3
    RES%E123 = LHS%E123 - RHS%E123

  END FUNCTION MDNUMM3N3_SUB_OO

  ELEMENTAL FUNCTION MDNUMM3N3_SUB_RO(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS 
    TYPE(MDNUMM3N3), INTENT(IN) :: RHS 
    TYPE(MDNUMM3N3) :: RES 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS - RHS%R

    ! Order 1
    RES%E1 =  - RHS%E1
    RES%E2 =  - RHS%E2
    RES%E3 =  - RHS%E3

    ! Order 2
    RES%E12 =  - RHS%E12
    RES%E13 =  - RHS%E13
    RES%E23 =  - RHS%E23

    ! Order 3
    RES%E123 =  - RHS%E123

  END FUNCTION MDNUMM3N3_SUB_RO

  ELEMENTAL FUNCTION MDNUMM3N3_SUB_OR(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUMM3N3), INTENT(IN) :: LHS 
    REAL(DP), INTENT(IN) :: RHS 
    TYPE(MDNUMM3N3) :: RES 

    ! Addition like function 'LHS - RHS'
    ! Real
    RES%R = LHS%R - RHS

    ! Order 1
    RES%E1 = LHS%E1
    RES%E2 = LHS%E2
    RES%E3 = LHS%E3

    ! Order 2
    RES%E12 = LHS%E12
    RES%E13 = LHS%E13
    RES%E23 = LHS%E23

    ! Order 3
    RES%E123 = LHS%E123

  END FUNCTION MDNUMM3N3_SUB_OR

  ELEMENTAL FUNCTION MDNUMM3N3_MUL_OO(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUMM3N3), INTENT(IN) :: LHS 
    TYPE(MDNUMM3N3), INTENT(IN) :: RHS 
    TYPE(MDNUMM3N3) :: RES 

    !  Multiplication like function 'LHS*RHS'

    ! Order 0
    RES%R = LHS%R*RHS%R

    ! Order 1
    RES%E1 = LHS%R*RHS%E1 + LHS%E1*RHS%R
    RES%E2 = LHS%R*RHS%E2 + LHS%E2*RHS%R
    RES%E3 = LHS%R*RHS%E3 + LHS%E3*RHS%R

    ! Order 2
    RES%E12 = LHS%R*RHS%E12 + LHS%E12*RHS%R + LHS%E1*RHS%E2 &
            + LHS%E2*RHS%E1
    RES%E13 = LHS%R*RHS%E13 + LHS%E13*RHS%R + LHS%E1*RHS%E3 &
            + LHS%E3*RHS%E1
    RES%E23 = LHS%R*RHS%E23 + LHS%E23*RHS%R + LHS%E2*RHS%E3 &
            + LHS%E3*RHS%E2

    ! Order 3
    RES%E123 = LHS%R*RHS%E123 + LHS%E123*RHS%R + LHS%E1*RHS%E23 &
             + LHS%E23*RHS%E1 + LHS%E2*RHS%E13 + LHS%E13*RHS%E2 &
             + LHS%E3*RHS%E12 + LHS%E12*RHS%E3

  END FUNCTION MDNUMM3N3_MUL_OO

  ELEMENTAL FUNCTION MDNUMM3N3_MUL_RO(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS 
    TYPE(MDNUMM3N3), INTENT(IN) :: RHS 
    TYPE(MDNUMM3N3) :: RES 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS*RHS%R

    ! Order 1
    RES%E1 = LHS*RHS%E1
    RES%E2 = LHS*RHS%E2
    RES%E3 = LHS*RHS%E3

    ! Order 2
    RES%E12 = LHS*RHS%E12
    RES%E13 = LHS*RHS%E13
    RES%E23 = LHS*RHS%E23

    ! Order 3
    RES%E123 = LHS*RHS%E123

  END FUNCTION MDNUMM3N3_MUL_RO

  ELEMENTAL FUNCTION MDNUMM3N3_MUL_OR(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUMM3N3), INTENT(IN) :: LHS 
    REAL(DP), INTENT(IN) :: RHS 
    TYPE(MDNUMM3N3) :: RES 

    ! Multiplication like function 'LHS*RHS'
    !  Real
    RES%R = LHS%R*RHS

    ! Order 1
    RES%E1 = LHS%E1*RHS
    RES%E2 = LHS%E2*RHS
    RES%E3 = LHS%E3*RHS

    ! Order 2
    RES%E12 = LHS%E12*RHS
    RES%E13 = LHS%E13*RHS
    RES%E23 = LHS%E23*RHS

    ! Order 3
    RES%E123 = LHS%E123*RHS

  END FUNCTION MDNUMM3N3_MUL_OR

ELEMENTAL   FUNCTION MDNUMM3N3_GEM_OOO(A,B,C)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUMM3N3), INTENT(IN) :: A 
    TYPE(MDNUMM3N3), INTENT(IN) :: B 
    TYPE(MDNUMM3N3), INTENT(IN) :: C 
    TYPE(MDNUMM3N3) :: RES 

    !  General multiplication like function 'A*B + C'

    ! Order 0
    RES%R = C%R + A%R*B%R

    ! Order 1
    RES%E1 = C%E1 + A%R*B%E1 + A%E1*B%R
    RES%E2 = C%E2 + A%R*B%E2 + A%E2*B%R
    RES%E3 = C%E3 + A%R*B%E3 + A%E3*B%R

    ! Order 2
    RES%E12 = C%E12 + A%R*B%E12 + A%E12*B%R + A%E1*B%E2 &
            + A%E2*B%E1
    RES%E13 = C%E13 + A%R*B%E13 + A%E13*B%R + A%E1*B%E3 &
            + A%E3*B%E1
    RES%E23 = C%E23 + A%R*B%E23 + A%E23*B%R + A%E2*B%E3 &
            + A%E3*B%E2

    ! Order 3
    RES%E123 = C%E123 + A%R*B%E123 + A%E123*B%R + A%E1*B%E23 &
             + A%E23*B%E1 + A%E2*B%E13 + A%E13*B%E2 &
             + A%E3*B%E12 + A%E12*B%E3

  END FUNCTION MDNUMM3N3_GEM_OOO

ELEMENTAL   FUNCTION MDNUMM3N3_GEM_ROO(A,B,C)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: A 
    TYPE(MDNUMM3N3), INTENT(IN) :: B 
    TYPE(MDNUMM3N3), INTENT(IN) :: C 
    TYPE(MDNUMM3N3) :: RES 

    !  General multiplication like function 'A*B + C'

    ! Order 0
    RES%R = C%R + A*B%R

    ! Order 1
    RES%E1 = C%E1 + A*B%E1
    RES%E2 = C%E2 + A*B%E2
    RES%E3 = C%E3 + A*B%E3

    ! Order 2
    RES%E12 = C%E12 + A*B%E12
    RES%E13 = C%E13 + A*B%E13
    RES%E23 = C%E23 + A*B%E23

    ! Order 3
    RES%E123 = C%E123 + A*B%E123

  END FUNCTION MDNUMM3N3_GEM_ROO

ELEMENTAL   FUNCTION MDNUMM3N3_GEM_ORO(A,B,C)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUMM3N3), INTENT(IN) :: A 
    REAL(DP), INTENT(IN) :: B 
    TYPE(MDNUMM3N3), INTENT(IN) :: C 
    TYPE(MDNUMM3N3) :: RES 

    !  General multiplication like function 'A*B + C'

    ! Order 0
    RES%R = C%R + A%R*B

    ! Order 1
    RES%E1 = C%E1 + A%E1*B
    RES%E2 = C%E2 + A%E2*B
    RES%E3 = C%E3 + A%E3*B

    ! Order 2
    RES%E12 = C%E12 + A%E12*B
    RES%E13 = C%E13 + A%E13*B
    RES%E23 = C%E23 + A%E23*B

    ! Order 3
    RES%E123 = C%E123 + A%E123*B

  END FUNCTION MDNUMM3N3_GEM_ORO

  FUNCTION MDNUMM3N3_FEVAL(X,DERIVS)&
    RESULT(RES)
    IMPLICIT NONE
    !  Definitions
    REAL(DP) :: FACTOR, COEF
    TYPE(MDNUMM3N3), INTENT(IN)  :: X
    REAL(DP), INTENT(IN)  :: DERIVS(4)
    TYPE(MDNUMM3N3) :: RES
    TYPE(MDNUMM3N3) :: DX, DX_P

    FACTOR = 1.0_DP
    COEF   = 0.0_DP
    DX     = DX
    DX_P   = DX_P

    !  Set real part of deltas zero.
    DX%R = 0.0_DP
    DX_P%R = 0.0_DP

    ! Sets real part
    RES = DERIVS(1)

    ! Sets order 1
    FACTOR = FACTOR * 1
    COEF = DERIVS(2) / FACTOR
    RES = GEM(COEF,DX_P,RES)
    DX_P = DX_P*DX
    
    ! Sets order 2
    FACTOR = FACTOR * 2
    COEF = DERIVS(3) / FACTOR
    RES = GEM(COEF,DX_P,RES)
    DX_P = DX_P*DX
    
    ! Sets order 3
    FACTOR = FACTOR * 3
    COEF = DERIVS(4) / FACTOR
    RES = GEM(COEF,DX_P,RES)
    
  END FUNCTION MDNUMM3N3_FEVAL

  FUNCTION MDNUMM3N3_MATMUL_MDNUMM3N3(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUMM3N3), INTENT(IN) :: LHS(:,:) 
    TYPE(MDNUMM3N3), INTENT(IN) :: RHS(:,:) 
    TYPE(MDNUMM3N3) :: TMP 
    TYPE(MDNUMM3N3) :: RES(SIZE(LHS,1),SIZE(RHS,2)) 
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
          TMP = GEM( LHS( I, K ), RHS( K, J ), TMP)
        END DO
        RES( I, J ) = TMP
      END DO
    END DO

  END FUNCTION MDNUMM3N3_MATMUL_MDNUMM3N3

  FUNCTION R_MATMUL_MDNUMM3N3(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    REAL(DP), INTENT(IN) :: LHS(:,:) 
    TYPE(MDNUMM3N3), INTENT(IN) :: RHS(:,:) 
    TYPE(MDNUMM3N3) :: TMP 
    TYPE(MDNUMM3N3) :: RES(SIZE(LHS,1),SIZE(RHS,2)) 
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
          TMP = GEM( LHS( I, K ), RHS( K, J ), TMP)
        END DO
        RES( I, J ) = TMP
      END DO
    END DO

  END FUNCTION R_MATMUL_MDNUMM3N3

  FUNCTION MDNUMM3N3_MATMUL_R(LHS,RHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUMM3N3), INTENT(IN) :: LHS(:,:) 
    REAL(DP), INTENT(IN) :: RHS(:,:) 
    TYPE(MDNUMM3N3) :: TMP 
    TYPE(MDNUMM3N3) :: RES(SIZE(LHS,1),SIZE(RHS,2)) 
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
          TMP = GEM( LHS( I, K ), RHS( K, J ), TMP)
        END DO
        RES( I, J ) = TMP
      END DO
    END DO

  END FUNCTION MDNUMM3N3_MATMUL_R

  FUNCTION MDNUMM3N3_TRANSPOSE(LHS)&
    RESULT(RES)
    IMPLICIT NONE
    TYPE(MDNUMM3N3), INTENT(IN) :: LHS(:,:) 
    TYPE(MDNUMM3N3) :: RES(SIZE(LHS,2),SIZE(LHS,1)) 
    INTEGER :: I,J 

    DO I = 1, SIZE(LHS,1)
      DO J = 1, SIZE(LHS,2)
        RES( J, I ) = LHS( I, J )
      END DO
    END DO

  END FUNCTION MDNUMM3N3_TRANSPOSE

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

  FUNCTION MDNUMM3N3_SIN(X) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      TYPE(MDNUMM3N3), INTENT(IN) :: X
      TYPE(MDNUMM3N3) :: RES

      DERIVS = DER_R_SIN( X%R )

      RES = FEVAL(X,DERIVS)

  END FUNCTION MDNUMM3N3_SIN

  FUNCTION MDNUMM3N3_COS(X) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      TYPE(MDNUMM3N3), INTENT(IN) :: X
      TYPE(MDNUMM3N3) :: RES

      DERIVS = DER_R_COS( X%R )

      RES = FEVAL(X,DERIVS)

  END FUNCTION MDNUMM3N3_COS

  FUNCTION MDNUMM3N3_LOG(X) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      TYPE(MDNUMM3N3), INTENT(IN) :: X
      TYPE(MDNUMM3N3) :: RES

      DERIVS = DER_R_LOG( X%R )

      RES = FEVAL(X,DERIVS)

  END FUNCTION MDNUMM3N3_LOG

  FUNCTION MDNUMM3N3_EXP(X) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      TYPE(MDNUMM3N3), INTENT(IN) :: X
      TYPE(MDNUMM3N3) :: RES

      DERIVS = DER_R_EXP( X%R )

      RES = FEVAL(X,DERIVS)

  END FUNCTION MDNUMM3N3_EXP

  FUNCTION MDNUMM3N3_POW(X,E) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      TYPE(MDNUMM3N3), INTENT(IN) :: X
      REAL(DP), INTENT(IN) :: E
      TYPE(MDNUMM3N3) :: RES

      DERIVS = DER_R_POW( X%R, E )

      RES = FEVAL(X,DERIVS)

  END FUNCTION MDNUMM3N3_POW
END MODULE MDUALM3N3
