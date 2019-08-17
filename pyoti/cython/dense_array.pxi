





























# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::     CLASS  OMAT    ::::::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
cdef class omat:
  #---------------------------------------------------------------------------------------------------
  #------------------------------------   DEFINITION OF ATTRIBUTES   ---------------------------------
  #---------------------------------------------------------------------------------------------------
  
  #                                --->      Look in dense.pxd    <---

  #---------------------------------------------------------------------------------------------------  


  #***************************************************************************************************
  
  def __init__(self, nrows, ncols, uint8_t FLAGS = 1): 
    """
    PURPOSE:      Python level constructor of the omat class.

    DESCRIPTION:  Creates a new matrix.
                 
    """
    #*************************************************************************************************

    
    self.FLAGS = FLAGS

    self.arr = oarr_createEmpty( nrows, ncols )

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  def __dealloc__(self): 
    """
    PURPOSE:      Destructor of the class.                   
    """
    #*************************************************************************************************
    
    if self.FLAGS & 1: # If memory is owned.
      
      oarr_free(&self.arr)

    #end if 
    
  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  @property
  def shape(self): 
    """
    PURPOSE:      Return the shape of the stored matrix. 
    """
    #*************************************************************************************************

    return (self.arr.nrows,self.arr.ncols)

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  @property
  def  size(self): 
    """
    PURPOSE:      Return the size of array.                
    """
    #*************************************************************************************************

    return self.arr.size

  #---------------------------------------------------------------------------------------------------
  
  #***************************************************************************************************
  @staticmethod
  cdef omat create(oarr_t* arr, uint8_t FLAGS = 1):
    """
    PURPOSE:      C-level constructor of the class. Use this when creating objects within 
                  Cython
                  
    """
    #*************************************************************************************************

    # create new empty object:
    cdef omat mat = <omat> omat.__new__(omat)

    mat.arr = arr[0]
    mat.FLAGS = FLAGS
    
    return mat

  #--------------------------------------------------------------------------------------------------- 


  #*************************************************************************************************** 
  def __repr__(self):
    """
    PURPOSE:      A short representation of the object.
  
    """
    #*************************************************************************************************
    
    # head =  "omat("
    # body =  "size: "+str(self.arr.size)  +  ", "
    # body += "nrows: "+str(self.arr.nrows)+  ", "
    # body += 'ncols: '+str(self.arr.ncols)
    # tail =  ")"
    # return (head + body + tail)

    cdef np.ndarray[double, ndim=2] A = self.to_numpy()

    return repr(A)

  #--------------------------------------------------------------------------------------------------- 

  #***************************************************************************************************
  def __str__(self):
    """
    PURPOSE:      Create a string representation of the object.    
    """
    #*************************************************************************************************
    

    cdef np.ndarray[double, ndim=2] A = self.to_numpy()

    return str(A)

  #---------------------------------------------------------------------------------------------------  



  #***************************************************************************************************
  def __getitem__(self, val):
    """
    PURPOSE: Get the value of an element of the item.
    """
    #*************************************************************************************************
    
    if (isinstance(val, int)):
    
      return oarr_get_item_i( &self.arr, val)
    
    else:

      return oarr_get_item_ij( &self.arr, val[0], val[1])

    # end if

  #---------------------------------------------------------------------------------------------------  


  #***************************************************************************************************
  def __setitem__(self, val, coeff_t value):
    """
    PURPOSE: Set an element of the item to the specified value.
    """
    #*************************************************************************************************
    
    
    if (isinstance(val, int)):

      oarr_set_item_i( value, val, &self.arr)

    else:

      oarr_set_item_ij( value , val[0], val[1], &self.arr)

    # end if


  #---------------------------------------------------------------------------------------------------  




  #***************************************************************************************************
  def __neg__(self):
    """
    PURPOSE: Negation overload.
    """
    #*************************************************************************************************
    
    cdef oarr_t newmat = oarr_neg(&self.arr)

    return omat.create(&newmat)
  #---------------------------------------------------------------------------------------------------




  #***************************************************************************************************
  def __add__(self, other):
    """
    PURPOSE: Addition overload.
    """
    #*************************************************************************************************
    
    cdef oarr_t res 
    cdef omat lhs,rhs
    
    tlhs = type(self)
    trhs = type(other)
    
    if (tlhs == trhs):

      lhs = self
      rhs = other

      res = oarr_sum_RR(&lhs.arr,&rhs.arr)
    
    elif (tlhs in number_types):
      
      rhs = other
      res = oarr_sum_rR(self, &rhs.arr)

    elif (trhs in number_types):
        
      lhs = self
      res = oarr_sum_rR(other, &lhs.arr)

    # end if 
      
    return omat.create(&res)

  #---------------------------------------------------------------------------------------------------  


  #***************************************************************************************************
  def __iadd__(self, other):
    """
    PURPOSE: Inplace addition overload.
    """
    #*************************************************************************************************

    return self + other

  #---------------------------------------------------------------------------------------------------  


  #***************************************************************************************************
  def __sub__(self, other):
    """
    PURPOSE: Subtraction overload.
    """
  #************************************************************************
    
    cdef oarr_t res 
    cdef omat lhs,rhs
    
    tlhs = type(self)
    trhs = type(other)
    
    if (tlhs == trhs):

      lhs = self
      rhs = other

      res = oarr_sub_RR(&lhs.arr,&rhs.arr)
    
    elif (tlhs in number_types):
      
      rhs = other
      res = oarr_sub_rR(self, &rhs.arr)

    elif (trhs in number_types):
        
      lhs = self
      res = oarr_sub_Rr( &lhs.arr, other)

    # end if 
      
    return omat.create(&res)

  #---------------------------------------------------------------------------------------------------  


  #***************************************************************************************************
  def __isub__(self, other_in):
    """
    PURPOSE: Inplace subtraction overload.
    """
    #*************************************************************************************************
  
    return self - other_in

  #---------------------------------------------------------------------------------------------------  


  #***************************************************************************************************
  def __mul__(self, other):
    """ 
    PURPOSE: Multiplication overload.
    """
    #*************************************************************************************************
    
    cdef oarr_t res 
    cdef omat lhs,rhs
    
    tlhs = type(self)
    trhs = type(other)
    
    if (tlhs == trhs):

      lhs = self
      rhs = other

      res = oarr_mul_RR(&lhs.arr,&rhs.arr)
    
    elif (tlhs in number_types):
      
      rhs = other
      res = oarr_mul_rR(self, &rhs.arr)

    elif (trhs in number_types):
        
      lhs = self
      res = oarr_mul_rR(other, &lhs.arr)

    # end if 
      
    return omat.create(&res)
    

  #---------------------------------------------------------------------------------------------------  


  #***************************************************************************************************
  def __imul__(self, other_in):
    """
    PURPOSE: Inplace multiplication overload.
    """
    #*************************************************************************************************

    return self * other_in

  #---------------------------------------------------------------------------------------------------  


  #***************************************************************************************************
  def __truediv__(self, other):
    """
    PURPOSE: Division overload.
    """
    #*************************************************************************************************
    
    cdef oarr_t res 
    cdef omat lhs,rhs
    
    tlhs = type(self)
    trhs = type(other)
    
    if (tlhs == trhs):

      lhs = self
      rhs = other

      res = oarr_div_RR(&lhs.arr,&rhs.arr)
    
    elif (tlhs in number_types):
      
      rhs = other
      res = oarr_div_rR(self, &rhs.arr)

    elif (trhs in number_types):
        
      lhs = self
      res = oarr_div_Rr( &lhs.arr, other)

    # end if 
      
    return omat.create(&res)


  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  cpdef np.ndarray[double, ndim=2] to_numpy(self):
    """
    PURPOSE: Interface to numpy representation.
    """
    #*************************************************************************************************

    return c_ptr_to_np_2oarray_double(self.arr.p_data, self.arr.nrows, self.arr.ncols)

  #---------------------------------------------------------------------------------------------------    

  #***************************************************************************************************
  def __pow__(self, n,z):
    """
    PURPOSE: Power function.
    """
    #*************************************************************************************************

    return power(self,n)

  #---------------------------------------------------------------------------------------------------  


  #***************************************************************************************************
  cpdef copy(self):
    """
    PURPOSE: Copy the elements to new memory spaces.
    """
    #*************************************************************************************************
    
    cdef oarr_t res = oarr_copy(&self.arr)    
      
    return omat.create(&res)

  #---------------------------------------------------------------------------------------------------  



# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# :::::::::::::::::::::::::::::::::::: END OF CLASS omat :::::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::







#*****************************************************************************************************
cpdef omat dot(omat A, omat B):
  
  cdef oarr_t res = oarr_matmul( &A.arr, &B.arr )

  # TODO: Add check in python code.

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------


#*****************************************************************************************************
cpdef omat invert(omat A):
  
  cdef oarr_t res = oarr_invert( &A.arr )

  # TODO: Add check in python code.

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------



#*****************************************************************************************************
cpdef omat transpose(omat A):
  
  cdef oarr_t res = oarr_transpose( &A.arr )

  # TODO: Add check in python code.

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cpdef coeff_t det(omat A):
  
  return oarr_det( &A.arr ) 

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cpdef omat eye(uint64_t size):
  
  cdef oarr_t res = oarr_zeros(size,size)
  cdef uint64_t i;

  for i in range(size):

    oarr_set_item_ij( 1.0, i, i,&res)

  # end for 


  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cpdef omat zeros(uint64_t nrows,uint64_t ncols):
  
  cdef oarr_t res = oarr_zeros(nrows,ncols)

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cpdef omat ones(uint64_t nrows,uint64_t ncols):
  
  cdef oarr_t res = oarr_ones(nrows,ncols)

  return omat.create(&res)
  
