#ifndef OTI_ONUMM3N2_SCALAR_STRUCTURES_H
#define OTI_ONUMM3N2_SCALAR_STRUCTURES_H

// ----------------------------------------------------------------------------------------------------
// --------------------------------------      STRUCTURES        --------------------------------------
// ----------------------------------------------------------------------------------------------------

// Scalar
typedef struct {
  // Real
  coeff_t r;
  // Order 1
  coeff_t e1;
  coeff_t e2;
  coeff_t e3;
  // Order 2
  coeff_t e11;
  coeff_t e12;
  coeff_t e22;
  coeff_t e13;
  coeff_t e23;
  coeff_t e33;
} onumm3n2_t;




// ----------------------------------------------------------------------------------------------------
// -------------------------------------    END STRUCTURES      ---------------------------------------
// ----------------------------------------------------------------------------------------------------

#endif