
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::     CLASS  SPR_OTINUM   :::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
cdef class sotinum:
  
  #---------------------------------------------------------------------------------------------------
  #------------------------------------   DEFINITION OF ATTRIBUTES   ---------------------------------
  #---------------------------------------------------------------------------------------------------
  
  cdef sotinum_t num
  cdef uint8_t FLAGS
  #---------------------------------------------------------------------------------------------------  
  
  @staticmethod
  cdef sotinum create(sotinum_t* num, uint8_t FLAGS = *)
  @staticmethod
  cdef sotinum init()

  cpdef coeff_t get_deriv( self, object humdir)
  cpdef coeff_t get_im( self, object humdir)
  
  # cpdef sin(self)
  # cpdef cos(self)
  # cpdef tan(self)
  # cpdef arctan(self)
  # cpdef arccos(self)
  # cpdef arcsin(self)
  # cpdef sinh(self)
  # cpdef arcsinh(self)
  # cpdef cosh(self)
  # cpdef arccosh(self)
  # cpdef tanh(self)
  # cpdef arctanh(self)
  # cpdef log10(self)
  # cpdef log(self)
  # cpdef exp(self)
  # cpdef sqrt(self)
  # cpdef cbrt(self)
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# :::::::::::::::::::::::::::::::::: END OF CLASS SPR_OTINUM :::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::