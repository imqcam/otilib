#ifndef OTI_ONUMM1N9_ARRAY_GAUSS_STRUCTURES_H
#define OTI_ONUMM1N9_ARRAY_GAUSS_STRUCTURES_H

// ----------------------------------------------------------------------------------------------------
// --------------------------------------      STRUCTURES        --------------------------------------
// ----------------------------------------------------------------------------------------------------

typedef struct{
    oarrm1n9_t*      p_data; ///< Data array
    uint64_t      nrows;  ///< Number of rows.
    uint64_t      ncols;  ///< Number of cols.
    uint64_t       size;  ///< size of the array
    uint64_t        nip;  ///< Number of integration points.
} feoarrm1n9_t;

// ----------------------------------------------------------------------------------------------------
// -------------------------------------    END STRUCTURES      ---------------------------------------
// ----------------------------------------------------------------------------------------------------

#endif