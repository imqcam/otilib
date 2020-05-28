
# ****************************************************************************************************
cpdef quad9_iso( xi, eta, zeta):
  """
  Definition of basis functions for the 9-node quad 2D element (2nd order).

  NODE NUMBERING:
                         (3)* *(6)* *(2) 
                          *           *
                          *           *
                         (7)   (8)   (5)
                          *           *
                          *           *
                         (0)* *(4)* *(1)

  INPUTS:
    -> xi:  Xi coordinate for this element.
    -> eta: Eta coordinate for this element.
    -> zeta: zeta coordinate for this element.
    -> derOrder: Order of derivative required.

  OUTPUTS: 
    -> [N0,N1,...]: Evaluated basis functions.

        Derivatives are returned in the following manner:

        # Real value.
        N       -> real direction -> [0] .
        
        # First order derivatives
        dN/dxi  -> e1 direction -> [1].
        dN/deta -> e2 direction -> [2].
        dN/dzeta -> e3 direction -> [3].

        # Second order derivatives:
        d2N/dxi  dxi  -> e11 direction -> [[1,2]].
        d2N/dxi  deta -> e12 direction -> [ 1,2 ].
        d2N/deta deta -> e22 direction -> [[2,2]].
        d2N/dxi  dzeta -> e13 direction -> [ 1,3 ].
        d2N/deta dzeta -> e23 direction -> [ 2,3 ].
        d2N/dzeta dzeta -> e33 direction -> [[3,2]].

        # etc...

  """ 

  N0 = 0.25 * ( xi ** 2 - xi ) * ( eta ** 2 - eta )
  N1 = 0.25 * ( xi ** 2 + xi ) * ( eta ** 2 - eta )
  N2 = 0.25 * ( xi ** 2 + xi ) * ( eta ** 2 + eta )
  N3 = 0.25 * ( xi ** 2 - xi ) * ( eta ** 2 + eta )
  N4 = 0.50 * ( 1.0 - xi ** 2) * ( eta ** 2 - eta )
  N5 = 0.50 * ( xi ** 2 + xi ) * ( 1.0 - eta ** 2 )
  N6 = 0.50 * ( 1.0 - xi ** 2) * ( eta ** 2 + eta )
  N7 = 0.50 * ( xi ** 2 - xi ) * ( 1.0 - eta ** 2 )
  N8 = 0.50 * ( 1.0 - xi ** 2) * ( 1.0 - eta ** 2 )

  return [ N0, N1, N2, N3, N4, N5, N6, N7, N8]

# ----------------------------------------------------------------------------------------------------