#-----------------------------------------------------------------------------------------------------












#*****************************************************************************************************
cpdef omat atanh(omat A):
  
  cdef oarr_t res = oarr_atanh(&A.arr)

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------



#*****************************************************************************************************
cpdef omat asinh(omat A):
  
  cdef oarr_t res = oarr_asinh(&A.arr)

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------



#*****************************************************************************************************
cpdef omat acosh(omat A):
  
  cdef oarr_t res = oarr_acosh(&A.arr)

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------



#*****************************************************************************************************
cpdef omat tanh(omat A):
  
  cdef oarr_t res = oarr_tanh(&A.arr)

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------



#*****************************************************************************************************
cpdef omat sqrt(omat A):
  
  cdef oarr_t res = oarr_sqrt(&A.arr)

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------



#*****************************************************************************************************
cpdef omat cosh(omat A):
  
  cdef oarr_t res = oarr_cosh(&A.arr)

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------



#*****************************************************************************************************
cpdef omat sinh(omat A):
  
  cdef oarr_t res = oarr_sinh(&A.arr)

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------



#*****************************************************************************************************
cpdef omat asin(omat A):
  
  cdef oarr_t res = oarr_asin(&A.arr)

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------



#*****************************************************************************************************
cpdef omat acos(omat A):
  
  cdef oarr_t res = oarr_acos(&A.arr)

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------



#*****************************************************************************************************
cpdef omat atan(omat A):
  
  cdef oarr_t res = oarr_atan(&A.arr)

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------



#*****************************************************************************************************
cpdef omat tan(omat A):
  
  cdef oarr_t res = oarr_tan(&A.arr)

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cpdef omat cos(omat A):
  
  cdef oarr_t res = oarr_cos(&A.arr)

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cpdef omat sin(omat A):
  
  cdef oarr_t res = oarr_sin(&A.arr )

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cpdef omat log10(omat A):
  
  cdef oarr_t res = oarr_log10(&A.arr)

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cpdef omat log(omat A):
  
  cdef oarr_t res = oarr_log(&A.arr)

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cpdef omat exp(omat A):
  
  cdef oarr_t res = oarr_exp(&A.arr)

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cpdef omat logb(omat A,coeff_t b):
  
  cdef oarr_t res = oarr_logb(&A.arr,b)

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cpdef omat power(omat A,coeff_t b):
  
  cdef oarr_t res = oarr_pow(&A.arr,b)

  return omat.create(&res)

#-----------------------------------------------------------------------------------------------------