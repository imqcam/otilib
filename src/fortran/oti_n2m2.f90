!! ================================================================
!!
!! A FORTRAN MODULE FOR  USE OF OTI NUMBERS.
!! IN PARTICULAR, OTI ALGEBRA WITH UP TO M = 2 IMAGINARY BASES AND 
!! TRUNCATION ORDER N = 2
!!
!! @AUTHOR
!! MAURICIO ARISTIZABAL               \N 
!! UNIVERSIDAD EAFIT                  \N 
!!

!> MODULE TO MANIPULATE OTI NUMBERS AND VECTOR/MATRICES OF OTI NUMBERS.
MODULE OTINUM_M2N2
  IMPLICIT NONE

  
  INTEGER, PARAMETER :: REAL_KIND  = 8
  INTEGER, PARAMETER :: NUM_IM_DIR = 5
  INTEGER, PARAMETER :: TORDER     = 2
  
  ! OTI SCALAR TYPE. 
  TYPE ONUM_M2N2
     REAL(REAL_KIND) :: R
     ! ORDER 1
     REAL(REAL_KIND) :: E1  ! \EPSILON_1
     REAL(REAL_KIND) :: E2  ! \EPSILON_2
     ! ORDER 2
     REAL(REAL_KIND) :: E11 ! \EPSILON_1^2
     REAL(REAL_KIND) :: E12 ! \EPSILON_1\EPSILON_2
     REAL(REAL_KIND) :: E22 ! \EPSILON_2^2
  END TYPE ONUM_M2N2


  ! OTI VECTOR TYPE. 
  TYPE OVEC_M2N2
     REAL(REAL_KIND), DIMENSION(9) :: R
     ! ORDER 1
     REAL(REAL_KIND), DIMENSION(9) :: E1  ! \EPSILON_1
     REAL(REAL_KIND), DIMENSION(9) :: E2  ! \EPSILON_2
     ! ORDER 2
     REAL(REAL_KIND), DIMENSION(9) :: E11 ! \EPSILON_1^2
     REAL(REAL_KIND), DIMENSION(9) :: E12 ! \EPSILON_1\EPSILON_2
     REAL(REAL_KIND), DIMENSION(9) :: E22 ! \EPSILON_2^2
  END TYPE OVEC_M2N2

    ! OTI VECTOR TYPE. 
  TYPE OMAT_M2N2
     REAL(REAL_KIND), DIMENSION(9,9) :: R
     ! ORDER 1
     REAL(REAL_KIND), DIMENSION(9,9) :: E1  ! \EPSILON_1
     REAL(REAL_KIND), DIMENSION(9,9) :: E2  ! \EPSILON_2
     ! ORDER 2
     REAL(REAL_KIND), DIMENSION(9,9) :: E11 ! \EPSILON_1^2
     REAL(REAL_KIND), DIMENSION(9,9) :: E12 ! \EPSILON_1\EPSILON_2
     REAL(REAL_KIND), DIMENSION(9,9) :: E22 ! \EPSILON_2^2
  END TYPE OMAT_M2N2
! =============================================================================
! ============================== OVERLOADED OPERATORS =========================
! =============================================================================

! INTIALIZATION OPERATIONS
INTERFACE ASSIGNMENT (=)
  MODULE PROCEDURE  ONUMM2N2_ASSIGN_REAL
END INTERFACE

! PRETTY PRINTING FOR TYPES
INTERFACE PPRINT
  MODULE PROCEDURE ONUMM2N2_PRINT
END INTERFACE


! SCALAR OPERATORS
! ADDITION
INTERFACE OPERATOR(+)
   MODULE PROCEDURE ONUMM2N2_ADD_ONUMM2N2
END INTERFACE

! SUBTRACTION
INTERFACE OPERATOR(-)
   MODULE PROCEDURE ONUMM2N2_SUB_ONUMM2N2
END INTERFACE

! MULTIPLICATION
INTERFACE OPERATOR(*)
   MODULE PROCEDURE ONUMM2N2_MUL_ONUMM2N2
END INTERFACE

! DIVISION
INTERFACE OPERATOR(/)
   MODULE PROCEDURE ONUMM2N2_DIV_ONUMM2N2
END INTERFACE

! OCTONION POWER OPERATOR
INTERFACE operator(**)
   MODULE PROCEDURE ONUMM2N2_IPOW
