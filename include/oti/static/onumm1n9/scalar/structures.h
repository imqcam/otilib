#ifndef OTI_ONUMM1N9_SCALAR_STRUCTURES_H
#define OTI_ONUMM1N9_SCALAR_STRUCTURES_H

// ----------------------------------------------------------------------------------------------------
// --------------------------------------      STRUCTURES        --------------------------------------
// ----------------------------------------------------------------------------------------------------

// Scalar
typedef struct {
  // Real
  coeff_t r;
  // Order 1
  coeff_t e1;
  // Order 2
  coeff_t e11;
  // Order 3
  coeff_t e111;
  // Order 4
  coeff_t e1111;
  // Order 5
  coeff_t e11111;
  // Order 6
  coeff_t e111111;
  // Order 7
  coeff_t e1111111;
  // Order 8
  coeff_t e11111111;
  // Order 9
  coeff_t e111111111;
} onumm1n9_t;




// ----------------------------------------------------------------------------------------------------
// -------------------------------------    END STRUCTURES      ---------------------------------------
// ----------------------------------------------------------------------------------------------------

#endif