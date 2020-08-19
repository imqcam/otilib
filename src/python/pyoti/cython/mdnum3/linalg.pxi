
include "algebra_utils/dot_product.pxi"
# include "algebra_utils/cross_product.pxi"

#*****************************************************************************************************
cpdef dot_product(object lhs, object rhs, object out = None):
  """
  PURPOSE:  Vector dot product (For matrices, sum product).

  """
  #***************************************************************************************************
  
  cdef uint8_t res_flag = 1
  cdef object res = None

  tlhs = type(lhs)

  if out is None:
    res_flag = 0
  # end if 

  # supported types for lhs and rhs:
  #    -  mdarr3_t
  #    -  femdarr3_t
  #    -  darr
  # Supported output types:
  #    - mdnum3_t
  #    - femdnum3_t

  if   tlhs is femdarr3_t:

    res = __dot_product_FX( lhs, rhs, out = out)

  elif tlhs is mdarr3_t:

    res = __dot_product_OX( lhs, rhs, out = out)

  elif tlhs is dmat:
    
    res = __dot_product_RX( lhs, rhs, out = out)

  else:

    raise TypeError("Unsupported types {0}, {1} at dot_product operation.".format(tlhs,type(rhs)))

  # end if 

  if res_flag == 0:
    return res
  # end if 

#-----------------------------------------------------------------------------------------------------

# #*****************************************************************************************************
# cpdef cross_product(object lhs, object rhs, object out = None):
#   """
#   PURPOSE:  Vector cross product (only allows size-3 vectors).

#   """
#   #***************************************************************************************************
  
#   cdef uint8_t res_flag = 1
#   cdef object res = None

#   tlhs = type(lhs)

#   if out is None:
#     res_flag = 0
#   # end if 

#   # supported types for lhs and rhs:
#   #    -  mdarr3_t
#   #    -  femdarr3_t
#   #    -  darr
#   # Supported output types:
#   #    - mdnum3_t
#   #    - femdnum3_t

#   if   tlhs is femdarr3_t:

#     res = __cross_product_FX( lhs, rhs, out = out)

#   elif tlhs is mdarr3_t:

#     res = __cross_product_OX( lhs, rhs, out = out)

#   elif tlhs is dmat:
    
#     res = __cross_product_RX( lhs, rhs, out = out)

#   else:

#     raise TypeError("Unsupported types {0}, {1} at Cross_product operation.".format(tlhs,type(rhs)))

#   # end if 

#   if res_flag == 0:
#     return res
#   # end if 

