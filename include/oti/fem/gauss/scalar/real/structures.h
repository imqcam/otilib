#ifndef OTI_FEM_GAUSS_SCALAR_REAL_STRUCTURES_H
#define OTI_FEM_GAUSS_SCALAR_REAL_STRUCTURES_H

// ----------------------------------------------------------------------------------------------------
// --------------------------------------      STRUCTURES        --------------------------------------
// ----------------------------------------------------------------------------------------------------

typedef struct{
    coeff_t*  p_data;   ///< Data array
    uint64_t    nIntPts;  ///< Number of integration points.
} fereal_t;

// ----------------------------------------------------------------------------------------------------
// -------------------------------------    END STRUCTURES      ---------------------------------------
// ----------------------------------------------------------------------------------------------------

#endif