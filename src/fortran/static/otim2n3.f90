MODULE OTIM2N3

   IMPLICIT NONE

   INTEGER, PARAMETER :: DP         = 8
   INTEGER, PARAMETER :: NUM_IM_DIR = 10
   INTEGER, PARAMETER :: TORDER     = 3

   TYPE ONUMM2N3
     ! Real
     REAL(DP) :: R
     ! Order 1
     REAL(DP) :: E1
     REAL(DP) :: E2
     ! Order 2
     REAL(DP) :: E11
     REAL(DP) :: E12
     REAL(DP) :: E22
     ! Order 3
     REAL(DP) :: E111
     REAL(DP) :: E112
     REAL(DP) :: E122
     REAL(DP) :: E222
   END TYPE ONUMM2N3

   ! Constant imaginary directions.
   ! Order 1
   TYPE(ONUMM2N3), PARAMETER :: E1 = ONUMM2N3(0.0_DP,1.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP)
   TYPE(ONUMM2N3), PARAMETER :: E2 = ONUMM2N3(0.0_DP,0.0_DP,1.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP)
   ! Order 2
   TYPE(ONUMM2N3), PARAMETER :: E11 = ONUMM2N3(0.0_DP,0.0_DP,0.0_DP,1.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP)
   TYPE(ONUMM2N3), PARAMETER :: E12 = ONUMM2N3(0.0_DP,0.0_DP,0.0_DP,0.0_DP,1.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP)
   TYPE(ONUMM2N3), PARAMETER :: E22 = ONUMM2N3(0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,1.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP)
   ! Order 3
   TYPE(ONUMM2N3), PARAMETER :: E111 = ONUMM2N3(0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,1.0_DP,0.0_DP,0.0_DP,0.0_DP)
   TYPE(ONUMM2N3), PARAMETER :: E112 = ONUMM2N3(0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,1.0_DP,0.0_DP,0.0_DP)
   TYPE(ONUMM2N3), PARAMETER :: E122 = ONUMM2N3(0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,1.0_DP,0.0_DP)
   TYPE(ONUMM2N3), PARAMETER :: E222 = ONUMM2N3(0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,0.0_DP,1.0_DP)

   PRIVATE :: DP,TORDER,NUM_IM_DIR

   INTERFACE OPERATOR(*)
      MODULE PROCEDURE ONUMM2N3_MUL_OO_SS,ONUMM2N3_MUL_RO_SS,ONUMM2N3_MUL_OR_SS,ONUMM2N3_MUL_OO_VS,&
                       ONUMM2N3_MUL_RO_VS,ONUMM2N3_MUL_OR_VS,ONUMM2N3_MUL_OO_MS,ONUMM2N3_MUL_RO_MS,&
                       ONUMM2N3_MUL_OR_MS,ONUMM2N3_MUL_OO_SV,ONUMM2N3_MUL_RO_SV,ONUMM2N3_MUL_OR_SV,&
                       ONUMM2N3_MUL_OO_SM,ONUMM2N3_MUL_RO_SM,ONUMM2N3_MUL_OR_SM
   END INTERFACE

   INTERFACE OPERATOR(+)
      MODULE PROCEDURE ONUMM2N3_ADD_OO_SS,ONUMM2N3_ADD_RO_SS,ONUMM2N3_ADD_OR_SS,ONUMM2N3_ADD_OO_VS,&
                       ONUMM2N3_ADD_RO_VS,ONUMM2N3_ADD_OR_VS,ONUMM2N3_ADD_OO_MS,ONUMM2N3_ADD_RO_MS,&
                       ONUMM2N3_ADD_OR_MS,ONUMM2N3_ADD_OO_SV,ONUMM2N3_ADD_RO_SV,ONUMM2N3_ADD_OR_SV,&
                       ONUMM2N3_ADD_OO_SM,ONUMM2N3_ADD_RO_SM,ONUMM2N3_ADD_OR_SM
   END INTERFACE

   INTERFACE OPERATOR(-)
      MODULE PROCEDURE ONUMM2N3_NEG,ONUMM2N3_SUB_OO_SS,ONUMM2N3_SUB_RO_SS,ONUMM2N3_SUB_OR_SS,&
                       ONUMM2N3_SUB_OO_VS,ONUMM2N3_SUB_RO_VS,ONUMM2N3_SUB_OR_VS,ONUMM2N3_SUB_OO_MS,&
                       ONUMM2N3_SUB_RO_MS,ONUMM2N3_SUB_OR_MS,ONUMM2N3_SUB_OO_SV,ONUMM2N3_SUB_RO_SV,&
                       ONUMM2N3_SUB_OR_SV,ONUMM2N3_SUB_OO_SM,ONUMM2N3_SUB_RO_SM,ONUMM2N3_SUB_OR_SM
   END INTERFACE

   INTERFACE OPERATOR(/)
      MODULE PROCEDURE ONUMM2N3_DIVISION_OO,ONUMM2N3_DIVISION_OR,ONUMM2N3_DIVISION_RO
   END INTERFACE

   INTERFACE ASSIGNMENT(=)
      MODULE PROCEDURE ONUMM2N3_ASSIGN_R
   END INTERFACE

   INTERFACE OPERATOR(**)
      MODULE PROCEDURE ONUMM2N3_POW_OR,ONUMM2N3_POW_RO,ONUMM2N3_POW_OO
   END INTERFACE

   INTERFACE PPRINT
      MODULE PROCEDURE ONUMM2N3_PPRINT_M_R,ONUMM2N3_PPRINT_V_R
   END INTERFACE

   INTERFACE TRANSPOSE
      MODULE PROCEDURE ONUMM2N3_TRANSPOSE
   END INTERFACE

   INTERFACE MATMUL
      MODULE PROCEDURE ONUMM2N3_MATMUL_ONUMM2N3,R_MATMUL_ONUMM2N3,ONUMM2N3_MATMUL_R
   END INTERFACE

   INTERFACE UNFOLD
      MODULE PROCEDURE ONUMM2N3_TO_CR_MAT_S,ONUMM2N3_TO_CR_MAT_V,ONUMM2N3_TO_CR_MAT_M
   END INTERFACE

   INTERFACE TO_CR
      MODULE PROCEDURE ONUMM2N3_TO_CR_MAT_S,ONUMM2N3_TO_CR_MAT_V,ONUMM2N3_TO_CR_MAT_M
   END INTERFACE

   INTERFACE SIN
      MODULE PROCEDURE ONUMM2N3_SIN
   END INTERFACE

   INTERFACE COS
      MODULE PROCEDURE ONUMM2N3_COS
   END INTERFACE

   INTERFACE TAN
      MODULE PROCEDURE ONUMM2N3_TAN
   END INTERFACE

   INTERFACE ASIN
      MODULE PROCEDURE ONUMM2N3_ASIN
   END INTERFACE

   INTERFACE ACOS
      MODULE PROCEDURE ONUMM2N3_ACOS
   END INTERFACE

   INTERFACE ATAN
      MODULE PROCEDURE ONUMM2N3_ATAN
   END INTERFACE

   INTERFACE SINH
      MODULE PROCEDURE ONUMM2N3_SINH
   END INTERFACE

   INTERFACE COSH
      MODULE PROCEDURE ONUMM2N3_COSH
   END INTERFACE

   INTERFACE TANH
      MODULE PROCEDURE ONUMM2N3_TANH
   END INTERFACE

   INTERFACE SQRT
      MODULE PROCEDURE ONUMM2N3_SQRT
   END INTERFACE

   INTERFACE LOG
      MODULE PROCEDURE ONUMM2N3_LOG
   END INTERFACE

   INTERFACE EXP
      MODULE PROCEDURE ONUMM2N3_EXP
   END INTERFACE

   INTERFACE GEM
      MODULE PROCEDURE ONUMM2N3_GEM_OOO,ONUMM2N3_GEM_ROO,ONUMM2N3_GEM_ORO
   END INTERFACE

   INTERFACE FEVAL
      MODULE PROCEDURE ONUMM2N3_FEVAL
   END INTERFACE

   INTERFACE F2EVAL
      MODULE PROCEDURE ONUMM2N3_F2EVAL
   END INTERFACE

   INTERFACE REAL
      MODULE PROCEDURE ONUMM2N3_REAL
   END INTERFACE

   CONTAINS

   ELEMENTAL SUBROUTINE ONUMM2N3_ASSIGN_R(RES,LHS)
      
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS 
      TYPE(ONUMM2N3), INTENT(OUT) :: RES 

      ! Assign like function 'LHS'
      ! Real
      RES%R = LHS

      ! Order 1
      RES%E1 = 0.0_DP
      RES%E2 = 0.0_DP

      ! Order 2
      RES%E11 = 0.0_DP
      RES%E12 = 0.0_DP
      RES%E22 = 0.0_DP

      ! Order 3
      RES%E111 = 0.0_DP
      RES%E112 = 0.0_DP
      RES%E122 = 0.0_DP
      RES%E222 = 0.0_DP

   END SUBROUTINE ONUMM2N3_ASSIGN_R

   ELEMENTAL FUNCTION ONUMM2N3_NEG(LHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS 
      TYPE(ONUMM2N3) :: RES 

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
      ! Order 3
      RES%E111 = -LHS%E111
      RES%E112 = -LHS%E112
      RES%E122 = -LHS%E122
      RES%E222 = -LHS%E222

   END FUNCTION ONUMM2N3_NEG

   ELEMENTAL FUNCTION ONUMM2N3_ADD_OO_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS
      TYPE(ONUMM2N3), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES 

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

      ! Order 3
      RES%E111 = LHS%E111 + RHS%E111
      RES%E112 = LHS%E112 + RHS%E112
      RES%E122 = LHS%E122 + RHS%E122
      RES%E222 = LHS%E222 + RHS%E222

   END FUNCTION ONUMM2N3_ADD_OO_SS

   ELEMENTAL FUNCTION ONUMM2N3_ADD_RO_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(ONUMM2N3), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES 

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

      ! Order 3
      RES%E111 =  + RHS%E111
      RES%E112 =  + RHS%E112
      RES%E122 =  + RHS%E122
      RES%E222 =  + RHS%E222

   END FUNCTION ONUMM2N3_ADD_RO_SS

   ELEMENTAL FUNCTION ONUMM2N3_ADD_OR_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES 

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

      ! Order 3
      RES%E111 = LHS%E111
      RES%E112 = LHS%E112
      RES%E122 = LHS%E122
      RES%E222 = LHS%E222

   END FUNCTION ONUMM2N3_ADD_OR_SS

   ELEMENTAL FUNCTION ONUMM2N3_SUB_OO_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS
      TYPE(ONUMM2N3), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES 

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

      ! Order 3
      RES%E111 = LHS%E111 - RHS%E111
      RES%E112 = LHS%E112 - RHS%E112
      RES%E122 = LHS%E122 - RHS%E122
      RES%E222 = LHS%E222 - RHS%E222

   END FUNCTION ONUMM2N3_SUB_OO_SS

   ELEMENTAL FUNCTION ONUMM2N3_SUB_RO_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(ONUMM2N3), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES 

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

      ! Order 3
      RES%E111 =  - RHS%E111
      RES%E112 =  - RHS%E112
      RES%E122 =  - RHS%E122
      RES%E222 =  - RHS%E222

   END FUNCTION ONUMM2N3_SUB_RO_SS

   ELEMENTAL FUNCTION ONUMM2N3_SUB_OR_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES 

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

      ! Order 3
      RES%E111 = LHS%E111
      RES%E112 = LHS%E112
      RES%E122 = LHS%E122
      RES%E222 = LHS%E222

   END FUNCTION ONUMM2N3_SUB_OR_SS

   ELEMENTAL FUNCTION ONUMM2N3_MUL_OO_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS
      TYPE(ONUMM2N3), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES 

      !  Multiplication like function 'LHS*RHS'
      ! Order 3
      RES%E111 = LHS%R*RHS%E111 + LHS%E111*RHS%R +  &
              LHS%E1*RHS%E11 + LHS%E11*RHS%E1
      RES%E112 = LHS%R*RHS%E112 + LHS%E112*RHS%R +  &
              LHS%E1*RHS%E12 + LHS%E12*RHS%E1 + LHS%E2*RHS%E11 + LHS%E11*RHS%E2
      RES%E122 = LHS%R*RHS%E122 + LHS%E122*RHS%R +  &
              LHS%E1*RHS%E22 + LHS%E22*RHS%E1 + LHS%E2*RHS%E12 + LHS%E12*RHS%E2
      RES%E222 = LHS%R*RHS%E222 + LHS%E222*RHS%R +  &
              LHS%E2*RHS%E22 + LHS%E22*RHS%E2
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

   END FUNCTION ONUMM2N3_MUL_OO_SS

   ELEMENTAL FUNCTION ONUMM2N3_MUL_RO_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(ONUMM2N3), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES 

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

      ! Order 3
      RES%E111 = LHS*RHS%E111
      RES%E112 = LHS*RHS%E112
      RES%E122 = LHS*RHS%E122
      RES%E222 = LHS*RHS%E222

   END FUNCTION ONUMM2N3_MUL_RO_SS

   ELEMENTAL FUNCTION ONUMM2N3_MUL_OR_SS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES 

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

      ! Order 3
      RES%E111 = LHS%E111*RHS
      RES%E112 = LHS%E112*RHS
      RES%E122 = LHS%E122*RHS
      RES%E222 = LHS%E222*RHS

   END FUNCTION ONUMM2N3_MUL_OR_SS

   FUNCTION ONUMM2N3_ADD_OO_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS(:)
      TYPE(ONUMM2N3), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1)) 

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

      ! Order 3
      RES%E111 = LHS%E111 + RHS%E111
      RES%E112 = LHS%E112 + RHS%E112
      RES%E122 = LHS%E122 + RHS%E122
      RES%E222 = LHS%E222 + RHS%E222

   END FUNCTION ONUMM2N3_ADD_OO_VS

   FUNCTION ONUMM2N3_ADD_RO_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:)
      TYPE(ONUMM2N3), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1)) 

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

      ! Order 3
      RES%E111 =  + RHS%E111
      RES%E112 =  + RHS%E112
      RES%E122 =  + RHS%E122
      RES%E222 =  + RHS%E222

   END FUNCTION ONUMM2N3_ADD_RO_VS

   FUNCTION ONUMM2N3_ADD_OR_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS(:)
      REAL(DP), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1)) 

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

      ! Order 3
      RES%E111 = LHS%E111
      RES%E112 = LHS%E112
      RES%E122 = LHS%E122
      RES%E222 = LHS%E222

   END FUNCTION ONUMM2N3_ADD_OR_VS

   FUNCTION ONUMM2N3_SUB_OO_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS(:)
      TYPE(ONUMM2N3), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1)) 

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

      ! Order 3
      RES%E111 = LHS%E111 - RHS%E111
      RES%E112 = LHS%E112 - RHS%E112
      RES%E122 = LHS%E122 - RHS%E122
      RES%E222 = LHS%E222 - RHS%E222

   END FUNCTION ONUMM2N3_SUB_OO_VS

   FUNCTION ONUMM2N3_SUB_RO_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:)
      TYPE(ONUMM2N3), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1)) 

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

      ! Order 3
      RES%E111 =  - RHS%E111
      RES%E112 =  - RHS%E112
      RES%E122 =  - RHS%E122
      RES%E222 =  - RHS%E222

   END FUNCTION ONUMM2N3_SUB_RO_VS

   FUNCTION ONUMM2N3_SUB_OR_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS(:)
      REAL(DP), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1)) 

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

      ! Order 3
      RES%E111 = LHS%E111
      RES%E112 = LHS%E112
      RES%E122 = LHS%E122
      RES%E222 = LHS%E222

   END FUNCTION ONUMM2N3_SUB_OR_VS

   FUNCTION ONUMM2N3_MUL_OO_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS(:)
      TYPE(ONUMM2N3), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1)) 

      !  Multiplication like function 'LHS*RHS'
      ! Order 3
      RES%E111 = LHS%R*RHS%E111 + LHS%E111*RHS%R +  &
              LHS%E1*RHS%E11 + LHS%E11*RHS%E1
      RES%E112 = LHS%R*RHS%E112 + LHS%E112*RHS%R +  &
              LHS%E1*RHS%E12 + LHS%E12*RHS%E1 + LHS%E2*RHS%E11 + LHS%E11*RHS%E2
      RES%E122 = LHS%R*RHS%E122 + LHS%E122*RHS%R +  &
              LHS%E1*RHS%E22 + LHS%E22*RHS%E1 + LHS%E2*RHS%E12 + LHS%E12*RHS%E2
      RES%E222 = LHS%R*RHS%E222 + LHS%E222*RHS%R +  &
              LHS%E2*RHS%E22 + LHS%E22*RHS%E2
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

   END FUNCTION ONUMM2N3_MUL_OO_VS

   FUNCTION ONUMM2N3_MUL_RO_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:)
      TYPE(ONUMM2N3), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1)) 

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

      ! Order 3
      RES%E111 = LHS*RHS%E111
      RES%E112 = LHS*RHS%E112
      RES%E122 = LHS*RHS%E122
      RES%E222 = LHS*RHS%E222

   END FUNCTION ONUMM2N3_MUL_RO_VS

   FUNCTION ONUMM2N3_MUL_OR_VS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS(:)
      REAL(DP), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1)) 

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

      ! Order 3
      RES%E111 = LHS%E111*RHS
      RES%E112 = LHS%E112*RHS
      RES%E122 = LHS%E122*RHS
      RES%E222 = LHS%E222*RHS

   END FUNCTION ONUMM2N3_MUL_OR_VS

   FUNCTION ONUMM2N3_ADD_OO_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS(:,:)
      TYPE(ONUMM2N3), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

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

      ! Order 3
      RES%E111 = LHS%E111 + RHS%E111
      RES%E112 = LHS%E112 + RHS%E112
      RES%E122 = LHS%E122 + RHS%E122
      RES%E222 = LHS%E222 + RHS%E222

   END FUNCTION ONUMM2N3_ADD_OO_MS

   FUNCTION ONUMM2N3_ADD_RO_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:,:)
      TYPE(ONUMM2N3), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

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

      ! Order 3
      RES%E111 =  + RHS%E111
      RES%E112 =  + RHS%E112
      RES%E122 =  + RHS%E122
      RES%E222 =  + RHS%E222

   END FUNCTION ONUMM2N3_ADD_RO_MS

   FUNCTION ONUMM2N3_ADD_OR_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS(:,:)
      REAL(DP), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

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

      ! Order 3
      RES%E111 = LHS%E111
      RES%E112 = LHS%E112
      RES%E122 = LHS%E122
      RES%E222 = LHS%E222

   END FUNCTION ONUMM2N3_ADD_OR_MS

   FUNCTION ONUMM2N3_SUB_OO_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS(:,:)
      TYPE(ONUMM2N3), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

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

      ! Order 3
      RES%E111 = LHS%E111 - RHS%E111
      RES%E112 = LHS%E112 - RHS%E112
      RES%E122 = LHS%E122 - RHS%E122
      RES%E222 = LHS%E222 - RHS%E222

   END FUNCTION ONUMM2N3_SUB_OO_MS

   FUNCTION ONUMM2N3_SUB_RO_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:,:)
      TYPE(ONUMM2N3), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

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

      ! Order 3
      RES%E111 =  - RHS%E111
      RES%E112 =  - RHS%E112
      RES%E122 =  - RHS%E122
      RES%E222 =  - RHS%E222

   END FUNCTION ONUMM2N3_SUB_RO_MS

   FUNCTION ONUMM2N3_SUB_OR_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS(:,:)
      REAL(DP), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

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

      ! Order 3
      RES%E111 = LHS%E111
      RES%E112 = LHS%E112
      RES%E122 = LHS%E122
      RES%E222 = LHS%E222

   END FUNCTION ONUMM2N3_SUB_OR_MS

   FUNCTION ONUMM2N3_MUL_OO_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS(:,:)
      TYPE(ONUMM2N3), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

      !  Multiplication like function 'LHS*RHS'
      ! Order 3
      RES%E111 = LHS%R*RHS%E111 + LHS%E111*RHS%R +  &
              LHS%E1*RHS%E11 + LHS%E11*RHS%E1
      RES%E112 = LHS%R*RHS%E112 + LHS%E112*RHS%R +  &
              LHS%E1*RHS%E12 + LHS%E12*RHS%E1 + LHS%E2*RHS%E11 + LHS%E11*RHS%E2
      RES%E122 = LHS%R*RHS%E122 + LHS%E122*RHS%R +  &
              LHS%E1*RHS%E22 + LHS%E22*RHS%E1 + LHS%E2*RHS%E12 + LHS%E12*RHS%E2
      RES%E222 = LHS%R*RHS%E222 + LHS%E222*RHS%R +  &
              LHS%E2*RHS%E22 + LHS%E22*RHS%E2
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

   END FUNCTION ONUMM2N3_MUL_OO_MS

   FUNCTION ONUMM2N3_MUL_RO_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:,:)
      TYPE(ONUMM2N3), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

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

      ! Order 3
      RES%E111 = LHS*RHS%E111
      RES%E112 = LHS*RHS%E112
      RES%E122 = LHS*RHS%E122
      RES%E222 = LHS*RHS%E222

   END FUNCTION ONUMM2N3_MUL_RO_MS

   FUNCTION ONUMM2N3_MUL_OR_MS(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS(:,:)
      REAL(DP), INTENT(IN) :: RHS
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1),SIZE(LHS,2)) 

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

      ! Order 3
      RES%E111 = LHS%E111*RHS
      RES%E112 = LHS%E112*RHS
      RES%E122 = LHS%E122*RHS
      RES%E222 = LHS%E222*RHS

   END FUNCTION ONUMM2N3_MUL_OR_MS

   FUNCTION ONUMM2N3_ADD_OO_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS
      TYPE(ONUMM2N3), INTENT(IN) :: RHS(:)
      TYPE(ONUMM2N3) :: RES(SIZE(RHS,1)) 

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

      ! Order 3
      RES%E111 = LHS%E111 + RHS%E111
      RES%E112 = LHS%E112 + RHS%E112
      RES%E122 = LHS%E122 + RHS%E122
      RES%E222 = LHS%E222 + RHS%E222

   END FUNCTION ONUMM2N3_ADD_OO_SV

   FUNCTION ONUMM2N3_ADD_RO_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(ONUMM2N3), INTENT(IN) :: RHS(:)
      TYPE(ONUMM2N3) :: RES(SIZE(RHS,1)) 

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

      ! Order 3
      RES%E111 =  + RHS%E111
      RES%E112 =  + RHS%E112
      RES%E122 =  + RHS%E122
      RES%E222 =  + RHS%E222

   END FUNCTION ONUMM2N3_ADD_RO_SV

   FUNCTION ONUMM2N3_ADD_OR_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS(:)
      TYPE(ONUMM2N3) :: RES(SIZE(RHS,1)) 

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

      ! Order 3
      RES%E111 = LHS%E111
      RES%E112 = LHS%E112
      RES%E122 = LHS%E122
      RES%E222 = LHS%E222

   END FUNCTION ONUMM2N3_ADD_OR_SV

   FUNCTION ONUMM2N3_SUB_OO_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS
      TYPE(ONUMM2N3), INTENT(IN) :: RHS(:)
      TYPE(ONUMM2N3) :: RES(SIZE(RHS,1)) 

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

      ! Order 3
      RES%E111 = LHS%E111 - RHS%E111
      RES%E112 = LHS%E112 - RHS%E112
      RES%E122 = LHS%E122 - RHS%E122
      RES%E222 = LHS%E222 - RHS%E222

   END FUNCTION ONUMM2N3_SUB_OO_SV

   FUNCTION ONUMM2N3_SUB_RO_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(ONUMM2N3), INTENT(IN) :: RHS(:)
      TYPE(ONUMM2N3) :: RES(SIZE(RHS,1)) 

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

      ! Order 3
      RES%E111 =  - RHS%E111
      RES%E112 =  - RHS%E112
      RES%E122 =  - RHS%E122
      RES%E222 =  - RHS%E222

   END FUNCTION ONUMM2N3_SUB_RO_SV

   FUNCTION ONUMM2N3_SUB_OR_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS(:)
      TYPE(ONUMM2N3) :: RES(SIZE(RHS,1)) 

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

      ! Order 3
      RES%E111 = LHS%E111
      RES%E112 = LHS%E112
      RES%E122 = LHS%E122
      RES%E222 = LHS%E222

   END FUNCTION ONUMM2N3_SUB_OR_SV

   FUNCTION ONUMM2N3_MUL_OO_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS
      TYPE(ONUMM2N3), INTENT(IN) :: RHS(:)
      TYPE(ONUMM2N3) :: RES(SIZE(RHS,1)) 

      !  Multiplication like function 'LHS*RHS'
      ! Order 3
      RES%E111 = LHS%R*RHS%E111 + LHS%E111*RHS%R +  &
              LHS%E1*RHS%E11 + LHS%E11*RHS%E1
      RES%E112 = LHS%R*RHS%E112 + LHS%E112*RHS%R +  &
              LHS%E1*RHS%E12 + LHS%E12*RHS%E1 + LHS%E2*RHS%E11 + LHS%E11*RHS%E2
      RES%E122 = LHS%R*RHS%E122 + LHS%E122*RHS%R +  &
              LHS%E1*RHS%E22 + LHS%E22*RHS%E1 + LHS%E2*RHS%E12 + LHS%E12*RHS%E2
      RES%E222 = LHS%R*RHS%E222 + LHS%E222*RHS%R +  &
              LHS%E2*RHS%E22 + LHS%E22*RHS%E2
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

   END FUNCTION ONUMM2N3_MUL_OO_SV

   FUNCTION ONUMM2N3_MUL_RO_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(ONUMM2N3), INTENT(IN) :: RHS(:)
      TYPE(ONUMM2N3) :: RES(SIZE(RHS,1)) 

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

      ! Order 3
      RES%E111 = LHS*RHS%E111
      RES%E112 = LHS*RHS%E112
      RES%E122 = LHS*RHS%E122
      RES%E222 = LHS*RHS%E222

   END FUNCTION ONUMM2N3_MUL_RO_SV

   FUNCTION ONUMM2N3_MUL_OR_SV(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS(:)
      TYPE(ONUMM2N3) :: RES(SIZE(RHS,1)) 

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

      ! Order 3
      RES%E111 = LHS%E111*RHS
      RES%E112 = LHS%E112*RHS
      RES%E122 = LHS%E122*RHS
      RES%E222 = LHS%E222*RHS

   END FUNCTION ONUMM2N3_MUL_OR_SV

   FUNCTION ONUMM2N3_ADD_OO_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS
      TYPE(ONUMM2N3), INTENT(IN) :: RHS(:,:)
      TYPE(ONUMM2N3) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

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

      ! Order 3
      RES%E111 = LHS%E111 + RHS%E111
      RES%E112 = LHS%E112 + RHS%E112
      RES%E122 = LHS%E122 + RHS%E122
      RES%E222 = LHS%E222 + RHS%E222

   END FUNCTION ONUMM2N3_ADD_OO_SM

   FUNCTION ONUMM2N3_ADD_RO_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(ONUMM2N3), INTENT(IN) :: RHS(:,:)
      TYPE(ONUMM2N3) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

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

      ! Order 3
      RES%E111 =  + RHS%E111
      RES%E112 =  + RHS%E112
      RES%E122 =  + RHS%E122
      RES%E222 =  + RHS%E222

   END FUNCTION ONUMM2N3_ADD_RO_SM

   FUNCTION ONUMM2N3_ADD_OR_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS(:,:)
      TYPE(ONUMM2N3) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

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

      ! Order 3
      RES%E111 = LHS%E111
      RES%E112 = LHS%E112
      RES%E122 = LHS%E122
      RES%E222 = LHS%E222

   END FUNCTION ONUMM2N3_ADD_OR_SM

   FUNCTION ONUMM2N3_SUB_OO_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS
      TYPE(ONUMM2N3), INTENT(IN) :: RHS(:,:)
      TYPE(ONUMM2N3) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

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

      ! Order 3
      RES%E111 = LHS%E111 - RHS%E111
      RES%E112 = LHS%E112 - RHS%E112
      RES%E122 = LHS%E122 - RHS%E122
      RES%E222 = LHS%E222 - RHS%E222

   END FUNCTION ONUMM2N3_SUB_OO_SM

   FUNCTION ONUMM2N3_SUB_RO_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(ONUMM2N3), INTENT(IN) :: RHS(:,:)
      TYPE(ONUMM2N3) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

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

      ! Order 3
      RES%E111 =  - RHS%E111
      RES%E112 =  - RHS%E112
      RES%E122 =  - RHS%E122
      RES%E222 =  - RHS%E222

   END FUNCTION ONUMM2N3_SUB_RO_SM

   FUNCTION ONUMM2N3_SUB_OR_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS(:,:)
      TYPE(ONUMM2N3) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

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

      ! Order 3
      RES%E111 = LHS%E111
      RES%E112 = LHS%E112
      RES%E122 = LHS%E122
      RES%E222 = LHS%E222

   END FUNCTION ONUMM2N3_SUB_OR_SM

   FUNCTION ONUMM2N3_MUL_OO_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS
      TYPE(ONUMM2N3), INTENT(IN) :: RHS(:,:)
      TYPE(ONUMM2N3) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

      !  Multiplication like function 'LHS*RHS'
      ! Order 3
      RES%E111 = LHS%R*RHS%E111 + LHS%E111*RHS%R +  &
              LHS%E1*RHS%E11 + LHS%E11*RHS%E1
      RES%E112 = LHS%R*RHS%E112 + LHS%E112*RHS%R +  &
              LHS%E1*RHS%E12 + LHS%E12*RHS%E1 + LHS%E2*RHS%E11 + LHS%E11*RHS%E2
      RES%E122 = LHS%R*RHS%E122 + LHS%E122*RHS%R +  &
              LHS%E1*RHS%E22 + LHS%E22*RHS%E1 + LHS%E2*RHS%E12 + LHS%E12*RHS%E2
      RES%E222 = LHS%R*RHS%E222 + LHS%E222*RHS%R +  &
              LHS%E2*RHS%E22 + LHS%E22*RHS%E2
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

   END FUNCTION ONUMM2N3_MUL_OO_SM

   FUNCTION ONUMM2N3_MUL_RO_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS
      TYPE(ONUMM2N3), INTENT(IN) :: RHS(:,:)
      TYPE(ONUMM2N3) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

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

      ! Order 3
      RES%E111 = LHS*RHS%E111
      RES%E112 = LHS*RHS%E112
      RES%E122 = LHS*RHS%E122
      RES%E222 = LHS*RHS%E222

   END FUNCTION ONUMM2N3_MUL_RO_SM

   FUNCTION ONUMM2N3_MUL_OR_SM(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS
      REAL(DP), INTENT(IN) :: RHS(:,:)
      TYPE(ONUMM2N3) :: RES(SIZE(RHS,1),SIZE(RHS,2)) 

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

      ! Order 3
      RES%E111 = LHS%E111*RHS
      RES%E112 = LHS%E112*RHS
      RES%E122 = LHS%E122*RHS
      RES%E222 = LHS%E222*RHS

   END FUNCTION ONUMM2N3_MUL_OR_SM

ELEMENTAL    FUNCTION ONUMM2N3_GEM_OOO(A,B,C)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: A 
      TYPE(ONUMM2N3), INTENT(IN) :: B 
      TYPE(ONUMM2N3), INTENT(IN) :: C 
      TYPE(ONUMM2N3) :: RES 

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

      ! Order 3
      RES%E111 = C%E111 + A%R*B%E111 + A%E111*B%R + A%E1*B%E11 &
               + A%E11*B%E1
      RES%E112 = C%E112 + A%R*B%E112 + A%E112*B%R + A%E1*B%E12 &
               + A%E12*B%E1 + A%E2*B%E11 + A%E11*B%E2
      RES%E122 = C%E122 + A%R*B%E122 + A%E122*B%R + A%E1*B%E22 &
               + A%E22*B%E1 + A%E2*B%E12 + A%E12*B%E2
      RES%E222 = C%E222 + A%R*B%E222 + A%E222*B%R + A%E2*B%E22 &
               + A%E22*B%E2

   END FUNCTION ONUMM2N3_GEM_OOO

ELEMENTAL    FUNCTION ONUMM2N3_GEM_ROO(A,B,C)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: A 
      TYPE(ONUMM2N3), INTENT(IN) :: B 
      TYPE(ONUMM2N3), INTENT(IN) :: C 
      TYPE(ONUMM2N3) :: RES 

      !  General multiplication like function 'A*B + C'
      ! Order 3
      RES%E111 = C%E111 + A*B%E111
      RES%E112 = C%E112 + A*B%E112
      RES%E122 = C%E122 + A*B%E122
      RES%E222 = C%E222 + A*B%E222
      ! Order 2
      RES%E11 = C%E11 + A*B%E11
      RES%E12 = C%E12 + A*B%E12
      RES%E22 = C%E22 + A*B%E22
      ! Order 1
      RES%E1 = C%E1 + A*B%E1
      RES%E2 = C%E2 + A*B%E2
      ! Order 0
      RES%R = C%R + A*B%R

   END FUNCTION ONUMM2N3_GEM_ROO

ELEMENTAL    FUNCTION ONUMM2N3_GEM_ORO(A,B,C)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: A 
      REAL(DP), INTENT(IN) :: B 
      TYPE(ONUMM2N3), INTENT(IN) :: C 
      TYPE(ONUMM2N3) :: RES 

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

      ! Order 3
      RES%E111 = C%E111 + A%E111*B
      RES%E112 = C%E112 + A%E112*B
      RES%E122 = C%E122 + A%E122*B
      RES%E222 = C%E222 + A%E222*B

   END FUNCTION ONUMM2N3_GEM_ORO

   FUNCTION ONUMM2N3_MATMUL_ONUMM2N3(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS(:,:)
      TYPE(ONUMM2N3), INTENT(IN) :: RHS(:,:)
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1),SIZE(RHS,2))

      !  Multiplication like function 'MATMUL(LHS,RHS)'
      ! Order 3
      RES%E111 = MATMUL(LHS%R,RHS%E111) + MATMUL(LHS%E111,RHS%R) +  &
              MATMUL(LHS%E1,RHS%E11) + MATMUL(LHS%E11,RHS%E1)
      RES%E112 = MATMUL(LHS%R,RHS%E112) + MATMUL(LHS%E112,RHS%R) +  &
              MATMUL(LHS%E1,RHS%E12) + MATMUL(LHS%E12,RHS%E1) + MATMUL(LHS%E2,RHS%E11) + MATMUL(LHS%E11,RHS%E2)
      RES%E122 = MATMUL(LHS%R,RHS%E122) + MATMUL(LHS%E122,RHS%R) +  &
              MATMUL(LHS%E1,RHS%E22) + MATMUL(LHS%E22,RHS%E1) + MATMUL(LHS%E2,RHS%E12) + MATMUL(LHS%E12,RHS%E2)
      RES%E222 = MATMUL(LHS%R,RHS%E222) + MATMUL(LHS%E222,RHS%R) +  &
              MATMUL(LHS%E2,RHS%E22) + MATMUL(LHS%E22,RHS%E2)
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

   END FUNCTION ONUMM2N3_MATMUL_ONUMM2N3

   FUNCTION R_MATMUL_ONUMM2N3(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      REAL(DP), INTENT(IN) :: LHS(:,:)
      TYPE(ONUMM2N3), INTENT(IN) :: RHS(:,:)
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1),SIZE(RHS,2))

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

      ! Order 3
      RES%E111 = MATMUL(LHS,RHS%E111)
      RES%E112 = MATMUL(LHS,RHS%E112)
      RES%E122 = MATMUL(LHS,RHS%E122)
      RES%E222 = MATMUL(LHS,RHS%E222)

   END FUNCTION R_MATMUL_ONUMM2N3

   FUNCTION ONUMM2N3_MATMUL_R(LHS,RHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS(:,:)
      REAL(DP), INTENT(IN) :: RHS(:,:)
      TYPE(ONUMM2N3) :: RES(SIZE(LHS,1),SIZE(RHS,2))

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

      ! Order 3
      RES%E111 = MATMUL(LHS%E111,RHS)
      RES%E112 = MATMUL(LHS%E112,RHS)
      RES%E122 = MATMUL(LHS%E122,RHS)
      RES%E222 = MATMUL(LHS%E222,RHS)

   END FUNCTION ONUMM2N3_MATMUL_R

   FUNCTION ONUMM2N3_TRANSPOSE(LHS)&
      RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: LHS(:,:)
      TYPE(ONUMM2N3) :: RES (SIZE(LHS,2),SIZE(LHS,1))

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
      ! Order 3
      RES%E111 = TRANSPOSE(LHS%E111)
      RES%E112 = TRANSPOSE(LHS%E112)
      RES%E122 = TRANSPOSE(LHS%E122)
      RES%E222 = TRANSPOSE(LHS%E222)

   END FUNCTION ONUMM2N3_TRANSPOSE

FUNCTION ONUMM2N3_TO_CR_MAT_S(VAL) RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: VAL
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
      ! R x E111 -> E111 (7, 7)
      RES(1+NROWS*6:NROWS*7,1+NCOLS*6:NCOLS*7) = VAL%R
      ! E111 x R -> E111 (7, 1)
      RES(1+NROWS*6:NROWS*7,1+NCOLS*0:NCOLS*1) = VAL%E111
      ! E1 x E11 -> E111 (7, 4)
      RES(1+NROWS*6:NROWS*7,1+NCOLS*3:NCOLS*4) = VAL%E1
      ! E11 x E1 -> E111 (7, 2)
      RES(1+NROWS*6:NROWS*7,1+NCOLS*1:NCOLS*2) = VAL%E11
      ! R x E112 -> E112 (8, 8)
      RES(1+NROWS*7:NROWS*8,1+NCOLS*7:NCOLS*8) = VAL%R
      ! E112 x R -> E112 (8, 1)
      RES(1+NROWS*7:NROWS*8,1+NCOLS*0:NCOLS*1) = VAL%E112
      ! E1 x E12 -> E112 (8, 5)
      RES(1+NROWS*7:NROWS*8,1+NCOLS*4:NCOLS*5) = VAL%E1
      ! E12 x E1 -> E112 (8, 2)
      RES(1+NROWS*7:NROWS*8,1+NCOLS*1:NCOLS*2) = VAL%E12
      ! E2 x E11 -> E112 (8, 4)
      RES(1+NROWS*7:NROWS*8,1+NCOLS*3:NCOLS*4) = VAL%E2
      ! E11 x E2 -> E112 (8, 3)
      RES(1+NROWS*7:NROWS*8,1+NCOLS*2:NCOLS*3) = VAL%E11
      ! R x E122 -> E122 (9, 9)
      RES(1+NROWS*8:NROWS*9,1+NCOLS*8:NCOLS*9) = VAL%R
      ! E122 x R -> E122 (9, 1)
      RES(1+NROWS*8:NROWS*9,1+NCOLS*0:NCOLS*1) = VAL%E122
      ! E1 x E22 -> E122 (9, 6)
      RES(1+NROWS*8:NROWS*9,1+NCOLS*5:NCOLS*6) = VAL%E1
      ! E22 x E1 -> E122 (9, 2)
      RES(1+NROWS*8:NROWS*9,1+NCOLS*1:NCOLS*2) = VAL%E22
      ! E2 x E12 -> E122 (9, 5)
      RES(1+NROWS*8:NROWS*9,1+NCOLS*4:NCOLS*5) = VAL%E2
      ! E12 x E2 -> E122 (9, 3)
      RES(1+NROWS*8:NROWS*9,1+NCOLS*2:NCOLS*3) = VAL%E12
      ! R x E222 -> E222 (10, 10)
      RES(1+NROWS*9:NROWS*10,1+NCOLS*9:NCOLS*10) = VAL%R
      ! E222 x R -> E222 (10, 1)
      RES(1+NROWS*9:NROWS*10,1+NCOLS*0:NCOLS*1) = VAL%E222
      ! E2 x E22 -> E222 (10, 6)
      RES(1+NROWS*9:NROWS*10,1+NCOLS*5:NCOLS*6) = VAL%E2
      ! E22 x E2 -> E222 (10, 3)
      RES(1+NROWS*9:NROWS*10,1+NCOLS*2:NCOLS*3) = VAL%E22
   END FUNCTION ONUMM2N3_TO_CR_MAT_S

FUNCTION ONUMM2N3_TO_CR_MAT_V(VAL) RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: VAL(:)
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
      ! R x E111 -> E111 (7, 7)
      RES(1+NROWS*6:NROWS*7,7) = VAL%R
      ! E111 x R -> E111 (7, 1)
      RES(1+NROWS*6:NROWS*7,1) = VAL%E111
      ! E1 x E11 -> E111 (7, 4)
      RES(1+NROWS*6:NROWS*7,4) = VAL%E1
      ! E11 x E1 -> E111 (7, 2)
      RES(1+NROWS*6:NROWS*7,2) = VAL%E11
      ! R x E112 -> E112 (8, 8)
      RES(1+NROWS*7:NROWS*8,8) = VAL%R
      ! E112 x R -> E112 (8, 1)
      RES(1+NROWS*7:NROWS*8,1) = VAL%E112
      ! E1 x E12 -> E112 (8, 5)
      RES(1+NROWS*7:NROWS*8,5) = VAL%E1
      ! E12 x E1 -> E112 (8, 2)
      RES(1+NROWS*7:NROWS*8,2) = VAL%E12
      ! E2 x E11 -> E112 (8, 4)
      RES(1+NROWS*7:NROWS*8,4) = VAL%E2
      ! E11 x E2 -> E112 (8, 3)
      RES(1+NROWS*7:NROWS*8,3) = VAL%E11
      ! R x E122 -> E122 (9, 9)
      RES(1+NROWS*8:NROWS*9,9) = VAL%R
      ! E122 x R -> E122 (9, 1)
      RES(1+NROWS*8:NROWS*9,1) = VAL%E122
      ! E1 x E22 -> E122 (9, 6)
      RES(1+NROWS*8:NROWS*9,6) = VAL%E1
      ! E22 x E1 -> E122 (9, 2)
      RES(1+NROWS*8:NROWS*9,2) = VAL%E22
      ! E2 x E12 -> E122 (9, 5)
      RES(1+NROWS*8:NROWS*9,5) = VAL%E2
      ! E12 x E2 -> E122 (9, 3)
      RES(1+NROWS*8:NROWS*9,3) = VAL%E12
      ! R x E222 -> E222 (10, 10)
      RES(1+NROWS*9:NROWS*10,10) = VAL%R
      ! E222 x R -> E222 (10, 1)
      RES(1+NROWS*9:NROWS*10,1) = VAL%E222
      ! E2 x E22 -> E222 (10, 6)
      RES(1+NROWS*9:NROWS*10,6) = VAL%E2
      ! E22 x E2 -> E222 (10, 3)
      RES(1+NROWS*9:NROWS*10,3) = VAL%E22
   END FUNCTION ONUMM2N3_TO_CR_MAT_V

FUNCTION ONUMM2N3_TO_CR_MAT_M(VAL) RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: VAL(:,:)
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
      ! R x E111 -> E111 (7, 7)
      RES(1+NROWS*6:NROWS*7,1+NCOLS*6:NCOLS*7) = VAL%R
      ! E111 x R -> E111 (7, 1)
      RES(1+NROWS*6:NROWS*7,1+NCOLS*0:NCOLS*1) = VAL%E111
      ! E1 x E11 -> E111 (7, 4)
      RES(1+NROWS*6:NROWS*7,1+NCOLS*3:NCOLS*4) = VAL%E1
      ! E11 x E1 -> E111 (7, 2)
      RES(1+NROWS*6:NROWS*7,1+NCOLS*1:NCOLS*2) = VAL%E11
      ! R x E112 -> E112 (8, 8)
      RES(1+NROWS*7:NROWS*8,1+NCOLS*7:NCOLS*8) = VAL%R
      ! E112 x R -> E112 (8, 1)
      RES(1+NROWS*7:NROWS*8,1+NCOLS*0:NCOLS*1) = VAL%E112
      ! E1 x E12 -> E112 (8, 5)
      RES(1+NROWS*7:NROWS*8,1+NCOLS*4:NCOLS*5) = VAL%E1
      ! E12 x E1 -> E112 (8, 2)
      RES(1+NROWS*7:NROWS*8,1+NCOLS*1:NCOLS*2) = VAL%E12
      ! E2 x E11 -> E112 (8, 4)
      RES(1+NROWS*7:NROWS*8,1+NCOLS*3:NCOLS*4) = VAL%E2
      ! E11 x E2 -> E112 (8, 3)
      RES(1+NROWS*7:NROWS*8,1+NCOLS*2:NCOLS*3) = VAL%E11
      ! R x E122 -> E122 (9, 9)
      RES(1+NROWS*8:NROWS*9,1+NCOLS*8:NCOLS*9) = VAL%R
      ! E122 x R -> E122 (9, 1)
      RES(1+NROWS*8:NROWS*9,1+NCOLS*0:NCOLS*1) = VAL%E122
      ! E1 x E22 -> E122 (9, 6)
      RES(1+NROWS*8:NROWS*9,1+NCOLS*5:NCOLS*6) = VAL%E1
      ! E22 x E1 -> E122 (9, 2)
      RES(1+NROWS*8:NROWS*9,1+NCOLS*1:NCOLS*2) = VAL%E22
      ! E2 x E12 -> E122 (9, 5)
      RES(1+NROWS*8:NROWS*9,1+NCOLS*4:NCOLS*5) = VAL%E2
      ! E12 x E2 -> E122 (9, 3)
      RES(1+NROWS*8:NROWS*9,1+NCOLS*2:NCOLS*3) = VAL%E12
      ! R x E222 -> E222 (10, 10)
      RES(1+NROWS*9:NROWS*10,1+NCOLS*9:NCOLS*10) = VAL%R
      ! E222 x R -> E222 (10, 1)
      RES(1+NROWS*9:NROWS*10,1+NCOLS*0:NCOLS*1) = VAL%E222
      ! E2 x E22 -> E222 (10, 6)
      RES(1+NROWS*9:NROWS*10,1+NCOLS*5:NCOLS*6) = VAL%E2
      ! E22 x E2 -> E222 (10, 3)
      RES(1+NROWS*9:NROWS*10,1+NCOLS*2:NCOLS*3) = VAL%E22
   END FUNCTION ONUMM2N3_TO_CR_MAT_M

   ELEMENTAL FUNCTION ONUMM2N3_FEVAL(X,DER0,DER1,DER2,DER3)&
      RESULT(RES)
      IMPLICIT NONE
      !  Definitions
      REAL(DP) :: FACTOR, COEF
      TYPE(ONUMM2N3), INTENT(IN)  :: X
      REAL(DP), INTENT(IN)  :: DER0,DER1,DER2,DER3
      TYPE(ONUMM2N3) :: RES
      TYPE(ONUMM2N3) :: DX, DX_P

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
      ! Order 3
      RES%E111 = RES%E111+COEF*DX_P%E111
      RES%E112 = RES%E112+COEF*DX_P%E112
      RES%E122 = RES%E122+COEF*DX_P%E122
      RES%E222 = RES%E222+COEF*DX_P%E222
      ! Order 2
      RES%E11 = RES%E11+COEF*DX_P%E11
      RES%E12 = RES%E12+COEF*DX_P%E12
      RES%E22 = RES%E22+COEF*DX_P%E22
      ! Order 1
      RES%E1 = RES%E1+COEF*DX_P%E1
      RES%E2 = RES%E2+COEF*DX_P%E2
      ! DX_P = DX_P * DX
      ! Order 3
      DX_P%E111 = DX_P%E1*DX%E11+DX_P%E11*DX%E1
      DX_P%E112 = DX_P%E1*DX%E12+DX_P%E12*DX%E1+ &
               DX_P%E2*DX%E11+DX_P%E11*DX%E2
      DX_P%E122 = DX_P%E1*DX%E22+DX_P%E22*DX%E1+ &
               DX_P%E2*DX%E12+DX_P%E12*DX%E2
      DX_P%E222 = DX_P%E2*DX%E22+DX_P%E22*DX%E2
      ! Order 2
      DX_P%E11 = DX_P%E1*DX%E1
      DX_P%E12 = DX_P%E1*DX%E2+DX_P%E2*DX%E1
      DX_P%E22 = DX_P%E2*DX%E2
      
      ! Sets order 2
      FACTOR = FACTOR * 2
      COEF = DER2 / FACTOR
      ! RES = RES COEF * DX_P
      ! Order 3
      RES%E111 = RES%E111+COEF*DX_P%E111
      RES%E112 = RES%E112+COEF*DX_P%E112
      RES%E122 = RES%E122+COEF*DX_P%E122
      RES%E222 = RES%E222+COEF*DX_P%E222
      ! Order 2
      RES%E11 = RES%E11+COEF*DX_P%E11
      RES%E12 = RES%E12+COEF*DX_P%E12
      RES%E22 = RES%E22+COEF*DX_P%E22
      ! DX_P = DX_P * DX
      ! Order 3
      DX_P%E111 = DX_P%E11*DX%E1
      DX_P%E112 = DX_P%E12*DX%E1+DX_P%E11*DX%E2
      DX_P%E122 = DX_P%E22*DX%E1+DX_P%E12*DX%E2
      DX_P%E222 = DX_P%E22*DX%E2
      
      ! Sets order 3
      FACTOR = FACTOR * 3
      COEF = DER3 / FACTOR
      ! RES = RES COEF * DX_P
      ! Order 3
      RES%E111 = RES%E111+COEF*DX_P%E111
      RES%E112 = RES%E112+COEF*DX_P%E112
      RES%E122 = RES%E122+COEF*DX_P%E122
      RES%E222 = RES%E222+COEF*DX_P%E222
      
   END FUNCTION ONUMM2N3_FEVAL


  SUBROUTINE ONUMM2N3_PPRINT_M_R(X, FMT)
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

  END SUBROUTINE ONUMM2N3_PPRINT_M_R

  SUBROUTINE ONUMM2N3_PPRINT_V_R(X, FMT)
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

  END SUBROUTINE ONUMM2N3_PPRINT_V_R

  FUNCTION ONUMM2N3_DIVISION_OO(X,Y) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      TYPE(ONUMM2N3), INTENT(IN) :: X
      TYPE(ONUMM2N3), INTENT(IN) :: Y
      TYPE(ONUMM2N3) :: RES

      RES = X*(Y**(-1.d0))

  END FUNCTION ONUMM2N3_DIVISION_OO

  FUNCTION ONUMM2N3_DIVISION_OR(X,Y) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      TYPE(ONUMM2N3), INTENT(IN) :: X
      REAL(DP), INTENT(IN) :: Y
      TYPE(ONUMM2N3) :: RES

      RES = X*(Y**(-1.d0))

  END FUNCTION ONUMM2N3_DIVISION_OR

  FUNCTION ONUMM2N3_DIVISION_RO(X,Y) RESULT(RES)
      IMPLICIT NONE
      REAL(DP) :: DERIVS(TORDER + 1) 
      REAL(DP), INTENT(IN) :: X
      TYPE(ONUMM2N3), INTENT(IN) :: Y
      TYPE(ONUMM2N3) :: RES

      RES = X*(Y**(-1.d0))

  END FUNCTION ONUMM2N3_DIVISION_RO

  ELEMENTAL FUNCTION ONUMM2N3_REAL(X) RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: X
      REAL(DP) :: RES

      RES = X%R

  END FUNCTION ONUMM2N3_REAL

  FUNCTION ONUMM2N3_SQRT(X) RESULT(RES)
      IMPLICIT NONE
      TYPE(ONUMM2N3), INTENT(IN) :: X
      TYPE(ONUMM2N3) :: RES

      RES = X**0.5_DP

  END FUNCTION ONUMM2N3_SQRT

   ELEMENTAL FUNCTION ONUMM2N3_TAN(X) RESULT(RES)

      TYPE(ONUMM2N3), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2,DER3
      TYPE(ONUMM2N3) :: RES
      
      DER0 = TAN(X%R)
      DER1 = TAN(X%R)**2 + 1
      DER2 = 2*(TAN(X%R)**2 + 1)*TAN(X%R)
      DER3 = 2*(TAN(X%R)**2 + 1)*(3*TAN(X%R)**2 + 1)

      RES = FEVAL(X,DER0,DER1,DER2,DER3)

   END FUNCTION ONUMM2N3_TAN

   ELEMENTAL FUNCTION ONUMM2N3_COS(X) RESULT(RES)

      TYPE(ONUMM2N3), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2,DER3
      TYPE(ONUMM2N3) :: RES
      
      DER0 = COS(X%R)
      DER1 = -SIN(X%R)
      DER2 = -COS(X%R)
      DER3 = SIN(X%R)

      RES = FEVAL(X,DER0,DER1,DER2,DER3)

   END FUNCTION ONUMM2N3_COS

   ELEMENTAL FUNCTION ONUMM2N3_SIN(X) RESULT(RES)

      TYPE(ONUMM2N3), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2,DER3
      TYPE(ONUMM2N3) :: RES
      
      DER0 = SIN(X%R)
      DER1 = COS(X%R)
      DER2 = -SIN(X%R)
      DER3 = -COS(X%R)

      RES = FEVAL(X,DER0,DER1,DER2,DER3)

   END FUNCTION ONUMM2N3_SIN

   ELEMENTAL FUNCTION ONUMM2N3_ATAN(X) RESULT(RES)

      TYPE(ONUMM2N3), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2,DER3
      TYPE(ONUMM2N3) :: RES
      
      DER0 = ATAN(X%R)
      DER1 = 1D0/(X%R**2 + 1)
      DER2 = -2*X%R/(X%R**2 + 1)**2
      DER3 = 2*(4*X%R**2/(X%R**2 + 1) - 1)/(X%R**2 + 1)**2

      RES = FEVAL(X,DER0,DER1,DER2,DER3)

   END FUNCTION ONUMM2N3_ATAN

   ELEMENTAL FUNCTION ONUMM2N3_ACOS(X) RESULT(RES)

      TYPE(ONUMM2N3), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2,DER3
      TYPE(ONUMM2N3) :: RES
      
      DER0 = ACOS(X%R)
      DER1 = -1/SQRT(1 - X%R**2)
      DER2 = -X%R/(1 - X%R**2)**(3.0D0/2.0D0)
      DER3 = -(3*X%R**2/(1 - X%R**2) + 1)/(1 - X%R**2)**(3.0D0/2.0D0)

      RES = FEVAL(X,DER0,DER1,DER2,DER3)

   END FUNCTION ONUMM2N3_ACOS

   ELEMENTAL FUNCTION ONUMM2N3_ASIN(X) RESULT(RES)

      TYPE(ONUMM2N3), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2,DER3
      TYPE(ONUMM2N3) :: RES
      
      DER0 = ASIN(X%R)
      DER1 = 1/SQRT(1 - X%R**2)
      DER2 = X%R/(1 - X%R**2)**(3.0D0/2.0D0)
      DER3 = (3*X%R**2/(1 - X%R**2) + 1)/(1 - X%R**2)**(3.0D0/2.0D0)

      RES = FEVAL(X,DER0,DER1,DER2,DER3)

   END FUNCTION ONUMM2N3_ASIN

   ELEMENTAL FUNCTION ONUMM2N3_TANH(X) RESULT(RES)

      TYPE(ONUMM2N3), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2,DER3
      TYPE(ONUMM2N3) :: RES
      
      DER0 = TANH(X%R)
      DER1 = 1 - TANH(X%R)**2
      DER2 = 2*(TANH(X%R)**2 - 1)*TANH(X%R)
      DER3 = -2*(TANH(X%R)**2 - 1)*(3*TANH(X%R)**2 - 1)

      RES = FEVAL(X,DER0,DER1,DER2,DER3)

   END FUNCTION ONUMM2N3_TANH

   ELEMENTAL FUNCTION ONUMM2N3_COSH(X) RESULT(RES)

      TYPE(ONUMM2N3), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2,DER3
      TYPE(ONUMM2N3) :: RES
      
      DER0 = COSH(X%R)
      DER1 = SINH(X%R)
      DER2 = COSH(X%R)
      DER3 = SINH(X%R)

      RES = FEVAL(X,DER0,DER1,DER2,DER3)

   END FUNCTION ONUMM2N3_COSH

   ELEMENTAL FUNCTION ONUMM2N3_SINH(X) RESULT(RES)

      TYPE(ONUMM2N3), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2,DER3
      TYPE(ONUMM2N3) :: RES
      
      DER0 = SINH(X%R)
      DER1 = COSH(X%R)
      DER2 = SINH(X%R)
      DER3 = COSH(X%R)

      RES = FEVAL(X,DER0,DER1,DER2,DER3)

   END FUNCTION ONUMM2N3_SINH

   ELEMENTAL FUNCTION ONUMM2N3_EXP(X) RESULT(RES)

      TYPE(ONUMM2N3), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2,DER3
      TYPE(ONUMM2N3) :: RES
      
      DER0 = EXP(X%R)
      DER1 = EXP(X%R)
      DER2 = EXP(X%R)
      DER3 = EXP(X%R)

      RES = FEVAL(X,DER0,DER1,DER2,DER3)

   END FUNCTION ONUMM2N3_EXP

   ELEMENTAL FUNCTION ONUMM2N3_LOG(X) RESULT(RES)

      TYPE(ONUMM2N3), INTENT(IN) :: X
      REAL(DP) :: DER0,DER1,DER2,DER3
      TYPE(ONUMM2N3) :: RES
      
      DER0 = LOG(X%R)
      DER1 = 1D0/X%R
      DER2 = -1/X%R**2
      DER3 = 2/X%R**3

      RES = FEVAL(X,DER0,DER1,DER2,DER3)

   END FUNCTION ONUMM2N3_LOG

   ELEMENTAL FUNCTION ONUMM2N3_POW_OR(X,E) RESULT(RES)

      TYPE(ONUMM2N3), INTENT(IN) :: X
      REAL(DP), INTENT(IN) :: E
      REAL(DP) :: DER0,DER1,DER2,DER3
      TYPE(ONUMM2N3) :: RES
      
      DER0=0.0d0
      DER1=0.0d0
      DER2=0.0d0
      DER3=0.0d0
      
      DER0 = X%R**E
      IF ((E-0)/=0.0d0) THEN
         DER1 = E*X%R**(E - 1)
         IF ((E-1)/=0.0d0) THEN
            DER2 = E*X%R**(E - 2)*(E - 1)
            IF ((E-2)/=0.0d0) THEN
               DER3 = E*X%R**(E - 3)*(E**2 - 3*E + 2)
            END IF
         END IF
      END IF

      RES = FEVAL(X,DER0,DER1,DER2,DER3)

   END FUNCTION ONUMM2N3_POW_OR

   ELEMENTAL FUNCTION ONUMM2N3_POW_RO(E,X) RESULT(RES)

      TYPE(ONUMM2N3), INTENT(IN) :: X
      REAL(DP), INTENT(IN) :: E
      REAL(DP) :: DER0,DER1,DER2,DER3
      TYPE(ONUMM2N3) :: RES
      
      
      DER0 = E**X%R
      DER1 = E**X%R*LOG(E)
      DER2 = E**X%R*LOG(E)**2
      DER3 = E**X%R*LOG(E)**3

      RES = FEVAL(X,DER0,DER1,DER2,DER3)

   END FUNCTION ONUMM2N3_POW_RO

   ELEMENTAL FUNCTION ONUMM2N3_F2EVAL(X,Y,DER0_0,DER1_0,DER1_1, &
                                  DER2_0,DER2_1,DER2_2,DER3_0, &
                                  DER3_1,DER3_2,DER3_3)&
      RESULT(RES)
      IMPLICIT NONE
      !  Definitions
      REAL(DP) :: COEF, DELTA
      TYPE(ONUMM2N3), INTENT(IN)  :: X,Y
      REAL(DP), INTENT(IN)  :: DER0_0,DER1_0,DER1_1, &
                               DER2_0,DER2_1,DER2_2,DER3_0, &
                               DER3_1,DER3_2,DER3_3
      TYPE(ONUMM2N3) :: RES
      TYPE(ONUMM2N3) :: DX, DY

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

      

      ! Set order 3
      COEF = DER3_0 / 6.0_DP
      RES = RES + COEF*DX*DX*DX

      COEF = DER3_1 / 2.0_DP
      RES = RES + COEF*DX*DX*DY

      COEF = DER3_2 / 2.0_DP
      RES = RES + COEF*DX*DY*DY

      COEF = DER3_3 / 6.0_DP
      RES = RES + COEF*DY*DY*DY

      

   END FUNCTION ONUMM2N3_F2EVAL


   ELEMENTAL FUNCTION ONUMM2N3_POW_OO(X,Y) RESULT(RES)

      TYPE(ONUMM2N3), INTENT(IN) :: X, Y
      REAL(DP) :: DER0_0,DER1_0,DER1_1,DER2_0,DER2_1,DER2_2,DER3_0,DER3_1,DER3_2,DER3_3
      TYPE(ONUMM2N3) :: RES
      
      DER0_0 = X%R**Y%R
      DER1_0 = X%R**Y%R*Y%R/X%R
      DER1_1 = X%R**Y%R*LOG(X%R)
      DER2_0 = X%R**Y%R*Y%R*(Y%R - 1)/X%R**2
      DER2_1 = X%R**Y%R*(Y%R*LOG(X%R) + 1)/X%R
      DER2_2 = X%R**Y%R*LOG(X%R)**2
      DER3_0 = X%R**Y%R*Y%R*(Y%R**2 - 3*Y%R + 2)/X%R**3
      DER3_1 = X%R**Y%R*(Y%R**2*LOG(X%R) - Y%R*LOG(X%R) + 2*Y%R - 1)/X%R**2
      DER3_2 = X%R**Y%R*(Y%R*LOG(X%R) + 2)*LOG(X%R)/X%R
      DER3_3 = X%R**Y%R*LOG(X%R)**3

      RES = F2EVAL(X,Y,DER0_0,DER1_0,DER1_1,DER2_0,DER2_1,DER2_2,DER3_0,DER3_1,DER3_2,DER3_3)

   END FUNCTION ONUMM2N3_POW_OO


END MODULE OTIM2N3
