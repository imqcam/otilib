
#*****************************************************************************************************
cpdef line3_iso(ord_t derOrder, np.ndarray coords):
  """
  Definition of basis functions for the P2 Line element.

  NODE NUMBERING:
                           (0)* *(2)* *(1)

  INPUTS:
    -> derOrder: Order of derivative sought for basis functions.
    -> coords:   Array with the coordinates to evaluate the basis functions.
    -> kwargs:   Dictionary with other data required to be evaluated.

  OUTPUTS: 
    -> [N0,N1,...]: Evaluated basis functions.
  """   

  cdef np.ndarray coords_obj = coords.astype(object)
  cdef np.ndarray xi = coords_obj + se( 1, order= derOrder)

  N0 = -0.5 * xi * ( 1 - xi )
  N1 =  0.5 * xi * ( 1 + xi ) 
  N2 =  1 - xi**2

  return [ N0, N1, N2 ]

#-----------------------------------------------------------------------------------------------------

