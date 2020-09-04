#*****************************************************************************************************
cdef object __mul__FX__(feomatm9n1 Flhs, object rhs, object out = None):
  """
  PORPUSE: Multiplication between feomatm9n1 and object.

  """
  #***************************************************************************************************

  

  # Scalar types:
  cdef onumm9n1    orhs, ores
  cdef onumm9n1_t cores

  cdef feonumm9n1     frhs, fres
  cdef feonumm9n1_t  cfres

  cdef coeff_t    rrhs, rres
  cdef coeff_t   crres

  # Array types
  cdef omatm9n1      Orhs, Ores
  cdef oarrm9n1_t   cOres

  cdef dmat       Rrhs, Rres
  cdef darr_t    cRres

  cdef feomatm9n1    Frhs, Fres
  cdef feoarrm9n1_t cFres

  cdef uint8_t res_flag = 1
  cdef object  res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if

  if trhs == onumm9n1:
    orhs = rhs
    if res_flag:
      Fres = out
      feoarrm9n1_mul_oF_to( &orhs.num, &Flhs.arr, &Fres.arr )
    else:
      cFres = feoarrm9n1_mul_oF( &orhs.num, &Flhs.arr )
      res = feomatm9n1.create( &cFres )
    # end if
  elif trhs == feonumm9n1:
    frhs = rhs
    if res_flag:
      Fres = out
      feoarrm9n1_mul_fF_to( &frhs.num, &Flhs.arr, &Fres.arr )
    else:
      cFres = feoarrm9n1_mul_fF( &frhs.num, &Flhs.arr )
      res = feomatm9n1.create( &cFres )
    # end if
  elif trhs == feomatm9n1:
    Frhs = rhs
    if res_flag:
      Fres = out
      feoarrm9n1_mul_FF_to( &Flhs.arr, &Frhs.arr, &Fres.arr )
    else:
      cFres = feoarrm9n1_mul_FF( &Flhs.arr, &Frhs.arr )
      res = feomatm9n1.create( &cFres )
    # end if
  elif trhs == omatm9n1:
    Orhs = rhs
    if res_flag:
      Fres = out
      feoarrm9n1_mul_OF_to( &Orhs.arr, &Flhs.arr, &Fres.arr )
    else:
      cFres = feoarrm9n1_mul_OF( &Orhs.arr, &Flhs.arr )
      res = feomatm9n1.create( &cFres )
    # end if
  elif trhs == dmat:
    Rrhs = rhs
    if res_flag:
      Fres = out
      feoarrm9n1_mul_RF_to( &Rrhs.arr, &Flhs.arr, &Fres.arr )
    else:
      cFres = feoarrm9n1_mul_RF( &Rrhs.arr, &Flhs.arr )
      res = feomatm9n1.create( &cFres )
    # end if
  elif trhs in number_types:
    rrhs = rhs
    if res_flag:
      Fres = out
      feoarrm9n1_mul_rF_to( rrhs, &Flhs.arr, &Fres.arr )
    else:
      cFres = feoarrm9n1_mul_rF( rrhs, &Flhs.arr )
      res = feomatm9n1.create( &cFres )
    # end if
  else:
    raise TypeError("Unsupported mul operation between {0} and {1}.".format(type(Flhs),trhs))
  # end if

  if res_flag == 0:
    return res
  # end if

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cdef object __mul__OX__(omatm9n1 Olhs, object rhs, object out = None):
  """
  PORPUSE: Multiplication between omatm9n1 and object.

  """
  #***************************************************************************************************

  

  # Scalar types:
  cdef onumm9n1    orhs, ores
  cdef onumm9n1_t cores

  cdef feonumm9n1     frhs, fres
  cdef feonumm9n1_t  cfres

  cdef coeff_t    rrhs, rres
  cdef coeff_t   crres

  # Array types
  cdef omatm9n1      Orhs, Ores
  cdef oarrm9n1_t   cOres

  cdef dmat       Rrhs, Rres
  cdef darr_t    cRres

  cdef feomatm9n1    Frhs, Fres
  cdef feoarrm9n1_t cFres

  cdef uint8_t res_flag = 1
  cdef object  res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if

  if trhs == onumm9n1:
    orhs = rhs
    if res_flag:
      Ores = out
      oarrm9n1_mul_oO_to( &orhs.num, &Olhs.arr, &Ores.arr )
    else:
      cOres = oarrm9n1_mul_oO( &orhs.num, &Olhs.arr )
      res = omatm9n1.create( &cOres )
    # end if
  elif trhs == feomatm9n1:
    Frhs = rhs
    if res_flag:
      Fres = out
      feoarrm9n1_mul_OF_to( &Olhs.arr, &Frhs.arr, &Fres.arr )
    else:
      cFres = feoarrm9n1_mul_OF( &Olhs.arr, &Frhs.arr )
      res = feomatm9n1.create( &cFres )
    # end if
  elif trhs == omatm9n1:
    Orhs = rhs
    if res_flag:
      Ores = out
      oarrm9n1_mul_OO_to( &Olhs.arr, &Orhs.arr, &Ores.arr )
    else:
      cOres = oarrm9n1_mul_OO( &Olhs.arr, &Orhs.arr )
      res = omatm9n1.create( &cOres )
    # end if
  elif trhs == dmat:
    Rrhs = rhs
    if res_flag:
      Ores = out
      oarrm9n1_mul_RO_to( &Rrhs.arr, &Olhs.arr, &Ores.arr )
    else:
      cOres = oarrm9n1_mul_RO( &Rrhs.arr, &Olhs.arr )
      res = omatm9n1.create( &cOres )
    # end if
  elif trhs in number_types:
    rrhs = rhs
    if res_flag:
      Ores = out
      oarrm9n1_mul_rO_to( rrhs, &Olhs.arr, &Ores.arr )
    else:
      cOres = oarrm9n1_mul_rO( rrhs, &Olhs.arr )
      res = omatm9n1.create( &cOres )
    # end if
  else:
    raise TypeError("Unsupported mul operation between {0} and {1}.".format(type(Olhs),trhs))
  # end if

  if res_flag == 0:
    return res
  # end if

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cdef object __mul__RX__(dmat Rlhs, object rhs, object out = None):
  """
  PORPUSE: Multiplication between dmat and object.

  """
  #***************************************************************************************************

  

  # Scalar types:
  cdef onumm9n1    orhs, ores
  cdef onumm9n1_t cores

  cdef feonumm9n1     frhs, fres
  cdef feonumm9n1_t  cfres

  cdef coeff_t    rrhs, rres
  cdef coeff_t   crres

  # Array types
  cdef omatm9n1      Orhs, Ores
  cdef oarrm9n1_t   cOres

  cdef dmat       Rrhs, Rres
  cdef darr_t    cRres

  cdef feomatm9n1    Frhs, Fres
  cdef feoarrm9n1_t cFres

  cdef uint8_t res_flag = 1
  cdef object  res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if

  if trhs == feomatm9n1:
    Frhs = rhs
    if res_flag:
      Fres = out
      feoarrm9n1_mul_RF_to( &Rlhs.arr, &Frhs.arr, &Fres.arr )
    else:
      cFres = feoarrm9n1_mul_RF( &Rlhs.arr, &Frhs.arr )
      res = feomatm9n1.create( &cFres )
    # end if
  elif trhs == omatm9n1:
    Orhs = rhs
    if res_flag:
      Ores = out
      oarrm9n1_mul_RO_to( &Rlhs.arr, &Orhs.arr, &Ores.arr )
    else:
      cOres = oarrm9n1_mul_RO( &Rlhs.arr, &Orhs.arr )
      res = omatm9n1.create( &cOres )
    # end if
  elif trhs == dmat:
    Rrhs = rhs
    if res_flag:
      Rres = out
      darr_mul_RR_to( &Rlhs.arr, &Rrhs.arr, &Rres.arr )
    else:
      cRres = darr_mul_RR( &Rlhs.arr, &Rrhs.arr )
      res = dmat.create( &cRres )
    # end if
  elif trhs in number_types:
    rrhs = rhs
    if res_flag:
      Rres = out
      darr_mul_rR_to( rrhs, &Rlhs.arr, &Rres.arr )
    else:
      cRres = darr_mul_rR( rrhs, &Rlhs.arr )
      res = dmat.create( &cRres )
    # end if
  else:
    raise TypeError("Unsupported mul operation between {0} and {1}.".format(type(Rlhs),trhs))
  # end if

  if res_flag == 0:
    return res
  # end if

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cdef object __mul__oX__(onumm9n1 olhs, object rhs, object out = None):
  """
  PORPUSE: Multiplication between onumm9n1 and object.

  """
  #***************************************************************************************************

  

  # Scalar types:
  cdef onumm9n1    orhs, ores
  cdef onumm9n1_t cores

  cdef feonumm9n1     frhs, fres
  cdef feonumm9n1_t  cfres

  cdef coeff_t    rrhs, rres
  cdef coeff_t   crres

  # Array types
  cdef omatm9n1      Orhs, Ores
  cdef oarrm9n1_t   cOres

  cdef dmat       Rrhs, Rres
  cdef darr_t    cRres

  cdef feomatm9n1    Frhs, Fres
  cdef feoarrm9n1_t cFres

  cdef uint8_t res_flag = 1
  cdef object  res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if

  if trhs == onumm9n1:
    orhs = rhs
    if res_flag:
      ores = out
      onumm9n1_mul_oo_to( &olhs.num, &orhs.num, &ores.num )
    else:
      cores = onumm9n1_mul_oo( &olhs.num, &orhs.num )
      res = onumm9n1.create( &cores )
    # end if
  elif trhs == feonumm9n1:
    frhs = rhs
    if res_flag:
      fres = out
      feonumm9n1_mul_of_to( &olhs.num, &frhs.num, &fres.num )
    else:
      cfres = feonumm9n1_mul_of( &olhs.num, &frhs.num )
      res = feonumm9n1.create( &cfres )
    # end if
  elif trhs == feomatm9n1:
    Frhs = rhs
    if res_flag:
      Fres = out
      feoarrm9n1_mul_oF_to( &olhs.num, &Frhs.arr, &Fres.arr )
    else:
      cFres = feoarrm9n1_mul_oF( &olhs.num, &Frhs.arr )
      res = feomatm9n1.create( &cFres )
    # end if
  elif trhs == omatm9n1:
    Orhs = rhs
    if res_flag:
      Ores = out
      oarrm9n1_mul_oO_to( &olhs.num, &Orhs.arr, &Ores.arr )
    else:
      cOres = oarrm9n1_mul_oO( &olhs.num, &Orhs.arr )
      res = omatm9n1.create( &cOres )
    # end if
  elif trhs in number_types:
    rrhs = rhs
    if res_flag:
      ores = out
      onumm9n1_mul_ro_to( rrhs, &olhs.num, &ores.num )
    else:
      cores = onumm9n1_mul_ro( rrhs, &olhs.num )
      res = onumm9n1.create( &cores )
    # end if
  else:
    raise TypeError("Unsupported mul operation between {0} and {1}.".format(type(olhs),trhs))
  # end if

  if res_flag == 0:
    return res
  # end if

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cdef object __mul__fX__(feonumm9n1 flhs, object rhs, object out = None):
  """
  PORPUSE: Multiplication between feonumm9n1 and object.

  """
  #***************************************************************************************************

  

  # Scalar types:
  cdef onumm9n1    orhs, ores
  cdef onumm9n1_t cores

  cdef feonumm9n1     frhs, fres
  cdef feonumm9n1_t  cfres

  cdef coeff_t    rrhs, rres
  cdef coeff_t   crres

  # Array types
  cdef omatm9n1      Orhs, Ores
  cdef oarrm9n1_t   cOres

  cdef dmat       Rrhs, Rres
  cdef darr_t    cRres

  cdef feomatm9n1    Frhs, Fres
  cdef feoarrm9n1_t cFres

  cdef uint8_t res_flag = 1
  cdef object  res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if

  if trhs == onumm9n1:
    orhs = rhs
    if res_flag:
      fres = out
      feonumm9n1_mul_of_to( &orhs.num, &flhs.num, &fres.num )
    else:
      cfres = feonumm9n1_mul_of( &orhs.num, &flhs.num )
      res = feonumm9n1.create( &cfres )
    # end if
  elif trhs == feonumm9n1:
    frhs = rhs
    if res_flag:
      fres = out
      feonumm9n1_mul_ff_to( &flhs.num, &frhs.num, &fres.num )
    else:
      cfres = feonumm9n1_mul_ff( &flhs.num, &frhs.num )
      res = feonumm9n1.create( &cfres )
    # end if
  elif trhs == feomatm9n1:
    Frhs = rhs
    if res_flag:
      Fres = out
      feoarrm9n1_mul_fF_to( &flhs.num, &Frhs.arr, &Fres.arr )
    else:
      cFres = feoarrm9n1_mul_fF( &flhs.num, &Frhs.arr )
      res = feomatm9n1.create( &cFres )
    # end if
  elif trhs in number_types:
    rrhs = rhs
    if res_flag:
      fres = out
      feonumm9n1_mul_rf_to( rrhs, &flhs.num, &fres.num )
    else:
      cfres = feonumm9n1_mul_rf( rrhs, &flhs.num )
      res = feonumm9n1.create( &cfres )
    # end if
  else:
    raise TypeError("Unsupported mul operation between {0} and {1}.".format(type(flhs),trhs))
  # end if

  if res_flag == 0:
    return res
  # end if

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cdef object __mul__rX__(coeff_t rlhs, object rhs, object out = None):
  """
  PORPUSE: Multiplication between coeff_t and object.

  """
  #***************************************************************************************************

  

  # Scalar types:
  cdef onumm9n1    orhs, ores
  cdef onumm9n1_t cores

  cdef feonumm9n1     frhs, fres
  cdef feonumm9n1_t  cfres

  cdef coeff_t    rrhs, rres
  cdef coeff_t   crres

  # Array types
  cdef omatm9n1      Orhs, Ores
  cdef oarrm9n1_t   cOres

  cdef dmat       Rrhs, Rres
  cdef darr_t    cRres

  cdef feomatm9n1    Frhs, Fres
  cdef feoarrm9n1_t cFres

  cdef uint8_t res_flag = 1
  cdef object  res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if

  if trhs == onumm9n1:
    orhs = rhs
    if res_flag:
      ores = out
      onumm9n1_mul_ro_to( rlhs, &orhs.num, &ores.num )
    else:
      cores = onumm9n1_mul_ro( rlhs, &orhs.num )
      res = onumm9n1.create( &cores )
    # end if
  elif trhs == feonumm9n1:
    frhs = rhs
    if res_flag:
      fres = out
      feonumm9n1_mul_rf_to( rlhs, &frhs.num, &fres.num )
    else:
      cfres = feonumm9n1_mul_rf( rlhs, &frhs.num )
      res = feonumm9n1.create( &cfres )
    # end if
  elif trhs == feomatm9n1:
    Frhs = rhs
    if res_flag:
      Fres = out
      feoarrm9n1_mul_rF_to( rlhs, &Frhs.arr, &Fres.arr )
    else:
      cFres = feoarrm9n1_mul_rF( rlhs, &Frhs.arr )
      res = feomatm9n1.create( &cFres )
    # end if
  elif trhs == omatm9n1:
    Orhs = rhs
    if res_flag:
      Ores = out
      oarrm9n1_mul_rO_to( rlhs, &Orhs.arr, &Ores.arr )
    else:
      cOres = oarrm9n1_mul_rO( rlhs, &Orhs.arr )
      res = omatm9n1.create( &cOres )
    # end if
  elif trhs == dmat:
    Rrhs = rhs
    if res_flag:
      Rres = out
      darr_mul_rR_to( rlhs, &Rrhs.arr, &Rres.arr )
    else:
      cRres = darr_mul_rR( rlhs, &Rrhs.arr )
      res = dmat.create( &cRres )
    # end if
  elif trhs in number_types:
    rrhs = rhs
    res = rlhs*rrhs
  else:
    raise TypeError("Unsupported mul operation between {0} and {1}.".format(type(rlhs),trhs))
  # end if

  if res_flag == 0:
    return res
  # end if

#-----------------------------------------------------------------------------------------------------

