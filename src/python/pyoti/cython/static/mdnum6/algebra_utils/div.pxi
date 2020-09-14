#*****************************************************************************************************
cdef object __div__FX__(mdmatfe6 Flhs, object rhs, object out = None):
  """
  PORPUSE: Division between mdmatfe6 and object.

  """
  #***************************************************************************************************

  

  # Scalar types:
  cdef mdnum6    orhs, ores
  cdef mdnum6_t cores

  cdef mdnumfe6     frhs, fres
  cdef femdnum6_t  cfres

  cdef coeff_t    rrhs, rres
  cdef coeff_t   crres

  # Array types
  cdef mdmat6      Orhs, Ores
  cdef mdarr6_t   cOres

  cdef dmat       Rrhs, Rres
  cdef darr_t    cRres

  cdef mdmatfe6    Frhs, Fres
  cdef femdarr6_t cFres

  cdef uint8_t res_flag = 1
  cdef object  res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if

  if trhs == mdnum6:
    orhs = rhs
    if res_flag:
      Fres = out
      femdarr6_div_Fo_to( &Flhs.arr, &orhs.num, &Fres.arr )
    else:
      cFres = femdarr6_div_Fo( &Flhs.arr, &orhs.num )
      res = mdmatfe6.create( &cFres )
    # end if
  elif trhs == mdnumfe6:
    frhs = rhs
    if res_flag:
      Fres = out
      femdarr6_div_Ff_to( &Flhs.arr, &frhs.num, &Fres.arr )
    else:
      cFres = femdarr6_div_Ff( &Flhs.arr, &frhs.num )
      res = mdmatfe6.create( &cFres )
    # end if
  elif trhs == mdmatfe6:
    Frhs = rhs
    if res_flag:
      Fres = out
      femdarr6_div_FF_to( &Flhs.arr, &Frhs.arr, &Fres.arr )
    else:
      cFres = femdarr6_div_FF( &Flhs.arr, &Frhs.arr )
      res = mdmatfe6.create( &cFres )
    # end if
  elif trhs == mdmat6:
    Orhs = rhs
    if res_flag:
      Fres = out
      femdarr6_div_FO_to( &Flhs.arr, &Orhs.arr, &Fres.arr )
    else:
      cFres = femdarr6_div_FO( &Flhs.arr, &Orhs.arr )
      res = mdmatfe6.create( &cFres )
    # end if
  elif trhs == dmat:
    Rrhs = rhs
    if res_flag:
      Fres = out
      femdarr6_div_FR_to( &Flhs.arr, &Rrhs.arr, &Fres.arr )
    else:
      cFres = femdarr6_div_FR( &Flhs.arr, &Rrhs.arr )
      res = mdmatfe6.create( &cFres )
    # end if
  elif trhs in number_types:
    rrhs = rhs
    if res_flag:
      Fres = out
      femdarr6_div_Fr_to( &Flhs.arr, rrhs, &Fres.arr )
    else:
      cFres = femdarr6_div_Fr( &Flhs.arr, rrhs )
      res = mdmatfe6.create( &cFres )
    # end if
  else:
    raise TypeError("Unsupported div operation between {0} and {1}.".format(type(Flhs),trhs))
  # end if

  if res_flag == 0:
    return res
  # end if

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cdef object __div__OX__(mdmat6 Olhs, object rhs, object out = None):
  """
  PORPUSE: Division between mdmat6 and object.

  """
  #***************************************************************************************************

  

  # Scalar types:
  cdef mdnum6    orhs, ores
  cdef mdnum6_t cores

  cdef mdnumfe6     frhs, fres
  cdef femdnum6_t  cfres

  cdef coeff_t    rrhs, rres
  cdef coeff_t   crres

  # Array types
  cdef mdmat6      Orhs, Ores
  cdef mdarr6_t   cOres

  cdef dmat       Rrhs, Rres
  cdef darr_t    cRres

  cdef mdmatfe6    Frhs, Fres
  cdef femdarr6_t cFres

  cdef uint8_t res_flag = 1
  cdef object  res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if

  if trhs == mdnum6:
    orhs = rhs
    if res_flag:
      Ores = out
      mdarr6_div_Oo_to( &Olhs.arr, &orhs.num, &Ores.arr )
    else:
      cOres = mdarr6_div_Oo( &Olhs.arr, &orhs.num )
      res = mdmat6.create( &cOres )
    # end if
  elif trhs == mdmatfe6:
    Frhs = rhs
    if res_flag:
      Fres = out
      femdarr6_div_OF_to( &Olhs.arr, &Frhs.arr, &Fres.arr )
    else:
      cFres = femdarr6_div_OF( &Olhs.arr, &Frhs.arr )
      res = mdmatfe6.create( &cFres )
    # end if
  elif trhs == mdmat6:
    Orhs = rhs
    if res_flag:
      Ores = out
      mdarr6_div_OO_to( &Olhs.arr, &Orhs.arr, &Ores.arr )
    else:
      cOres = mdarr6_div_OO( &Olhs.arr, &Orhs.arr )
      res = mdmat6.create( &cOres )
    # end if
  elif trhs == dmat:
    Rrhs = rhs
    if res_flag:
      Ores = out
      mdarr6_div_OR_to( &Olhs.arr, &Rrhs.arr, &Ores.arr )
    else:
      cOres = mdarr6_div_OR( &Olhs.arr, &Rrhs.arr )
      res = mdmat6.create( &cOres )
    # end if
  elif trhs in number_types:
    rrhs = rhs
    if res_flag:
      Ores = out
      mdarr6_div_Or_to( &Olhs.arr, rrhs, &Ores.arr )
    else:
      cOres = mdarr6_div_Or( &Olhs.arr, rrhs )
      res = mdmat6.create( &cOres )
    # end if
  else:
    raise TypeError("Unsupported div operation between {0} and {1}.".format(type(Olhs),trhs))
  # end if

  if res_flag == 0:
    return res
  # end if

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cdef object __div__RX__(dmat Rlhs, object rhs, object out = None):
  """
  PORPUSE: Division between dmat and object.

  """
  #***************************************************************************************************

  

  # Scalar types:
  cdef mdnum6    orhs, ores
  cdef mdnum6_t cores

  cdef mdnumfe6     frhs, fres
  cdef femdnum6_t  cfres

  cdef coeff_t    rrhs, rres
  cdef coeff_t   crres

  # Array types
  cdef mdmat6      Orhs, Ores
  cdef mdarr6_t   cOres

  cdef dmat       Rrhs, Rres
  cdef darr_t    cRres

  cdef mdmatfe6    Frhs, Fres
  cdef femdarr6_t cFres

  cdef uint8_t res_flag = 1
  cdef object  res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if

  if trhs == mdmatfe6:
    Frhs = rhs
    if res_flag:
      Fres = out
      femdarr6_div_RF_to( &Rlhs.arr, &Frhs.arr, &Fres.arr )
    else:
      cFres = femdarr6_div_RF( &Rlhs.arr, &Frhs.arr )
      res = mdmatfe6.create( &cFres )
    # end if
  elif trhs == mdmat6:
    Orhs = rhs
    if res_flag:
      Ores = out
      mdarr6_div_RO_to( &Rlhs.arr, &Orhs.arr, &Ores.arr )
    else:
      cOres = mdarr6_div_RO( &Rlhs.arr, &Orhs.arr )
      res = mdmat6.create( &cOres )
    # end if
  elif trhs == dmat:
    Rrhs = rhs
    if res_flag:
      Rres = out
      darr_div_RR_to( &Rlhs.arr, &Rrhs.arr, &Rres.arr )
    else:
      cRres = darr_div_RR( &Rlhs.arr, &Rrhs.arr )
      res = dmat.create( &cRres )
    # end if
  elif trhs in number_types:
    rrhs = rhs
    if res_flag:
      Rres = out
      darr_div_Rr_to( &Rlhs.arr, rrhs, &Rres.arr )
    else:
      cRres = darr_div_Rr( &Rlhs.arr, rrhs )
      res = dmat.create( &cRres )
    # end if
  else:
    raise TypeError("Unsupported div operation between {0} and {1}.".format(type(Rlhs),trhs))
  # end if

  if res_flag == 0:
    return res
  # end if

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cdef object __div__oX__(mdnum6 olhs, object rhs, object out = None):
  """
  PORPUSE: Division between mdnum6 and object.

  """
  #***************************************************************************************************

  

  # Scalar types:
  cdef mdnum6    orhs, ores
  cdef mdnum6_t cores

  cdef mdnumfe6     frhs, fres
  cdef femdnum6_t  cfres

  cdef coeff_t    rrhs, rres
  cdef coeff_t   crres

  # Array types
  cdef mdmat6      Orhs, Ores
  cdef mdarr6_t   cOres

  cdef dmat       Rrhs, Rres
  cdef darr_t    cRres

  cdef mdmatfe6    Frhs, Fres
  cdef femdarr6_t cFres

  cdef uint8_t res_flag = 1
  cdef object  res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if

  if trhs == mdnum6:
    orhs = rhs
    if res_flag:
      ores = out
      mdnum6_div_oo_to( &olhs.num, &orhs.num, &ores.num )
    else:
      cores = mdnum6_div_oo( &olhs.num, &orhs.num )
      res = mdnum6.create( &cores )
    # end if
  elif trhs == mdnumfe6:
    frhs = rhs
    if res_flag:
      fres = out
      femdnum6_div_of_to( &olhs.num, &frhs.num, &fres.num )
    else:
      cfres = femdnum6_div_of( &olhs.num, &frhs.num )
      res = mdnumfe6.create( &cfres )
    # end if
  elif trhs == mdmatfe6:
    Frhs = rhs
    if res_flag:
      Fres = out
      femdarr6_div_oF_to( &olhs.num, &Frhs.arr, &Fres.arr )
    else:
      cFres = femdarr6_div_oF( &olhs.num, &Frhs.arr )
      res = mdmatfe6.create( &cFres )
    # end if
  elif trhs == mdmat6:
    Orhs = rhs
    if res_flag:
      Ores = out
      mdarr6_div_oO_to( &olhs.num, &Orhs.arr, &Ores.arr )
    else:
      cOres = mdarr6_div_oO( &olhs.num, &Orhs.arr )
      res = mdmat6.create( &cOres )
    # end if
  elif trhs in number_types:
    rrhs = rhs
    if res_flag:
      ores = out
      mdnum6_div_or_to( &olhs.num, rrhs, &ores.num )
    else:
      cores = mdnum6_div_or( &olhs.num, rrhs )
      res = mdnum6.create( &cores )
    # end if
  else:
    raise TypeError("Unsupported div operation between {0} and {1}.".format(type(olhs),trhs))
  # end if

  if res_flag == 0:
    return res
  # end if

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cdef object __div__fX__(mdnumfe6 flhs, object rhs, object out = None):
  """
  PORPUSE: Division between mdnumfe6 and object.

  """
  #***************************************************************************************************

  

  # Scalar types:
  cdef mdnum6    orhs, ores
  cdef mdnum6_t cores

  cdef mdnumfe6     frhs, fres
  cdef femdnum6_t  cfres

  cdef coeff_t    rrhs, rres
  cdef coeff_t   crres

  # Array types
  cdef mdmat6      Orhs, Ores
  cdef mdarr6_t   cOres

  cdef dmat       Rrhs, Rres
  cdef darr_t    cRres

  cdef mdmatfe6    Frhs, Fres
  cdef femdarr6_t cFres

  cdef uint8_t res_flag = 1
  cdef object  res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if

  if trhs == mdnum6:
    orhs = rhs
    if res_flag:
      fres = out
      femdnum6_div_fo_to( &flhs.num, &orhs.num, &fres.num )
    else:
      cfres = femdnum6_div_fo( &flhs.num, &orhs.num )
      res = mdnumfe6.create( &cfres )
    # end if
  elif trhs == mdnumfe6:
    frhs = rhs
    if res_flag:
      fres = out
      femdnum6_div_ff_to( &flhs.num, &frhs.num, &fres.num )
    else:
      cfres = femdnum6_div_ff( &flhs.num, &frhs.num )
      res = mdnumfe6.create( &cfres )
    # end if
  elif trhs == mdmatfe6:
    Frhs = rhs
    if res_flag:
      Fres = out
      femdarr6_div_fF_to( &flhs.num, &Frhs.arr, &Fres.arr )
    else:
      cFres = femdarr6_div_fF( &flhs.num, &Frhs.arr )
      res = mdmatfe6.create( &cFres )
    # end if
  elif trhs in number_types:
    rrhs = rhs
    if res_flag:
      fres = out
      femdnum6_div_fr_to( &flhs.num, rrhs, &fres.num )
    else:
      cfres = femdnum6_div_fr( &flhs.num, rrhs )
      res = mdnumfe6.create( &cfres )
    # end if
  else:
    raise TypeError("Unsupported div operation between {0} and {1}.".format(type(flhs),trhs))
  # end if

  if res_flag == 0:
    return res
  # end if

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
cdef object __div__rX__(coeff_t rlhs, object rhs, object out = None):
  """
  PORPUSE: Division between coeff_t and object.

  """
  #***************************************************************************************************

  

  # Scalar types:
  cdef mdnum6    orhs, ores
  cdef mdnum6_t cores

  cdef mdnumfe6     frhs, fres
  cdef femdnum6_t  cfres

  cdef coeff_t    rrhs, rres
  cdef coeff_t   crres

  # Array types
  cdef mdmat6      Orhs, Ores
  cdef mdarr6_t   cOres

  cdef dmat       Rrhs, Rres
  cdef darr_t    cRres

  cdef mdmatfe6    Frhs, Fres
  cdef femdarr6_t cFres

  cdef uint8_t res_flag = 1
  cdef object  res = None

  trhs = type(rhs)

  if out is None:
    res_flag = 0
  # end if

  if trhs == mdnum6:
    orhs = rhs
    if res_flag:
      ores = out
      mdnum6_div_ro_to( rlhs, &orhs.num, &ores.num )
    else:
      cores = mdnum6_div_ro( rlhs, &orhs.num )
      res = mdnum6.create( &cores )
    # end if
  elif trhs == mdnumfe6:
    frhs = rhs
    if res_flag:
      fres = out
      femdnum6_div_rf_to( rlhs, &frhs.num, &fres.num )
    else:
      cfres = femdnum6_div_rf( rlhs, &frhs.num )
      res = mdnumfe6.create( &cfres )
    # end if
  elif trhs == mdmatfe6:
    Frhs = rhs
    if res_flag:
      Fres = out
      femdarr6_div_rF_to( rlhs, &Frhs.arr, &Fres.arr )
    else:
      cFres = femdarr6_div_rF( rlhs, &Frhs.arr )
      res = mdmatfe6.create( &cFres )
    # end if
  elif trhs == mdmat6:
    Orhs = rhs
    if res_flag:
      Ores = out
      mdarr6_div_rO_to( rlhs, &Orhs.arr, &Ores.arr )
    else:
      cOres = mdarr6_div_rO( rlhs, &Orhs.arr )
      res = mdmat6.create( &cOres )
    # end if
  elif trhs == dmat:
    Rrhs = rhs
    if res_flag:
      Rres = out
      darr_div_rR_to( rlhs, &Rrhs.arr, &Rres.arr )
    else:
      cRres = darr_div_rR( rlhs, &Rrhs.arr )
      res = dmat.create( &cRres )
    # end if
  elif trhs in number_types:
    rrhs = rhs
    res = rlhs/rrhs
  else:
    raise TypeError("Unsupported div operation between {0} and {1}.".format(type(rlhs),trhs))
  # end if

  if res_flag == 0:
    return res
  # end if

#-----------------------------------------------------------------------------------------------------
