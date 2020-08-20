
# ----------------------------------------------------------------------------------------------------
# ---------------------------------------    CONSTANTS    --------------------------------------------
# ----------------------------------------------------------------------------------------------------

element_type_name = np.empty(100,dtype=object)
# Supported
element_type_name[15] = "point1"

element_type_name[1 ] = "line2"
element_type_name[8 ] = "line3"

element_type_name[2 ] = "tri3"
element_type_name[9 ] = "tri6"

element_type_name[3 ] = "quad4"
element_type_name[16] = "quad8"
element_type_name[10] = "quad9"

element_type_name[4 ] = "tet4"
element_type_name[11] = "tet10"

element_type_name[5 ] = "hex8"
element_type_name[17] = "hex20"


# Unsupported
element_type_name[6 ] = "PRI_6"
element_type_name[7 ] = "PYR_5"
element_type_name[12] = "hex27"
element_type_name[13] = "PRI_18"
element_type_name[14] = "PYR_14"
element_type_name[18] = "PRI_15"
element_type_name[19] = "PYR_13"
element_type_name[20] = "tri9"
element_type_name[21] = "tri10"
element_type_name[22] = "tri12"
element_type_name[23] = "tri15"
element_type_name[24] = "tri15I"
element_type_name[25] = "tri21"
element_type_name[26] = "line4"
element_type_name[27] = "line5"
element_type_name[28] = "line6"
element_type_name[29] = "tet20"
element_type_name[30] = "tet35"
element_type_name[31] = "tet56"
element_type_name[32] = "tet22"
element_type_name[33] = "tet28"
element_type_name[36] = "quad16"
element_type_name[37] = "quad25"
element_type_name[38] = "quad36"
element_type_name[39] = "quad12"
element_type_name[40] = "quad16I"
element_type_name[41] = "quad20"
element_type_name[42] = "tri28"
element_type_name[43] = "tri36"
element_type_name[44] = "tri45"
element_type_name[45] = "tri55"
element_type_name[46] = "tri66"
element_type_name[47] = "quad49"
element_type_name[48] = "quad64"
element_type_name[49] = "quad81"
element_type_name[50] = "quad100"
element_type_name[51] = "quad121"
element_type_name[52] = "tri18"
element_type_name[53] = "tri21I"
element_type_name[54] = "tri24"
element_type_name[55] = "tri27"
element_type_name[56] = "tri30"




element_type_map_vtk= np.empty(100, dtype=int)

element_type_map_vtk[15] = 1   # "point"

element_type_map_vtk[1 ] = 3   # "line2"
element_type_map_vtk[8 ] = 21  # "line3"

element_type_map_vtk[2 ] = 5   # "tri3"
element_type_map_vtk[9 ] = 22  # "tri6"

element_type_map_vtk[3 ] = 9   # "quad4"
element_type_map_vtk[16] = 23  # "quad8"
element_type_map_vtk[10] = 28  # "quad9"

element_type_map_vtk[4 ] = 10  # "tet4"
element_type_map_vtk[11] = 24  # "tet10"

element_type_map_vtk[5 ] = 12  # "hex8"
element_type_map_vtk[17] = 25  # "hex20"




element_geom_type = np.empty(100,dtype=object)
# Supported
element_geom_type[15] = elNode

element_geom_type[1 ] = elLine
element_geom_type[8 ] = elLine

element_geom_type[2 ] = elTriangle
element_geom_type[9 ] = elTriangle

element_geom_type[3 ] = elQuadrangle
element_geom_type[16] = elQuadrangle
element_geom_type[10] = elQuadrangle

element_geom_type[4 ] = elTetrahedra
element_geom_type[11] = elTetrahedra

element_geom_type[5 ] = elHexahedra
element_geom_type[17] = elHexahedra



element = {}

# Node element. (Order 0 element)
element[15] = point1

# Order 1 ('Linear') elements.
element[1 ] = line2
element[2 ] = tri3
element[3 ] = quad4
element[4 ] = tet4
element[5 ] = hex8

# Order 2. ('Quadratic') elements
element[8 ] = line3
element[9 ] = tri6
element[10] = quad9
element[11] = tet10

# Serendipity elements.
element[16] = quad8
element[17] = hex20


delement = {}

# Node element. (Order 0 element)
delement[15] = dpoint1

