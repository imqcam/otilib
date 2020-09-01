

#*****************************************************************************************************
cdef __dot_product_FX(feomatm4n5 Flhs, object rhs, object out = None):
  """
  PURPOSE:  Vector dot product between feomatm4n5 and other array.

  """
  #***************************************************************************************************
  cdef omatm4n5      Orhs, Ores
  cdef dmat       Rrhs, Rres
  cdef feomatm4n5    Frhs, Fres
  cdef onumm4n5    orhs, ores
  cdef coeff_t    rrhs, rres
  cdef feonumm4n5     frhs, fres
  # C- result holders
  cdef onumm4n5_t cores
  cdef feonumm4n5_t  cfres

  cdef uint8_t res_flag = 1
  cdef object res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if 

  if   trhs is feomatm4n5: # FF
    Frhs = rhs
    if res_flag:

      fres = out
      feoarrm4n5_dotproduct_FF_to( &Flhs.arr, &Frhs.arr ,&fres.num)

    else:

      cfres = feoarrm4n5_dotproduct_FF( &Flhs.arr, &Frhs.arr )
      res = feonumm4n5.create(&cfres)
    # end if 

  elif trhs is omatm4n5:   # FO
    Orhs = rhs
    if res_flag:

      fres = out
      feoarrm4n5_dotproduct_OF_to( &Orhs.arr, &Flhs.arr, &fres.num)

    else:

      cfres = feoarrm4n5_dotproduct_OF( &Orhs.arr, &Flhs.arr)
      res = feonumm4n5.create(&cfres)

    # end if 
  elif trhs is dmat:    # FR
    Rrhs = rhs
    if res_flag:

      fres = out
      feoarrm4n5_dotproduct_RF_to( &Rrhs.arr, &Flhs.arr, &fres.num)

    else:

      cfres = feoarrm4n5_dotproduct_RF( &Rrhs.arr, &Flhs.arr)
      res = feonumm4n5.create(&cfres)

    # end if
  else:
    raise TypeError("Unsupported types at dot_product operation.")    
  # end if 

  if res_flag == 0:
    return res
  # end if 

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cdef __dot_product_OX( omatm4n5 Olhs, object rhs, object out = None):
  """
  PURPOSE:  Vector dot product between feomatm4n5 and other array.

  """
  #***************************************************************************************************
  cdef omatm4n5      Orhs, Ores
  cdef dmat       Rrhs, Rres
  cdef feomatm4n5    Frhs, Fres
  cdef onumm4n5    ores
  cdef coeff_t    rres
  cdef feonumm4n5     fres
  # C- result holders
  cdef onumm4n5_t cores
  cdef feonumm4n5_t  cfres

  cdef uint8_t res_flag = 1
  cdef object res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if 

  if   trhs is feomatm4n5: # OF
    Frhs = rhs
    if res_flag:

      fres = out
      feoarrm4n5_dotproduct_OF_to( &Olhs.arr, &Frhs.arr ,&fres.num)

    else:

      cfres = feoarrm4n5_dotproduct_OF( &Olhs.arr, &Frhs.arr )
      res = feonumm4n5.create(&cfres)
    # end if 

  elif trhs is omatm4n5:   # OO
    Orhs = rhs
    if res_flag:

      ores = out
      oarrm4n5_dotproduct_OO_to( &Olhs.arr, &Orhs.arr, &ores.num)

    else:

      cores = oarrm4n5_dotproduct_OO( &Olhs.arr, &Orhs.arr)
      res = onumm4n5.create(&cores)

    # end if 
  elif trhs is dmat:    # OR
    Rrhs = rhs
    if res_flag:

      ores = out
      oarrm4n5_dotproduct_RO_to( &Rrhs.arr, &Olhs.arr, &ores.num)

    else:

      cores = oarrm4n5_dotproduct_RO( &Rrhs.arr, &Olhs.arr)
      res = onumm4n5.create(&cores)

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
  PURPOSE:  Vector dot product between feomatm4n5 and other array.

  """
  #***************************************************************************************************
  cdef omatm4n5      Orhs, Ores
  cdef dmat       Rrhs, Rres
  cdef feomatm4n5    Frhs, Fres
  cdef onumm4n5    ores
  cdef coeff_t    rres
  cdef feonumm4n5     fres
  # C- result holders
  cdef onumm4n5_t cores
  cdef feonumm4n5_t  cfres

  cdef uint8_t res_flag = 1
  cdef object res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if 

  if   trhs is feomatm4n5: # RF
    Frhs = rhs
    if res_flag:

      fres = out
      feoarrm4n5_dotproduct_RF_to( &Rlhs.arr, &Frhs.arr ,&fres.num)

    else:

      cfres = feoarrm4n5_dotproduct_RF( &Rlhs.arr, &Frhs.arr )
      res = feonumm4n5.create(&cfres)
    # end if 

  elif trhs is omatm4n5:   # RO
    Orhs = rhs
    if res_flag:

      ores = out
      oarrm4n5_dotproduct_RO_to( &Rlhs.arr, &Orhs.arr, &ores.num)

    else:

      cores = oarrm4n5_dotproduct_RO( &Rlhs.arr, &Orhs.arr)
      res = onumm4n5.create(&cores)

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

