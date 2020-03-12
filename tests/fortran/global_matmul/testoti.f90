PROGRAM MAIN

    USE otim5n10
    IMPLICIT NONE
    INTEGER, PARAMETER :: sizex = 3
    ! TYPE(ONUMM5N10)       :: X, Y, Z   !>OTI VARIABLE
    TYPE(ONUMM5N10)       :: A(sizex,sizex), B(sizex,sizex), C(sizex,sizex)   !>OTI VARIABLE
    INTEGER :: I
    REAL(KIND=8)::            &                !>Step
        time_start(3), time_finish(3)          !>Stores time
    ! ============================================================
    
    PRINT *, " "
    PRINT *, " THIS MODULE TESTS THE FORTRAN OTI IMPLEMENTATION."
    PRINT *, " "


    ! X     = 1.5D0
    ! X%E1  = 1.0D0

    ! PRINT*,X

    ! Y     = 5.2D0
    ! ! Y%E2  = 1.0D0    

    ! PRINT*, (X*X*X*X*X)

    ! ! CALL PPRINT(Y**5)

    ! ! CALL PPRINT((2.0d0*X+3.0d0*Y)**5)

    ! ! CALL PPRINT( (2.0d0*X+3.0d0*Y)**0.5d0 )

    ! ! ! CALL PPRINT(X)
    ! ! ! CALL PPRINT(Y)
    ! ! Z = X*Y
    ! ! PRINT*, Z
    ! ! ! CALL PPRINT( SIN(X*Y) )



    ! A = 32.0D0 
    ! B = 0.5D0
    
    ! PRINT*,MATMUL(A,B)

    ! Measure time.
    CALL CPU_TIME(time_start(1))
    DO i=1,100000
        ! Multiplication with assignation
        C = MATMUL(A,B)
    END DO
    CALL CPU_TIME(time_finish(1))

    PRINT "(2(A,F20.3,8X))", '(CPU_TIME using array of ONUMM2N3) [ms]:', &!
                            (time_finish(1)-time_start(1))*1000


    ! PRINT *, " "
    ! PRINT *, " PROGRAM ENDED SUCCESSFULLY."
    ! PRINT *, " "



END PROGRAM MAIN