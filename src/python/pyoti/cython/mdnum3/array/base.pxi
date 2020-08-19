

# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::     CLASS  mdarr3_t    ::::::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
cdef class mdarr3_t:
  #---------------------------------------------------------------------------------------------------
  #------------------------------------   DEFINITION OF ATTRIBUTES   ---------------------------------
  #---------------------------------------------------------------------------------------------------
  
  #                                --->      Look in dense.pxd    <---

  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  
  def __init__(self, realArray, ord_t order = 0, bases_t nbases = 0, object nnz = None): 
    """
    PURPOSE:      Python level constructor of the mdarr3_t class.

    DESCRIPTION:  Creates a new matrix, reserving memory Assumes coefficient values to be all zeroes.
                 
    """
    #*************************************************************************************************
    
    
    cdef uint64_t nrows, ncols, i,j
    cdef ord_t ordi
    cdef coeff_t val 

    if isinstance( realArray, np.ndarray):
      
      ndim = realArray.ndim
      
      if ( ndim >= 3 ):
      
        raise ValueError("Only 1D and 2D arrays are supported.")
      
      elif ( ndim == 1 ):
      
        ncols = 1      
        nrows = realArray.shape[0]

        self.arr = mdarr3_zeros( nrows, ncols)

        for i in range(self.arr.nrows):
      
          val = realArray[i]
          mdarr3_set_item_i_r( val, i, &self.arr)
        
        # end for
      
      else: # ndim =2

        nrows = realArray.shape[0]
        ncols = realArray.shape[1]
        self.arr = mdarr3_zeros( nrows, ncols)

        for i in range(self.arr.nrows):      
          for j in range(self.arr.ncols):
            
            val = realArray[i,j]
            mdarr3_set_item_ij_r( val, i, j, &self.arr)
          
          # end for        
        # end for

      # end if
    # end if 
    
    self.FLAGS = 1

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  def __dealloc__(self): 
    """
    PURPOSE:      Destructor of the class.                   
    """
    #*************************************************************************************************
    
    if self.FLAGS != 0:
      
      mdarr3_free(&self.arr)

    # end if 
    
  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  @property
  def T(self): 
    """
    PURPOSE:      Return the transpose of the stored matrix. 
    """
    #*************************************************************************************************
    
    
    cdef mdarr3_t res 
      
    res = mdarr3_transpose( &self.arr)

    return mdarr3_t.create(&res)

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
  def nrows(self): 
    """
    PURPOSE:      Return the number of rows of the stored matrix. 
    """
    #*************************************************************************************************

    return self.arr.nrows

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  @property
  def ncols(self): 
    """
    PURPOSE:      Return the number of columns of the stored matrix. 
    """
    #*************************************************************************************************

    return self.arr.ncols

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  @property
  def order(self): 
    """
    PURPOSE:      Return the shape of the stored matrix. 
    """
    #*************************************************************************************************

    return mdarr3_get_order(&self.arr)

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
  @property
  def real(self):
    """
    PURPOSE:      Get a numpy array with all coefficients in the real direction.

    """
    #*************************************************************************************************

    cdef np.ndarray[coeff_t, ndim=2] tmp
    cdef uint64_t i,j,k

    tmp = np.empty( self.shape , dtype = np.float64)

    for i in range(self.arr.nrows):
      for j in range(self.arr.ncols):
        k = j+i*self.arr.ncols
        tmp[i,j] = self.arr.p_data[k].re
      # end for 
    # end for 

    return tmp

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  @staticmethod
  cdef mdarr3_t create(mdarr3_t* arr, uint8_t FLAGS = 1):
    """
    PURPOSE:      C-level constructor of the class. Use this when creating objects within 
                  Cython
                  
    """
    #*************************************************************************************************

    # create new empty object:
    cdef mdarr3_t mat = <mdarr3_t> mdarr3_t.__new__(mdarr3_t)

    mat.arr = arr[0]
    mat.FLAGS = FLAGS
    
    return mat

  #--------------------------------------------------------------------------------------------------- 

  #*************************************************************************************************** 
  def short_repr(self):
    """
    PURPOSE:      A short representation of the object.
  
    """
    #*************************************************************************************************

    

    out =  "mdarr3_t< "
    out += "shape: "+str(self.shape)+ ", "
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

    out =  "mdarr3_t< "
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

    

    cdef uint64_t i,j 
    cdef mdnum3_t tmp

    out =  "mdarr3_t< "
    out += "shape: "+str(self.shape)+ ", \n"

    for j in range(self.arr.ncols):
      out += " - Column " + str(j) +"\n"
      for i in range(self.arr.nrows):

        out += "({0:d},{1:d}) ".format(i,j)
         
        out += self[i,j].__str__()
        out += "\n"

      # end for 
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

    
  
    cdef mdnum3_t d_mdnum3
    cdef mdnum3_t   mdnum3
    
    out  = self.list_repr()
    # out=""

    # out += "["
    # for i in range(self.arr.nrows):
    #   out += "["
    #   for j in range(self.arr.ncols):
    #     d_mdnum3 = mdarr3_get_item_ij(&self.arr, i, j)
    #     out+= (mdnum3_t.create(&d_mdnum3,FLAGS=0)).__str__()+", "
    #   # end for 
    #   out = out[:-2] + "],\n"
    # # end for 
    # out =out[:-2] + "]"
    return out

  #--------------------------------------------------------------------------------------------------- 
  

  #***************************************************************************************************
  def __str__(self):
    """
    PURPOSE:      Create a string representation of the object.    
    """
    #*************************************************************************************************
    
  
    cdef mdnum3_t d_mdnum3
    cdef mdnum3_t   mdnum3

    out  = self.list_repr()

    # out += "["
    # for i in range(self.arr.nrows):
    #   out += "["
    #   for j in range(self.arr.ncols):
    #     d_mdnum3 = mdarr3_get_item_ij(&self.arr, i, j)
    #     out+= (mdnum3_t.create(&d_mdnum3,FLAGS=0)).__str__()+", "
    #   # end for 
    #   out = out[:-2] + "],\n"
    # # end for 
    # out =out[:-2] + "]"
    return out

  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  def  __getitem__(self, val):
    """
    PURPOSE: Get the value of an element of the item.
    """
    #*************************************************************************************************
    
    

    cdef mdnum3_t ores
    cdef mdarr3_t   Ores
    cdef object res = None
    cdef int64_t starti, stopi, stepi
    cdef int64_t startj, stopj, stepj

    tval = type(val)
    
    if tval == int:
      
      # This is a slice
      if val < self.arr.nrows:
        
        starti, stopi, stepi = slice( val, val+1, None).indices( self.arr.nrows )
        startj, stopj, stepj = slice(None, None, None).indices( self.arr.ncols )

        Ores = mdarr3_get_slice( &self.arr, starti, stopi, stepi, startj, stopj, stepj)
        res  = mdarr3_t.create(&Ores)

      else:

        raise IndexError("Index out of bounds.")

      # end if 

    #   ores = mdarr3_get_item_ij( &self.arr, val[0], val[1])
    #   res  = mdnum3_t.create( &ores, FLAGS = 0 )

    elif tval == slice: #slice of multiple items
      
      # print(val)
      # This is a slice
      starti, stopi, stepi = val.indices( self.arr.nrows )
      startj, stopj, stepj = slice(None, None, None).indices( self.arr.ncols )

      # print("i: ( {0}, {1}, {2})".format(starti, stopi, stepi) )
      # print("j: ( {0}, {1}, {2})".format(startj, stopj, stepj) )

      Ores = mdarr3_get_slice( &self.arr, starti, stopi, stepi, startj, stopj, stepj)
      res  = mdarr3_t.create(&Ores)
    
    elif tval == tuple:
      
      if len(val) == 2:

        tval0 = type(val[0])
        tval1 = type(val[1])

        if   tval0 == int and tval1 == int:
          
          # print("Case 1")
          if val[0] < self.arr.nrows and val[1] < self.arr.ncols:
          
            ores = mdarr3_get_item_ij( &self.arr, val[0], val[1])
            res = mdnum3_t.create(&ores, FLAGS = 0)        
          
          else:

            raise IndexError("Index out of bounds.")

          # end if 

        elif tval0 == int and tval1 == slice:

          # print("Case 2")
          if val[0] < self.arr.nrows:

            starti, stopi, stepi = slice(val[0], val[0]+1, None).indices( self.arr.nrows )
            startj, stopj, stepj = val[1].indices( self.arr.ncols )

            Ores = mdarr3_get_slice( &self.arr, starti, stopi, stepi, startj, stopj, stepj)
            res  = mdarr3_t.create(&Ores)  

          else:

            raise IndexError("Index out of bounds.")

          # end if 

        elif tval0 == slice and tval1 == int:

          # print("Case 3")
          if val[1] < self.arr.ncols:

            starti, stopi, stepi = val[0].indices( self.arr.nrows )
            startj, stopj, stepj = slice(val[1], val[1]+1, None).indices( self.arr.ncols )

            Ores = mdarr3_get_slice( &self.arr, starti, stopi, stepi, startj, stopj, stepj)
            res  = mdarr3_t.create(&Ores)  

          else:

            raise IndexError("Index out of bounds.")

          # end if 

        elif tval0 == slice and tval1 == slice:

          # print("Case 3")
          starti, stopi, stepi = val[0].indices( self.arr.nrows )
          startj, stopj, stepj = val[1].indices( self.arr.ncols )

          Ores = mdarr3_get_slice( &self.arr, starti, stopi, stepi, startj, stopj, stepj)
          res  = mdarr3_t.create(&Ores) 

        else:

          raise IndexError("ERROR: double index ( , ) only integers, slices (`:`) are valid indices")

        # end if 

      else:

        raise IndexError("ERROR: Getting integration points by index is not yet supported.")

      # end if 

    else:

      raise IndexError("ERROR: only integers, slices (`:`) are valid indices")

    # end if

    return res

  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  def __setitem__(self, val, value):
    """
    PURPOSE: Set an element of the item to the specified value.
    """
    #*************************************************************************************************
        
    

    tvalue = type(value)

    if ( tvalue == mdnum3_t ):

      self.__setitem__o( val, value )

    elif ( tvalue == mdarr3_t ):

      self.__setitem__O( val, value )

    elif ( tvalue == dmat ):

      self.__setitem__R( val, value )

    elif ( tvalue in number_types ):

      self.__setitem__r( val, value )

    else:

      raise IndexError("ERROR: Cant set item of type {0} in mdarr3_t object.".format(tvalue))

    # end if 

  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  cdef __setitem__r(self, object val, coeff_t value):
    """
    PURPOSE: Set item from real value.
    """
    #*************************************************************************************************
    

    tval = type(val)

    if tval == int:
      
      # This is a slice
      if val < self.arr.nrows:
        
        starti, stopi, stepi = slice( val, val+1, None).indices( self.arr.nrows )
        startj, stopj, stepj = slice(None, None, None).indices( self.arr.ncols )

        mdarr3_set_slice_r( value, starti, stopi, stepi, startj, stopj, stepj, &self.arr)
        
      else:
        raise IndexError("Index out of bounds.")
      # end if 

    elif tval == slice: #slice of multiple items
      
      # This is a slice
      starti, stopi, stepi = val.indices( self.arr.nrows )
      startj, stopj, stepj = slice(None, None, None).indices( self.arr.ncols )

      mdarr3_set_slice_r( value, starti, stopi, stepi, startj, stopj, stepj, &self.arr)
    
    elif tval == tuple:
      
      if len(val) == 2:

        tval0 = type(val[0])
        tval1 = type(val[1])

        if ( tval0 == int and tval1 == int ):
          
          if val[0] < self.arr.nrows and val[1] < self.arr.ncols:
          
            mdarr3_set_item_ij_r( value, val[0], val[1], &self.arr)
            
          else:
            raise IndexError("Index out of bounds.")
          # end if 

        elif (tval0 == int and tval1 == slice):

          if val[0] < self.arr.nrows:

            starti, stopi, stepi = slice(val[0], val[0]+1, None).indices( self.arr.nrows )
            startj, stopj, stepj = val[1].indices( self.arr.ncols )

            mdarr3_set_slice_r( value, starti, stopi, stepi, startj, stopj, stepj, &self.arr)

          else:
            raise IndexError("Index out of bounds.")
          # end if 

        elif (tval0 == slice and tval1 == int):

          if val[1] < self.arr.ncols:

            starti, stopi, stepi = val[0].indices( self.arr.nrows )
            startj, stopj, stepj = slice(val[1], val[1]+1, None).indices( self.arr.ncols )

            mdarr3_set_slice_r(value, starti, stopi, stepi, startj, stopj, stepj, &self.arr)

          else:
            raise IndexError("Index out of bounds.")
          # end if 

        elif (tval0 == slice and tval1 == slice):

          starti, stopi, stepi = val[0].indices( self.arr.nrows )
          startj, stopj, stepj = val[1].indices( self.arr.ncols )

          mdarr3_set_slice_r( value, starti, stopi, stepi, startj, stopj, stepj, &self.arr)

        else:
          raise IndexError("ERROR: double index ( , ) only integers, slices (`:`) are valid indices")
        # end if 

      else:
        raise IndexError("ERROR: Getting integration points by index is not yet supported.")
      # end if 

    else:
      raise IndexError("ERROR: only integers, slices (`:`) are valid indices")
    # end if

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  cdef __setitem__o(self,  object val, mdnum3_t value):
    """
    PURPOSE: Set item from mdnum3_t value.
    """
    #*************************************************************************************************
    

    tval = type(val)

    if tval == int:
      
      # This is a slice
      if val < self.arr.nrows:
        
        starti, stopi, stepi = slice( val, val+1, None).indices( self.arr.nrows )
        startj, stopj, stepj = slice(None, None, None).indices( self.arr.ncols )

        mdarr3_set_slice_o( &value.num, starti, stopi, stepi, startj, stopj, stepj, &self.arr)
        
      else:

        raise IndexError("Index out of bounds.")

      # end if 

    elif tval == slice: #slice of multiple items
      
      # This is a slice
      starti, stopi, stepi = val.indices( self.arr.nrows )
      startj, stopj, stepj = slice(None, None, None).indices( self.arr.ncols )

      mdarr3_set_slice_o( &value.num, starti, stopi, stepi, startj, stopj, stepj, &self.arr)
    
    elif tval == tuple:
      
      if len(val) == 2:

        tval0 = type(val[0])
        tval1 = type(val[1])

        if ( tval0 == int and tval1 == int ):
          
          if val[0] < self.arr.nrows and val[1] < self.arr.ncols:
          
            mdarr3_set_item_ij_o( &value.num, val[0], val[1], &self.arr)
            
          else:

            raise IndexError("Index out of bounds.")

          # end if 

        elif (tval0 == int and tval1 == slice):

          if val[0] < self.arr.nrows:

            starti, stopi, stepi = slice(val[0], val[0]+1, None).indices( self.arr.nrows )
            startj, stopj, stepj = val[1].indices( self.arr.ncols )

            mdarr3_set_slice_o( &value.num, starti, stopi, stepi, startj, stopj, stepj, &self.arr)

          else:

            raise IndexError("Index out of bounds.")

          # end if 

        elif (tval0 == slice and tval1 == int):

          if val[1] < self.arr.ncols:

            starti, stopi, stepi = val[0].indices( self.arr.nrows )
            startj, stopj, stepj = slice(val[1], val[1]+1, None).indices( self.arr.ncols )

            mdarr3_set_slice_o( &value.num, starti, stopi, stepi, startj, stopj, stepj, &self.arr)

          else:

            raise IndexError("Index out of bounds.")

          # end if 

        elif (tval0 == slice and tval1 == slice):

          starti, stopi, stepi = val[0].indices( self.arr.nrows )
          startj, stopj, stepj = val[1].indices( self.arr.ncols )

          mdarr3_set_slice_o( &value.num, starti, stopi, stepi, startj, stopj, stepj, &self.arr)

        else:

          raise IndexError("ERROR: double index ( , ) only integers, slices (`:`) are valid indices")

        # end if 

      else:

        raise IndexError("ERROR: Getting integration points by index is not yet supported.")

      # end if 

    else:

      raise IndexError("ERROR: only integers, slices (`:`) are valid indices")

    # end if

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  cdef __setitem__R(self,  object val, dmat value):
    """
    PURPOSE: Set item from real array.
    """
    #*************************************************************************************************
    

    raise NotImplementedError("Error Setting from Real array not yet supported.")
  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  cdef __setitem__O(self,  object val, mdarr3_t value):
    """
    PURPOSE: Set item from OTI array.
    """
    #*************************************************************************************************
    

    tval = type(val)

    if tval == int:
      
      # This is a slice
      if val < self.arr.nrows:
        
        starti, stopi, stepi = slice( val, val+1, None).indices( self.arr.nrows )
        startj, stopj, stepj = slice(None, None, None).indices( self.arr.ncols )

        mdarr3_set_slice_O( &value.arr, starti, stopi, stepi, startj, stopj, stepj, &self.arr)
        
      else:

        raise IndexError("Index out of bounds.")

      # end if 

    elif tval == slice: #slice of multiple items
      
      # This is a slice
      starti, stopi, stepi = val.indices( self.arr.nrows )
      startj, stopj, stepj = slice(None, None, None).indices( self.arr.ncols )

      mdarr3_set_slice_O( &value.arr, starti, stopi, stepi, startj, stopj, stepj, &self.arr)
    
    elif tval == tuple:
      
      if len(val) == 2:

        tval0 = type(val[0])
        tval1 = type(val[1])

        if ( tval0 == int and tval1 == int ):
          
          if val[0] < self.arr.nrows and val[1] < self.arr.ncols:
          
            starti, stopi, stepi = slice(val[0], val[0]+1, None).indices( self.arr.nrows )
            startj, stopj, stepj = slice(val[1], val[1]+1, None).indices( self.arr.ncols )

            mdarr3_set_slice_O( &value.arr, starti, stopi, stepi, startj, stopj, stepj, &self.arr)
            
          else:

            raise IndexError("Index out of bounds.")

          # end if 

        elif (tval0 == int and tval1 == slice):

          if val[0] < self.arr.nrows:

            starti, stopi, stepi = slice(val[0], val[0]+1, None).indices( self.arr.nrows )
            startj, stopj, stepj = val[1].indices( self.arr.ncols )

            mdarr3_set_slice_O( &value.arr, starti, stopi, stepi, startj, stopj, stepj, &self.arr)

          else:

            raise IndexError("Index out of bounds.")

          # end if 

        elif (tval0 == slice and tval1 == int):

          if val[1] < self.arr.ncols:

            starti, stopi, stepi = val[0].indices( self.arr.nrows )
            startj, stopj, stepj = slice(val[1], val[1]+1, None).indices( self.arr.ncols )

            mdarr3_set_slice_O( &value.arr, starti, stopi, stepi, startj, stopj, stepj, &self.arr)

          else:

            raise IndexError("Index out of bounds.")

          # end if 

        elif (tval0 == slice and tval1 == slice):

          starti, stopi, stepi = val[0].indices( self.arr.nrows )
          startj, stopj, stepj = val[1].indices( self.arr.ncols )

          mdarr3_set_slice_O( &value.arr, starti, stopi, stepi, startj, stopj, stepj, &self.arr)

        else:

          raise IndexError("ERROR: double index ( , ) only integers, slices (`:`) are valid indices")

        # end if 

      else:

        raise IndexError("ERROR: Getting integration points by index is not yet supported.")

      # end if 

    else:

      raise IndexError("ERROR: only integers, slices (`:`) are valid indices")

    # end if

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  def copy(self):
    """
    PURPOSE: Copy to a new object.
    """
    #*************************************************************************************************
    
    
    
    cdef mdarr3_t res = mdarr3_copy(&self.arr)

    return mdarr3_t.create(&res)
  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  def __neg__(self):
    """
    PURPOSE: Negation overload.
    """
    #*************************************************************************************************
    
    
    
    cdef mdarr3_t res = mdarr3_neg(&self.arr)

    return mdarr3_t.create(&res)
  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  def __add__(self, other):
    """
    PURPOSE: Addition overload.
    """
    #*************************************************************************************************
    
    
    
    cdef mdarr3_t res 
    cdef mdarr3_t lhs,rhs
    cdef dmat dlhs,drhs
    cdef mdnum3_t olhs,orhs
    
    tlhs = type(self)
    trhs = type(other)
    
    if (tlhs == trhs):

      lhs = self
      rhs = other

      res = mdarr3_sum_OO(&lhs.arr,&rhs.arr)

    elif ( tlhs  == mdnum3_t ):

      olhs = self
      rhs = other

      res = mdarr3_sum_oO(&olhs.num,&rhs.arr)

    elif ( trhs  == mdnum3_t ):

      lhs = self
      orhs = other

      res = mdarr3_sum_oO(&orhs.num,&lhs.arr)
    
    elif (tlhs in number_types):
      
      rhs = other
      res = mdarr3_sum_rO(self, &rhs.arr)

    elif (trhs in number_types):
        
      lhs = self
      res = mdarr3_sum_rO(other, &lhs.arr)

    elif ( tlhs  == dmat ):

      dlhs = self
      rhs = other

      res = mdarr3_sum_RO(&dlhs.arr,&rhs.arr)

    elif ( trhs  == dmat ):

      lhs = self
      drhs = other

      res = mdarr3_sum_RO(&drhs.arr,&lhs.arr)

    else:

      return NotImplemented

    # end if 
      
    return mdarr3_t.create(&res)

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
    #*************************************************************************************************
    
    
    
    cdef mdarr3_t res 
    cdef mdarr3_t lhs,rhs
    cdef dmat dlhs,drhs
    cdef mdnum3_t olhs,orhs
    
    tlhs = type(self)
    trhs = type(other)
    
    if (tlhs == trhs):

      lhs = self
      rhs = other

      res = mdarr3_sub_OO(&lhs.arr,&rhs.arr)

    elif ( tlhs  == mdnum3_t ):

      olhs = self
      rhs = other

      res = mdarr3_sub_oO(&olhs.num,&rhs.arr)

    elif ( trhs  == mdnum3_t ):

      lhs = self
      orhs = other

      res = mdarr3_sub_Oo(&lhs.arr, &orhs.num)
    
    elif (tlhs in number_types):
      
      rhs = other
      res = mdarr3_sub_rO(self, &rhs.arr)

    elif (trhs in number_types):
        
      lhs = self
      res = mdarr3_sub_Or(&lhs.arr, other)

    elif ( tlhs  == dmat ):

      dlhs = self
      rhs = other

      res = mdarr3_sub_RO(&dlhs.arr,&rhs.arr)

    elif ( trhs  == dmat ):

      lhs = self
      drhs = other

      res = mdarr3_sub_OR(&lhs.arr, &drhs.arr)

    else:

      return NotImplemented      

    # end if 
      
    return mdarr3_t.create(&res)

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
    
    
    
    cdef mdarr3_t res 
    cdef mdarr3_t lhs,rhs
    cdef dmat dlhs,drhs
    cdef mdnum3_t olhs,orhs
    
    tlhs = type(self)
    trhs = type(other)
    
    if (tlhs == trhs):

      lhs = self
      rhs = other

      res = mdarr3_mul_OO(&lhs.arr,&rhs.arr)

    elif ( tlhs  == mdnum3_t ):

      olhs = self
      rhs = other

      res = mdarr3_mul_oO(&olhs.num,&rhs.arr)

    elif ( trhs  == mdnum3_t ):

      lhs = self
      orhs = other

      res = mdarr3_mul_oO(&orhs.num,&lhs.arr)
    
    elif (tlhs in number_types):
      
      rhs = other
      res = mdarr3_mul_rO(self, &rhs.arr)

    elif (trhs in number_types):
        
      lhs = self
      res = mdarr3_mul_rO(other, &lhs.arr)

    elif ( tlhs  == dmat ):

      dlhs = self
      rhs = other

      res = mdarr3_mul_RO(&dlhs.arr,&rhs.arr)

    elif ( trhs  == dmat ):

      lhs = self
      drhs = other

      res = mdarr3_mul_RO(&drhs.arr,&lhs.arr)

    else:

      return NotImplemented      

    # end if 
      
    return mdarr3_t.create(&res)

    

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
    
    
    
    cdef mdarr3_t res 
    cdef mdarr3_t lhs,rhs
    cdef dmat dlhs,drhs
    cdef mdnum3_t olhs,orhs
    
    tlhs = type(self)
    trhs = type(other)
    
    if (tlhs == trhs):

      lhs = self
      rhs = other

      res = mdarr3_div_OO(&lhs.arr,&rhs.arr)

    elif ( tlhs  == mdnum3_t ):

      olhs = self
      rhs = other

      res = mdarr3_div_oO(&olhs.num,&rhs.arr)

    elif ( trhs  == mdnum3_t ):

      lhs = self
      orhs = other

      res = mdarr3_div_Oo(&lhs.arr, &orhs.num)
    
    elif (tlhs in number_types):
      
      rhs = other
      res = mdarr3_div_rO(self, &rhs.arr)

    elif (trhs in number_types):
        
      lhs = self
      res = mdarr3_div_Or(&lhs.arr, other)

    elif ( tlhs  == dmat ):

      dlhs = self
      rhs = other

      res = mdarr3_div_RO(&dlhs.arr,&rhs.arr)

    elif ( trhs  == dmat ):

      lhs = self
      drhs = other

      res = mdarr3_div_OR(&lhs.arr, &drhs.arr)

    else:

      return NotImplemented      

    # end if 
      
    return mdarr3_t.create(&res)

  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  def __pow__(self, n,z):
    """
    PURPOSE:      Power function oversload
    """
    #*************************************************************************************************
    
    

    cdef mdarr3_t res 
    cdef mdarr3_t S = self

    res = mdarr3_pow( &S.arr, n)
    
    return mdarr3_t.create(&res)

  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  cpdef get_deriv(self, object hum_dir ):
    """
    PURPOSE: Get the corresponding derivative of the system.
    """
    #*************************************************************************************************
    

    cdef list item = imdir(hum_dir)
    cdef np.ndarray[coeff_t, ndim=2] tmp
    cdef coeff_t factor = 1

    tmp = self.get_im(hum_dir)

    factor = dhelp_get_deriv_factor(item[ZERO], item[ONE])

    return tmp * factor

  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  cpdef get_im(self, object hum_dir):
    """
    PURPOSE: Get the corresponding imaginary direction in the mdarr3_t object.
    """
    #*************************************************************************************************
    
    
    cdef list item = imdir(hum_dir)
    cdef darr_t res_darr
    cdef dmat res_dmat
    cdef uint64_t i,j, k
    cdef np.ndarray[double, ndim=2] res

    res_darr = mdarr3_get_im( item[ZERO],  item[ONE], &self.arr)

    res = np.empty( self.shape , dtype = np.float64)

    k=0

    for i in range(self.arr.nrows):

      for j in range(self.arr.ncols):

        res[i,j] = res_darr.p_data[k]
        k+=1

      # end for 

    #end for

    return res

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  cpdef extract_im(self, object hum_dir):
    """
    PURPOSE: Get the corresponding imaginary direction in the mdarr3_t object.
    """
    #*************************************************************************************************
    
    
    cdef list item = imdir(hum_dir)
    cdef mdarr3_t res
    

    res = mdarr3_extract_im( item[ZERO],  item[ONE], &self.arr)

    return mdarr3_t.create(&res)

  #---------------------------------------------------------------------------------------------------
  
  #***************************************************************************************************
  cpdef  extract_deriv(self, object hum_dir):
    """
    PURPOSE: Get the corresponding derivative in the mdarr3_t object, as OTI number.
    """
    #*************************************************************************************************
    
    
    cdef list item = imdir(hum_dir)
    cdef mdarr3_t res
    
    res = mdarr3_extract_deriv( item[ZERO],  item[ONE], &self.arr)

    return mdarr3_t.create(&res)

  #---------------------------------------------------------------------------------------------------
  

  #***************************************************************************************************
  cpdef  get_order_im(self, ord_t order):
    """
    PURPOSE: Get the corresponding derivative in the mdarr3_t object, as OTI number.
    """
    #*************************************************************************************************
    
    
    cdef mdarr3_t res
    
    res = mdarr3_get_order_im( order, &self.arr)

    return mdarr3_t.create(&res)

  #---------------------------------------------------------------------------------------------------
  

  #***************************************************************************************************
  cpdef  truncate( self, object humdir):
    """
    PURPOSE:      to set a specific imaginary direction as given.

    """
    #*************************************************************************************************
    

    cdef imdir_t indx
    cdef ord_t  order
    cdef mdarr3_t res
    
    indx, order = imdir(humdir)
    
    res = mdarr3_truncate_im( indx, order, &self.arr) 

    return mdarr3_t.create(&res)

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  cpdef set(self, object rhs):
    """
    PURPOSE:  Sets from another value.
    """
    #*************************************************************************************************
    
    
    cdef mdnum3_t orhs
    cdef coeff_t rrhs

    cdef mdarr3_t Orhs
    trhs = type(rhs)

    if   trhs is mdnum3_t:

      orhs = rhs
      mdarr3_set_o( &orhs.num, &self.arr)

    elif trhs is mdarr3_t:

      Orhs = rhs
      mdarr3_set_O( &Orhs.arr, &self.arr)      

    elif trhs in number_types:

      rrhs = rhs
      mdarr3_set_r( rrhs, &self.arr)

    else:

      raise ValueError( "Cant assign '{0}' into a mdarr3_t object.".format(trhs) )
      
    # end if 

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  def get_active(self):
    """

    """
    

    cdef bases_t  size       = dhl.p_dh[0].Nbasis
    cdef imdir_t* bases_list = dhl.p_dh[0].p_idx[0]
    cdef uint64_t i
    
    # Initialize all elements as zero (deactivated)
    for i in range(size):

      bases_list[i]=0

    # end for 

    mdarr3_get_active( &self.arr, bases_list)

    res = []
    for i in range(size):

      if bases_list[i]==1:
      
        res.append(i+1)

      # end if 

    # end for 

    return res

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  def taylor_integrate(self, object bases, object deltas):
    """
    PURPOSE:     Perform a Taylor series integration.
    """
    #*************************************************************************************************
    

    cdef bases_t  size     = dhl.p_dh[0].Nbasis
    cdef coeff_t* c_deltas = dhl.p_dh[0].p_im[0]
    cdef int64_t i
    cdef mdarr3_t res
    
    # Initialize all elements as zero
    memset( c_deltas, 0, size*sizeof(coeff_t))

    try:
      
      bases_eval  = bases
      deltas_eval = deltas

      if len(bases_eval) != len(deltas_eval):
      
        raise ValueError("Both bases and deltas must have the same dimension")

      # end if 

    except:

      bases_eval = np.array(self.get_active(),dtype=np.uint16)
      deltas_eval= np.ones(len(bases_eval),dtype=np.float64) * deltas

    # end

    for i in range(len(bases_eval)):

      c_deltas[ bases[i] - 1 ] = deltas[i]

    # end for 

    res = mdarr3_taylor_integrate( c_deltas, &self.arr)

    return mdarr3_t.create(&res)

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  @staticmethod
  def dot( mdarr3_t lhs, mdarr3_t rhs, mdarr3_t out = None): 
    """
    PURPOSE: Matrix multiplication.
    """
    
    
    cdef mdarr3_t res 

    if out is not None:
      
      mdarr3_matmul_OO_to( &lhs.arr, &rhs.arr ,&out.arr)

    else:

      res = mdarr3_matmul_OO( &lhs.arr, &rhs.arr )

      return mdarr3_t.create(&res)

    # end if 

  #---------------------------------------------------------------------------------------------------

  

  #***************************************************************************************************
  @staticmethod
  def inv( mdarr3_t arr,  mdarr3_t out = None): 
    """
    PURPOSE: Matrix invertion.
    """
    
    
    cdef mdarr3_t res 

    if out is not None:
      
      mdarr3_invert_to( &arr.arr,&out.arr)

    else:

      res = mdarr3_invert( &arr.arr)

      return mdarr3_t.create(&res)

    # end if 

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  @staticmethod
  def transpose( mdarr3_t arr,  mdarr3_t out = None ): 
    """
    PURPOSE: Matrix transpose.
    """
    
    
    cdef mdarr3_t res 

    if out is not None:
      
      mdarr3_transpose_to( &arr.arr, &out.arr)

    else:

      res = mdarr3_transpose( &arr.arr)

      return mdarr3_t.create(&res)

    # end if 

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  @staticmethod
  def add( mdarr3_t lhs, mdarr3_t rhs, mdarr3_t out = None): 
    """
    PURPOSE: Matrix elementwise addition.
    """
    
    
    cdef mdarr3_t res 

    if out is not None:
      
      mdarr3_sum_OO_to( &lhs.arr, &rhs.arr ,&out.arr)

    else:

      res = mdarr3_sum_OO( &lhs.arr, &rhs.arr )

      return mdarr3_t.create(&res)

    # end if 

  #---------------------------------------------------------------------------------------------------
  

# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# :::::::::::::::::::::::::::::::::::: END OF CLASS mdarr3_t ::::::::::::::::::::::::::::::::::::::::::::
# ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

