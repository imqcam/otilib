#ifndef OTI_MDNUM9_H
#define OTI_MDNUM9_H

// ----------------------------------------------------------------------------------------------------
// ---------------------------------     EXTERNAL LIBRARIES     ---------------------------------------
// ----------------------------------------------------------------------------------------------------

#include "oti/core.h"
#include "oti/real.h"

// ----------------------------------------------------------------------------------------------------
// --------------------------------    END EXTERNAL LIBRARIES     -------------------------------------
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// ------------------------------------    SCALAR DECLARATIONS     ------------------------------------
// ----------------------------------------------------------------------------------------------------

// Append oti number structures.
#include "mdnum9/scalar/structures.h"

// Append core operations.
#include "mdnum9/scalar/base.h"

// Append utils.
#include "mdnum9/scalar/utils.h"

// Append algebra declarations.
#include "mdnum9/scalar/algebra.h"

// Append function declarations.
#include "mdnum9/scalar/functions.h"

// Gauss structure
#include "mdnum9/scalar/gauss.h"

// ----------------------------------------------------------------------------------------------------
// ----------------------------------     END SCALAR DECLARATIONS     ---------------------------------
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// ------------------------------------    ARRAY DECLARATIONS     -------------------------------------
// ----------------------------------------------------------------------------------------------------

// Array of oti numbers
// Append array of otis structures.
#include "mdnum9/array/structures.h"

// Append core operations.
#include "mdnum9/array/base.h"

// Append algebra declarations.
#include "mdnum9/array/algebra_elementwise.h"
#include "mdnum9/array/algebra_matops.h"

// Append utils.
#include "mdnum9/array/utils.h"

// Function evaluation (Elementwise).
#include "mdnum9/array/functions.h"

// Gauss structure
#include "mdnum9/array/gauss.h"

// ----------------------------------------------------------------------------------------------------
// ----------------------------------     END ARRAY DECLARATIONS     ----------------------------------
// ----------------------------------------------------------------------------------------------------

#endif