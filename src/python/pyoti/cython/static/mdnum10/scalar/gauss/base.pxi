

# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::     CLASS  mdnumfe10    ::::::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
cdef class mdnumfe10:
  #---------------------------------------------------------------------------------------------------
  #------------------------------------   DEFINITION OF ATTRIBUTES   ---------------------------------
  #---------------------------------------------------------------------------------------------------
  
  #                                --->      Look in dense.pxd    <---

  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  
  def __init__(self, real, uint64_t nip): 
    """
    PURPOSE:      Python level constructor of the mdnumfe10 class.

    DESCRIPTION:  Creates a new matrix, reserving memory Assumes coefficient values to be all zeroes.
                 
    """
    #*************************************************************************************************
    
    
    cdef uint64_t i,j
    cdef ord_t ordi

    #
    self.num = femdnum10_zeros(nip)
    
    # Set all elements in the number as real.
    femdnum10_set_r( real, &self.num)

    self.FLAGS = 1

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  def __dealloc__(self): 
    """
    PURPOSE:      Destructor of the class.                   
    """
    #*************************************************************************************************
    
    if( self.FLAGS == 1):

      femdnum10_free(&self.num)

    # end if 
    
  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  @property
  def nip(self): 
    """
    PURPOSE:     Return the number of integration points. 
    """
    #*************************************************************************************************

    return self.num.nip

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  @property
  def order(self): 
    """
    PURPOSE:      Return the shape of the stored matrix. 
    """
    #*************************************************************************************************

    return femdnum10_get_order(&self.num)

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  @property
  def real(self):
    """
    PURPOSE:      Get a real Gauss scalar with all coefficients in the real direction.

    """
    #*************************************************************************************************

    cdef r.dnumfe tmp
    cdef uint64_t i

    tmp = r.zero(nip=self.nip)

    for i in range(self.num.nip):
      tmp[i] = self.num.p_data[i].r
    # end for 

    return tmp

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  @property
  def real_numpy(self):
    """
    PURPOSE:      Get a numpy array with all coefficients in the real direction.

    """
    #*************************************************************************************************

    cdef np.ndarray[coeff_t, ndim=1] tmp
    cdef uint64_t i

    tmp = np.empty( self.nip , dtype = np.float64)

    for i in range(self.num.nip):

      tmp[i] = self.num.p_data[i].re

    # end for 

    return tmp

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  @staticmethod
  cdef mdnumfe10 create(femdnum10_t* num, uint8_t FLAGS = 1):
    """
    PURPOSE:      C-level constructor of the class. Use this when creating objects within 
                  Cython
                  
    """
    #*************************************************************************************************

    # create new empty object:
    cdef mdnumfe10 res = <mdnumfe10> mdnumfe10.__new__(mdnumfe10)

    res.num = num[0]
    res.FLAGS = FLAGS

    return res

  #--------------------------------------------------------------------------------------------------- 

  #*************************************************************************************************** 
  def short_repr(self):
    """
    PURPOSE:      A short representation of the object.
  
    """
    #*************************************************************************************************

    

    out =  "mdnumfe10< "
    out += "nip: "+str(self.nip)+ ", "
    out += "re:\n"
    # first print the real part:
    out += repr( self.real )

    out += ">"

    return out

  #--------------------------------------------------------------------------------------------------- 

  #*************************************************************************************************** 
  def long_repr(self):
    """
    PURPOSE:      A short representation of the object.
  
    """
    #*************************************************************************************************

    

    cdef np.ndarray[uint64_t, ndim=1] tmp 

    out =  "mdnumfe10< "
    out += "shape: "+str(self.shape)+ ", "
    out += "re:\n"
    # first print the real part:
    out += repr( self.real )

    out += ">"

    return out

  #---------------------------------------------------------------------------------------------------

  #*************************************************************************************************** 
  def list_repr(self):
    """
    PURPOSE:      A short representation of the object.
  
    """
    #*************************************************************************************************

    

    cdef uint64_t i
    cdef mdnum10 tmp

    out =  "mdnumfe10< "
    out += "nip: "+str(self.nip)+ ", \n"

    for i in range(self.nip):
      
      out += "({0:d}) ".format(i)
      tmp = self[i]
      out += tmp.__str__()
      out += "\n"
      
    # end for 

    out += ">"

    return out

  #---------------------------------------------------------------------------------------------------

  #*************************************************************************************************** 
  def __repr__(self):
    """
    PURPOSE:      Representation of the object.
  
    """
    #*************************************************************************************************

    
  
    cdef mdnum10_t d_mdnum10
    cdef mdnum10   mdnum10

    out  = self.list_repr()

    return out

  #--------------------------------------------------------------------------------------------------- 
  

  #***************************************************************************************************
  def __str__(self):
    """
    PURPOSE:      Create a string representation of the object.    
    """
    #*************************************************************************************************
    
  
    cdef mdnum10_t d_mdnum10
    cdef mdnum10   mdnum10

    out  = self.list_repr()

    return out

  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  def  __getitem__(self, val):
    """
    PURPOSE: Get the value of an element of the item.
    """
    #*************************************************************************************************
    
    

    cdef mdnum10_t res

    if (isinstance(val, int)):
      
      res = femdnum10_get_item_k( &self.num, val)
    
    else:
      
      return NotImplemented

    # end if

    return mdnum10.create(&res, FLAGS=0)

  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  def __setitem__(self, val, value):
    """
    PURPOSE: Set an element of the item to the specified value.
    """
    #*************************************************************************************************
        
    

    cdef mdnum10 valt
    
    tval = type(value)

    if ( isinstance( val, int ) ):
      
      if tval == mdnum10:

        valt = value
        femdnum10_set_item_k_o( &valt.num, val, &self.num)

      else:

        femdnum10_set_item_k_r(     value, val, &self.num)

      # end if 
    
    else:

      raise IndexError("Error: Index must be integer.")

    # end if

  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  def copy(self):
    """
    PURPOSE: Copy to a new object.
    """
    #*************************************************************************************************
    
    
    
    cdef femdnum10_t res = femdnum10_copy(&self.num)

    return mdnumfe10.create(&res)
  #---------------------------------------------------------------------------------------------------
  
  #***************************************************************************************************
  def __neg__(self):
    """
    PURPOSE: Negation overload.
    """
    #*************************************************************************************************
    
    
    
    cdef femdnum10_t res = femdnum10_neg(&self.num)

    return mdnumfe10.create(&res)
  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  def __add__(self, other):
    """
    PURPOSE: Addition overload.
    """
    #*************************************************************************************************
    
    
    
    cdef femdnum10_t res 
    cdef mdnumfe10 lhs,rhs
    cdef dmat dlhs,drhs
    cdef mdnum10 olhs,orhs
    
    tlhs = type(self)
    trhs = type(other)
    
    if (tlhs == trhs):

      lhs = self
      rhs = other

      res = femdnum10_sum_ff(&lhs.num,&rhs.num)

    elif ( tlhs  == mdnum10 ):

      olhs = self
      rhs = other

      res = femdnum10_sum_of(&olhs.num,&rhs.num)

    elif ( trhs  == mdnum10 ):

      lhs = self
      orhs = other

      res = femdnum10_sum_of(&orhs.num,&lhs.num)
    
    elif (tlhs in number_types):
      
      rhs = other
      res = femdnum10_sum_rf(self, &rhs.num)

    elif (trhs in number_types):
        
      lhs = self
      res = femdnum10_sum_rf(other, &lhs.num)

    # elif ( tlhs  == mdmat10 ):

    #   dlhs = self
    #   rhs = other

    #   res = femdnum10_sum_RO(&dlhs.num,&rhs.num)

    # elif ( trhs  == mdmat10 ):

    #   lhs = self
    #   drhs = other

    #   res = femdnum10_sum_RO(&drhs.num,&lhs.num)

    # elif ( tlhs  == dmat ):

    #   dlhs = self
    #   rhs = other

    #   res = femdnum10_sum_RO(&dlhs.num,&rhs.num)

    # elif ( trhs  == dmat ):

    #   lhs = self
    #   drhs = other

    #   res = femdnum10_sum_RO(&drhs.num,&lhs.num)

    else:

      return NotImplemented

    # end if 
      
    return mdnumfe10.create(&res)

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
    
    
    
    cdef femdnum10_t res 
    cdef mdnumfe10   lhs, rhs
    cdef dmat    dlhs,drhs
    cdef mdnum10 olhs,orhs
    
    tlhs = type(self)
    trhs = type(other)
    
    if (tlhs == trhs):

      lhs = self
      rhs = other

      res = femdnum10_sub_ff(&lhs.num,&rhs.num)

    elif ( tlhs  == mdnum10 ):

      olhs = self
      rhs = other

      res = femdnum10_sub_of(&olhs.num,&rhs.num)

    elif ( trhs  == mdnum10 ):

      lhs = self
      orhs = other

      res = femdnum10_sub_fo(&lhs.num, &orhs.num)
    
    elif (tlhs in number_types):
      
      rhs = other
      res = femdnum10_sub_rf(self, &rhs.num)

    elif (trhs in number_types):
        
      lhs = self
      res = femdnum10_sub_fr(&lhs.num, other)

    # elif ( tlhs  == dmat ):

    #   dlhs = self
    #   rhs = other

    #   res = femdnum10_sub_RO(&dlhs.num,&rhs.num)

    # elif ( trhs  == dmat ):

    #   lhs = self
    #   drhs = other

    #   res = femdnum10_sub_OR(&lhs.num, &drhs.num)

    else:

      return NotImplemented      

    # end if 
      
    return mdnumfe10.create(&res)

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
    
    
    
    cdef femdnum10_t res 
    cdef mdnumfe10 lhs,rhs
    cdef dmat dlhs,drhs
    cdef mdnum10 olhs,orhs
    
    tlhs = type(self)
    trhs = type(other)
    
    if (tlhs == trhs):

      lhs = self
      rhs = other

      res = femdnum10_mul_ff(&lhs.num,&rhs.num)

    elif ( tlhs  == mdnum10 ):

      olhs = self
      rhs = other

      res = femdnum10_mul_of(&olhs.num,&rhs.num)

    elif ( trhs  == mdnum10 ):

      lhs = self
      orhs = other

      res = femdnum10_mul_of(&orhs.num,&lhs.num)
    
    elif (tlhs in number_types):
      
      rhs = other
      res = femdnum10_mul_rf(self, &rhs.num)

    elif (trhs in number_types):
        
      lhs = self
      res = femdnum10_mul_rf(other, &lhs.num)

    # elif ( tlhs  == dmat ):

    #   dlhs = self
    #   rhs = other

    #   res = femdnum10_mul_RO(&dlhs.num,&rhs.num)

    # elif ( trhs  == dmat ):

    #   lhs = self
    #   drhs = other

    #   res = femdnum10_mul_RO(&drhs.num,&lhs.num)

    else:

      return NotImplemented      

    # end if 
      
    return mdnumfe10.create(&res)

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
    
    
    
    cdef femdnum10_t res 
    cdef mdnumfe10 lhs,rhs
    cdef dmat dlhs,drhs
    cdef mdnum10 olhs,orhs
    
    tlhs = type(self)
    trhs = type(other)
    
    if (tlhs == trhs):

      lhs = self
      rhs = other

      res = femdnum10_div_ff(&lhs.num,&rhs.num)

    elif ( tlhs  == mdnum10 ):

      olhs = self
      rhs = other

      res = femdnum10_div_of(&olhs.num,&rhs.num)

    elif ( trhs  == mdnum10 ):

      lhs = self
      orhs = other

      res = femdnum10_div_fo(&lhs.num, &orhs.num)
    
    elif (tlhs in number_types):
      
      rhs = other
      res = femdnum10_div_rf(self, &rhs.num)

    elif (trhs in number_types):
        
      lhs = self
      res = femdnum10_div_fr(&lhs.num, other)

    # elif ( tlhs  == dmat ):

    #   dlhs = self
    #   rhs = other

    #   res = femdnum10_div_RO(&dlhs.num,&rhs.num)

    # elif ( trhs  == dmat ):

    #   lhs = self
    #   drhs = other

    #   res = femdnum10_div_OR(&lhs.num, &drhs.num)

    else:

      return NotImplemented

    # end if 
      
    return mdnumfe10.create(&res)

  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  def __pow__(self, n,z):
    """
    PURPOSE:      Power function overload

    res = self ** n

    """
    #*************************************************************************************************
    
    

    cdef femdnum10_t res 
    cdef mdnumfe10 S = self

    res = femdnum10_pow( &S.num, n)
    
    return mdnumfe10.create(&res)

  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  cpdef set(self, object rhs):
    """
    PURPOSE:  Sets from another value.
    """
    #*************************************************************************************************
    

    cdef mdnumfe10  frhs
    cdef mdnum10 orhs
    cdef coeff_t rrhs
    trhs = type(rhs)

    if   trhs is mdnum10:

      orhs = rhs
      femdnum10_set_o( &orhs.num, &self.num)

    elif trhs is mdnumfe10:

      frhs = rhs
      femdnum10_set_f( &frhs.num, &self.num)      

    else:

      rrhs = rhs
      femdnum10_set_r( rrhs, &self.num)      

    # end if 

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  def gauss_integrate(self, mdnumfe10 w  ):
    """
    PURPOSE: Get the corresponding derivative of the system.
    """
    #*************************************************************************************************
    

    cdef mdnum10_t res = mdnum10_init()

    res = femdnum10_integrate( &self.num, &w.num)

    return mdnum10.create(&res)

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  cpdef  truncate( self, object humdir):
    """
    PURPOSE:      to set a specific imaginary direction as given.

    """
    #*************************************************************************************************
    

    cdef imdir_t indx
    cdef ord_t  order
    cdef femdnum10_t res
    
    indx, order = imdir(humdir)
    
    res = femdnum10_truncate_im( indx, order, &self.num) 

    return mdnumfe10.create(&res)

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  cpdef  extract_deriv( self, object humdir):
    """
    PURPOSE:      to set a specific imaginary direction as given.

    """
    #*************************************************************************************************
    

    cdef imdir_t indx
    cdef ord_t  order
    cdef femdnum10_t res
    
    indx, order = imdir(humdir)
    
    res = femdnum10_extract_deriv( indx, order, &self.num) 

    return mdnumfe10.create(&res)

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  cpdef  extract_im( self, object humdir):
    """
    PURPOSE:      to set a specific imaginary direction as given.

    """
    #*************************************************************************************************
    

    cdef imdir_t indx
    cdef ord_t  order
    cdef femdnum10_t res
    
    indx, order = imdir(humdir)
    
    res = femdnum10_extract_im( indx, order, &self.num) 

    return mdnumfe10.create(&res)

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  cpdef  get_im( self, object humdir):
    """
    PURPOSE:      to set a specific imaginary direction as given.

    """
    #*************************************************************************************************
    

    cdef imdir_t indx
    cdef ord_t  order
    cdef femdnum10_t res
    
    indx, order = imdir(humdir)
    
    res = femdnum10_get_im( indx, order, &self.num) 

    return mdnumfe10.create(&res)

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  cpdef  get_deriv( self, object humdir):
    """
    PURPOSE:      to set a specific imaginary direction as given.

    """
    #*************************************************************************************************
    

    cdef imdir_t indx
    cdef ord_t  order
    cdef femdnum10_t res
    
    indx, order = imdir(humdir)
    
    res = femdnum10_get_deriv( indx, order, &self.num) 

    return mdnumfe10.create(&res)

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  cpdef  get_order_im( self, ord_t order):
    """
    PURPOSE:      to set a specific imaginary direction as given.

    """
    #*************************************************************************************************
    

    cdef femdnum10_t res
    
    res = femdnum10_get_order_im( order, &self.num) 

    return mdnumfe10.create(&res)

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  def get_active_bases(self):
    """

    """
    

    cdef bases_t  size       = dhl.p_dh[0].Nbasis
    cdef imdir_t* bases_list = dhl.p_dh[0].p_idx[0]
    cdef uint64_t i
    
    # Initialize all elements as zero (deactivated)
    for i in range(size):

      bases_list[i]=0

    # end for 

    femdnum10_get_active_bases( &self.num, bases_list)

    res = []
    for i in range(size):

      if bases_list[i]==1:
      
        res.append(i+1)

      # end if 

    # end for 

    return res

  #---------------------------------------------------------------------------------------------------
  

# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# :::::::::::::::::::::::::::::::::::: END OF CLASS mdnumfe10 ::::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

