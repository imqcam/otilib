

# ----------------------------------------------------------------------------------------------------
# ---------------------------------------    CONSTANTS    --------------------------------------------
# ----------------------------------------------------------------------------------------------------


opNames = [ "None  ",
            "   +  ",
            "   -  ",
            "   *  ",
            "   /  ",
            "  **  ",
            "int1d ",
            "int2d ",
            "int3d ",
            "  dx  ",
            "  dy  ",
            "  dz  ",
            "  dxx ",
            "  dyy ",
            "  dzz ",
            "  dxy ",
            "  dxz ",
            "  dyz ",
            "  def "]

basisNames = ["N  ",
              "Nx ",
              "Ny ",
              "Nz ",
              "Nxx",
              "Nyy",
              "Nzz",
              "Nxy",
              "Nxz",
              "Nyz"]

kindNames = ["OTIARR",
             "OTINUM",
             "REAL  "]

elTypeNames = ["point",
               "line",
               "triangle",
               "quadrangle",
               "tetrahedra",
               "hexahedra"]

# ----------------------------------------------------------------------------------------------------





# #*****************************************************************************************************
# cpdef int3d(fefunction func1, region = -1):
#   """ 
#   PURPOSE: Integral of 3D elements

#   """

#   cdef fefunction res 
#   cdef fefunction func2 =  <fefunction> fefunction.__new__(fefunction)
#   cdef int64_t regionIdNum

#   res   = fefunction.newFromOperation(opInt3d,func1,func2)

#   type1 = type(region)

#   if type1 == str:
#     regionIdNum = res.baseSpace.mesh.nameIds[region]
#   else:
#     regionIdNum = region
#   # end if 

#   res.data = region

#   return res
# #-----------------------------------------------------------------------------------------------------

# #*****************************************************************************************************
# cpdef int2d( fefunction func1, region = -1 ):
#   """ 
#   PURPOSE: Integral of 2D elements

#   """

#   cdef fefunction res 
#   cdef fefunction func2 =  <fefunction> fefunction.__new__(fefunction)
#   cdef int64_t boundIdNum
  
#   res   = fefunction.newFromOperation(opInt2d,func1,func2)

#   type1 = type(boundaryId)
  
#   if type1 == str:
#     boundIdNum = res.baseSpace.mesh.nameIds[boundaryId]
#   else:
#     boundIdNum = boundaryId
#   # end if 

#   res.data = boundIdNum

#   return res
# #-----------------------------------------------------------------------------------------------------

# #*****************************************************************************************************
# cpdef int1d( fefunction func1, region = -1 ):
#   """ 
#   PURPOSE: Integral of 1D elements

#   """

#   cdef fefunction res 
#   cdef fefunction func2 =  <fefunction> fefunction.__new__(fefunction)
#   cdef int64_t boundIdNum
  
#   res   = fefunction.newFromOperation(opInt1d,func1,func2)

#   type1 = type(boundaryId)
  
#   if type1 == str:
#     boundIdNum = res.baseSpace.mesh.nameIds[boundaryId]
#   else:
#     boundIdNum = boundaryId
#   # end if 

#   res.data = boundIdNum

#   return res
# #-----------------------------------------------------------------------------------------------------

# #*****************************************************************************************************
# cpdef int0d( fefunction func1, region = -1 ):
#   """ 
#   PURPOSE: Integral of 0D elements

#   """

#   cdef fefunction res 
#   cdef fefunction func2 =  <fefunction> fefunction.__new__(fefunction)
#   cdef int64_t boundIdNum
  
#   res   = fefunction.newFromOperation(opInt0d,func1,func2)

#   type1 = type(boundaryId)
  
#   if type1 == str:
#     boundIdNum = res.baseSpace.mesh.nameIds[boundaryId]
#   else:
#     boundIdNum = boundaryId
#   # end if 

#   res.data = boundIdNum

#   return res
# #-----------------------------------------------------------------------------------------------------

# #*****************************************************************************************************
# cpdef on(boundaryId, fefunction func1, in2): # define Dirichlet boundary conditions.
#   """
#   PURPOSE: Define essential (Dirichlet) boundary conditions for a finite element problem.

#   INPUTS: 

#     -> func1:   Undefined variable that will be set in the boundaries

#     -> in2:   Value at the boundary. This, for now, is only defined by defined FE function class.


#   """

#   cdef fefunction res, func2
#   cdef int64_t boundIdNum 

#   type1 = type(boundaryId)
#   type2 = type(in2)

#   if type2 == fefunction:
#     func2 = in2
#   else:
#     func2 = func1.baseSpace.newFunction(in2)
#   # end if 

#   res   = fefunction.newFromOperation(opOn,func2,func1)
    
#   if type1 == str:
#     boundIdNum = res.baseSpace.mesh.nameIds[boundaryId]
#   else:
#     boundIdNum = boundaryId
#   # end if 

#   res.data = boundIdNum

#   return res

# #-----------------------------------------------------------------------------------------------------


# #*****************************************************************************************************
# cpdef dx(fefunction func1):
#   """
#   PURPOSE: Define derivative of a Finite Element function.

#   INPUTS: 

#     -> func1:   Finite element function that will be derived.

#   """ 

#   cdef fefunction res 

#   res   = fefunction.newFromOperation(opDx,func1,None)

#   return res
# #-----------------------------------------------------------------------------------------------------

# #*****************************************************************************************************
# cpdef dy(fefunction func1):
#   """
#   PURPOSE: Define derivative of a Finite Element function.

#   INPUTS: 

#     -> func1:   Finite element function that will be derived.

#   """ 

#   cdef fefunction res 

#   res   = fefunction.newFromOperation(opDy,func1,None)

