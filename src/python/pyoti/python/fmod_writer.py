
from pyoti.core import get_dHelp

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
imdir_base_name = 'e'
operators = ['*','-','+','/','**']

class writer:

  #---------------------------------------------------------------------------------------------------  

  #***************************************************************************************************
  def __init__(self, nbases, order, language = 'fortran', tab = "  ", coeff_type = "REAL(DP)", 
    base_name = None, mdual = False, order_bound=False ):
    """
    PORPUSE:  The porpuse of this class is to create a Fortran Module that allow static dense
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
    self.zero = '0.0_dp'
    self.basename = "O"

    if self.mdual :
      self.basename = "MD"
    # end if 

    if base_name is None:
      
      self.type_name = self.basename + 'NUMM'+ str(self.nbases) + "N" + str(self.order)
      self.func_name = self.basename + 'NUMM'+ str(self.nbases) + "N" + str(self.order)
    
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
    self.name_imdir.append([])
    self.name_imdir[0].append('0')

    for ordi in range(1,self.order+1):

      self.name_imdir.append([])
      
      nimdir_i = h.get_ndir_order(self.nbases, ordi)

      for j in range(nimdir_i):
        
        str_out = imdir_base_name

        list_bases = h.get_fulldir(j,ordi)
        
        for i in range(list_bases.size):

          str_out += valid_chars[list_bases[i]]

        # end for 

        self.name_imdir[ordi].append(str_out)  

      # end for 

    # end for 
    
    self.function_list = []
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
    self.overloads['LOG'] = []
    self.overloads['EXP'] = []
    self.overloads['LOG10'] = []
    

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

    str_out += level + "END TYPE "+self.type_name+self.endl

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

  #***************************************************************************************************
  def multiplication_like_function_oo(self, level = "", f_name = "FUNCTION", lhs_name= "LHS",
    rhs_name= "RHS", res_name = "RES", separator = ",", f_open = "(", f_close = ")", 
    addition = " + ", order_bound = False ):
    """
    PORPUSE:  Multiplication like operation between OTI and OTI.
    """
    global h
    
    str_out = ""

    str_out += level + self.comment + " Multiplication like function \'"
    str_out += f_name + f_open + lhs_name + separator + rhs_name + f_close
    str_out += "\'\n"

    # Write real part.
    str_out += level + self.comment + "Real" + self.endl
    str_out += level + res_name + self.get + self.real_str + " = "
    str_out += f_name + f_open
    str_out +=         lhs_name + self.get + self.real_str + separator
    str_out +=         rhs_name + self.get + self.real_str + f_close + self.endl

    # res = []

    for ordi in range(1,self.order+1):

      str_out += level +self.comment + "Order " + str(ordi) + self.endl
      dirs = self.name_imdir[ordi]

      mults = []
      for j in range(len(dirs)):
        mults.append([]) 

      # Multiply the different imaginary directions all togeather such thata resulting order is 
      # ordi.
      # print("Order "+str(ordi))

      for ordj in range(1, ordi // 2 + 1):
        ordk = ordi-ordj
        # print("  Multiplying order "+str(ordj)+" x order " + str(ordk) )
        dirsj = self.name_imdir[ordj]
        dirsk = self.name_imdir[ordk]
        
        for j in range(len(dirsj)):
          for k in range(len(dirsk)):
            
            i,iordi = h.mult_dir(j,ordj,k,ordk)

            mults[i].append([ dirsj[j], dirsk[k] ])

            if  ordj != ordk:
              mults[i].append([ dirsk[k],dirsj[j] ])
            # end if 

          # end for
        # end for 
      # end for 

      # res.append(mults)

      for j in range(len(dirs)):
        # R X IM
        str_out += level + res_name + self.get + dirs[j] + " = " 
        str_out += f_name + f_open
        str_out +=         lhs_name + self.get + self.real_str + separator
        str_out +=         rhs_name + self.get + dirs[j] 
        str_out += f_close 

        # IM X R
        # Addition
        str_out += addition
        str_out += f_name + f_open
        str_out +=         lhs_name + self.get + dirs[j] + separator
        str_out +=         rhs_name + self.get + self.real_str 
        str_out += f_close 

        mult = mults[j]
        nterms = len(mult)
        for k in range(nterms):

          str_out += addition
          str_out += f_name + f_open
          str_out +=         lhs_name + self.get + mult[k][0] + separator
          str_out +=         rhs_name + self.get + mult[k][1]
          str_out += f_close 

          if ( (k+3)%3 == 0 ) and ( k != ( nterms-1 ) ) :
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
  def write_scalar_function(self, function_name = "FUNCTION", is_elemental = True, level = 0, tab = " ", 
    f_name = "FUNCTION", lhs_type= "O", rhs_type= "O", separator = ",", 
    f_open = "(", f_close = ")", addition = " + ",generator = None,
    overload = None ):

    str_out = ""
    leveli = level

    lhs = "LHS"
    rhs = "RHS"
    res = "RES"

    if lhs_type == self.real_str:
    
      f_prev = self.func_name
      lhs_t = self.coeff_t
      f_post = self.real_str
    
    else:
      
      f_prev = self.func_name
      f_post = 'o'
      
      lhs_t = "TYPE("+self.type_name+")"
      
    # end if 

    if rhs_type is self.real_str:

      f_post += self.real_str
      rhs_t = self.coeff_t

    else:
      f_post += 'o'

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

    
    str_out += "FUNCTION " + func_name + "("+lhs+","+rhs+")"+self.new_line_mark+endl
    str_out += leveli*tab + "RESULT(RES)"+ endl
    str_out += leveli*tab + "IMPLICIT NONE" + endl      
    str_out += leveli*tab + lhs_t + ", INTENT(IN) :: "+lhs+" " + endl
    str_out += leveli*tab + rhs_t + ", INTENT(IN) :: "+rhs+" " + endl
    str_out += leveli*tab + "TYPE("+self.type_name+") :: "+res+" " + endl
    str_out += endl

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
    str_out += (leveli+3)*tab +"TMP = TMP + LHS( I, K )*RHS( K, J )"+endl
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
  def write_file(self, filename = None, tab = '  ', is_std_matmul=True):
    """
    PORPUSE:  Write file of module containing OTI operations.
    """
    
    str_out = ""

    if self.mdual:
      module_name = "MDUALM"+str(self.nbases)+"N"+str(self.order)  
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
    
    # contents
    contents = level*tab + "CONTAINS" + endl + endl
    
    # Start writing functions
    # SCALAR:

    # Standard assignment
    contents += self.write_scalar_subroutine_assign(function_name = "ASSIGN", is_elemental = True, level = level, 
      tab = tab, lhs_type = 'R', f_name = "",   f_open = "", 
      f_close = "", overload = "=",generator = self.assignr_like_function)
    contents += endl

    # Standard Addition
    contents += self.write_scalar_function(function_name = "ADD", is_elemental = True, level = level, 
      tab = tab, f_name = "", lhs_type= "O", rhs_type= "O", separator = " + ", f_open = "", 
      f_close = "", generator = self.addition_like_function_oo, overload = "+")
    contents += endl

    contents += self.write_scalar_function(function_name = "ADD", is_elemental = True, level = level, 
      tab = tab, f_name = "", lhs_type= self.real_str, rhs_type= "O", separator = " + ", f_open = "", 
      f_close = "", generator = self.addition_like_function_ro, overload = "+" )
    contents += endl

    contents += self.write_scalar_function(function_name = "ADD", is_elemental = True, level = level, 
      tab = tab, f_name = "", lhs_type= "O", rhs_type= self.real_str, separator = " + ", f_open = "", 
      f_close = "", generator = self.addition_like_function_or, overload = "+" )
    contents += endl


    # Standard NEGATION
    contents += self.write_scalar_function_neg(function_name = "NEG", is_elemental = True, level = level, 
      tab = tab, f_name = "",   f_open = "-", 
      f_close = "", overload = "-",generator = self.negation_like_function)
    contents += endl

    # PPRINT (*Pretty printing.)

    # Standard Subtraction
    contents += self.write_scalar_function(function_name = "SUB", is_elemental = True, level = level, 
      tab = tab, f_name = "", lhs_type= "O", rhs_type= "O", separator = " - ", f_open = "", 
      f_close = "", generator = self.addition_like_function_oo, overload = "-" )
    contents += endl

    contents += self.write_scalar_function(function_name = "SUB", is_elemental = True, level = level, 
      tab = tab, f_name = "", lhs_type= self.real_str, rhs_type= "O", separator = " - ", f_open = "", 
      f_close = "", generator = self.addition_like_function_ro, overload = "-" )
    contents += endl

    contents += self.write_scalar_function(function_name = "SUB", is_elemental = True, level = level, 
      tab = tab, f_name = "", lhs_type= "O", rhs_type= self.real_str, separator = " - ", f_open = "", 
      f_close = "", generator = self.addition_like_function_or, overload = "-" )
    contents += endl

    # Standard Multiplication
    contents += self.write_scalar_function(function_name = "MUL", is_elemental = True, level = level, 
      tab = tab, f_name = "", lhs_type= "O", rhs_type= "O", separator = "*", f_open = "", 
      f_close = "", generator = self.multiplication_like_function_oo, overload = "*" )
    contents += endl

    contents += self.write_scalar_function(function_name = "MUL", is_elemental = True, level = level, 
      tab = tab, f_name = "", lhs_type= self.real_str, rhs_type= "O", separator = "*", f_open = "", 
      f_close = "", generator = self.multiplication_like_function_ro, overload = "*" )
    contents += endl

    contents += self.write_scalar_function(function_name = "MUL", is_elemental = True, level = level, 
      tab = tab, f_name = "", lhs_type= "O", rhs_type= self.real_str, separator = "*", f_open = "", 
      f_close = "", generator = self.multiplication_like_function_or, overload = "*" )
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

    # Define Overloads
    str_out += self.write_overloads(level = tab*level, tab = tab)

    str_out += contents
    str_out += "END MODULE " + module_name + endl

    # opening
    f = open(fname, "w" )

    f.write(str_out)

    f.close()

    
  #--------------------------------------------------------------------------------------------------- 

