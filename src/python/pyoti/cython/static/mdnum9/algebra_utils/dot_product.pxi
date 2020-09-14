

#*****************************************************************************************************
cdef __dot_product_FX(mdmatfe9 Flhs, object rhs, object out = None):
  """
  PURPOSE:  Vector dot product between mdmatfe9 and other array.

  """
  #***************************************************************************************************
  cdef mdmat9      Orhs, Ores
  cdef dmat       Rrhs, Rres
  cdef mdmatfe9    Frhs, Fres
  cdef mdnum9    orhs, ores
  cdef coeff_t    rrhs, rres
  cdef mdnumfe9     frhs, fres
  # C- result holders
  cdef mdnum9_t cores
  cdef femdnum9_t  cfres

  cdef uint8_t res_flag = 1
  cdef object res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if 

  if   trhs is mdmatfe9: # FF
    Frhs = rhs
    if res_flag:

      fres = out
      femdarr9_dotproduct_FF_to( &Flhs.arr, &Frhs.arr ,&fres.num)

    else:

      cfres = femdarr9_dotproduct_FF( &Flhs.arr, &Frhs.arr )
      res = mdnumfe9.create(&cfres)
    # end if 

  elif trhs is mdmat9:   # FO
    Orhs = rhs
    if res_flag:

      fres = out
      femdarr9_dotproduct_OF_to( &Orhs.arr, &Flhs.arr, &fres.num)

    else:

      cfres = femdarr9_dotproduct_OF( &Orhs.arr, &Flhs.arr)
      res = mdnumfe9.create(&cfres)

    # end if 
  elif trhs is dmat:    # FR
    Rrhs = rhs
    if res_flag:

      fres = out
      femdarr9_dotproduct_RF_to( &Rrhs.arr, &Flhs.arr, &fres.num)

    else:

      cfres = femdarr9_dotproduct_RF( &Rrhs.arr, &Flhs.arr)
      res = mdnumfe9.create(&cfres)

    # end if
  else:
    raise TypeError("Unsupported types at dot_product operation.")    
  # end if 

  if res_flag == 0:
    return res
  # end if 

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cdef __dot_product_OX( mdmat9 Olhs, object rhs, object out = None):
  """
  PURPOSE:  Vector dot product between mdmatfe9 and other array.

  """
  #***************************************************************************************************
  cdef mdmat9      Orhs, Ores
  cdef dmat       Rrhs, Rres
  cdef mdmatfe9    Frhs, Fres
  cdef mdnum9    ores
  cdef coeff_t    rres
  cdef mdnumfe9     fres
  # C- result holders
  cdef mdnum9_t cores
  cdef femdnum9_t  cfres

  cdef uint8_t res_flag = 1
  cdef object res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if 

  if   trhs is mdmatfe9: # OF
    Frhs = rhs
    if res_flag:

      fres = out
      femdarr9_dotproduct_OF_to( &Olhs.arr, &Frhs.arr ,&fres.num)

    else:

      cfres = femdarr9_dotproduct_OF( &Olhs.arr, &Frhs.arr )
      res = mdnumfe9.create(&cfres)
    # end if 

  elif trhs is mdmat9:   # OO
    Orhs = rhs
    if res_flag:

      ores = out
      mdarr9_dotproduct_OO_to( &Olhs.arr, &Orhs.arr, &ores.num)

    else:

      cores = mdarr9_dotproduct_OO( &Olhs.arr, &Orhs.arr)
      res = mdnum9.create(&cores)

    # end if 
  elif trhs is dmat:    # OR
    Rrhs = rhs
    if res_flag:

      ores = out
      mdarr9_dotproduct_RO_to( &Rrhs.arr, &Olhs.arr, &ores.num)

    else:

      cores = mdarr9_dotproduct_RO( &Rrhs.arr, &Olhs.arr)
      res = mdnum9.create(&cores)

    # end if 

  else:
    raise TypeError("Unsupported types at dot_product operation.")    
  # end if 

  if res_flag == 0:
    return res
  # end if 

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cdef __dot_product_RX( dmat Rlhs, object rhs, object out = None):
  """
  PURPOSE:  Vector dot product between mdmatfe9 and other array.

  """
  #***************************************************************************************************
  cdef mdmat9      Orhs, Ores
  cdef dmat       Rrhs, Rres
  cdef mdmatfe9    Frhs, Fres
  cdef mdnum9    ores
  cdef coeff_t    rres
  cdef mdnumfe9     fres
  # C- result holders
  cdef mdnum9_t cores
  cdef femdnum9_t  cfres

  cdef uint8_t res_flag = 1
  cdef object res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if 

  if   trhs is mdmatfe9: # RF
    Frhs = rhs
    if res_flag:

      fres = out
      femdarr9_dotproduct_RF_to( &Rlhs.arr, &Frhs.arr ,&fres.num)

    else:

      cfres = femdarr9_dotproduct_RF( &Rlhs.arr, &Frhs.arr )
      res = mdnumfe9.create(&cfres)
    # end if 

  elif trhs is mdmat9:   # RO
    Orhs = rhs
    if res_flag:

      ores = out
      mdarr9_dotproduct_RO_to( &Rlhs.arr, &Orhs.arr, &ores.num)

    else:

      cores = mdarr9_dotproduct_RO( &Rlhs.arr, &Orhs.arr)
      res = mdnum9.create(&cores)

    # end if 
  # elif trhs is dmat:    # RR
  #   Rrhs = rhs
  #   if res_flag:

  #     rres = out
  #     darr_dotproduct_to( &Rrhs.arr, &Olhs.arr, &rres)

  #   else:

  #     rres = darr_dotproduct( &Rrhs.arr, &Olhs.arr)
  #     res = rres

  #   # end if 
  else:
    raise TypeError("Unsupported types at dot_product operation.")    
  # end if 

  if res_flag == 0:
    return res
  # end if 

#-----------------------------------------------------------------------------------------------------
