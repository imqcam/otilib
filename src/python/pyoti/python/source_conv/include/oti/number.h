#ifndef OTI_{module_name_upper}_H
#define OTI_{module_name_upper}_H

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
#include "{module_name}/scalar/structures.h"

// Append core operations.
#include "{module_name}/scalar/base.h"

// Append utils.
#include "{module_name}/scalar/utils.h"

// Append algebra declarations.
#include "{module_name}/scalar/algebra.h"

// Append function declarations.
#include "{module_name}/scalar/functions.h"

// Gauss structure
#include "{module_name}/scalar/gauss.h"

// ----------------------------------------------------------------------------------------------------
// ----------------------------------     END SCALAR DECLARATIONS     ---------------------------------
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// ------------------------------------    ARRAY DECLARATIONS     -------------------------------------
// ----------------------------------------------------------------------------------------------------

// Array of oti numbers
// Append array of otis structures.
#include "{module_name}/array/structures.h"

// Append core operations.
#include "{module_name}/array/base.h"

// Append algebra declarations.
#include "{module_name}/array/algebra_elementwise.h"
#include "{module_name}/array/algebra_matops.h"

// Append utils.
#include "{module_name}/array/utils.h"

// Function evaluation (Elementwise).
#include "{module_name}/array/functions.h"

// Gauss structure
#include "{module_name}/array/gauss.h"

// ----------------------------------------------------------------------------------------------------
// ----------------------------------     END ARRAY DECLARATIONS     ----------------------------------
// ----------------------------------------------------------------------------------------------------

#endif