END INTERFACE




CONTAINS
  
  ! =============================================================================
  ! ===========================FUNCTIONS ============================
  ! =============================================================================
  

  ! ADDITION OF TWO OTI NUMBERS
  SUBROUTINE ONUMM2N2_ASSIGN_REAL(RES, RHS) &
    
    IMPLICIT NONE
    TYPE(ONUM_M2N2), INTENT(OUT) :: RES
    TYPE(REAL_KIND), INTENT(IN)  :: RHS

    ! SET REAL PART AND ALL OTHER IMAGINARY DIRECTIONS AS 0.
    RES%R    = RHS 
    RES%E1   = 0.0D0
    RES%E2   = 0.0D0
    RES%E11  = 0.0D0
    RES%E12  = 0.0D0
    RES%E22  = 0.0D0

  END SUBROUTINE ONUMM2N2_ASSIGN_REAL



  SUBROUTINE ONUMM2N2_PRINT(ONUM,fmt)
    IMPLICIT NONE
    TYPE(ONUM_M2N2),  INTENT(IN) :: ONUM
    CHARACTER(len=*), INTENT(IN), OPTIONAL :: fmt
    CHARACTER(len=:), ALLOCATABLE :: output_format


    IF (PRESENT(fmt)) THEN
      output_format = '('//trim(fmt)//','// &
                           trim(fmt)//','// &
                           trim(fmt)//','// &
                           trim(fmt)//','// &
                           trim(fmt)//','// &
                           trim(fmt)//')'
    ELSE
      output_format = '(F8.3,F8.3,F8.3,F8.3,F8.3,F8.3)'
    END IF 

    ! PRINT CALL.
    write(*,output_format), &
      ONUM%R  ,
      ONUM%E1 ,
      ONUM%E2 ,
      ONUM%E11,
      ONUM%E12,
      ONUM%E22

  END SUBROUTINE





  ! ADDITION OF TWO OTI NUMBERS
  FUNCTION ONUMM2N2_ADD_ONUMM2N2(LHS, RHS) &
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUM_M2N2), INTENT(IN) :: LHS, RHS
    TYPE(ONUM_M2N2) :: RES

    ! ADD ALL IMAGINARY DIRECTIONS.

    RES%R    = LHS%R   + RHS%R  

    RES%E1   = LHS%E1  + RHS%E1 
    RES%E2   = LHS%E2  + RHS%E2 

    RES%E11  = LHS%E11 + RHS%E11
    RES%E12  = LHS%E12 + RHS%E12
    RES%E22  = LHS%E22 + RHS%E22

  END FUNCTION ONUMM2N2_ADD_ONUMM2N2


  ! SUBTRACTION OF TWO OTI NUMBERS
  FUNCTION ONUMM2N2_SUB_ONUMM2N2(LHS, RHS) &
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUM_M2N2), INTENT(IN) :: LHS, RHS
    TYPE(ONUM_M2N2) :: RES

    ! SUBTRACT ALL IMAGINARY DIRECTIONS.

    RES%R    = LHS%R   - RHS%R  

    RES%E1   = LHS%E1  - RHS%E1 
    RES%E2   = LHS%E2  - RHS%E2 

    RES%E11  = LHS%E11 - RHS%E11
    RES%E12  = LHS%E12 - RHS%E12
    RES%E22  = LHS%E22 - RHS%E22

  END FUNCTION ONUMM2N2_SUB_ONUMM2N2


  ! MULTIPLICATION OF TWO OTI NUMBERS
  FUNCTION ONUMM2N2_MUL_ONUMM2N2(LHS, RHS) &
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUM_M2N2), INTENT(IN) :: LHS, RHS
    TYPE(ONUM_M2N2) :: RES

    ! MULTIPLY ALL IMAGINARY DIRECTIONS.

    RES%R    = LHS%R*RHS%R  

    RES%E1   = LHS%E1*RHS%R + LHS%R*RHS%E1
    RES%E2   = LHS%E2*RHS%R + LHS%R*RHS%E2

    RES%E11  = LHS%E1*RHS%E1 + LHS%E11*RHS%R + LHS%R*RHS%E11
    RES%E12  = LHS%E1*RHS%E2 + LHS%E2*RHS%E1 + LHS%E12*RHS%R + LHS%R*RHS%E12
    RES%E22  = LHS%E2*RHS%E2 + LHS%E22*RHS%R + LHS%R*RHS%E22

  END FUNCTION ONUMM2N2_MUL_ONUMM2N2

  ! MULTIPLICATION OF OTI NUMBER TIMES REAL NUMBER
  FUNCTION ONUMM2N2_MUL_ONUMM2N2(LHS, RHS) &
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUM_M2N2), INTENT(IN) :: LHS, RHS
    TYPE(ONUM_M2N2) :: RES

    ! MULTIPLY ALL IMAGINARY DIRECTIONS.

    RES%R    = LHS%R*RHS%R  

    RES%E1   = LHS%E1*RHS%R + LHS%R*RHS%E1
    RES%E2   = LHS%E2*RHS%R + LHS%R*RHS%E2

    RES%E11  = LHS%E1*RHS%E1 + LHS%E11*RHS%R + LHS%R*RHS%E11
    RES%E12  = LHS%E1*RHS%E2 + LHS%E2*RHS%E1 + LHS%E12*RHS%R + LHS%R*RHS%E12
    RES%E22  = LHS%E2*RHS%E2 + LHS%E22*RHS%R + LHS%R*RHS%E22

  END FUNCTION ONUMM2N2_MUL_ONUMM2N2


  ! INTEGER POWER OF AN OTI NUMBER
  FUNCTION ONUMM2N2_IPOW(NUM, EXP) &
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUM_M2N2), INTENT(IN) :: NUM
    TYPE(INTEGER), INTENT(IN)   :: EXP
    TYPE(ONUM_M2N2) :: RES
    TYPE(INTEGER) :: I
    ! MULTIPLY ALL IMAGINARY DIRECTIONS.
    
    RES = NUM

    DO I = 2, EXP

      RES = RES * NUM

    END DO    

  END FUNCTION ONUMM2N2_IPOW

  ! INTEGER POWER OF AN OTI NUMBER
  FUNCTION ONUMM2N2_FEVAL(DERIVS, X) &
    RESULT(RES)
    IMPLICIT NONE
    TYPE(REAL_KIND), INTENT(IN) :: DERIVS(:)
    TYPE(ONUM_M2N2), INTENT(IN) :: X
    TYPE(ONUM_M2N2) :: RES
    TYPE(ONUM_M2N2) :: DELTA
    TYPE(INTEGER)   :: I
    TYPE(REAL_KIND) :: FACTOR    =1.0D0
    
    ! MULTIPLY ALL IMAGINARY DIRECTIONS.
    DELTA = X

    ! DELTA HAS REAL DIRECTION EQUAL TO 0.
    DELTA%R = 0 ! DELTA = X - X%R

    RES = DERIVS(1) ! REAL COMPONENT.

    DO I = 2, TORDER
      
      FACTOR=FACTOR*(FACTOR+1.0D0)
      RES   = RES + (DERIV(I)/FACTOR)*DELTA**(I-1)

    END DO
  
  END FUNCTION ONUMM2N2_IPOW


  ! DIVISION OF TWO OTI NUMBERS
  FUNCTION ONUMM2N2_DIV_REAL(LHS, RHS) &
    RESULT(RES)
    IMPLICIT NONE
    TYPE(ONUM_M2N2), INTENT(IN) :: LHS
    TYPE(REAL_KIND), INTENT(IN) :: RHS
    TYPE(ONUM_M2N2) :: RES

    ! DIVIDE ALL IMAGINARY DIRECTIONS.

    RES%R    = LHS%R/RHS%R  

    RES%E1   = LHS%E1/RHS%R + LHS%R*RHS%E1
    RES%E2   = LHS%E2/RHS%R + LHS%R*RHS%E2

    RES%E11  = LHS%E1*RHS%E1 + LHS%E11*RHS%R + LHS%R*RHS%E11
    RES%E12  = LHS%E1*RHS%E2 + LHS%E2*RHS%E1 + LHS%E12*RHS%R + LHS%R*RHS%E12
    RES%E22  = LHS%E2*RHS%E2 + LHS%E22*RHS%R + LHS%R*RHS%E22

  END FUNCTION ONUMM2N2_DIV_ONUMM2N2

END MODULE OTINUM_M2N2