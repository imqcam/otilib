
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::     CLASS  OTINUM    ::::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
cdef class dmat:
  
  #---------------------------------------------------------------------------------------------------
  #-------------------------------------   ATTRIBUTES   ----------------------------------------------
  #---------------------------------------------------------------------------------------------------
  
  cdef darr_t  arr            # Stores the matrix in a c-level fashion.
  cdef uint8_t FLAGS

  #---------------------------------------------------------------------------------------------------


  @staticmethod
  cdef dmat create(darr_t* num, uint8_t FLAGS = *)
  cpdef copy(self)
  cpdef np.ndarray[double, ndim=2] to_numpy(self)
  
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# :::::::::::::::::::::::::::::::::::: END OF CLASS OTINUM :::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::