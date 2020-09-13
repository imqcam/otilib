#include "oti/static/mdnum9.h"

// ----------------------------------------------------------------------------------------------------
// --------------------------------------    SCALAR FUNCTIONS   ---------------------------------------
// ----------------------------------------------------------------------------------------------------

// Base functions to support manipulation.
#include "mdnum9/scalar/base.c"

// Basic algebraic operations, such as addition and multiplication.
#include "mdnum9/scalar/algebra.c"
#include "mdnum9/scalar/algebra_to.c"

// Analytic and Trascendental function evaluation.
#include "mdnum9/scalar/functions.c"
#include "mdnum9/scalar/functions_to.c"

// Utils
#include "mdnum9/scalar/utils.c"

// Gauss 
#include "mdnum9/scalar/gauss.c"

// ----------------------------------------------------------------------------------------------------
// -----------------------------------   END SCALAR FUNCTIONS   ---------------------------------------
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// --------------------------------------    ARRAY  FUNCTIONS   ---------------------------------------
// ----------------------------------------------------------------------------------------------------

// Array of OTIs support:
// Base functions to support memory manipulation.
#include "mdnum9/array/base.c"

// Array algebra.
#include "mdnum9/array/algebra_elementwise.c"
#include "mdnum9/array/algebra_elementwise_to.c"

// Array algebra: Matrix operations such as matmul, determinant and invertion.
#include "mdnum9/array/algebra_matops.c"
#include "mdnum9/array/algebra_matops_to.c"

#include "mdnum9/array/utils.c"

// Array functions: Elementwise function evaluation.
#include "mdnum9/array/functions.c"
#include "mdnum9/array/functions_to.c"

// Gauss 
#include "mdnum9/array/gauss.c"

// ----------------------------------------------------------------------------------------------------
// --------------------------------------  END ARRAY FUNCTIONS   --------------------------------------
// ----------------------------------------------------------------------------------------------------

