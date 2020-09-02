# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::     CLASS  elm_help    ::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
cdef class elm_help:
  
  #---------------------------------------------------------------------------------------------------
  #------------------------------------   DEFINITION OF ATTRIBUTES   ---------------------------------
  #---------------------------------------------------------------------------------------------------

  cdef public object   special      # Marker to determine special behavior of the system.

  cdef public uint8_t  ndim         # Number of dimensions of the element.
  cdef public uint8_t  nbasis       # Element type order.
  cdef public uint64_t ndim_an      # Number of dimensions of the analysis.
  cdef public uint64_t nip          # Number of integration points
      
  cdef public feonumm2n8   xi           # Xi natural coordinate. (integration points)
  cdef public feonumm2n8   eta          # Eta natural coordinate. (integration points)
  cdef public feonumm2n8   zeta         # Zeta natural coordinate. (integration points)

  cdef public feonumm2n8   w            # Integration weights
      
  cdef public feomatm2n8  N             # Real basis.
  cdef public feomatm2n8  Nxi           # dN/d xi    basis.
  cdef public feomatm2n8  Neta          # dN/d eta   basis.
  cdef public feomatm2n8  Nzeta         # dN/d zeta  basis.
      
  cdef public feomatm2n8  Nx            # dN/dx basis.
  cdef public feomatm2n8  Ny            # dN/dy basis.
  cdef public feomatm2n8  Nz            # dN/dz basis.
      
  cdef public omatm2n8    x             # Elemental xcoord basis.
  cdef public omatm2n8    y             # Elemental ycoord basis.
  cdef public omatm2n8    z             # Elemental zcoord basis.
      
  cdef public feomatm2n8    J           # Elemental Jacobian.
  cdef public feonumm2n8  detJ          # Determinant of Jacobian.
  cdef public feonumm2n8  dV            # integration weight dOmega.
  
  cdef public feomatm2n8 Jinv           # Jacobian inverse.      

  cdef public uint8_t compute_Jinv  # Flag to compute Jacobian

  
  #---------------------------------------------------------------------------------------------------
  
  cpdef is_allocated( self )
  cpdef allocate(self, uint8_t ndim, uint64_t nbasis, uint64_t nip )
  cpdef allocate_spatial( self, uint64_t ndim_an, uint8_t compute_Jinv = * )
  cpdef reset( self )
  cpdef end( self )

# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# :::::::::::::::::::::::::::::::::::: END OF CLASS elm_help :::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::