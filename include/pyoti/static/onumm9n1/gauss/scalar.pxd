

# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::     CLASS  SOTIFE   :::::::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
cdef class feonumm9n1:
  
  #---------------------------------------------------------------------------------------------------
  #------------------------------------   DEFINITION OF ATTRIBUTES   ---------------------------------
  #---------------------------------------------------------------------------------------------------
  
  cdef feonumm9n1_t num
  cdef uint8_t FLAGS
  #---------------------------------------------------------------------------------------------------  
  
  @staticmethod
  cdef feonumm9n1 create(feonumm9n1_t* num, uint8_t FLAGS = *)
  
  cpdef truncate(      self, object humdir)
  cpdef extract_im(    self, object humdir)
  cpdef extract_deriv( self, object humdir)
  cpdef get_im(        self, object humdir)
  cpdef get_deriv(     self, object humdir)
  cpdef set(           self, object rhs   )
  cpdef get_order_im(  self, ord_t order  )

# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# :::::::::::::::::::::::::::::::::: END OF CLASS SOTIFE :::::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::