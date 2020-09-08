

#*****************************************************************************************************
cdef __dot_product_FX(feomatm10n2 Flhs, object rhs, object out = None):
  """
  PURPOSE:  Vector dot product between feomatm10n2 and other array.

  """
  #***************************************************************************************************
  cdef omatm10n2      Orhs, Ores
  cdef dmat       Rrhs, Rres
  cdef feomatm10n2    Frhs, Fres
  cdef onumm10n2    orhs, ores
  cdef coeff_t    rrhs, rres
  cdef feonumm10n2     frhs, fres
  # C- result holders
  cdef onumm10n2_t cores
  cdef feonumm10n2_t  cfres

  cdef uint8_t res_flag = 1
  cdef object res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if 

  if   trhs is feomatm10n2: # FF
    Frhs = rhs
    if res_flag:

      fres = out
      feoarrm10n2_dotproduct_FF_to( &Flhs.arr, &Frhs.arr ,&fres.num)

    else:

      cfres = feoarrm10n2_dotproduct_FF( &Flhs.arr, &Frhs.arr )
      res = feonumm10n2.create(&cfres)
    # end if 

  elif trhs is omatm10n2:   # FO
    Orhs = rhs
    if res_flag:

      fres = out
      feoarrm10n2_dotproduct_OF_to( &Orhs.arr, &Flhs.arr, &fres.num)

    else:

      cfres = feoarrm10n2_dotproduct_OF( &Orhs.arr, &Flhs.arr)
      res = feonumm10n2.create(&cfres)

    # end if 
  elif trhs is dmat:    # FR
    Rrhs = rhs
    if res_flag:

      fres = out
      feoarrm10n2_dotproduct_RF_to( &Rrhs.arr, &Flhs.arr, &fres.num)

    else:

      cfres = feoarrm10n2_dotproduct_RF( &Rrhs.arr, &Flhs.arr)
      res = feonumm10n2.create(&cfres)

    # end if
  else:
    raise TypeError("Unsupported types at dot_product operation.")    
  # end if 

  if res_flag == 0:
    return res
  # end if 

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cdef __dot_product_OX( omatm10n2 Olhs, object rhs, object out = None):
  """
  PURPOSE:  Vector dot product between feomatm10n2 and other array.

  """
  #***************************************************************************************************
  cdef omatm10n2      Orhs, Ores
  cdef dmat       Rrhs, Rres
  cdef feomatm10n2    Frhs, Fres
  cdef onumm10n2    ores
  cdef coeff_t    rres
  cdef feonumm10n2     fres
  # C- result holders
  cdef onumm10n2_t cores
  cdef feonumm10n2_t  cfres

  cdef uint8_t res_flag = 1
  cdef object res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if 

  if   trhs is feomatm10n2: # OF
    Frhs = rhs
    if res_flag:

      fres = out
      feoarrm10n2_dotproduct_OF_to( &Olhs.arr, &Frhs.arr ,&fres.num)

    else:

      cfres = feoarrm10n2_dotproduct_OF( &Olhs.arr, &Frhs.arr )
      res = feonumm10n2.create(&cfres)
    # end if 

  elif trhs is omatm10n2:   # OO
    Orhs = rhs
    if res_flag:

      ores = out
      oarrm10n2_dotproduct_OO_to( &Olhs.arr, &Orhs.arr, &ores.num)

    else:

      cores = oarrm10n2_dotproduct_OO( &Olhs.arr, &Orhs.arr)
      res = onumm10n2.create(&cores)

    # end if 
  elif trhs is dmat:    # OR
    Rrhs = rhs
    if res_flag:

      ores = out
      oarrm10n2_dotproduct_RO_to( &Rrhs.arr, &Olhs.arr, &ores.num)

    else:

      cores = oarrm10n2_dotproduct_RO( &Rrhs.arr, &Olhs.arr)
      res = onumm10n2.create(&cores)

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
  PURPOSE:  Vector dot product between feomatm10n2 and other array.

  """
  #***************************************************************************************************
  cdef omatm10n2      Orhs, Ores
  cdef dmat       Rrhs, Rres
  cdef feomatm10n2    Frhs, Fres
  cdef onumm10n2    ores
  cdef coeff_t    rres
  cdef feonumm10n2     fres
  # C- result holders
  cdef onumm10n2_t cores
  cdef feonumm10n2_t  cfres

  cdef uint8_t res_flag = 1
  cdef object res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if 

  if   trhs is feomatm10n2: # RF
    Frhs = rhs
    if res_flag:

      fres = out
      feoarrm10n2_dotproduct_RF_to( &Rlhs.arr, &Frhs.arr ,&fres.num)

    else:

      cfres = feoarrm10n2_dotproduct_RF( &Rlhs.arr, &Frhs.arr )
      res = feonumm10n2.create(&cfres)
    # end if 

  elif trhs is omatm10n2:   # RO
    Orhs = rhs
    if res_flag:

      ores = out
      oarrm10n2_dotproduct_RO_to( &Rlhs.arr, &Orhs.arr, &ores.num)

    else:

      cores = oarrm10n2_dotproduct_RO( &Rlhs.arr, &Orhs.arr)
      res = onumm10n2.create(&cores)

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

