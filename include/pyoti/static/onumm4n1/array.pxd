

# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::     CLASS  MATSO   ::::::::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
cdef class omatm4n1: 
  
  #---------------------------------------------------------------------------------------------------
  #------------------------------------   DEFINITION OF ATTRIBUTES   ---------------------------------
  #---------------------------------------------------------------------------------------------------
  
  cdef oarrm4n1_t arr
  cdef uint8_t FLAGS
  #---------------------------------------------------------------------------------------------------  

  @staticmethod
  cdef omatm4n1 create(oarrm4n1_t* num, uint8_t FLAGS = *)
  
  cpdef truncate(      self, object humdir)
  cpdef extract_im(    self, object humdir)
  cpdef extract_deriv( self, object humdir)
  cpdef get_im(        self, object humdir)
  cpdef get_deriv(     self, object humdir)
  cpdef set(           self, object rhs   )
  cpdef get_order_im(  self, ord_t order  )

  cdef __setitem__r(self, object val, coeff_t value)
  cdef __setitem__R(self, object val, dmat    value)
  cdef __setitem__o(self, object val, onumm4n1 value)
  cdef __setitem__O(self, object val, omatm4n1   value)
    
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# :::::::::::::::::::::::::::::::::: END OF CLASS MATSO ::::::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

