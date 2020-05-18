
# ****************************************************************************************************
cpdef tet10_iso( coeff_t xi_r, coeff_t eta_r, coeff_t chi_r, ord_t derOrder ):
  """
  Definition of basis functions for the 4-node tetrahedron 3D element (2nd order).
  
  NODE NUMBERING:

               ^ eta
               |                         4
               |                        / chi
               |                       /
               |                      /
               |                     /
               |                    /
               |                   /
               |                  /
              (2)******(9)******(3)
               * *              / *                  
               *   *               *                 
               *     *        /     *                
               *       *             *               
               *         *  /         *              
               *           *           *             
               *          /  *          *            
               *               *         *           
              (6)      (7)      (5)      (8)         
               *                   *       *         
               *      /              *      *        
               *                       *     *       
               *    /                    *    *      
               *                           *   *     
               *  /                          *  *    
               *                               * *   
               */                                **  
              (0)* * * * * * *(4)* * * * * * * * *(1)------> xi

  INPUTS:
    -> xi:  Xi  coordinate for this element.
    -> eta: Eta coordinate for this element.
    -> chi: Chi coordinate for this element.
    -> derOrder: Order of derivative required.

  OUTPUTS: 
    -> [N0,N1,...]: Evaluated basis functions.

        Derivatives are returned in the following manner:

        # Real value.
        N       -> real direction -> [0].
        
        xi  -> xi_r  + e1
        eta -> eta_r + e2
        chi -> chi_r + e3

        # First order derivatives
        dN/dxi  -> e1 direction -> [1].
        dN/deta -> e2 direction -> [2].
        dN/dchi -> e3 direction -> [3].

        # Second order derivatives:
        d2N/dxi  dxi  -> e11 direction -> [[1,2]].
        d2N/dxi  deta -> e12 direction -> [ 1,2 ].
        d2N/deta deta -> e22 direction -> [[2,2]].
        d2N/dxi  dchi -> e13 direction -> [ 1,3 ].
        d2N/deta dchi -> e23 direction -> [ 2,3 ].
        d2N/dchi dchi -> e33 direction -> [[3,2]].

        # etc...

  """ 
  cdef otinum xi  = xi_r  + e( 1, order = derOrder, nbases = 3)
  cdef otinum eta = eta_r + e( 2, order = derOrder, nbases = 3)
  cdef otinum chi = chi_r + e( 3, order = derOrder, nbases = 3)

  cdef otinum L0 = 1.0 - xi - eta - chi # 
  cdef otinum L1 = xi                   # 
  cdef otinum L2 = eta                  # 
  cdef otinum L3 = chi                  # 

  cdef otinum N0 = 2.0 * L0 * L0 - L0   #
  cdef otinum N1 = 2.0 * L1 * L1 - L1   #
  cdef otinum N2 = 2.0 * L2 * L2 - L2   #
  cdef otinum N3 = 2.0 * L3 * L3 - L3   #

  cdef otinum N4 = 4.0 * L0 * L1        #
  cdef otinum N5 = 4.0 * L1 * L2        #
  cdef otinum N6 = 4.0 * L0 * L2        #
  cdef otinum N7 = 4.0 * L0 * L3        #
  cdef otinum N8 = 4.0 * L1 * L3        #
  cdef otinum N9 = 4.0 * L2 * L3        #
  
  return [N0, N1, N2, N3, N4, N5, N6, N7, N8, N9]
# ----------------------------------------------------------------------------------------------------