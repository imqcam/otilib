#ifndef OTI_MDNUM3_SCALAR_STRUCTURES_H
#define OTI_MDNUM3_SCALAR_STRUCTURES_H

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
  coeff_t e12;
  coeff_t e13;
  coeff_t e23;
  // Order 3
  coeff_t e123;
} mdnum3_t;




// ----------------------------------------------------------------------------------------------------
// -------------------------------------    END STRUCTURES      ---------------------------------------
// ----------------------------------------------------------------------------------------------------

#endif