# Order 1 ('Linear') elements.
delement[1 ] = dline2
delement[2 ] = dtri3
delement[3 ] = dquad4
delement[4 ] = dtet4
delement[5 ] = dhex8

# Order 2. ('Quadratic') elements
delement[8 ] = dline3
delement[9 ] = dtri6
delement[10] = dquad9
delement[11] = dtet10

# Serendipity elements.
delement[16] = dquad8
delement[17] = dhex20





#-----------------------------------------------------------------------------------------------------
  

#           UTILITY FUNCTIONS:

#*****************************************************************************************************
def end_elements():
  """
  This function deallocates all elements if already allocated.
  """
  #***************************************************************************************************
  
  for elem in element.values():
    elem.end()
  # end for 

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
def end_delements():
  """
  This function deallocates all elements if already allocated.
  """
  #***************************************************************************************************
  
  for elem in delement.values():
    elem.end()
  # end for 

#-----------------------------------------------------------------------------------------------------



#*****************************************************************************************************
def get_elements_from_gmsh( mesh, dim=-1, tag=-1 ):
  """
  This function allows to get the elements from a gmsh mesh and reshape the 
  nodal indices accordingly.
  """
  #***************************************************************************************************
  elTypes, elTags, nodes = mesh.getElements(dim=dim,tag=tag)
  
  for i in range(len(elTypes)):
    
    # Get the number of elements.
    numelsi = elTags[i].size

    # Reshape and set the node indices to a "0" notation.
    nodes[i] = nodes[i].reshape((numelsi,int(nodes[i].size// numelsi))) - 1
  
  # end for     
  
  return elTypes,elTags,nodes

#-----------------------------------------------------------------------------------------------------

#*****************************************************************************************************
def map_indices(idxSrc,idxMap):
  """
  PORPUSE: 
  """
  #***************************************************************************************************
  srcShape = idxSrc.shape
  reshaped = idxSrc.reshape(idxSrc.size)

  for i in range(reshaped.size):
  
    reshaped[i] = idxMap[ reshaped[i] ]

  # end for

  return reshaped.reshape(idxSrc.shape)

#-----------------------------------------------------------------------------------------------------




#*****************************************************************************************************
def line(double a, double b, double he = 1.0, element_order = 1, save=False, real= False):
  """
  PORPUSE: Define a line mesh.
  """
  #***************************************************************************************************
  import gmsh

  cdef object res
  
  gmsh.initialize()
  # gmsh.fltk.initialize()

  # Lets create a simple square element:
  model = gmsh.model
  geo   = model.geo
  option= gmsh.option

  P1 = geo.addPoint( a,  0, 0, he, 1)
  P2 = geo.addPoint( b,  0, 0, he, 2)

  L1 = geo.addLine(P1,P2) # Line

  model.addPhysicalGroup( 0, [P1],        101 )
  model.addPhysicalGroup( 0, [P2],        102 )

  model.addPhysicalGroup( 1, [L1],        201 )

  model.setPhysicalName( 0, 101, "left"     )
  model.setPhysicalName( 0, 102, "right"    )

  model.setPhysicalName( 1, 201, "domain"   )


  geo.synchronize()
  
  option.setNumber('Mesh.ElementOrder',element_order)
  

  model.mesh.generate(1)

  if save:
    gmsh.write("line.msh")
  # end if 

  if real == True:
    res = dmesh.from_gmsh(gmsh)
  else:
    res = mesh.from_gmsh(gmsh)
  # end if
  gmsh.finalize()

  return res

#-----------------------------------------------------------------------------------------------------




#*****************************************************************************************************
def square(double width, double hight, double he = 1.0, element_order = 1, quads = False, 
           quad_incomplete = 1, quad_linear = 1, structured = False, save=False, real= False):
  """
  PORPUSE: Define a square mesh.
  """
  #***************************************************************************************************
  import gmsh

  cdef object res

  gmsh.initialize()
  # gmsh.fltk.initialize()

  # Lets create a simple square element:
  model = gmsh.model
  geo   = model.geo
  option= gmsh.option

  P1 = geo.addPoint( -width/2.0,    hight/2.0, 0, he, 1)
  P2 = geo.addPoint( -width/2.0,   -hight/2.0, 0, he, 2)
  P3 = geo.addPoint(  width/2.0,    hight/2.0, 0, he, 3)
  P4 = geo.addPoint(  width/2.0,   -hight/2.0, 0, he, 4)

  L1 = geo.addLine(P1,P2) # Left
  L2 = geo.addLine(P2,P4) # bottom
  L3 = geo.addLine(P4,P3) # right
  L4 = geo.addLine(P3,P1) # up

  loop1 = geo.addCurveLoop([L1,L2,L3,L4])

  surface = geo.addPlaneSurface([loop1])

  model.addPhysicalGroup( 0, [P1],        101 )
  model.addPhysicalGroup( 0, [P2],        102 )
  model.addPhysicalGroup( 0, [P3],        103 )
  model.addPhysicalGroup( 0, [P4],        104 )

  model.addPhysicalGroup( 1, [L1],        201 )
  model.addPhysicalGroup( 1, [L2],        202 )
  model.addPhysicalGroup( 1, [L3],        203 )
  model.addPhysicalGroup( 1, [L4],        204 )

  model.addPhysicalGroup( 2, [surface],   301 )

  model.setPhysicalName( 0, 101, "topleft"     )
  model.setPhysicalName( 0, 102, "bottomleft"  )
  model.setPhysicalName( 0, 103, "topright"    )
  model.setPhysicalName( 0, 104, "bottomright" )

  model.setPhysicalName( 1, 201, "left"        )
  model.setPhysicalName( 1, 202, "bottom"      )
  model.setPhysicalName( 1, 203, "right"       )
  model.setPhysicalName( 1, 204, "top"         )

  model.setPhysicalName( 2, 301, "domain"      )


  geo.synchronize()
  
  option.setNumber('Mesh.ElementOrder',element_order)
  

  # Recombine if quads are wanted.
  if quads:
    
    # Set body to recombine into quads.
    option.setNumber('Mesh.SecondOrderIncomplete',quad_incomplete)
    option.setNumber('Mesh.SecondOrderLinear',    quad_linear    )
    option.setNumber('Mesh.RecombineAll',         1)

  else:

    option.setNumber('Mesh.SecondOrderIncomplete',quad_incomplete)
    option.setNumber('Mesh.SecondOrderLinear',    quad_linear    )
    option.setNumber('Mesh.RecombineAll',         0)

  # end if 

  if structured:
    model.mesh.setTransfiniteSurface(surface)
  # end if 

  model.mesh.generate(2)

  if save:
    gmsh.write("square.msh")
  # end if 

  if real == True:
    res = dmesh.from_gmsh(gmsh)
  else:
    res = mesh.from_gmsh(gmsh)
  # end if
  gmsh.finalize()

  return res

#-----------------------------------------------------------------------------------------------------




#*****************************************************************************************************
cpdef op_int2d(mesh Th, matso f, intorder = None, region = None ):
  """
  PORPUSE: Integrate over 2D elements.
  """
  #***************************************************************************************************
  cdef int64_t  i, j, ii
  cdef sotinum  integral, tmp2
  cdef sotife  tmp1
  cdef matso  fh
  cdef elbaseso elem

  els = Th.elements[2]

  integral = zero()
  
  end_elements()
  
  #integrate 2D a fem array.
  for j in range(els['types'].size):

    elem = element[ els['types'][j] ]

    if not elem.is_allocated():
      
      elem.end()
      elem.allocate(intorder)
      elem.allocate_spatial(2,compute_Jinv = False)

      # Here the temporals shhould be created.
      fh = zeros( ( elem.nbasis, 1 ) )
      
      tmp1 = zero(nip=elem.nip)
      
      tmp2 = zero()

    # end if 

    elm_nodes = els['indices'][j]

    for i in range(elm_nodes.shape[0]):

      elem.set_coordinates(Th.x,Th.y,Th.z,elm_nodes[i,:])
      elem.compute_jacobian()

      for ii in range(elem.nbasis):
        fh[ii,0] = f[ int(elm_nodes[i,ii]),0]
      # end for 
      
      dot_product(fh,elem.N,out=tmp1)
      gauss_integrate(tmp1,elem.w_dJ, out=tmp2)
      sum(tmp2,integral, out=integral)
            
      # integral = integral + gauss_integrate( dot_product( fh, elem.N), elem.w_dJ)
              
      # integral = integral + oti.dot_product( fh, oti.gauss_integrate( element.N, element.w_dJ) )

    # end for

  # end for
  
  end_elements()
  
  return integral

#-----------------------------------------------------------------------------------------------------