#   return res
# #-----------------------------------------------------------------------------------------------------

# #*****************************************************************************************************
# cpdef dz(fefunction func1):
#   """
#   PURPOSE: Define derivative of a Finite Element function.

#   INPUTS: 

#     -> func1:   Finite element function that will be derived.

#   """ 

#   cdef fefunction res 

#   res   = fefunction.newFromOperation(opDz,func1,None)

#   return res
# #-----------------------------------------------------------------------------------------------------











#*****************************************************************************************************
cdef object enum2string(int64_t enumId):
  """
  PURPOSE:    Returns a string with the name of the corresponding enum value given.

  """
  #***************************************************************************************************

  if   enumId == opAdd        :
    return "opAdd        "
  elif enumId == opSub        :
    return "opSub        "
  elif enumId == opMul        :
    return "opMul        "
  elif enumId == opTruediv    :
    return "opTruediv    "
  elif enumId == opPowr       :
    return "opPowr       "
  elif enumId == opInt1d      :
    return "opInt1d      "
  elif enumId == opInt2d      :
    return "opInt2d      "
  elif enumId == opInt3d      :
    return "opInt3d      "
  elif enumId == opDx         :
    return "opDx         "
  elif enumId == opDxx        :
    return "opDxx        "
  elif enumId == opDy         :
    return "opDy         "
  elif enumId == opDxy        :
    return "opDxy        "
  elif enumId == opDyy        :
    return "opDyy        "
  elif enumId == opDz         :
    return "opDz         "
  elif enumId == opDxz        :
    return "opDxz        "
  elif enumId == opDyz        :
    return "opDyz        "
  elif enumId == opDzz        :
    return "opDzz        "
  elif enumId == opDef        :
    return "opDef        "
  elif enumId == opOn         :
    return "opOn         "
  elif enumId == opNeg        :
    return "opNeg        "
  elif enumId == subOpDefBasis:
    return "subOpDefBasis"
  elif enumId == subOpDefKnown:
    return "subOpDefKnown"
  elif enumId == subOpInt     :
    return "subOpInt     "
  elif enumId == subOpNeg     :
    return "subOpNeg     "
  elif enumId == subOpMulRes  :
    return "subOpMulRes  "
  elif enumId == subOpMulKnown:
    return "subOpMulKnown"
  elif enumId == subOpOn      :
    return "subOpOn      "
  elif enumId == basisN       :
    return "basisN       "
  elif enumId == basisNx      :
    return "basisNx      "
  elif enumId == basisNxx     :
    return "basisNxx     "
  elif enumId == basisNy      :
    return "basisNy      "
  elif enumId == basisNxy     :
    return "basisNxy     "
  elif enumId == basisNyy     :
    return "basisNyy     "
  elif enumId == basisNz      :
    return "basisNz      "
  elif enumId == basisNxz     :
    return "basisNxz     "
  elif enumId == basisNyz     :
    return "basisNyz     "
  elif enumId == basisNzz     :
    return "basisNzz     "
  elif enumId == kindOtiArr   :
    return "kindOtiArr   "
  elif enumId == kindOtiNum   :
    return "kindOtiNum   "
  elif enumId == kindReal     :
    return "kindReal     "
  elif enumId == kindScalar   :
    return "kindScalar   "
  elif enumId == kindFunc     :
    return "kindFunc     "
  elif enumId == feConstant     :
    return "feConstant   "
  elif enumId == feVariable     :
    return "feVariable   "
  elif enumId == elNode       :
    return "elNode       "
  elif enumId == elLine       :
    return "elLine       "
  elif enumId == elTriangle   :
    return "elTriangle   "
  elif enumId == elQuadrangle :
    return "elQuadrangle "
  elif enumId == elTetrahedra :
    return "elTetrahedra "
  elif enumId == elHexahedra  :
    return "elHexahedra  "
  elif enumId == elkindIso    :
    return "elkindIso    "
  elif enumId == elkindAff    :
    return "elkindAff    "
  elif enumId == derN         :
    return "derN         "
  elif enumId == derNa        :
    return "derNa        "
  elif enumId == derNaa       :
    return "derNaa       "
  elif enumId == derNb        :
    return "derNb        "
  elif enumId == derNab       :
    return "derNab       "
  elif enumId == derNbb       :
    return "derNbb       "
  elif enumId == derNc        :
    return "derNc        "
  elif enumId == derNac       :
    return "derNac       "
  elif enumId == derNbc       :
    return "derNbc       "
  elif enumId == derNcc       :
    return "derNcc       "
  elif enumId == feNatTest    :
    return "feNatTest    "
  elif enumId == feNatUndef   :
    return "feNatUndef   "
  elif enumId == feNatDef     :
    return "feNatDef     "
  elif enumId == feNatDefConst:
    return "feNatDefConst"
  elif enumId == feNatOperRes :
    return "feNatOperRes "
  elif enumId == feNatPostIntK:
    return "feNatPostIntK"
  elif enumId == feNatPostIntF:
    return "feNatPostIntF"
  elif enumId == feNatBoundary:
    return "feNatBoundary"

#-----------------------------------------------------------------------------------------------------






# #*****************************************************************************************************
# def fem_integrationPointsWeights(uint64_t order, int64_t elementType):
#   """
#   PURPOSE:     Test to check if the integration points and weights are good.
#   """
#   cdef darray_t coords, weights
#   cdef np.ndarray np_coords, np_weights
#   c_fem_integrationPoints(order, elementType, &coords, &weights)
#   np_coords = darray_2_numpyArray(&coords )
#   np_weights = darray_2_numpyArray(&weights )


#   # Free arrays
#   c_darray_free(&coords)
#   c_darray_free(&weights)

#   return (np_coords, np_weights)
# #-----------------------------




