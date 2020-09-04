

#*****************************************************************************************************
cdef __dot_product_FX(feomatm6n1 Flhs, object rhs, object out = None):
  """
  PURPOSE:  Vector dot product between feomatm6n1 and other array.

  """
  #***************************************************************************************************
  cdef omatm6n1      Orhs, Ores
  cdef dmat       Rrhs, Rres
  cdef feomatm6n1    Frhs, Fres
  cdef onumm6n1    orhs, ores
  cdef coeff_t    rrhs, rres
  cdef feonumm6n1     frhs, fres
  # C- result holders
  cdef onumm6n1_t cores
  cdef feonumm6n1_t  cfres

  cdef uint8_t res_flag = 1
  cdef object res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if 

  if   trhs is feomatm6n1: # FF
    Frhs = rhs
    if res_flag:

      fres = out
      feoarrm6n1_dotproduct_FF_to( &Flhs.arr, &Frhs.arr ,&fres.num)

    else:

      cfres = feoarrm6n1_dotproduct_FF( &Flhs.arr, &Frhs.arr )
      res = feonumm6n1.create(&cfres)
    # end if 

  elif trhs is omatm6n1:   # FO
    Orhs = rhs
    if res_flag:

      fres = out
      feoarrm6n1_dotproduct_OF_to( &Orhs.arr, &Flhs.arr, &fres.num)

    else:

      cfres = feoarrm6n1_dotproduct_OF( &Orhs.arr, &Flhs.arr)
      res = feonumm6n1.create(&cfres)

    # end if 
  elif trhs is dmat:    # FR
    Rrhs = rhs
    if res_flag:

      fres = out
      feoarrm6n1_dotproduct_RF_to( &Rrhs.arr, &Flhs.arr, &fres.num)

    else:

      cfres = feoarrm6n1_dotproduct_RF( &Rrhs.arr, &Flhs.arr)
      res = feonumm6n1.create(&cfres)

    # end if
  else:
    raise TypeError("Unsupported types at dot_product operation.")    
  # end if 

  if res_flag == 0:
    return res
  # end if 

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cdef __dot_product_OX( omatm6n1 Olhs, object rhs, object out = None):
  """
  PURPOSE:  Vector dot product between feomatm6n1 and other array.

  """
  #***************************************************************************************************
  cdef omatm6n1      Orhs, Ores
  cdef dmat       Rrhs, Rres
  cdef feomatm6n1    Frhs, Fres
  cdef onumm6n1    ores
  cdef coeff_t    rres
  cdef feonumm6n1     fres
  # C- result holders
  cdef onumm6n1_t cores
  cdef feonumm6n1_t  cfres

  cdef uint8_t res_flag = 1
  cdef object res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if 

  if   trhs is feomatm6n1: # OF
    Frhs = rhs
    if res_flag:

      fres = out
      feoarrm6n1_dotproduct_OF_to( &Olhs.arr, &Frhs.arr ,&fres.num)

    else:

      cfres = feoarrm6n1_dotproduct_OF( &Olhs.arr, &Frhs.arr )
      res = feonumm6n1.create(&cfres)
    # end if 

  elif trhs is omatm6n1:   # OO
    Orhs = rhs
    if res_flag:

      ores = out
      oarrm6n1_dotproduct_OO_to( &Olhs.arr, &Orhs.arr, &ores.num)

    else:

      cores = oarrm6n1_dotproduct_OO( &Olhs.arr, &Orhs.arr)
      res = onumm6n1.create(&cores)

    # end if 
  elif trhs is dmat:    # OR
    Rrhs = rhs
    if res_flag:

      ores = out
      oarrm6n1_dotproduct_RO_to( &Rrhs.arr, &Olhs.arr, &ores.num)

    else:

      cores = oarrm6n1_dotproduct_RO( &Rrhs.arr, &Olhs.arr)
      res = onumm6n1.create(&cores)

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
  PURPOSE:  Vector dot product between feomatm6n1 and other array.

  """
  #***************************************************************************************************
  cdef omatm6n1      Orhs, Ores
  cdef dmat       Rrhs, Rres
  cdef feomatm6n1    Frhs, Fres
  cdef onumm6n1    ores
  cdef coeff_t    rres
  cdef feonumm6n1     fres
  # C- result holders
  cdef onumm6n1_t cores
  cdef feonumm6n1_t  cfres

  cdef uint8_t res_flag = 1
  cdef object res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if 

  if   trhs is feomatm6n1: # RF
    Frhs = rhs
    if res_flag:

      fres = out
      feoarrm6n1_dotproduct_RF_to( &Rlhs.arr, &Frhs.arr ,&fres.num)

    else:

      cfres = feoarrm6n1_dotproduct_RF( &Rlhs.arr, &Frhs.arr )
      res = feonumm6n1.create(&cfres)
    # end if 

  elif trhs is omatm6n1:   # RO
    Orhs = rhs
    if res_flag:

      ores = out
      oarrm6n1_dotproduct_RO_to( &Rlhs.arr, &Orhs.arr, &ores.num)

    else:

      cores = oarrm6n1_dotproduct_RO( &Rlhs.arr, &Orhs.arr)
      res = onumm6n1.create(&cores)

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
