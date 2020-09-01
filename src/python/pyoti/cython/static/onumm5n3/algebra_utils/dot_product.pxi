

#*****************************************************************************************************
cdef __dot_product_FX(feomatm5n3 Flhs, object rhs, object out = None):
  """
  PURPOSE:  Vector dot product between feomatm5n3 and other array.

  """
  #***************************************************************************************************
  cdef omatm5n3      Orhs, Ores
  cdef dmat       Rrhs, Rres
  cdef feomatm5n3    Frhs, Fres
  cdef onumm5n3    orhs, ores
  cdef coeff_t    rrhs, rres
  cdef feonumm5n3     frhs, fres
  # C- result holders
  cdef onumm5n3_t cores
  cdef feonumm5n3_t  cfres

  cdef uint8_t res_flag = 1
  cdef object res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if 

  if   trhs is feomatm5n3: # FF
    Frhs = rhs
    if res_flag:

      fres = out
      feoarrm5n3_dotproduct_FF_to( &Flhs.arr, &Frhs.arr ,&fres.num)

    else:

      cfres = feoarrm5n3_dotproduct_FF( &Flhs.arr, &Frhs.arr )
      res = feonumm5n3.create(&cfres)
    # end if 

  elif trhs is omatm5n3:   # FO
    Orhs = rhs
    if res_flag:

      fres = out
      feoarrm5n3_dotproduct_OF_to( &Orhs.arr, &Flhs.arr, &fres.num)

    else:

      cfres = feoarrm5n3_dotproduct_OF( &Orhs.arr, &Flhs.arr)
      res = feonumm5n3.create(&cfres)

    # end if 
  elif trhs is dmat:    # FR
    Rrhs = rhs
    if res_flag:

      fres = out
      feoarrm5n3_dotproduct_RF_to( &Rrhs.arr, &Flhs.arr, &fres.num)

    else:

      cfres = feoarrm5n3_dotproduct_RF( &Rrhs.arr, &Flhs.arr)
      res = feonumm5n3.create(&cfres)

    # end if
  else:
    raise TypeError("Unsupported types at dot_product operation.")    
  # end if 

  if res_flag == 0:
    return res
  # end if 

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cdef __dot_product_OX( omatm5n3 Olhs, object rhs, object out = None):
  """
  PURPOSE:  Vector dot product between feomatm5n3 and other array.

  """
  #***************************************************************************************************
  cdef omatm5n3      Orhs, Ores
  cdef dmat       Rrhs, Rres
  cdef feomatm5n3    Frhs, Fres
  cdef onumm5n3    ores
  cdef coeff_t    rres
  cdef feonumm5n3     fres
  # C- result holders
  cdef onumm5n3_t cores
  cdef feonumm5n3_t  cfres

  cdef uint8_t res_flag = 1
  cdef object res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if 

  if   trhs is feomatm5n3: # OF
    Frhs = rhs
    if res_flag:

      fres = out
      feoarrm5n3_dotproduct_OF_to( &Olhs.arr, &Frhs.arr ,&fres.num)

    else:

      cfres = feoarrm5n3_dotproduct_OF( &Olhs.arr, &Frhs.arr )
      res = feonumm5n3.create(&cfres)
    # end if 

  elif trhs is omatm5n3:   # OO
    Orhs = rhs
    if res_flag:

      ores = out
      oarrm5n3_dotproduct_OO_to( &Olhs.arr, &Orhs.arr, &ores.num)

    else:

      cores = oarrm5n3_dotproduct_OO( &Olhs.arr, &Orhs.arr)
      res = onumm5n3.create(&cores)

    # end if 
  elif trhs is dmat:    # OR
    Rrhs = rhs
    if res_flag:

      ores = out
      oarrm5n3_dotproduct_RO_to( &Rrhs.arr, &Olhs.arr, &ores.num)

    else:

      cores = oarrm5n3_dotproduct_RO( &Rrhs.arr, &Olhs.arr)
      res = onumm5n3.create(&cores)

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
  PURPOSE:  Vector dot product between feomatm5n3 and other array.

  """
  #***************************************************************************************************
  cdef omatm5n3      Orhs, Ores
  cdef dmat       Rrhs, Rres
  cdef feomatm5n3    Frhs, Fres
  cdef onumm5n3    ores
  cdef coeff_t    rres
  cdef feonumm5n3     fres
  # C- result holders
  cdef onumm5n3_t cores
  cdef feonumm5n3_t  cfres

  cdef uint8_t res_flag = 1
  cdef object res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if 

  if   trhs is feomatm5n3: # RF
    Frhs = rhs
    if res_flag:

      fres = out
      feoarrm5n3_dotproduct_RF_to( &Rlhs.arr, &Frhs.arr ,&fres.num)

    else:

      cfres = feoarrm5n3_dotproduct_RF( &Rlhs.arr, &Frhs.arr )
      res = feonumm5n3.create(&cfres)
    # end if 

  elif trhs is omatm5n3:   # RO
    Orhs = rhs
    if res_flag:

      ores = out
      oarrm5n3_dotproduct_RO_to( &Rlhs.arr, &Orhs.arr, &ores.num)

    else:

      cores = oarrm5n3_dotproduct_RO( &Rlhs.arr, &Orhs.arr)
      res = onumm5n3.create(&cores)

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

