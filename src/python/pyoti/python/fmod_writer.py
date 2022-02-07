
from pyoti.core import get_dHelp, whereotilib

h = get_dHelp()

# Create valid characters
valid_chars = []

# Create chars '0' to '9'
for i in range(48,58):
  valid_chars.append(chr(i))
# end for 


# Create chars 'A' to 'Z'
for i in range(65,91):
  valid_chars.append(chr(i))
# end for 

endl = "\n"
imdir_base_name = 'E'
operators = ['*','-','+','/','**']

class writer:

  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  def __init__(self, nbases, order, language = 'fortran', tab = "  ", coeff_type = "REAL(DP)", 
    base_name = None, mdual = False, order_bound=False, order_check = False ):
    """
    PORPUSE:  The purpose of this class is to create a Fortran Module that allows static dense
              implementations of OTI and Multidual algebras.

    INPUTS:
      nbases: Number of bases in of the current implementation.
      order: Truncation order of the algebra.
      tab: Tab space. Default tab = "  "
      coeff_type; Default coefficient type. Default coeff_type = "REAL(DP)"
      base_name: Name of the type to be generated. If None, it will be set automatically. 
                 Default type_name = None
      mdual: Flag to generate MultiDual algebra instead of OTI. Default mdual = False

    """

    global imdir_base_name
    
    self.mdual = mdual
    self.order_check = order_check
    
    if self.mdual:
      self.nbases = max(order,nbases)
      self.order  = max(order,nbases)
    else:
      self.order   = order
      self.nbases  = nbases
    # end if 

    self.tab     = tab
    self.coeff_t = coeff_type
    self.lang    = language
  
    self.get = "%"
    self.comment = "! "
    self.endl = "\n"

    imdir_base_name = 'E'

    self.new_line_mark = '&'
    self.real_str = 'R'
    self.zero = '0.0_DP'
    self.basename = "O"

    if self.mdual :

      self.basename = "MD"

    # end if 

    if base_name is None:

      if not self.mdual:

        self.type_name = self.basename + 'NUMM'+ str(self.nbases) + "N" + str(self.order)
        self.func_name = self.basename + 'NUMM'+ str(self.nbases) + "N" + str(self.order)

      else:

        self.type_name = self.basename + 'NUM'+ str(self.nbases)
        self.func_name = self.basename + 'NUM'+ str(self.nbases)

      #end if 
    
    else:

      self.type_name = type_name
      self.func_name = type_name

    # end if 

    if self.mdual == False:

      self.nimdir = h.get_ndir_total(self.nbases, self.order)

    else:

      self.nimdir = 2**order

    # end if
    
    # append imaginary direction.

    self.name_imdir = []
    self.name_imdir.append( [] )
    self.name_imdir[0].append( self.real_str )

    self.idx_imdir = []
    self.idx_imdir.append( [] )
    self.idx_imdir[0].append( 0 )
    
    self.use_imdir = []
    self.use_imdir.append( [] )
    self.use_imdir[0].append( True )

    for ordi in range(1,self.order+1):

      self.name_imdir.append( [] )
      self.use_imdir.append( [] )
      self.idx_imdir.append( [] )
      
      nimdir_i = h.get_ndir_order(self.nbases, ordi)

      for j in range(nimdir_i):
        
        str_out = imdir_base_name

        list_bases = h.get_fulldir(j,ordi)
        
        for i in range(list_bases.size):

          str_out += valid_chars[list_bases[i]]

        # end for 

        if not self.mdual:
          
          self.name_imdir[ordi].append(str_out)  
          self.use_imdir[ordi].append(True)
          self.idx_imdir[ordi].append(j)

        else:
          
          # Check if it is a valid multidual direction.
          str_test = "".join(dict.fromkeys(str_out))
          
          if str_test == str_out:
          
            self.name_imdir[ordi].append(str_out)
            self.use_imdir[ordi].append(True)
            self.idx_imdir[ordi].append(j)
          
          # end if 

        # end if

      # end for 

    # end for 

    # Precompute multiplication
    self.mult_res = []
    self.mult_res.append([]) # Order 0.
    self.mult_res_total = []
    self.mult_res_total.append([[[[0,0,self.real_str],[0,0,self.real_str]]]]) # Order 0.

    for ordi in range(1,self.order+1):

      dirs = self.name_imdir[ordi]
      idxi = self.idx_imdir[ordi]

      self.mult_res.append([])
      mults = self.mult_res[-1]

      for j in range(len(dirs)):
        mults.append([]) 
      # end for      

      for ordj in range(1, ordi // 2 + 1):
        
        ordk = ordi - ordj

        dirsj = self.name_imdir[ordj]
        dirsk = self.name_imdir[ordk]

        idxj = self.idx_imdir[ordj]
        idxk = self.idx_imdir[ordk]

        for j in range(len(dirsj)):
          for k in range(len(dirsk)):

            i,iordi = h.mult_dir(idxj[j],ordj,idxk[k],ordk)

            if i in idxi:
              ii = idxi.index(i)
              mults[ii].append([ dirsj[j], dirsk[k] ])
              if  ordj != ordk:
                mults[ii].append([ dirsk[k],dirsj[j] ])
              # end if 

            #end if 
            
          # end for
        # end for 
      # end for 
    # end for 

    for ordi in range(1,self.order+1):

      dirs = self.name_imdir[ordi]
      idxi = self.idx_imdir[ordi]

      self.mult_res_total.append([])
      mults_total = self.mult_res_total[-1]

      for j in range(len(dirs)):
        mults_total.append([]) 
      # end for
      
      # Do here ordj = 0
      ordj = 0; j=0;
      ordk = ordi - ordj
      dirsj = self.name_imdir[ordj]
      dirsk = self.name_imdir[ordk]

      idxj = self.idx_imdir[ordj]
      idxk = self.idx_imdir[ordk]
      for k in range(len(dirsk)):

        i,iordi = (idxk[k],ordk)

        if i in idxi:
          ii = idxi.index(i)
          mults_total[ii].append([ [0,ordj,dirsj[j]], [idxk[k],ordk,dirsk[k]] ])
          if  ordj != ordk:
            mults_total[ii].append([ [idxk[k],ordk,dirsk[k]], [idxj[j],ordj,dirsj[j]] ])
          # end if 
        #end if 
        
      # end for

      for ordj in range(1, ordi // 2 + 1):
        
        ordk = ordi - ordj

        dirsj = self.name_imdir[ordj]
        dirsk = self.name_imdir[ordk]

        idxj = self.idx_imdir[ordj]
        idxk = self.idx_imdir[ordk]

        for j in range(len(dirsj)):
          for k in range(len(dirsk)):

            i,iordi = h.mult_dir(idxj[j],ordj,idxk[k],ordk)

            if i in idxi:
              ii = idxi.index(i)
              mults_total[ii].append([ [idxj[j],ordj,dirsj[j]], [idxk[k],ordk,dirsk[k]] ])
              if  ordj != ordk:
                mults_total[ii].append([ [idxk[k],ordk,dirsk[k]], [idxj[j],ordj,dirsj[j]] ])
              # end if 

            # end if 
            
          # end for
        # end for 
      # end for 
    # end for 
    
    self.function_list = []
    self.private_members = ['DP','TORDER','NUM_IM_DIR']
    self.overloads = {}

    self.overloads['*'] = []
    self.overloads['+'] = []
    self.overloads['-'] = []
    self.overloads['/'] = []
    self.overloads['='] = []
    self.overloads['**'] = []
    self.overloads['PPRINT'] = []
    self.overloads['TRANSPOSE'] = []
    self.overloads['MATMUL'] = []
    self.overloads['UNFOLD'] = []
    self.overloads['TO_CR'] = []
    self.overloads['SIN'] = []
    self.overloads['COS'] = []
    self.overloads['TAN'] = []
    self.overloads['ASIN'] = []
    self.overloads['ACOS'] = []
    self.overloads['ATAN'] = []
    self.overloads['SINH'] = []
    self.overloads['COSH'] = []
    self.overloads['TANH'] = []
    self.overloads['ASINH'] = []
    self.overloads['ACOSH'] = []
    self.overloads['ATANH'] = []
    self.overloads['SQRT'] = []
    self.overloads['LOG'] = []
    self.overloads['EXP'] = []
    self.overloads['LOG10'] = []
    self.overloads['GEM'] = []
    self.overloads['FEVAL'] = []
    self.overloads['REAL'] = []
    

  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  def set_constant_parameters(self, level = ""):
    """
    PORPUSE:  Define constant parameters of the fortran module .
    """
    
    str_out = ""

    str_out += level + "INTEGER, PARAMETER :: DP         = 8\n"
    str_out += level + "INTEGER, PARAMETER :: NUM_IM_DIR = " + str(self.nimdir) + self.endl
    str_out += level + "INTEGER, PARAMETER :: TORDER     = " + str(self.order) + self.endl

    return str_out

  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  def set_type_fortran(self, level = ""):
    """
    PORPUSE:  The porpuse of this class is to create Modules that allow dense OTI structures
              to be manipulated in languages like Fortran and Cython. 
    """
    global h

    str_out = ""

    str_out += level + "TYPE "+self.type_name+self.endl


    # Write real part.
    str_out += level + self.tab + self.comment + "Real" + self.endl
    str_out += level + self.tab + self.coeff_t + " :: " + self.real_str + self.endl

    for ordi in range(1,self.order+1):
    
      str_out += level + self.tab + self.comment + "Order " + str(ordi) + self.endl
      dirs = self.name_imdir[ordi]

      for j in range(len(dirs)):

        str_out += level + self.tab + self.coeff_t + " :: " +dirs[j]+ self.endl

      # end for 

    # end for 

    # Order check: May improve performance by only performing required operations.
    # this new member of the Type (order) traces the order and only performs operations
    # that are required by the  
    if self.order_check:
    
      str_out += level + self.tab + "INTEGER :: ORDER" + self.endl

    # end if 


    str_out += level + "END TYPE "+self.type_name+self.endl

    return str_out

  #---------------------------------------------------------------------------------------------------  
  

  #***************************************************************************************************
  def set_type_constants(self, level = ""):
    """
    PORPUSE:  The porpuse of this class is to create Modules that allow dense OTI structures
              to be manipulated in languages like Fortran and Cython. 
    """
    global h

    str_out = ""
    str_out += level + self.comment + "Constant imaginary directions." + self.endl

    type_definition = "TYPE("+ self.type_name + "), PARAMETER"
    
    for ordi in range(1,self.order+1):
    
      str_out += level + self.comment + "Order " + str(ordi) + self.endl
      dirs = self.name_imdir[ordi]

      for j in range(len(dirs)):
        active_dir = dirs[j]
        str_out += level + type_definition + " :: " + dirs[j] + ' = '
        str_out += self.type_name + "("+self.zero+","
        
        for ordj in range(1,self.order+1):
          
          dirsj = self.name_imdir[ordj]

          for i in range(len(dirsj)):
            
            if dirsj[i] == active_dir:
              str_out += "1.0_DP,"
            else:
              str_out += "0.0_DP,"
            # end if 

          # end for

        # end for 

        str_out = str_out[:-1]
        str_out += ")" + self.endl

      # end for 

    # end for 

    return str_out

  #---------------------------------------------------------------------------------------------------  
  


  #***************************************************************************************************
  def addition_like_oo(self, level = "", operator = " + ", lhs_name= "LHS",rhs_name= "RHS", res_name = "RES"):
    """
    PORPUSE:  Addition like operation between two OTIs.
    """
    global h
    str_out = ""

    str_out += level + self.comment+" Addition like operation \'"+str(operator)+"\'"+endl


    # Write real part.
    str_out += level + self.comment + " Real" + self.endl
    str_out += level + res_name + self.get + self.real_str + " = "
    str_out +=         lhs_name + self.get + self.real_str + operator
    str_out +=         rhs_name + self.get + self.real_str + self.endl

    for ordi in range(1,self.order+1):
      str_out += level +self.comment + "Order " + str(ordi) + self.endl
      dirs = self.name_imdir[ordi]

      for j in range(len(dirs)):
        str_out += level + res_name + self.get + dirs[j] + " = "
        str_out +=         lhs_name + self.get + dirs[j] + operator
        str_out +=         rhs_name + self.get + dirs[j] + self.endl
        
      # end for 

    # end for 

    return str_out

  #---------------------------------------------------------------------------------------------------  

  
  #***************************************************************************************************
  def addition_like_ro(self, level = "", operator = " + ", lhs_name= "LHS",rhs_name= "RHS", res_name = "RES"):
    """
    PORPUSE:  Addition like operation between real and OTIs. (LHS is REAL and RHS is OTI)
    """
    global h
    str_out = ""

    str_out += level + "! Addition like operation \'"+str(operator)+"\'" + endl


    # Write real part.
    str_out += level + "! Real" + self.endl
    str_out += level + res_name + self.get + self.real_str + " = "
    str_out +=         lhs_name + operator
    str_out +=         rhs_name + self.get + self.real_str + self.endl

    for ordi in range(1,self.order+1):
      str_out += level +self.comment + "Order " + str(ordi) + endl
      dirs = self.name_imdir[ordi]

      for j in range(len(dirs)):
        str_out += level + res_name + self.get + dirs[j] + " = "
        str_out +=         operator
        str_out +=         rhs_name + self.get + dirs[j] + self.endl
        
      # end for 

    # end for 

    return str_out

  #---------------------------------------------------------------------------------------------------  


  #***************************************************************************************************
  def addition_like_or(self, level = "", operator = " + ", lhs_name= "LHS",rhs_name= "RHS", res_name = "RES"):
    """
    PORPUSE:  Addition like operation between real and OTIs.  (LHS is OTI and RHS is REAL)
    """
    global h
    str_out = ""

    str_out += level + "! Addition like operation \'"+str(operator)+"\'\n"


    # Write real part.
    str_out += level + "! Real" + self.endl
    str_out += level + res_name + self.get + self.real_str + " = "
    str_out +=         lhs_name + self.get + self.real_str + operator
    str_out +=         rhs_name + self.endl

    for ordi in range(1,self.order+1):
      str_out += level +self.comment + "Order " + str(ordi) + self.endl
      dirs = self.name_imdir[ordi]

      for j in range(len(dirs)):
        str_out += level + res_name + self.get + dirs[j] + " = "
        
        str_out +=         lhs_name + self.get + dirs[j] + self.endl
        
      # end for 

    # end for 

    return str_out

  #---------------------------------------------------------------------------------------------------  






  #***************************************************************************************************
  def multiplication_like_ro(self, level = "", operator = " * ", lhs_name= "LHS",rhs_name= "RHS", res_name = "RES"):
    """
    PORPUSE:  multiplication like operation between real and OTIs. (LHS is REAL and RHS is OTI)
    """
    global h
    str_out = ""

    str_out += level + "! Addition like operation \'"+str(operator)+"\'"+endl


    # Write real part.
    str_out += level + self.comment + "Real" + self.endl
    str_out += level + res_name + self.get + self.real_str + " = "
    str_out +=         lhs_name + operator
    str_out +=         rhs_name + self.get + self.real_str + self.endl

    for ordi in range(1,self.order+1):
      str_out += level +self.comment + "Order " + str(ordi) + self.endl
      dirs = self.name_imdir[ordi]

      for j in range(len(dirs)):
        str_out += level + res_name + self.get + dirs[j] + " = "
        str_out +=         lhs_name + operator
        str_out +=         rhs_name + self.get + dirs[j] + self.endl
        
      # end for 

    # end for 

    return str_out

  #--------------------------------------------------------------------------------------------------- 

  #***************************************************************************************************
  def multiplication_like_or(self, level = "", operator = " * ", lhs_name= "LHS",rhs_name= "RHS", 
    res_name = "RES"):
    """
    PORPUSE:  multiplication like operation between real and OTIs. (LHS is REAL and RHS is OTI)
    """
    global h
    str_out = ""

    str_out += level + self.comment + " Multiplication like operation \'"+str(operator)+"\'"+ endl


    # Write real part.
    str_out += level + self.comment + "Real" + self.endl
    str_out += level + res_name + self.get + self.real_str + " = "
    str_out +=         lhs_name + self.get + self.real_str + operator
    str_out +=         rhs_name + self.endl

    for ordi in range(1,self.order+1):
      str_out += level +self.comment + "Order " + str(ordi) + self.endl
      dirs = self.name_imdir[ordi]

      for j in range(len(dirs)):
        str_out += level + res_name + self.get + dirs[j] + " = "
        str_out +=         lhs_name + self.get + dirs[j] + operator
        str_out +=         rhs_name + self.endl
        
      # end for 

    # end for 

    return str_out

  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  def multiplication_like_function_ro(self, level = "", f_name = "FUNCTION", lhs_name= "LHS",
    rhs_name= "RHS", res_name = "RES", separator = ",",f_open = "(", f_close = ")"):
    """
    PORPUSE:  multiplication like operation between real and OTIs. (LHS is REAL and RHS is OTI)
    """
    global h
    
    str_out = ""

    str_out += level + self.comment + "Multiplication like function \'"
    str_out += f_name + f_open + lhs_name + separator + rhs_name + f_close
    str_out += "\'\n"


    # Write real part.
    str_out += level +  self.comment + " Real" + self.endl
    str_out += level + res_name + self.get + self.real_str + " = "
    str_out += f_name + f_open
    str_out +=         lhs_name + separator
    str_out +=         rhs_name + self.get + self.real_str + f_close + self.endl

    for ordi in range(1,self.order+1):

      str_out += self.endl
      str_out += level + self.comment + "Order " + str(ordi) + self.endl
      dirs = self.name_imdir[ordi]

      for j in range(len(dirs)):

        str_out += level  + res_name + self.get + dirs[j] + " = "
        str_out += f_name + f_open
        str_out +=         lhs_name + separator
        str_out +=         rhs_name + self.get + dirs[j] + f_close + self.endl
        
      # end for 


    # end for 

    return str_out

  #--------------------------------------------------------------------------------------------------- 

  #***************************************************************************************************
  def multiplication_like_function_or(self, level = "", f_name = "FUNCTION", lhs_name= "LHS",
    rhs_name= "RHS", res_name = "RES", separator = ",", f_open = "(", f_close = ")"):
    """
    PORPUSE:  multiplication like operation between real and OTIs. (LHS is REAL and RHS is OTI)
    """
    global h
    
    str_out = ""

    str_out += level + self.comment + "Multiplication like function \'"
    str_out += f_name + f_open + lhs_name + separator + rhs_name + f_close
    str_out += "\'" + endl


    # Write real part.
    str_out += level + self.comment + " Real" + self.endl
    str_out += level + res_name + self.get + self.real_str + " = "
    str_out += f_name + f_open
    str_out +=         lhs_name + self.get + self.real_str + separator
    str_out +=         rhs_name + f_close + self.endl

    for ordi in range(1,self.order+1):

      str_out += self.endl
      str_out += level +self.comment + "Order " + str(ordi) + self.endl
      dirs = self.name_imdir[ordi]

      for j in range(len(dirs)):

        str_out += level + res_name + self.get + dirs[j] + " = "
        str_out += f_name + f_open
        str_out +=         lhs_name + self.get + dirs[j] + separator
        str_out +=         rhs_name + f_close + self.endl
        
      # end for 

    # end for 

    return str_out

  #---------------------------------------------------------------------------------------------------  

  # ***************************************************************************************************
  def multiplication_like_function_oo(self, level = "", f_name = "FUNCTION", lhs_name= "LHS", 
    rhs_name= "RHS", res_name = "RES", separator = ",", f_open = "(", f_close = ")", 
    addition = " + ", lhs_order = 0, rhs_order =0, comment = True, inverted = True ):
    """
    PORPUSE:  Multiplication like operation between OTI and OTI.
    """
    global h
    
    res_getter = self.get  
    lhs_getter = self.get
    rhs_getter = self.get

    res_order = lhs_order + rhs_order

    str_out = ""
    if comment:
      str_out += level + self.comment + " Multiplication like function \'"
      str_out += f_name + f_open + lhs_name + separator + rhs_name + f_close
      str_out += "\'\n"

    if inverted:
      eval_list = range(self.order,res_order-1,-1)
    else:
      eval_list = range(res_order,self.order+1)
    # end if 

    for ordi in eval_list:
      # str_out += self.endl
      str_out += level +self.comment + "Order " + str(ordi) + self.endl
      dirs = self.name_imdir[ordi]
      idxi = self.idx_imdir[ordi]

      mult_res_alldirs = self.mult_res_total[ordi]

      # Multiply the different imaginary directions all togeather such that resulting order is 
      # ordi.
      # print("Order "+str(ordi))


      for j in range(len(dirs)):
        mult_res = mult_res_alldirs[j]

        # Write result variable.
        str_out += level + res_name + res_getter + dirs[j] + " = " 
        
        nterms = len(mult_res)
        l = 0
        for k in range(nterms):

          
          
          mult = mult_res[k] # Get current direction two term result.
          # get Orders:
          lhs_ordi = mult[0][1]
          rhs_ordi = mult[1][1]

          if lhs_ordi>=lhs_order and rhs_ordi>=rhs_order:

            if l != 0:
              str_out += addition
            # end if 
            
            if ( (l+1)%3 == 0 ) and ( l != ( nterms-1 ) ) :
              str_out += " " + self.new_line_mark + endl
              str_out += level +' '*(len(res_name)+len(dirs[j])+1)
            # end if 

            str_out += f_name + f_open
            str_out +=         lhs_name + lhs_getter + mult[0][2] + separator
            str_out +=         rhs_name + rhs_getter + mult[1][2]
            str_out += f_close 

            

            l += 1

          # end if 

        # end for 
        str_out += self.endl


        
      # end for 

    # end for 

    return str_out

  #---------------------------------------------------------------------------------------------------  



  #***************************************************************************************************
  def addition_like_function_oo(self, level = "", f_name = "FUNCTION", lhs_name= "LHS",
    rhs_name= "RHS", res_name = "RES", separator = ",", f_open = "(", f_close = ")", 
    addition = " + "  ):
    """
    PORPUSE:  Addition like function between two OTIs.
    """
    global h
    str_out = ""


    str_out += level + self.comment + "Addition like function \'"
    str_out += f_name + f_open + lhs_name + separator + rhs_name + f_close
    str_out += "\'"+ endl


    # Write real part.
    str_out += level + self.comment + " Real" + endl
    str_out += level + res_name + self.get + self.real_str + " = "
    str_out += f_name + f_open
    str_out +=         lhs_name + self.get + self.real_str + separator
    str_out +=         rhs_name + self.get + self.real_str + f_close + self.endl


    for ordi in range(1,self.order+1):
      str_out += self.endl
      str_out += level +self.comment + "Order " + str(ordi) + endl
      dirs = self.name_imdir[ordi]

      for j in range(len(dirs)):
        
        str_out += level + res_name + self.get + dirs[j] + " = "
        str_out += f_name + f_open
        str_out +=         lhs_name + self.get + dirs[j] + separator
        str_out +=         rhs_name + self.get + dirs[j] + f_close + self.endl
        
      # end for 

    # end for 

    return str_out

  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  def addition_like_function_ro(self, level = "", f_name = "FUNCTION", lhs_name= "LHS",
    rhs_name= "RHS", res_name = "RES", separator = ",", f_open = "(", f_close = ")", 
    addition = " + "  ):
    """
    PORPUSE:  Addition like function between two OTIs.
    """
    global h
    str_out = ""


    str_out += level + self.comment + "Addition like function \'"
    str_out += f_name + f_open + lhs_name + separator + rhs_name + f_close
    str_out += "\'\n"


    # Write real part.
    str_out += level + self.comment + "Real" + self.endl
    str_out += level + res_name + self.get + self.real_str + " = "
    str_out += f_name + f_open
    str_out +=         lhs_name + separator
    str_out +=         rhs_name + self.get + self.real_str + f_close + self.endl


    for ordi in range(1,self.order+1):
      str_out += self.endl
      str_out += level +self.comment + "Order " + str(ordi) + self.endl
      dirs = self.name_imdir[ordi]

      for j in range(len(dirs)):
        
        str_out += level + res_name + self.get + dirs[j] + " = "
        str_out += separator + rhs_name + self.get + dirs[j] + self.endl
        
      # end for 

    # end for 

    return str_out

  #--------------------------------------------------------------------------------------------------- 

  #***************************************************************************************************
  def addition_like_function_or(self, level = "", f_name = "FUNCTION", lhs_name= "LHS",
    rhs_name= "RHS", res_name = "RES", separator = ",", f_open = "(", f_close = ")", 
    addition = " + "  ):
    """
    PORPUSE:  Addition like function between two OTIs.
    """
    global h
    str_out = ""


    str_out += level + self.comment + "Addition like function \'"
    str_out += f_name + f_open + lhs_name + separator + rhs_name + f_close
    str_out += "\'\n"


    # Write real part.
    str_out += level + self.comment + "Real" + self.endl
    str_out += level + res_name + self.get + self.real_str + " = "
    str_out += f_name + f_open
    str_out +=         lhs_name + self.get + self.real_str + separator
    str_out +=         rhs_name + f_close + self.endl


    for ordi in range(1,self.order+1):
      str_out += self.endl
      str_out += level +self.comment + "Order " + str(ordi) + self.endl
      dirs = self.name_imdir[ordi]

      for j in range(len(dirs)):
        
        str_out += level + res_name + self.get + dirs[j] + " = "
        str_out +=         lhs_name + self.get + dirs[j] + self.endl
        
      # end for 

    # end for 

    return str_out

  #--------------------------------------------------------------------------------------------------- 


  #***************************************************************************************************
  def assignr_like_function(self, level = "", f_name = "FUNCTION", lhs_name= "LHS",
    res_name = "RES", f_open = "(", f_close = ")"):
    """
    PORPUSE:  Addition like function between two OTIs.
    """
    global h
    str_out = ""


    str_out += level + self.comment + "Assign like function \'"
    str_out += f_name + f_open + lhs_name + f_close
    str_out += "\'\n"


    # Write real part.
    str_out += level + self.comment + "Real" + self.endl
    str_out += level + res_name + self.get + self.real_str + " = "
    str_out += f_name + f_open
    str_out +=         lhs_name + f_close + self.endl


    for ordi in range(1,self.order+1):
      str_out += self.endl
      str_out += level +self.comment + "Order " + str(ordi) + self.endl
      dirs = self.name_imdir[ordi]

      for j in range(len(dirs)):
        
        str_out += level + res_name + self.get + dirs[j] + " = "+ self.zero + self.endl
        
      # end for 

    # end for 

    return str_out
  #--------------------------------------------------------------------------------------------------- 

  #***************************************************************************************************
  def assignr_like_function(self, level = "", f_name = "FUNCTION", lhs_name= "LHS",
    res_name = "RES", f_open = "(", f_close = ")"):
    """
    PORPUSE:  Addition like function between two OTIs.
    """
    global h
    str_out = ""


    str_out += level + self.comment + "Assign like function \'"
    str_out += f_name + f_open + lhs_name + f_close
    str_out += "\'\n"


    # Write real part.
    str_out += level + self.comment + "Real" + self.endl
    str_out += level + res_name + self.get + self.real_str + " = "
    str_out += f_name + f_open
    str_out +=         lhs_name + f_close + self.endl


    for ordi in range(1,self.order+1):
      str_out += self.endl
      str_out += level +self.comment + "Order " + str(ordi) + self.endl
      dirs = self.name_imdir[ordi]

      for j in range(len(dirs)):
        
        str_out += level + res_name + self.get + dirs[j] + " = "+ self.zero + self.endl
        
      # end for 

    # end for 

    return str_out
  #--------------------------------------------------------------------------------------------------- 

  #***************************************************************************************************
  def getim_scalar_function(self, level = "", f_name = "FUNCTION", lhs_name= "LHS",
    res_name = "RES", f_open = "(", f_close = ")", tab = "  "):
    """
    PORPUSE:  getim like function between two OTIs.
    """
    global h
    str_out = ""


    str_out += level + self.comment + "Get Imaginary coefficient." + endl
    str_out += level +res_name+" = " + self.zero + self.endl

    # Write real part.
    str_out += level + self.comment + "Real" + self.endl
    str_out += level + "switch (order){"+endl
    str_out += level + tab +  "case 0:" +endl
    str_out += level + 2*tab + res_name + " = " +lhs_name + self.get + self.real_str + self.endl
    
    

    for ordi in range(1,self.order+1):
      str_out += level + tab + "case "+str(ordi)+":"+endl
      
      dirs = self.name_imdir[ordi]
      levelj = level + 2*tab 
      str_out += levelj + "switch (indx){"+endl 
      for j in range(len(dirs)):
        
        str_out += levelj+tab+ "case "+str(j) + ":" + endl
        str_out += levelj+2*tab+res_name + " = " + lhs_name + self.get + dirs[j] + self.endl
          
      # end for 
      str_out += levelj + "}" + endl
    # end for 

    str_out += level + "}"

    return str_out


  #--------------------------------------------------------------------------------------------------- 

  #***************************************************************************************************
  def pprint_scalar_function(self, level = "", lhs_name= "lhs", fmt = "%.8g",tab = "  "):
    """
    PORPUSE:  getim like function between two OTIs.
    """
    global h
    str_out = ""


    str_out += level + self.comment + "Print function." + endl

    # Write real part.
    str_out += level + self.comment + " Real" + self.endl
    str_out += level + 'printf(\"'+fmt+'\",'
    str_out += lhs_name + self.get + self.real_str
    str_out += ')'+self.endl
    
    
    for ordi in range(1,self.order+1):
      str_out += level + self.comment + " Order " + str(ordi)+ self.endl
      dirs = self.name_imdir[ordi]
            
      for j in range(len(dirs)):
        
        
        str_out += level + 'printf(\" + '+fmt+' * ' + dirs[j] +'\",'
        str_out += lhs_name + self.get + dirs[j] 
        str_out += ')'+self.endl
          
      # end for 
    # end for 

    str_out += level + 'printf(\"\\n\")'+self.endl

    return str_out


  #--------------------------------------------------------------------------------------------------- 

  #***************************************************************************************************
  def negation_like_function(self, level = "", f_name = "FUNCTION", lhs_name= "LHS",
    res_name = "RES", f_open = "(", f_close = ")"):
    """
    PORPUSE:  Addition like function between two OTIs.
    """
    global h
    str_out = ""


    str_out += level + self.comment + "Negation like function \'"
    str_out += f_name + f_open + lhs_name + f_close
    str_out += "\'\n"


    # Write real part.
    str_out += level + self.comment + "Real" + self.endl
    str_out += level + res_name + self.get + self.real_str + " = "
    str_out += f_name + f_open
    str_out +=         lhs_name + self.get + self.real_str + f_close + self.endl


    for ordi in range(1,self.order+1):
      
      str_out += level +self.comment + "Order " + str(ordi) + self.endl
      dirs = self.name_imdir[ordi]

      for j in range(len(dirs)):
        
        str_out += level + res_name + self.get + dirs[j] + " = "
        str_out += f_name + f_open
        str_out +=         lhs_name + self.get + dirs[j] + f_close + self.endl
        
      # end for 

    # end for 

    return str_out


  #--------------------------------------------------------------------------------------------------- 


  #***************************************************************************************************
  def gem_like_function_oo(self, level = "", f_name = "FUNCTION", a_name= "A",
    b_name= "B", c_name= "C", res_name = "RES", separator = ",", 
    f_open = "(", f_close = ")",  addition = " + ", inverted = True ):
    """
    PORPUSE:  Multiplication like operation between OTI and OTI.
    """
    global h

    res_getter = self.get
    a_getter   = self.get
    b_getter   = self.get
    c_getter   = self.get

    str_out = ""

    str_out += level + self.comment + " General multiplication like function \'"
    str_out += f_name + f_open + a_name + separator + b_name + f_close
    str_out += addition + c_name
    str_out += "\'\n"

    if inverted:
      eval_list = range(self.order,-1,-1)
    else:
      eval_list = range(0,self.order+1)
    # end if 

    for ordi in range(0,self.order+1):
      str_out += self.endl
      str_out += level +self.comment + "Order " + str(ordi) + self.endl
      dirs = self.name_imdir[ordi]
      idxi = self.idx_imdir[ordi]

      mult_res_alldirs = self.mult_res_total[ordi]

      # Multiply the different imaginary directions all togeather such that resulting order is 
      # ordi.
      
      for j in range(len(dirs)):
        mult_res = mult_res_alldirs[j]

        # Write result variable.
        str_out += level + res_name + res_getter + dirs[j] + " = " 
        str_out += c_name + c_getter + dirs[j] + addition
        
        nterms = len(mult_res)

        for k in range(nterms):

          if k != 0:
            str_out += addition
          # end if 
          
          mult = mult_res[k] # Get current direction two term result.

          str_out += f_name + f_open
          str_out +=         a_name + a_getter + mult[0][2] + separator
          str_out +=         b_name + b_getter + mult[1][2]
          str_out += f_close 

          if ( (k+1)%3 == 0 ) and ( k != ( nterms-1 ) ) :
            str_out += " " + self.new_line_mark + endl
            str_out += level +' '*(len(res_name)+len(dirs[j])+1)
          # end if 

        # end for 
        str_out += self.endl

      # end for 

    # end for 

    return str_out

  #--------------------------------------------------------------------------------------------------- 

  #***************************************************************************************************
  def gem_like_function_ro(self, level = "", f_name = "FUNCTION", a_name= "A",
    b_name= "B", c_name= "C", res_name = "RES", separator = ",", 
    f_open = "(", f_close = ")",  addition = " + ", b_order = 0, comment = True, inverted = True ):
    """
    PORPUSE:  Multiplication like operation between OTI and OTI.
    """
    global h

    res_getter = self.get
    a_getter   = self.get
    b_getter   = self.get
    c_getter   = self.get

    res_order = b_order
    
    str_out = ""

    if comment:
      str_out += level + self.comment + " General multiplication like function \'"
      str_out += f_name + f_open + a_name + separator + b_name + f_close
      str_out += addition + c_name
      str_out += "\'\n"
    # end if

    if inverted:
      eval_list = range(self.order,res_order-1,-1)
    else:
      eval_list = range(res_order,self.order+1)
    # end if 

    for ordi in eval_list:
      # str_out += self.endl
      str_out += level +self.comment + "Order " + str(ordi) + self.endl
      dirs = self.name_imdir[ordi]
      idxi = self.idx_imdir[ordi]

      mult_res_alldirs = self.mult_res_total[ordi]

      # Multiply the different imaginary directions all togeather such that resulting order is 
      # ordi.
      
      for j in range(len(dirs)):
        mult_res = mult_res_alldirs[j]

        # Write result variable.
        str_out += level + res_name + res_getter + dirs[j] + " = " 
        str_out += c_name + c_getter + dirs[j] + addition

        str_out += f_name + f_open
        str_out +=         a_name + separator
        str_out +=         b_name + b_getter + dirs[j]
        str_out += f_close 

        str_out += self.endl

      # end for 

    # end for 

    return str_out

  #---------------------------------------------------------------------------------------------------

  #***************************************************************************************************
  def gem_like_function_or(self, level = "", f_name = "FUNCTION", a_name= "A",
    b_name= "B", c_name= "C", res_name = "RES", separator = ",", 
    f_open = "(", f_close = ")",  addition = " + " ):
    """
    PORPUSE:  Multiplication like operation between OTI and OTI.
    """
    global h

    res_getter = self.get
    a_getter   = self.get
    b_getter   = self.get
    c_getter   = self.get

    str_out = ""

    str_out += level + self.comment + " General multiplication like function \'"
    str_out += f_name + f_open + a_name + separator + b_name + f_close
    str_out += addition + c_name
    str_out += "\'\n"

    for ordi in range(0,self.order+1):
      str_out += self.endl
      str_out += level +self.comment + "Order " + str(ordi) + self.endl
      dirs = self.name_imdir[ordi]
      idxi = self.idx_imdir[ordi]

      mult_res_alldirs = self.mult_res_total[ordi]

      # Multiply the different imaginary directions all togeather such that resulting order is 
      # ordi.
      
      for j in range(len(dirs)):
        mult_res = mult_res_alldirs[j]

        # Write result variable.
        str_out += level + res_name + res_getter + dirs[j] + " = " 
        str_out += c_name + c_getter + dirs[j] + addition

        str_out += f_name + f_open
        str_out +=         a_name + a_getter + dirs[j] + separator
        str_out +=         b_name 
        str_out += f_close 

        str_out += self.endl

      # end for 

    # end for 

    return str_out

  #--------------------------------------------------------------------------------------------------- 
  #***************************************************************************************************
  def feval_function_o(self, level = "", lhs_name= "X", deriv_name= "DERIVS", res_name = "RES"  ):
    """
    PORPUSE:  Generic function evaluation of OTI number.
    """
    global h

    str_out = ""    
    res_getter = self.get
    lhs_getter = self.get
    
    str_out += level + self.comment + "Sets real part" +  endl
    str_out += level + res_name + " = "
    str_out += deriv_name+"(1)" + self.endl
    
    for ordi in range(1,self.order+1):
      
      str_out += self.endl
      str_out += level + self.comment + "Sets order " + str(ordi) + endl
      dirs = self.name_imdir[ordi]

      str_out += level + "FACTOR = FACTOR * " + str(ordi) + self.endl
      str_out += level + "COEF = "+deriv_name+"("+str(ordi+1)+") / FACTOR" + self.endl
      str_out += level + res_name + " = GEM(COEF,DX_P,"+res_name+")" + self.endl
      
      if ordi != self.order:
        str_out += level + "DX_P = DX_P*DX" + self.endl
      # end if 
      
      str_out += level + ""
      
    # end for 

    return str_out

  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  def feval_function_o_elemental(self, level = "", lhs_name= "X", deriv_name= [], res_name = "RES"  ):
    """
    PORPUSE:  Generic function evaluation of OTI number.
    """
    global h

    str_out = ""    
    res_getter = self.get
    lhs_getter = self.get
    
    str_out += level + self.comment + "Sets real part" +  endl
    str_out += level + res_name + " = "
    str_out += deriv_name[0]+ self.endl
    
    for ordi in range(1,self.order+1):
      
      str_out += self.endl
      str_out += level + self.comment + "Sets order " + str(ordi) + endl
      dirs = self.name_imdir[ordi]

      str_out += level + "FACTOR = FACTOR * " + str(ordi) + self.endl
      str_out += level + "COEF = "+deriv_name[ordi]+" / FACTOR" + self.endl

      str_out += level + self.comment + res_name + " = "+res_name+" COEF * DX_P" + self.endl
      str_out += self.gem_like_function_ro(level = level, f_name = "", a_name= "COEF",
            b_name= "DX_P", c_name= "RES", res_name = "RES", separator = "*", 
            f_open = "", f_close = "",  addition = "+", b_order = ordi, comment = False )
      
      if ordi != self.order:
        str_out += level + self.comment + "DX_P = DX_P * DX" + self.endl
        str_out += self.multiplication_like_function_oo( level = level, f_name = "", lhs_name= "DX_P", 
            rhs_name= "DX", res_name = "DX_P", separator = "*", f_open = "", f_close = "", 
            addition = "+", lhs_order = ordi, rhs_order = 1, comment = False, inverted = True )
      # end if 
      
      str_out += level + ""
      
    # end for 

    return str_out

  #---------------------------------------------------------------------------------------------------  


  #***************************************************************************************************
  def write_scalar_feval(self, function_name = "FEVAL", is_elemental = True, level = 0, tab = " ", 
    f_name = "FUNCTION",  separator = ",", lhs_type= "O", lhs_ptr = False,
    f_open = "(", f_close = ")", addition = " + ", to = False,
    overload = None, write_charact=True ):
    """
    Write Univariate function evaluation.

    This module writes the definition of the function, its inputs and output. The generator defines the
    operations within the function block.

    """

    str_out = ""
    leveli = level

    res = "RES"
    lhs = "X"
    derivs = "DERIVS"

    lhs_t = self.type_name
    f_post = lhs_type
   
    f_prev = self.func_name
    
    func_name = f_prev + "_" + function_name 
    
    # Write function start.
    str_out += leveli*tab
    leveli += 1
    
    func_header = ''

    func_header += leveli*tab + self.comment + " Definitions" + endl
    func_header += leveli*tab + self.coeff_t + " :: FACTOR, COEF"+self.endl
    func_header += leveli*tab + "TYPE("+self.type_name + "), INTENT(IN)  :: "+lhs+self.endl
    func_header += leveli*tab + self.coeff_t  + ", INTENT(IN)  :: "+derivs+"("+str(self.order+1)+")"+self.endl
    func_header += leveli*tab + "TYPE("+self.type_name + ") :: "+res+self.endl
    func_header += leveli*tab + "TYPE("+self.type_name + ") :: DX, DX_P" + self.endl*2
    func_header += leveli*tab + 'FACTOR = 1.0_DP' + self.endl
    func_header += leveli*tab + 'COEF   = 0.0_DP' + self.endl
    func_header += leveli*tab + 'DX     = ' + lhs + self.endl
    func_header += leveli*tab + 'DX_P   = ' + lhs + self.endl*2
    func_header += leveli*tab + self.comment + " Set real part of deltas zero." + self.endl
    func_header += leveli*tab +"DX"+self.get+self.real_str+" = " + self.zero + self.endl
    func_header += leveli*tab +"DX_P"+self.get+self.real_str+" = " + self.zero + self.endl
    

    if is_elemental:
      str_out += 'ELEMENTAL '
    # end if

    if overload is not None:
      self.overloads[overload].append(func_name)
    # end if 
    
    str_out += "FUNCTION " + func_name + "(" +lhs+","+derivs+")"+self.new_line_mark+endl
    str_out += leveli*tab + "RESULT("+res+")"+ endl

    str_out += leveli*tab + "IMPLICIT NONE" + endl

    str_out += func_header +endl

    str_out += self.feval_function_o(level = leveli*tab, res_name = res, deriv_name = derivs,lhs_name=lhs )
    

    str_out += endl

    # Write function end.    
    leveli -= 1
    str_out += leveli*tab + 'END FUNCTION ' +func_name+ self.endl + endl
    
    return str_out
  #--------------------------------------------------------------------------------------------------- 

#***************************************************************************************************
  def write_scalar_feval_elemental(self, function_name = "FEVAL", is_elemental = True, level = 0, tab = " ", 
    f_name = "FUNCTION",  separator = ",", lhs_type= "O", lhs_ptr = False,
    f_open = "(", f_close = ")", addition = " + ", to = False,
    overload = None, write_charact=True ):
    """
    Write Univariate function evaluation.

    This module writes the definition of the function, its inputs and output. The generator defines the
    operations within the function block.

    """

    str_out = ""
    leveli = level

    res = "RES"
    lhs = "X"
    derivs = []

    for ordi in range(self.order+1):
      derivs.append('DER'+str(ordi))
    # end for 

    lhs_t = self.type_name
    f_post = lhs_type
   
    f_prev = self.func_name
    
    func_name = f_prev + "_" + function_name 
    
    # Write function start.
    str_out += leveli*tab
    leveli += 1
    
    func_header = ''

    func_header += leveli*tab + self.comment + " Definitions" + endl
    func_header += leveli*tab + self.coeff_t + " :: FACTOR, COEF"+self.endl
    func_header += leveli*tab + "TYPE("+self.type_name + "), INTENT(IN)  :: "+lhs+self.endl
    func_header += leveli*tab + self.coeff_t  + ", INTENT(IN)  :: "
    
    for ordi in range(self.order+1):
      func_header += derivs[ordi] + ','
    # end for 
    func_header=func_header[:-1]
    func_header += self.endl

    func_header += leveli*tab + "TYPE("+self.type_name + ") :: "+res+self.endl
    func_header += leveli*tab + "TYPE("+self.type_name + ") :: DX, DX_P" + self.endl*2
    func_header += leveli*tab + 'FACTOR = 1.0_DP' + self.endl
    func_header += leveli*tab + 'COEF   = 0.0_DP' + self.endl
    func_header += leveli*tab + 'DX     = ' + lhs + self.endl
    func_header += leveli*tab + 'DX_P   = ' + lhs + self.endl*2
    func_header += leveli*tab + self.comment + " Set real part of deltas zero." + self.endl
    func_header += leveli*tab +"DX"+self.get+self.real_str+" = " + self.zero + self.endl
    func_header += leveli*tab +"DX_P"+self.get+self.real_str+" = " + self.zero + self.endl
    

    if is_elemental:
      str_out += 'ELEMENTAL '
    # end if

    if overload is not None:
      self.overloads[overload].append(func_name)
    # end if 
    
    str_out += "FUNCTION " + func_name + "(" +lhs+","
    for ordi in range(self.order+1):
      str_out += derivs[ordi] + ','
    # end for 
    str_out = str_out[:-1]
    str_out += ")"+self.new_line_mark+endl
    str_out += leveli*tab + "RESULT("+res+")"+ endl

    str_out += leveli*tab + "IMPLICIT NONE" + endl

    str_out += func_header +endl

    str_out += self.feval_function_o_elemental(level = leveli*tab, res_name = res, deriv_name = derivs,lhs_name=lhs )
    

    str_out += endl

    # Write function end.    
    leveli -= 1
    str_out += leveli*tab + 'END FUNCTION ' +func_name+ self.endl + endl
    
    return str_out
  #--------------------------------------------------------------------------------------------------- 

  #***************************************************************************************************
  def write_private(self, level = "", tab=" "):
    """
    This function writes the private members of the fortran module being created.

    """
    str_out = ""
    
    private_name = "PRIVATE :: "
    
    str_out += level + private_name

    nterms = len(self.private_members)

    for k in range(nterms):
      if ( (k+1)%4 == 0 ) and ( k != ( nterms-1 ) ) :
        str_out += " " + self.new_line_mark + endl
        str_out += level +' '*(len(private_name))
      # end if
      str_out += self.private_members[k] + ','
    # end for 
    str_out = str_out[:-1] + endl

    return str_out
  #--------------------------------------------------------------------------------------------------- 

  #***************************************************************************************************
  def write_overloads(self, level = "", tab=" "):

    str_out = ""
    for key, value in self.overloads.items():
      if len(value)!=0:
        
        str_out += level + "INTERFACE "

        if key in operators:

          str_out += "OPERATOR("+key+")"+endl

        elif key == '=':

          str_out += "ASSIGNMENT("+key+")"+endl

        else:

          str_out += key + endl

        # end if 

        str_out += level+tab+ "MODULE PROCEDURE "
        
        nvals = len(value)

        for i in range( nvals ) :
          funct = value[i]
          if ( i%4 == 0 ) and ( i != 0 ):
            str_out += self.new_line_mark + endl + level + tab + ' '*17
          str_out += funct + ','
        # end for 
        str_out = str_out[:-1] + endl
        str_out += level + "END INTERFACE" + endl + endl


    # Operator overloads:



    # FUnction overloads:

    return str_out
  #--------------------------------------------------------------------------------------------------- 

  #***************************************************************************************************
  def write_scalar_function_print(self, level = 0, tab = " "):

    str_out = ""
    leveli = level

    lhs = "LHS"
    
    
    f_prev = self.func_name
    lhs_t = "TYPE("+self.type_name+")"
    
    func_name = f_prev + "_print" 

    # Write function start.
    str_out += leveli*tab
    leveli += 1
    
    
    str_out += "FUNCTION " + func_name + "(LHS)"+self.new_line_mark+endl
    str_out += leveli*tab + "RESULT(RES)"+ endl

    str_out += leveli*tab + "IMPLICIT NONE" + endl
    
    str_out += leveli*tab + lhs_t + ", INTENT(IN) :: LHS " + endl
    str_out += leveli*tab + "TYPE("+self.type_name+") :: RES " + endl
    str_out += endl

    str_out += self.pprint_scalar_function( tab = tab,level = leveli*tab,  lhs_name = lhs)

    str_out += endl

    # Write function end.

    leveli -= 1
    str_out += leveli*tab + "END FUNCTION "+ func_name + endl

    return str_out
  #--------------------------------------------------------------------------------------------------- 


  #***************************************************************************************************
  def write_scalar_function_neg(self, function_name = "NEG", is_elemental = True, level = 0, tab = " ", 
    f_name = "FUNCTION",  separator = ",", lhs_type= "O",
    f_open = "(", f_close = ")", addition = " + ",generator = negation_like_function,
    overload = None ):

    str_out = ""
    leveli = level

    lhs = "LHS"
    rhs = "RHS"
    res = "RES"

    if lhs_type == self.real_str:
      
      f_prev = self.func_name
      lhs_t = self.coeff_t

    else:
      
      f_prev = self.func_name
      lhs_t = "TYPE("+self.type_name+")"
      
    # end if 

    func_name = f_prev + "_" + function_name

    # Write function start.
    str_out += leveli*tab
    leveli += 1
    if is_elemental:
      str_out += 'ELEMENTAL '
    # end if

    if overload is not None:
      self.overloads[overload].append(func_name)
    # end if 

    
    str_out += "FUNCTION " + func_name + "(LHS)"+self.new_line_mark+endl
    str_out += leveli*tab + "RESULT(RES)"+ endl

    str_out += leveli*tab + "IMPLICIT NONE" + endl

    
    str_out += leveli*tab + lhs_t + ", INTENT(IN) :: LHS " + endl
    str_out += leveli*tab + "TYPE("+self.type_name+") :: RES " + endl
    str_out += endl

    str_out += generator(f_name = f_name, level = leveli*tab, f_open = f_open, f_close =f_close,
      res_name = res, lhs_name = lhs)

    str_out += endl

    # Write function end.

    leveli -= 1

    str_out += leveli*tab + "END FUNCTION "+ func_name + endl

    return str_out
  #--------------------------------------------------------------------------------------------------- 




  #***************************************************************************************************
  def write_scalar_subroutine_assign(self, function_name = "NEG", is_elemental = True, level = 0, tab = " ", 
    f_name = "FUNCTION",  separator = ",", lhs_type= "O",
    f_open = "(", f_close = ")", addition = " + ",generator = None,
    overload = None ):

    str_out = ""
    leveli = level
    f_post = 'o'

    lhs = "LHS"
    rhs = "RHS"
    res = "RES"

    if lhs_type == self.real_str:
      f_prev = self.func_name
      lhs_t = self.coeff_t
      f_post = self.real_str
    else:
      f_prev = self.func_name
      
      lhs_t = "TYPE("+self.type_name+")"
      
    # end if 

    func_name = f_prev + "_" + function_name + "_" + f_post



    # Write function start.
    str_out += leveli*tab
    leveli += 1


    if is_elemental:
      str_out += 'ELEMENTAL '
    # end if

    if overload is not None:
      self.overloads[overload].append(func_name)
    # end if 

    
    str_out += "SUBROUTINE " + func_name + "(RES,LHS)"+endl
    str_out += leveli*tab + endl

    str_out += leveli*tab + "IMPLICIT NONE" + endl

    
    str_out += leveli*tab + lhs_t + ", INTENT(IN) :: LHS " + endl
    str_out += leveli*tab + "TYPE("+self.type_name+"), INTENT(OUT) :: RES " + endl
    str_out += endl

    str_out += generator(f_name = f_name, level = leveli*tab, f_open = f_open, 
      f_close =f_close, res_name = res, lhs_name = lhs)

    str_out += endl

    # Write function end.    
  
    leveli -= 1
    str_out += leveli*tab + "END SUBROUTINE "+ func_name + endl
  

    return str_out
  #--------------------------------------------------------------------------------------------------- 
  
  #***************************************************************************************************
  def write_cr_matrix_form(self, val_shape='S', tab=" ", level = 0):

    str_out = ""
    leveli = level+1
    val = "VAL"
    res = "RES"
    val_comp = ""
    res_comp = "(NUM_IM_DIR{row_cmp},NUM_IM_DIR{col_cmp})"

    if val_shape == "V":
      val_comp += "(:)"
      res_comp = res_comp.format(row_cmp="*SIZE("+val+",1)",col_cmp="")
    elif val_shape == "M":
      val_comp += "(:,:)"
      res_comp = res_comp.format(row_cmp="*SIZE("+val+",1)",col_cmp="*SIZE("+val+",2)")
    else:
      res_comp = res_comp.format(row_cmp="",col_cmp="")
    # end if 


    func_name = self.type_name+"_TO_CR_MAT_" + val_shape
    str_out += "FUNCTION " + func_name + "("+val+") RESULT(RES)"+ endl
    str_out += leveli*tab + "IMPLICIT NONE" + endl
    str_out += leveli*tab + "TYPE("+self.type_name+"), INTENT(IN) :: "+val+val_comp + endl
    
    str_out += leveli*tab + "REAL(DP) :: "+res+res_comp+" " + endl
    
    str_out += leveli*tab + "INTEGER :: NCOLS=1, NROWS=1" + endl
    
    str_out += self.endl
    res_fmt = "(1+NROWS*{0}:NROWS*{1},1+NCOLS*{2}:NCOLS*{3})"
    if val_shape == 'V':
      str_out += leveli*tab + "NROWS = SIZE(" + val +",1)"+ endl
      res_fmt = "(1+NROWS*{0}:NROWS*{1},{3})"
    elif val_shape == 'M':
      str_out += leveli*tab + "NCOLS = SIZE(" + val +",1)"+ endl
      str_out += leveli*tab + "NROWS = SIZE(" + val +",2)"+ endl
    # end if 

    str_out += endl

    imdir_list = []
    
    for imdir in self.name_imdir:
      imdir_list+=imdir
    
    imdir_cr_loc = dict(zip(imdir_list,range(self.nimdir)))

    self.overloads['UNFOLD'].append(func_name)
    self.overloads['TO_CR'].append(func_name)

    for ordi in range(self.order+1):

      dirs = self.name_imdir[ordi]
      
      mult_res_alldirs = self.mult_res_total[ordi]

      for j in range(len(dirs)):
        
        mult_res = mult_res_alldirs[j]
        rowdir = dirs[j]
        row = imdir_cr_loc[rowdir]
        
        nterms = len(mult_res)

        for k in range(nterms):

          mult = mult_res[k] # Get current direction two term result.
          coldir = mult[1][2]
          col  = imdir_cr_loc[coldir]
          im   = mult[0][2]
          str_out += leveli*tab + self.comment +im+" x "+coldir + ' -> ' + rowdir + " "
          str_out += "({0}, {1})".format(row+1,col+1)+ self.endl
          res_get_range =  res_fmt.format(row,row+1,col,col+1)
          str_out += leveli*tab +res+res_get_range+ " = " + val + self.get + im + self.endl

        # end for

      # end for

    # end for 



    leveli -= 1
    str_out += leveli*tab + "END FUNCTION "+ func_name + endl

    return str_out
  #--------------------------------------------------------------------------------------------------- 

  #***************************************************************************************************
  def write_scalar_function(self, function_name = "FUNCTION", is_elemental = True, level = 0, tab = " ", 
    f_name = "FUNCTION", lhs_type= "O",lhs_shape= "S", rhs_type= "O", rhs_shape= "S", separator = ",", 
    f_open = "(", f_close = ")", addition = " + ",generator = None,
    overload = None ):

    str_out = ""
    leveli = level

    lhs = "LHS"
    rhs = "RHS"
    res = "RES"

    lhs_comp = ""
    rhs_comp = ""
    res_comp = ""

    shape_test = ""

    if lhs_type == self.real_str:    
      f_prev = self.func_name
      lhs_t = self.coeff_t
      f_post = self.real_str    
    else:      
      f_prev = self.func_name
      f_post = 'O'      
      lhs_t = "TYPE("+self.type_name+")"      
    # end if 

    if rhs_type is self.real_str:
      f_post += self.real_str
      rhs_t = self.coeff_t
    else:
      f_post += 'O'
      rhs_t = "TYPE("+self.type_name+")"
    # end if 

    # Check shape
    if lhs_shape == "V":
      lhs_comp = "(:)"
      res_comp = "(SIZE("+lhs+",1))"
    elif lhs_shape == "M":
      lhs_comp = "(:,:)"
      res_comp = "(SIZE("+lhs+",1),SIZE("+lhs+",2))"
    # end if 

    if rhs_shape == "V":
      rhs_comp = "(:)"
      res_comp = "(SIZE("+rhs+",1))"
    elif rhs_shape == "M":
      rhs_comp = "(:,:)"
      res_comp = "(SIZE("+rhs+",1),SIZE("+rhs+",2))"
    # end if 

    func_name = f_prev + "_" + function_name + "_"+ f_post + "_" + lhs_shape + rhs_shape

    # Write function start.
    str_out += leveli*tab
    leveli += 1

    if is_elemental and lhs_shape == 'S' and rhs_shape == 'S':
      str_out += 'ELEMENTAL '
    # end if

    if overload is not None:
      self.overloads[overload].append(func_name)
    # end if 

    
    str_out += "FUNCTION " + func_name + "("+lhs+","+rhs+")"+self.new_line_mark+endl
    str_out += leveli*tab + "RESULT(RES)"+ endl
    str_out += leveli*tab + "IMPLICIT NONE" + endl      
    str_out += leveli*tab + lhs_t + ", INTENT(IN) :: "+lhs+lhs_comp + endl
    str_out += leveli*tab + rhs_t + ", INTENT(IN) :: "+rhs+rhs_comp + endl
    str_out += leveli*tab + "TYPE("+self.type_name+") :: "+res+res_comp+" " + endl
    str_out += endl
    
    if lhs_shape == 'V' and rhs_shape == 'V':
      shape_test +=leveli*tab + "IF ( SIZE("+lhs+",1) /= SIZE("+rhs+",1) ) THEN"+ self.endl
      shape_test +=(leveli+1)*tab + 'STOP "Dimension error in vector-vector '+function_name+' operation. Exiting."'
      shape_test += self.endl
      shape_test +=(leveli)*tab + "END IF"+ self.endl*2
    elif lhs_shape == 'M' and rhs_shape == 'M':
      shape_test +=leveli*tab + "IF (SIZE("+lhs+",1)/=SIZE("+rhs+",1)) THEN"+ self.endl
      shape_test +=(leveli+1)*tab + 'STOP "Dimension error in matrix-matrix '+function_name+' operation. Exiting."'
      shape_test += self.endl
      shape_test +=(leveli)*tab + "END IF" + self.endl*2
    # end if 

    str_out += shape_test

    str_out += generator(f_name = f_name, separator = separator,  
               level = leveli*tab, f_open = f_open, f_close =f_close, res_name = res,
               lhs_name = lhs, rhs_name=rhs)


    str_out += endl
    
    # Write function end.
    leveli -= 1
    str_out += leveli*tab + "END FUNCTION "+ func_name + endl
    
    return str_out
  #--------------------------------------------------------------------------------------------------- 


  #***************************************************************************************************
  def write_scalar_trivar(self, function_name = "FUNCTION", is_elemental = True, level = 0, tab = " ", 
    f_name = "FUNCTION", a_type= "O",  b_type= "O", c_type= "O", 
    separator = ",", f_open = "(", f_close = ")", addition = " + ",generator = None, 
    overload = None, write_charact=True ):

    str_out = ""
    leveli = level

    a = "A"
    b = "B"
    c = "C"
    res = "RES"

    f_prev = self.func_name
    f_post = ""
    if a_type == self.real_str:
    
      a_t = self.coeff_t
      f_post += self.real_str
    
    else:
      
      f_post += 'O'
      a_t = "TYPE("+self.type_name+")"
      
    # end if 
    
    if b_type == self.real_str:
    
      b_t = self.coeff_t
      f_post += self.real_str
    
    else:
      
      f_post += 'O'      
      b_t = "TYPE("+self.type_name+")"
      
    # end if 

    if c_type == self.real_str:
    
      c_t = self.coeff_t
      f_post += self.real_str
    
    else:
      
      f_post += 'O'      
      c_t = "TYPE("+self.type_name+")"
      
    # end if 
    
    if is_elemental:
      str_out += 'ELEMENTAL '
    # end if

    func_name = f_prev + "_" + function_name 
    
    if write_charact:
      func_name += "_"+ f_post
    # end if 

    if overload is not None:
      self.overloads[overload].append(func_name)
    # end if 
    
    # Write function start.
    str_out += leveli*tab
    leveli += 1
    
    str_out += "FUNCTION " + func_name + "("+a+","+b+","+c+")"+self.new_line_mark+endl
    str_out += leveli*tab + "RESULT(RES)"+ endl
    str_out += leveli*tab + "IMPLICIT NONE" + endl      
    str_out += leveli*tab + a_t + ", INTENT(IN) :: "+a+" " + endl
    str_out += leveli*tab + b_t + ", INTENT(IN) :: "+b+" " + endl
    str_out += leveli*tab + c_t + ", INTENT(IN) :: "+c+" " + endl
    str_out += leveli*tab + "TYPE("+self.type_name+") :: "+res+" " + endl
    str_out += endl
    

    str_out += generator(f_name = f_name, separator = separator,  
               level = leveli*tab, f_open = f_open, f_close =f_close, res_name = res,
               a_name = a, b_name=b, c_name=c )

    str_out += endl
    # Write function end.

    leveli -= 1
    str_out += leveli*tab + "END FUNCTION "+ func_name + endl

    return str_out
  #--------------------------------------------------------------------------------------------------- 





  #***************************************************************************************************
  def write_matrix_function(self, function_name = "FUNCTION", is_elemental = True, level = 0, tab = " ", 
    f_name = "FUNCTION", lhs_type= "O", rhs_type= "O", separator = ",", 
    f_open = "(", f_close = ")", addition = " + ",generator = None,
    overload = None ):

    str_out = ""
    leveli = level

    if lhs_type == self.real_str:
    
      f_prev = self.real_str
      lhs_t = self.coeff_t
    
    else:
      f_prev = self.type_name
      
      lhs_t = "TYPE("+self.type_name+")"
      
    # end if 

    if rhs_type == self.real_str:
    
      f_post = self.real_str
      rhs_t = self.coeff_t
    
    else:
    
      f_post = self.type_name
      
      rhs_t = "TYPE("+self.type_name+")"
    
    # end if 


    func_name = f_prev + "_" + function_name + "_"+ f_post



    # Write function start.
    str_out += leveli*tab
    leveli += 1
    if is_elemental:
      str_out += 'ELEMENTAL '
    # end if

    if overload is not None:
      self.overloads[overload].append(func_name)
    # end if 

    str_out += "FUNCTION " + func_name + "(LHS,RHS)"+self.new_line_mark+endl
    str_out += leveli*tab + "RESULT(RES)"+ endl

    str_out += leveli*tab + "IMPLICIT NONE" + endl

    
    str_out += leveli*tab + lhs_t + ", INTENT(IN) :: LHS(:,:) " + endl
    str_out += leveli*tab + rhs_t + ", INTENT(IN) :: RHS(:,:) " + endl
    str_out += leveli*tab + "TYPE("+self.type_name+") :: RES(SIZE(LHS,1),SIZE(RHS,2)) " + endl
    str_out += endl

    str_out += generator(f_name = f_name, separator = separator,  
               level = leveli*tab, f_open = f_open, f_close =f_close)


    str_out += endl
    # Write function end.
    leveli -= 1
    str_out += leveli*tab + "END FUNCTION "+ func_name + endl


    return str_out
  #--------------------------------------------------------------------------------------------------- 

  #***************************************************************************************************
  def write_matmul_function(self, function_name = "FUNCTION", level = 0, tab = " ", 
    f_name = "FUNCTION", lhs_type= "O", rhs_type= "O", separator = ",", 
    f_open = "(", f_close = ")", addition = " + ",generator = None,
    overload = None, use_gem = True ):

    str_out = ""
    leveli = level

    if lhs_type is self.real_str:
    
      f_prev = self.real_str
      lhs_t = self.coeff_t
    
    else:
    
      f_prev = self.type_name
      lhs_t = "TYPE("+self.type_name+")"
    
    # end if 

    if rhs_type is self.real_str:
      
      f_post = self.real_str
      rhs_t = self.coeff_t

    else:
      
      f_post = self.type_name
      rhs_t = "TYPE("+self.type_name+")"
      
    # end if 

    func_name = f_prev + "_" + function_name + "_"+ f_post

    # Write function start.
    str_out += leveli*tab
    leveli += 1

    if overload is not None:
      self.overloads[overload].append(func_name)
    # end if 

    str_out += "FUNCTION " + func_name + "(LHS,RHS)"+self.new_line_mark+endl
    str_out += leveli*tab + "RESULT(RES)"+ endl

    str_out += leveli*tab + "IMPLICIT NONE" + endl

    
    str_out += leveli*tab + lhs_t + ", INTENT(IN) :: LHS(:,:) " + endl
    str_out += leveli*tab + rhs_t + ", INTENT(IN) :: RHS(:,:) " + endl
    str_out += leveli*tab + "TYPE("+self.type_name+")" + " :: TMP " + endl
    str_out += leveli*tab + "TYPE("+self.type_name+") :: RES(SIZE(LHS,1),SIZE(RHS,2)) " + endl
    str_out += leveli*tab + "INTEGER :: I,J,K " + endl
    str_out += endl

    str_out += leveli*tab +"! Dimension check" + endl
    str_out += leveli*tab +"IF (SIZE(LHS,2) /= SIZE(RHS,1)) THEN" + endl
    str_out += (leveli+1)*tab +"STOP \"Runtime error: \" // " +self.new_line_mark + endl
    str_out += (leveli+1)*tab +"     \"Dimension mismatch in MATMUL.\"" + endl
    str_out += leveli*tab +"END IF" + endl

    str_out += (leveli)*tab +"DO I = 1, SIZE(LHS,1)"+ endl
    str_out += (leveli+1)*tab +"DO J = 1, SIZE(RHS,2)"+endl
    str_out += (leveli+2)*tab +"TMP = 0.0_DP"+endl
    str_out += (leveli+2)*tab +"DO K = 1, SIZE(LHS,2)"+endl
    if use_gem:
      str_out += (leveli+3)*tab +"TMP = GEM( LHS( I, K ), RHS( K, J ), TMP)"+endl
    else:
      str_out += (leveli+3)*tab +"TMP = TMP + LHS( I, K )*RHS( K, J )"+endl
    # end if 
    str_out += (leveli+2)*tab +"END DO"+endl
    str_out += (leveli+2)*tab +"RES( I, J ) = TMP"+endl
    str_out += (leveli+1)*tab +"END DO"+endl
    str_out += (leveli)*tab +"END DO"+endl
    str_out += endl

    # Write function end.
    leveli -= 1
    str_out += leveli*tab + "END FUNCTION "+ func_name + endl


    return str_out
  #--------------------------------------------------------------------------------------------------- 

  #***************************************************************************************************
  def write_transpose_function(self, function_name = "FUNCTION", level = 0, tab = " ", 
    f_name = "FUNCTION", lhs_type= "O", separator = ",", 
    f_open = "(", f_close = ")", addition = " + ",generator = None,
    overload = None ):

    str_out = ""
    leveli = level

    if lhs_type is self.real_str:
      f_prev = self.real_str
      lhs_t = self.coeff_t
    else:
      f_prev = self.type_name
      lhs_t = "TYPE("+self.type_name+")"
    # end if 

    func_name = f_prev + "_" + function_name 



    # Write function start.
    str_out += leveli*tab
    leveli += 1


    if overload is not None:
      self.overloads[overload].append(func_name)
    # end if 

    str_out += "FUNCTION " + func_name + "(LHS)"+self.new_line_mark+endl
    str_out += leveli*tab + "RESULT(RES)"+ endl

    str_out += leveli*tab + "IMPLICIT NONE" + endl

    
    str_out += leveli*tab + lhs_t + ", INTENT(IN) :: LHS(:,:) " + endl
    str_out += leveli*tab + "TYPE("+self.type_name+") :: RES(SIZE(LHS,2),SIZE(LHS,1)) " + endl
    str_out += leveli*tab + "INTEGER :: I,J " + endl
    str_out += endl


    str_out += (leveli)*tab +"DO I = 1, SIZE(LHS,1)"+ endl
    str_out += (leveli+1)*tab +"DO J = 1, SIZE(LHS,2)"+endl
    str_out += (leveli+2)*tab +"RES( J, I ) = LHS( I, J )"+endl
    str_out += (leveli+1)*tab +"END DO"+endl
    str_out += (leveli)*tab +"END DO"+endl
    str_out += endl

    # Write function end.

    leveli -= 1
    str_out += leveli*tab + "END FUNCTION "+ func_name + endl


    return str_out
  #--------------------------------------------------------------------------------------------------- 

  #***************************************************************************************************
  def write_matrix_function(self, function_name = "FUNCTION", level = 0, tab = " ", 
    f_name = "FUNCTION", lhs_type= "O", lhs_dim="(:,:)", rhs_type= "O", rhs_dim="(:,:)", separator = ",", 
    res_dim = "(SIZE(LHS,1),SIZE(RHS,2))",
    f_open = "(", f_close = ")", addition = " + ",generator = None,
    overload = None ):

    str_out = ""
    leveli = level

    if lhs_type == self.real_str:
      f_prev = self.real_str
      lhs_t = self.coeff_t
    else:
      f_prev = self.type_name
      lhs_t = "TYPE("+self.type_name+")"
    # end if 

    if rhs_type == self.real_str:
      f_post = self.real_str
      rhs_t = self.coeff_t
    else:
      f_post = self.type_name
      rhs_t = "TYPE("+self.type_name+")"
    # end if 


    func_name = f_prev + "_" + function_name + "_"+ f_post



    # Write function start.
    str_out += leveli*tab
    leveli += 1


    if overload is not None:
      self.overloads[overload].append(func_name)
    # end if 

    str_out += "FUNCTION " + func_name + "(LHS,RHS)"+self.new_line_mark+endl
    str_out += leveli*tab + "RESULT(RES)"+ endl

    str_out += leveli*tab + "IMPLICIT NONE" + endl

    
    str_out += leveli*tab + lhs_t + ", INTENT(IN) :: LHS" + lhs_dim + endl
    str_out += leveli*tab + rhs_t + ", INTENT(IN) :: RHS" + rhs_dim + endl
    str_out += leveli*tab + "TYPE("+self.type_name+") :: RES" + res_dim + endl
    str_out += endl

    str_out += generator(f_name = f_name, separator = separator,  
               level = leveli*tab, f_open = f_open, f_close =f_close)

    str_out += endl

    # Write function end.
    
    leveli -= 1
    str_out += leveli*tab + "END FUNCTION "+ func_name + endl

    return str_out
  #--------------------------------------------------------------------------------------------------- 


  #***************************************************************************************************
  def write_matrix_function_neg(self, function_name = "NEG", level = 0, tab = " ", 
    f_name = "FUNCTION",  separator = ",", lhs_type= "O", lhs_dim="(:,:)",res_dim = "(SIZE(LHS,2),SIZE(LHS,1))", 
    f_open = "(", f_close = ")", addition = " + ",generator = None,
    overload = None ):

    str_out = ""
    leveli = level

    
    if lhs_type == self.real_str:
      f_prev = self.type_name
      lhs_t = self.coeff_t
    else:
      f_prev = self.type_name
      lhs_t = "TYPE("+self.type_name+")"
    # end if 

    func_name = f_prev + "_" + function_name



    # Write function start.
    str_out += leveli*tab
    leveli += 1

    if overload is not None:
      self.overloads[overload].append(func_name)
    # end if 

    str_out += "FUNCTION " + func_name + "(LHS)"+self.new_line_mark+endl
    str_out += leveli*tab + "RESULT(RES)"+ endl

    str_out += leveli*tab + "IMPLICIT NONE" + endl

    
    str_out += leveli*tab + lhs_t + ", INTENT(IN) :: LHS" + lhs_dim + endl
    str_out += leveli*tab + "TYPE("+self.type_name+") :: RES " + res_dim  + endl
    str_out += endl

    str_out += generator(f_name = f_name, level = leveli*tab, f_open = f_open, f_close =f_close)

    str_out += endl
    
    # Write function end.
    leveli -= 1
    str_out += leveli*tab + "END FUNCTION "+ func_name + endl

    return str_out
  #--------------------------------------------------------------------------------------------------- 

  #***************************************************************************************************
  def write_elementary_functions(self,level = 0, tab = " ", overload = True, elemental = True ):
    
    str_out = ""
    leveli = level
    
    # Setup core text
    single_core_function = ""
    single_core_function += leveli*tab 
    
    if elemental:
      single_core_function += 'ELEMENTAL '
    # end if 

    single_core_function += "FUNCTION "+self.type_name+"_{0}(X) RESULT(RES)"+ endl*2 # 0: function name.
    
    leveli+=1
    single_core_function += leveli*tab + "TYPE("+self.type_name+"), INTENT(IN) :: X"+ endl
    single_core_function += leveli*tab + "REAL(DP) :: {1}"+ endl # 1: Derivatives
    single_core_function += leveli*tab + "TYPE("+self.type_name+") :: RES"+ endl
    single_core_function += leveli*tab + endl
    single_core_function += "{2}"+ endl # 2: Derivative definition.
    single_core_function += leveli*tab + "RES = FEVAL(X,{1})"+ endl*2 # 2: Derivative definition.
    leveli -= 1
    single_core_function += leveli*tab + "END FUNCTION "+self.type_name+"_{0}"+ endl # 0: function name.

    derivs = []
    for ordi in range(self.order+1):
      derivs.append('DER'+str(ordi))
    # end for 
    deriv_txt = ''
    for ordi in range(self.order+1):
      deriv_txt += derivs[ordi] + ','
    # end for 
    deriv_txt = deriv_txt[:-1]
    
    # Single variable:
    import sympy as sym
    from sympy.printing import fcode
    
    x, y, exponent  = sym.symbols('X%R Y%R E')

    functions = {}
    functions['TAN']   = sym.tan
    functions['COS']   = sym.cos
    functions['SIN']   = sym.sin
    functions['ATAN']  = sym.atan
    functions['ACOS']  = sym.acos
    functions['ASIN']  = sym.asin
    functions['TANH']  = sym.tanh
    functions['COSH']  = sym.cosh
    functions['SINH']  = sym.sinh
    # functions['ATANH'] = sym.atanh
    # functions['ACOSH'] = sym.acosh
    # functions['ASINH'] = sym.asinh
    functions['EXP']   = sym.exp
    functions['LOG']   = sym.log

    leveli += 1
    for key,func in functions.items():
      
      f = func(x)
      deriv_define = ''
      for ordi in range(self.order + 1):
        der = f.diff(x,ordi)
        txt = fcode(der,human = True,standard=90,source_format='free', assign_to=derivs[ordi]).upper()
        deriv_define += leveli*tab + txt + endl
      # end for
      str_out += single_core_function.format(key,deriv_txt,deriv_define) + endl
      if overload:
        self.overloads[key].append(self.type_name+"_"+key)
      # end if 
    
    # end for 

    #  ============== WRITE POWER FUNCTION.

    leveli = level
    # Write power function.
    power_core_function = leveli*tab 
    if elemental:
      power_core_function += 'ELEMENTAL '
    # end if 

    

    power_core_function += "FUNCTION "+self.type_name+"_POW(X,E) RESULT(RES)"+ endl*2 # 0: function name.
    leveli+=1
    power_core_function += leveli*tab + "TYPE("+self.type_name+"), INTENT(IN) :: X"+ endl
    power_core_function += leveli*tab + "REAL(DP), INTENT(IN) :: E"+ endl # 1: Derivatives
    power_core_function += leveli*tab + "REAL(DP) :: {0}"+ endl # 1: Derivatives
    power_core_function += leveli*tab + "TYPE("+self.type_name+") :: RES"+ endl
    power_core_function += leveli*tab + endl
    
    for ordi in range(self.order+1):
      power_core_function += leveli*tab + derivs[ordi] + '=0.0d0' + endl
    # end for 
    power_core_function += leveli*tab + endl

    power_core_function += "{1}"+ endl # 2: Derivative definition.
    power_core_function += leveli*tab + "RES = FEVAL(X,{0})"+ endl*2 # 2: Derivative definition.

    leveli -= 1
    power_core_function += leveli*tab + "END FUNCTION "+self.type_name+"_POW"+ endl # 0: function name.
    f = x**exponent
    deriv_define = ''
    leveli+=1
    # txt = fcode(f,human = True,standard=90,source_format='free', assign_to=derivs[ordi]).upper()
    # deriv_define += leveli*tab + txt + endl
    

    for ordi in range(0,self.order + 1):
      der = f.diff(x,ordi).simplify()
      txt = fcode(der,human = True,standard=90,source_format='free', assign_to=derivs[ordi]).upper()
      deriv_define += leveli*tab + txt + endl
      if ordi != self.order:
        deriv_define += leveli*tab + "IF ((E-"+str(ordi)+")/=0.0d0) THEN" + endl
        leveli+=1
      # end if 
    # end for
    
    for ordi in range(1,self.order + 1):
      leveli-=1
      deriv_define += leveli*tab + "END IF" + endl
    # end for

    leveli-=1
    str_out += power_core_function.format(deriv_txt,deriv_define) + endl
    if overload:
      self.overloads['**'].append(self.type_name+"_POW")
    # end if 

    return str_out

  #--------------------------------------------------------------------------------------------------- 

  #***************************************************************************************************
  def write_file(self, filename = None, tab = '  ', is_std_matmul=True, elemental_feval = True):
    """
    PORPUSE:  Write file of module containing OTI operations.
    """
    
    str_out = ""

    if self.mdual:
      module_name = "MDUAL"+str(self.nbases)
    else:
      module_name = "OTIM"+str(self.nbases)+"N"+str(self.order)
    # end if 

    fname = module_name.lower()+'.f90'    

    if filename is not None:
      fname = filename
    # end if 

    
  
    # 1. Write module name if in fortran ...
    level = 0

    str_out += "MODULE "+module_name + endl


    level   += 1

    str_out += endl + level*tab + "IMPLICIT NONE" + endl + endl

    # Define parameters
    str_out += self.set_constant_parameters( level = level*tab ) + endl
    

    # Define type
    str_out += self.set_type_fortran( level = level*tab ) + endl

    # Define type
    str_out += self.set_type_constants( level = level*tab ) + endl
    
    # contents
    contents = level*tab + "CONTAINS" + endl + endl
    
    # Start writing functions
    # SCALAR:

    # Standard assignment
    contents += self.write_scalar_subroutine_assign(function_name = "ASSIGN", is_elemental = True, level = level, 
      tab = tab, lhs_type = 'R', f_name = "",   f_open = "", 
      f_close = "", overload = "=",generator = self.assignr_like_function)
    contents += endl

    # Standard NEGATION
    contents += self.write_scalar_function_neg(function_name = "NEG", is_elemental = True, level = level, 
      tab = tab, f_name = "",   f_open = "-", 
      f_close = "", overload = "-",generator = self.negation_like_function)
    contents += endl

    shapes = [ ['S','S'],
               ['V','S'],
               ['M','S'],
               ['S','V'],
               ['S','M'] ] 
    
    for shape in shapes:

      # Standard Addition
      contents += self.write_scalar_function(function_name = "ADD", is_elemental = True, level = level, 
        tab = tab, f_name = "", lhs_type= "O", rhs_type= "O", separator = " + ", f_open = "", 
        lhs_shape = shape[0], rhs_shape = shape[1], 
        f_close = "", generator = self.addition_like_function_oo, overload = "+")
      contents += endl 

      contents += self.write_scalar_function(function_name = "ADD", is_elemental = True, level = level, 
        tab = tab, f_name = "", lhs_type= self.real_str, rhs_type= "O", separator = " + ", f_open = "", 
        lhs_shape = shape[0], rhs_shape = shape[1], 
        f_close = "", generator = self.addition_like_function_ro, overload = "+" )
      contents += endl

      contents += self.write_scalar_function(function_name = "ADD", is_elemental = True, level = level, 
        tab = tab, f_name = "", lhs_type= "O", rhs_type= self.real_str, separator = " + ", f_open = "", 
        lhs_shape = shape[0], rhs_shape = shape[1], 
        f_close = "", generator = self.addition_like_function_or, overload = "+" )
      contents += endl

      # Standard Subtraction
      contents += self.write_scalar_function(function_name = "SUB", is_elemental = True, level = level, 
        tab = tab, f_name = "", lhs_type= "O", rhs_type= "O", separator = " - ", f_open = "", 
        lhs_shape = shape[0], rhs_shape = shape[1], 
        f_close = "", generator = self.addition_like_function_oo, overload = "-" )
      contents += endl

      contents += self.write_scalar_function(function_name = "SUB", is_elemental = True, level = level, 
        tab = tab, f_name = "", lhs_type= self.real_str, rhs_type= "O", separator = " - ", f_open = "", 
        lhs_shape = shape[0], rhs_shape = shape[1], 
        f_close = "", generator = self.addition_like_function_ro, overload = "-" )
      contents += endl

      contents += self.write_scalar_function(function_name = "SUB", is_elemental = True, level = level, 
        tab = tab, f_name = "", lhs_type= "O", rhs_type= self.real_str, separator = " - ", f_open = "", 
        lhs_shape = shape[0], rhs_shape = shape[1], 
        f_close = "", generator = self.addition_like_function_or, overload = "-" )
      contents += endl

      # Standard Multiplication
      contents += self.write_scalar_function(function_name = "MUL", is_elemental = True, level = level, 
        tab = tab, f_name = "", lhs_type= "O", rhs_type= "O", separator = "*", f_open = "", 
        lhs_shape = shape[0], rhs_shape = shape[1], 
        f_close = "", generator = self.multiplication_like_function_oo, overload = "*" )
      contents += endl

      contents += self.write_scalar_function(function_name = "MUL", is_elemental = True, level = level, 
        tab = tab, f_name = "", lhs_type= self.real_str, rhs_type= "O", separator = "*", f_open = "", 
        lhs_shape = shape[0], rhs_shape = shape[1], 
        f_close = "", generator = self.multiplication_like_function_ro, overload = "*" )
      contents += endl

      contents += self.write_scalar_function(function_name = "MUL", is_elemental = True, level = level, 
        tab = tab, f_name = "", lhs_type= "O", rhs_type= self.real_str, separator = "*", f_open = "", 
        lhs_shape = shape[0], rhs_shape = shape[1], 
        f_close = "", generator = self.multiplication_like_function_or, overload = "*" )
      contents += endl

    # end for 
    
    # GEM
    contents += self.write_scalar_trivar(function_name = "GEM", is_elemental = True, level = level, 
      tab = tab, f_name = "", a_type= "O",  b_type= "O", c_type= "O", separator = "*", f_open = "", 
      f_close = "", generator = self.gem_like_function_oo, overload = 'GEM')
    contents += endl

    contents += self.write_scalar_trivar(function_name = "GEM", is_elemental = True, level = level, 
      tab = tab, f_name = "", a_type= "R",  b_type= "O", c_type= "O", separator = "*", f_open = "", 
      f_close = "", generator = self.gem_like_function_ro, overload = 'GEM')
    contents += endl

    contents += self.write_scalar_trivar(function_name = "GEM", is_elemental = True, level = level, 
      tab = tab, f_name = "", a_type= "O",  b_type= "R", c_type= "O", separator = "*", f_open = "", 
      f_close = "", generator = self.gem_like_function_or, overload = 'GEM')
    contents += endl

    
    # ARRAY:
    if (is_std_matmul):
      contents += self.write_matrix_function(function_name = "MATMUL", level = level, 
        tab = tab, f_name = "MATMUL", lhs_type= "O", rhs_type= "O", separator = ",", f_open = "(", 
        f_close = ")", generator = self.multiplication_like_function_oo, overload = "MATMUL" )
      contents += endl

      contents += self.write_matrix_function(function_name = "MATMUL", level = level, 
        tab = tab, f_name = "MATMUL", lhs_type= self.real_str, rhs_type= "O", separator = ",", f_open = "(", 
        f_close = ")", generator = self.multiplication_like_function_ro, overload = "MATMUL" )
      contents += endl

      contents += self.write_matrix_function(function_name = "MATMUL", level = level, 
        tab = tab, f_name = "MATMUL", lhs_type= "O", rhs_type= self.real_str, separator = ",", f_open = "(", 
        f_close = ")", generator = self.multiplication_like_function_or, overload = "MATMUL" )
      contents += endl

      # NEGATION
      contents += self.write_matrix_function_neg(function_name = "TRANSPOSE", level = level, 
        tab = tab, f_name = "TRANSPOSE", lhs_type= "O", separator = ",", f_open = "(", 
        f_close = ")", generator = self.negation_like_function, overload = "TRANSPOSE" )
      contents += endl    

    else:
      contents += self.write_matmul_function(function_name = "MATMUL", level = level, 
        tab = tab, f_name = "MATMUL", lhs_type= "O", rhs_type= "O", separator = ",", f_open = "(", 
        f_close = ")", generator = self.multiplication_like_function_oo, overload = "MATMUL" )
      contents += endl

      contents += self.write_matmul_function(function_name = "MATMUL", level = level, 
        tab = tab, f_name = "MATMUL", lhs_type= self.real_str, rhs_type= "O", separator = ",", f_open = "(", 
        f_close = ")", generator = self.multiplication_like_function_ro, overload = "MATMUL" )
      contents += endl

      contents += self.write_matmul_function(function_name = "MATMUL", level = level, 
        tab = tab, f_name = "MATMUL", lhs_type= "O", rhs_type= self.real_str, separator = ",", f_open = "(", 
        f_close = ")", generator = self.multiplication_like_function_or, overload = "MATMUL" )
      contents += endl

      contents += self.write_transpose_function(function_name = "TRANSPOSE", level = level, 
        tab = tab, f_name = "TRANSPOSE", lhs_type= "O", separator = ",", f_open = "(", 
        f_close = ")", generator = self.multiplication_like_function_or, overload = "TRANSPOSE" )
      contents += endl

    # end if 

    contents += self.write_cr_matrix_form(val_shape='S', tab=tab, level = level)
    contents += endl

    contents += self.write_cr_matrix_form(val_shape='V', tab=tab, level = level)
    contents += endl

    contents += self.write_cr_matrix_form(val_shape='M', tab=tab, level = level)
    contents += endl

    if elemental_feval:

      contents += self.write_scalar_feval_elemental(function_name = "FEVAL", is_elemental = True, level = level, 
        tab = tab, lhs_type= "O", overload = "FEVAL", write_charact=True )
      contents += endl

      file = open(whereotilib.getpath()+'core_functions.f90') 
      contents += file.read().format(type_name = self.type_name)
      file.close()
      contents += endl*2
      contents += self.write_elementary_functions(level = level, tab = tab, overload=True )

      self.overloads['/'].append(self.type_name+"_DIVISION_OO")
      self.overloads['/'].append(self.type_name+"_DIVISION_OR")
      self.overloads['/'].append(self.type_name+"_DIVISION_RO")
      self.overloads['SQRT'].append(self.type_name+"_SQRT")
      self.overloads['REAL'].append(self.type_name+"_REAL")
      self.overloads['PPRINT'].append(self.type_name+"_PPRINT_M_R")
      self.overloads['PPRINT'].append(self.type_name+"_PPRINT_V_R")
    else:

      # FEVAL
      contents += self.write_scalar_feval(function_name = "FEVAL", is_elemental = False, level = level, 
        tab = tab,  lhs_type= "O", overload = 'FEVAL' )

      # Add derivative computation
      file = open(whereotilib.getpath()+'base_derivs_fortran.f90') 
      contents += file.read().format(type_name = self.type_name)
      file.close()

      self.overloads['PPRINT'].append(self.type_name+"_PPRINT_M_R")
      self.overloads['/'].append(self.type_name+"_DIVISION_OO")
      self.overloads['/'].append(self.type_name+"_DIVISION_OR")
      self.overloads['/'].append(self.type_name+"_DIVISION_RO")
      self.overloads['**'].append(self.type_name+"_POW")
      self.overloads['SIN'].append(self.type_name+"_SIN")
      self.overloads['COS'].append(self.type_name+"_COS")
      self.overloads['LOG'].append(self.type_name+"_LOG")
      self.overloads['EXP'].append(self.type_name+"_EXP")
      self.overloads['SQRT'].append(self.type_name+"_SQRT")
      self.overloads['REAL'].append(self.type_name+"_REAL")
      # Add overloads of function evaluations.
      self.private_members += ['DER_R_COS','DER_R_SIN','DER_R_LOG','DER_R_EXP','DER_R_POW']
    # 

    
    # Write private members.
    str_out += self.write_private(level = tab*level, tab = tab) + self.endl

    # Define Overloads
    str_out += self.write_overloads(level = tab*level, tab = tab)

    str_out += contents
    str_out += "END MODULE " + module_name + endl

    # opening
    f = open(fname, "w" )

    f.write(str_out)

    f.close()

    
  #--------------------------------------------------------------------------------------------------- 























