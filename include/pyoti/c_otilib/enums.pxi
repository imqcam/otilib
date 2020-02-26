
cdef extern from "oti/oti.h" nogil:

  cdef enum operEnum :  
    opAdd         =   1 , 
    opSub         =   2 , 
    opMul         =   3 , 
    opTruediv     =   4 , 
    opPowr        =   5 , 
    opInt1d       =   6 , 
    opInt2d       =   7 , 
    opInt3d       =   8 , 
    opDx          =   9 , 
    opDy          =   10, 
    opDz          =   11, 
    opDxx         =   12, 
    opDyy         =   13, 
    opDzz         =   14, 
    opDxy         =   15, 
    opDxz         =   16, 
    opDyz         =   17, 
    opDef         =   18, 
    opOn          =   19, 
    opNeg         =   20, 
    subOpDefBasis =   50, 
    subOpDefKnown =   51, 
    subOpInt      =   52, 
    subOpNeg      =   53, 
    subOpMulRes   =   54, 
    subOpMulKnown =   55, 
    subOpOn       =   56, 
    subOpIntBound =   57, 
    basisN        =  101, 
    basisNx       =  102, 
    basisNxx      =  103, 
    basisNy       =  104, 
    basisNxy      =  105, 
    basisNyy      =  106, 
    basisNz       =  107, 
    basisNxz      =  108, 
    basisNyz      =  109, 
    basisNzz      =  110, 
    kindOtiArr    =  200, 
    kindOtiNum    =  201, 
    kindReal      =  202, 
    kindScalar    =  203, 
    kindFunc      =  204, 
    feConstant    =  301, 
    feVariable    =  302, 
    elNode        =  400, 
    elLine        =  401, 
    elTriangle    =  402, 
    elQuadrangle  =  403, 
    elTetrahedra  =  404, 
    elHexahedra   =  405, 
    elkindIso     =  501, 
    elkindAff     =  502, 
    derN          =  601, 
    derNa         =  602, 
    derNaa        =  603, 
    derNb         =  604, 
    derNab        =  605, 
    derNbb        =  606, 
    derNc         =  607, 
    derNac        =  608, 
    derNbc        =  609, 
    derNcc        =  610, 
    feNatTest     =  701, 
    feNatUndef    =  702, 
    feNatDef      =  703, 
    feNatDefConst =  704, 
    feNatOperRes  =  705, 
    feNatPostIntK =  706, 
    feNatPostIntF =  707, 
    feNatBoundary =  708  

  

  #---------------------------------------------------------------------------------------------------