# #-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cpdef dot(object lhs, object rhs, object out = None):
  """
  PURPOSE:  Matrix inner product (standard matrix multiplication).
  """
  #***************************************************************************************************

  cdef mdarr3_t      Olhs, Orhs, Ores
  cdef mdarr3_t   cOres
  cdef dmat       Rlhs, Rrhs, Rres
  cdef darr_t    cRres
  cdef femdarr3_t    Flhs, Frhs, Fres
  cdef femdarr3_t cFres

  cdef csr_mdarr3_t  Slhs

  cdef uint8_t res_flag = 1
  cdef object res = None

  tlhs = type(lhs)
  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if 

  # supported types:
  #    -  mdarr3_t
  #    -  femdarr3_t
  #    -  darr

  if   tlhs is femdarr3_t:
    
    Flhs = lhs
    if   trhs is femdarr3_t: # FF
      Frhs = rhs
      if res_flag:
        Fres = out
        femdarr3_matmul_FF_to( &Flhs.arr, &Frhs.arr ,&Fres.arr)
      else:
        cFres = femdarr3_matmul_FF( &Flhs.arr, &Frhs.arr )
        res = femdarr3_t.create(&cFres)
      # end if 

    elif trhs is mdarr3_t:   # FO

      Orhs = rhs
      if res_flag:
        Fres = out
        femdarr3_matmul_FO_to( &Flhs.arr, &Orhs.arr ,&Fres.arr)
      else:
        cFres = femdarr3_matmul_FO( &Flhs.arr, &Orhs.arr )
        res = femdarr3_t.create(&cFres)
      # end if 

    elif tlhs is dmat:    # FR

      Rrhs = rhs
      if res_flag:
        Fres = out
        femdarr3_matmul_FR_to( &Flhs.arr, &Rrhs.arr ,&Fres.arr)
      else:
        cFres = femdarr3_matmul_FR( &Flhs.arr, &Rrhs.arr )
        res = femdarr3_t.create(&cFres)
      # end if 

    else:
      raise TypeError("Unsupported types at dot operation.")      
    # end if 

  elif tlhs is mdarr3_t:

    Olhs = lhs
    if   trhs is femdarr3_t: # OF
      Frhs = rhs
      if res_flag:
        Fres = out
        femdarr3_matmul_OF_to( &Olhs.arr, &Frhs.arr ,&Fres.arr)
      else:
        cFres = femdarr3_matmul_OF( &Olhs.arr, &Frhs.arr )
        res = femdarr3_t.create(&cFres)
      # end if 

    elif trhs is mdarr3_t:   # OO

      Orhs = rhs
      if res_flag:
        Ores = out
        mdarr3_matmul_OO_to( &Olhs.arr, &Orhs.arr ,&Ores.arr)
      else:
        cOres = mdarr3_matmul_OO( &Olhs.arr, &Orhs.arr )
        res = mdarr3_t.create(&cOres)
      # end if 

    elif tlhs is dmat:    # OR
    
      Rrhs = rhs
      if res_flag:
        Ores = out
        mdarr3_matmul_OR_to( &Olhs.arr, &Rrhs.arr ,&Ores.arr)
      else:
        cOres = mdarr3_matmul_OR( &Olhs.arr, &Rrhs.arr )
        res = mdarr3_t.create(&cOres)
      # end if 

    else:
      raise TypeError("Unsupported types at dot operation.")      
    # end if    

  elif tlhs is csr_mdarr3_t:

    # Slhs = lhs
    if   trhs is mdarr3_t: # SO
      if res_flag:
        Ores = out
        csrmdarr3_t_matmul_SO_to( lhs, rhs, Ores)
      else:
        res = csrmdarr3_t_matmul_SO( lhs, rhs)
      # end if 

    else:
      raise TypeError("Unsupported types at dot operation.")      
    # end if  

  elif tlhs is dmat:
    
    Rlhs = lhs
    if   trhs is femdarr3_t: # RF
      Frhs = rhs
      if res_flag:
        Fres = out
        femdarr3_matmul_RF_to( &Rlhs.arr, &Frhs.arr ,&Fres.arr)
      else:
        cFres = femdarr3_matmul_RF( &Rlhs.arr, &Frhs.arr )
        res = femdarr3_t.create(&cFres)
      # end if 

    elif trhs is mdarr3_t:   # RO
      Orhs = rhs
      if res_flag:
        Ores = out
        mdarr3_matmul_RO_to( &Rlhs.arr, &Orhs.arr ,&Ores.arr)
      else:
        cOres = mdarr3_matmul_RO( &Rlhs.arr, &Orhs.arr )
        res = mdarr3_t.create(&cOres)
      # end if 

    elif tlhs is dmat:    # RR
      Rrhs = rhs
      if res_flag:
        Rres = out
        darr_matmul_to( &Rlhs.arr, &Rrhs.arr , &Rres.arr)
      else:
        cRres = darr_matmul( &Rlhs.arr, &Rrhs.arr)
        res = dmat.create(&cRres)   
      # end if 
    
    else:
      raise TypeError("Unsupported types at dot operation.")      
    # end if 

  else:
    raise TypeError("Unsupported types at dot operation.")

  # end if 

  if res_flag == 0:
    return res
  # end if 

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cpdef transpose(object arr, object out = None):
  """
  PURPOSE:  Matrix transpose
  """
  #***************************************************************************************************

  cdef mdarr3_t      O, Ores
  cdef mdarr3_t   cOres
  cdef dmat       R, Rres
  cdef darr_t    cRres
  cdef femdarr3_t    F, Fres
  cdef femdarr3_t cFres

  cdef uint8_t res_flag = 1

  cdef object res

  tarr = type(arr)

  if out is None:

    res_flag = 0

  # end if 

  # supported types:
  #    -  mdarr3_t
  #    -  femdarr3_t
  #    -  darr

  if   tarr is femdarr3_t:
    
    F = arr
    if res_flag:
      Fres = out
      femdarr3_transpose_to( &F.arr, &Fres.arr)
    else:
      cFres = femdarr3_transpose( &F.arr)
      res = femdarr3_t.create(&cFres)
    # end if 

  elif tarr is mdarr3_t:

    O = arr
    if res_flag:
      Ores = out
      mdarr3_transpose_to( &O.arr, &Ores.arr)
    else:
      cOres = mdarr3_transpose( &O.arr)
      res = mdarr3_t.create(&cOres)
    # end if    

  elif tarr is dmat:
    
    R = arr
    if res_flag:
      Rres = out
      darr_transpose_to( &R.arr, &Rres.arr)
    else:
      cRres = darr_transpose( &R.arr)
      res = dmat.create(&cRres)
    # end if

  else:
    raise TypeError("Unsupported types at transpose operation.")
  # end if 

  if res_flag == 0:
    return res
  # end if 

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cpdef det(object arr, object out = None):
  """
  PURPOSE:  Matrix determinant.
  """
  #***************************************************************************************************

  cdef mdarr3_t      O
  cdef dmat       R
  cdef femdarr3_t    F
  cdef coeff_t   crres
  cdef mdnum3_t cores
  cdef femdnum3_t  cfres
  cdef femdnum3_t     fres
  cdef mdnum3_t    ores

  cdef uint8_t res_flag = 1

  cdef object res

  tarr = type(arr)

  if out is None:
    res_flag = 0
  # end if 

  # supported types:
  #    -  mdarr3_t
  #    -  femdarr3_t
  #    -  darr

  if   tarr is femdarr3_t:
    
    F = arr
    if res_flag:
      fres = out
      femdarr3_det_to( &F.arr, &fres.num)
    else:
      cfres = femdarr3_det( &F.arr)
      res = femdnum3_t.create(&cfres)
    # end if 

  elif tarr is mdarr3_t:
    
    O = arr
    if res_flag:      
      ores = out
      mdarr3_det_to( &O.arr, &ores.num)
    else:
      cores = mdarr3_det( &O.arr)
      res = mdnum3_t.create(&cores)
    # end if    

  elif tarr is dmat:
    
    R = arr
    crres = darr_det( &R.arr)

    if res_flag:
      out = crres
    else:
      res = crres
    # end if 

  else:
    raise TypeError("Unsupported types at det operation.")    
    # return NotImplemented
  # end if 

  if res_flag == 0:
    return res
  # end if 

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cpdef norm(object arr, coeff_t p = 2.0, object out = None):
  """
  PURPOSE:  Matrix norm
  """
  #***************************************************************************************************

  cdef mdarr3_t      O
  cdef dmat       R
  cdef femdarr3_t    F
  cdef coeff_t   crres
  cdef mdnum3_t cores
  cdef femdnum3_t  cfres
  cdef femdnum3_t     fres
  cdef mdnum3_t    ores

  cdef uint8_t res_flag = 1

  cdef object res

  tarr = type(arr)

  if out is None:

    res_flag = 0

  # end if 

  # supported types:
  #    -  mdarr3_t
  #    -  femdarr3_t
  #    -  darr

  if   tarr is femdarr3_t:
    
    F = arr
    if res_flag:
      fres = out
      femdarr3_pnorm_to( &F.arr, p, &fres.num)
    else:
      cfres = femdarr3_pnorm( &F.arr, p)
      res = femdnum3_t.create(&cfres)
    # end if 

  elif tarr is mdarr3_t:

    O = arr
    if res_flag:
      ores = out
      mdarr3_pnorm_to( &O.arr, p, &ores.num)
    else:
      cores = mdarr3_pnorm( &O.arr, p)
      res = mdnum3_t.create(&cores)
    # end if    

  elif tarr is dmat:
    
    R = arr
    crres = darr_pnorm( &R.arr, p)
    if res_flag:
      out = crres
    else:
      res = crres
    # end if 

  else:
    raise TypeError("Unsupported types at det operation.")
  # end if 

  if res_flag == 0:
    return res
  # end if 

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cpdef inv(object arr, object out = None):
  """
  PURPOSE:   Matrix inverse. Only supported up to 3x3 matrices.
  """
  #***************************************************************************************************

  cdef mdarr3_t      O, Ores
  cdef mdarr3_t   cOres
  cdef dmat       R, Rres
  cdef darr_t    cRres
  cdef femdarr3_t    F, Fres
  cdef femdarr3_t cFres

  cdef uint8_t res_flag = 1

  cdef object res

  tarr = type(arr)

  if out is None:
    res_flag = 0
  # end if 

  # supported types:
  #    -  mdarr3_t
  #    -  femdarr3_t
  #    -  darr

  if   tarr is femdarr3_t:    
    F = arr
    if res_flag:
      Fres = out
      femdarr3_invert_to( &F.arr, &Fres.arr)
    else:
      cFres = femdarr3_invert( &F.arr)
      res = femdarr3_t.create(&cFres)
    # end if 
  elif tarr is mdarr3_t:
    O = arr
    if res_flag:
      Ores = out
      mdarr3_invert_to( &O.arr, &Ores.arr)
    else:
      cOres = mdarr3_invert( &O.arr)
      res = mdarr3_t.create(&cOres)
    # end if
  elif tarr is dmat:    
    R = arr
    if res_flag:
      Rres = out
      darr_invert_to( &R.arr, &Rres.arr)
    else:
      cRres = darr_invert( &R.arr)
      res = dmat.create(&cRres)
    # end if 
  else:
    raise TypeError("Unsupported types at inverse operation.")    
  # end if 

  if res_flag == 0:
    return res
  # end if 

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cpdef inv_block(object arr, object out = None):
  """
  PURPOSE:   Matrix inverse using block solver.
  """
  #***************************************************************************************************

  cdef mdarr3_t      O, Ores, tmp
  cdef mdarr3_t   cOres
  cdef csr_mdarr3_t  S, Sres
  # cdef dmat       R, Rres
  # cdef darr_t    cRres
  # cdef femdarr3_t    F, Fres
  # cdef femdarr3_t cFres

  cdef uint64_t i,j,k,l
  cdef ord_t ordi, ord_lhs, ord_rhs, Oord

  cdef uint8_t res_flag = 1

  cdef object res

  tarr = type(arr)

  if out is None:

    res_flag = 0

  # end if 

  # supported types:
  #    -  mdarr3_t
  #    -  csr_mdarr3_t

  if   tarr is mdarr3_t:    
    O = arr
    if res_flag:
      Ores = out
    else:
      Ores = zeros(O.shape)
    # end if

    # res = Ores
    inverse = np.linalg.inv(O.real)

    # Copy the inverse to the values of the inverse.
    for i in range(Ores.arr.nrows):
      for j in range(Ores.arr.ncols):
        k = j + i * Ores.arr.ncols
        mdarr3_set_item_ij_r( inverse[i,j], i, j, &Ores.arr)
      # end for
    # end for    

    Oord = O.order    
    tmp = O.copy()
    for ordi in range( 1, Oord + 1 ):
      
      tmp.set(0)

      for ord_rhs in range(ordi):

        ord_lhs = ordi - ord_rhs

        tmp -= dot( O.get_order_im(ord_lhs), Ores.get_order_im(ord_rhs))

      # end for 
      Ores += dot( Ores.get_order_im(0), tmp)
    # end for 
    res = Ores
  else:
    raise TypeError("Unsupported types at Block-solver inverse operation.")
  # end if 

  if res_flag == 0:
    return res
  # end if 

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cpdef solve(object K_in, mdarr3_t b_in, mdarr3_t out = None):
  """
  PURPOSE:   Solve OTI linear system of equations.
  """
  #***************************************************************************************************
  

  from scipy.linalg import lu_factor, lu_solve
  import scipy.sparse.linalg as spla

  cdef mdarr3_t      O, Ores, Otmp
  cdef csr_mdarr3_t  S, Sres, Stmp  
  cdef uint64_t i,j,k,l
  cdef ord_t ordi, ord_lhs, ord_rhs, Oord
  cdef uint8_t res_flag = 1
  cdef object res

  tK = type(K_in)

  if out is None:
    res_flag = 0
  # end if 

  # supported types:
  #    -  mdarr3_t
  #    -  csr_mdarr3_t

  if   tK is mdarr3_t:
    
    if res_flag:
      solve_dense( K_in, b_in, out = out)
    else:      
      res = solve_dense(K_in, b_in)
    # end if

  elif tK is csr_mdarr3_t:

    if res_flag:
      solve_sparse( K_in, b_in, out = out)
    else:      
      res = solve_sparse(K_in, b_in)
    # end if

  else:
    raise TypeError("Unsupported types at Block-solver inverse operation.")
  # end if 

  if res_flag == 0:
    return res
  # end if 

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cdef solve_dense(mdarr3_t K_in, mdarr3_t b_in, mdarr3_t out = None):
  """
  PURPOSE:   Solve OTI linear system of equations for a dense K_in.
  """
  #***************************************************************************************************
  

  from scipy.linalg import lu_factor, lu_solve

  cdef mdarr3_t      O, Ores, Otmp
  cdef uint64_t i,j,k,l
  cdef ord_t ordi, ord_lhs, ord_rhs, Oord
  cdef uint8_t res_flag = 1

  if out is None:
    res_flag = 0
  # end if      
  
  if res_flag:
    Ores = out
  else:
    Ores = zeros(b_in.shape)
  # end if

  lu = lu_factor(K_in.real)
  rhs = b_in.real
  # Solve the real system of equations, using LU solver:
  lu_solve(lu,rhs, overwrite_b=True)

  # Solve the real coefficient
  for i in range(Ores.nrows):      
    for j in range(Ores.ncols):

      mdarr3_set_item_ij_r( rhs[i,j], i, j, &Ores.arr)

    # end for
  # end for
  
  Oord = max( K_in.order, b_in.order)

  for ordi in range( 1, Oord + 1 ):
        
    tmp = b_in.get_order_im(ordi)

    for ord_rhs in range(ordi):

      ord_lhs = ordi - ord_rhs

      tmp -= dot( K_in.get_order_im(ord_lhs), Ores.get_order_im(ord_rhs))

    # end for 
    
    # Convert tmp to array (for specific order)
    rhs = get_order_im_array(ordi,tmp)
    # print(rhs)
    rhs = lu_solve( lu, rhs )
    # print(rhs)
    set_order_im_from_array( ordi, rhs, Ores)

  # end for 

  if res_flag == 0:

    return Ores

  # end if 

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cdef solve_sparse(csr_mdarr3_t K_in, mdarr3_t b_in, mdarr3_t out = None):
  """
  PURPOSE:   Solve OTI linear system of equations for a dense K_in.
  """
  #***************************************************************************************************
  

  from scipy.sparse.linalg import splu

  cdef mdarr3_t      O, Ores, Otmp
  cdef uint64_t i,j,k,l
  cdef ord_t ordi, ord_lhs, ord_rhs, Oord
  cdef uint8_t res_flag = 1

  if out is None:
    res_flag = 0
  # end if      
  
  if res_flag:
    Ores = out
  else:
    Ores = zeros(b_in.shape)
  # end if

  lu = splu(K_in.real.tocsc())
  rhs = b_in.real
  # Solve the real system of equations, using LU solver:
  rhs = lu.solve(rhs)

  # Solve the real coefficient
  for i in range(Ores.nrows):      
    for j in range(Ores.ncols):

      mdarr3_set_item_ij_r( rhs[i,j], i, j, &Ores.arr)

    # end for
  # end for
  
  Oord = max( K_in.order, b_in.order)

  for ordi in range( 1, Oord + 1 ):
        
    tmp = b_in.get_order_im( ordi )

    for ord_rhs in range( ordi ):

      ord_lhs = ordi - ord_rhs

      tmp -= dot( K_in.get_order_im( ord_lhs ), Ores.get_order_im( ord_rhs ) )

    # end for 
    
    # Convert tmp to array (for specific order)
    rhs = get_order_im_array( ordi, tmp )
    # print(rhs)
    rhs = lu.solve( rhs )
    # print(rhs)
    set_order_im_from_array( ordi, rhs, Ores)

  # end for 

  if res_flag == 0:

    return Ores

  # end if 

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cpdef get_order_im_array(ord_t ordi, mdarr3_t tmp):
  """
  PURPOSE:   Get a specific order from .
  """
  #***************************************************************************************************
  

  cdef np.ndarray res
  cdef mdnum3_t otmp
  cdef bases_t* bases_list
  cdef ndir_t nnz
  cdef imdir_t maxidx = 0
  cdef uint64_t i,j,k

  for i in range(tmp.size):    
    otmp = tmp.arr.p_data[i]

    if otmp.order >= ordi:
      nnz = otmp.p_nnz[ordi-1]
      
      if nnz > 0:
        maxidx = max( maxidx, otmp.p_idx[ordi-1][nnz-1])
      # end if

    # end if 
  # end for

  # get maximum basis for this index:
  bases_list = dhelp_get_imdir( maxidx, ordi)

  maxidx = dhelp_ndirOrder( bases_list[ordi-1], ordi )

  res = np.zeros((tmp.nrows,tmp.ncols*maxidx), dtype = np.float64)

  for i in range(tmp.nrows):
    for j in range(tmp.ncols):

      otmp = tmp.arr.p_data[ j + i * tmp.ncols ]

      if otmp.order >= ordi:
        
        nnz = otmp.p_nnz[ordi-1]
        
        for k in range( nnz ):          
          res[ i, j + tmp.ncols * otmp.p_idx[ordi-1][k] ] = otmp.p_im[ordi-1][k]
        # end for

      # end if 
    # end for 
  # end for

  return res

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cpdef set_order_im_from_array(ord_t ordi, np.ndarray arr, mdarr3_t tmp):
  """
  PURPOSE:   Set a specific order from an array.
  """
  #***************************************************************************************************
  

  cdef mdnum3_t otmp
  cdef ndir_t nnz, nnz_set
  cdef coeff_t val
  cdef uint64_t i,j,k

  nnz = arr.shape[1]/tmp.ncols

  otmp = mdnum3_get_tmp(5, ordi)

  for i in range(tmp.nrows):
    
    for j in range(tmp.ncols):

      mdnum3_set_r(0.0, &otmp)

      nnz_set = 0
        
      for k in range( nnz ):          
        
        val = arr[ i, j + tmp.ncols * k ] 
        
        if val != 0.0:

          otmp.p_idx[ordi-1][nnz_set]= k
          otmp.p_im[ordi-1][nnz_set] = val
          nnz_set += 1
          otmp.p_nnz[ordi-1] += 1

        # end if

      # end for

      tmp[i,j] += mdnum3_t.create( &otmp, FLAGS = 0)

    # end for 
  # end for

#-----------------------------------------------------------------------------------------------------

