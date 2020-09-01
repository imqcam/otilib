#ifndef OTI_ONUMM4N1_ARRAY_GAUSS_STRUCTURES_H
#define OTI_ONUMM4N1_ARRAY_GAUSS_STRUCTURES_H

// ----------------------------------------------------------------------------------------------------
// --------------------------------------      STRUCTURES        --------------------------------------
// ----------------------------------------------------------------------------------------------------

typedef struct{
    oarrm4n1_t*      p_data; ///< Data array
    uint64_t      nrows;  ///< Number of rows.
    uint64_t      ncols;  ///< Number of cols.
    uint64_t       size;  ///< size of the array
    uint64_t        nip;  ///< Number of integration points.
} feoarrm4n1_t;

// ----------------------------------------------------------------------------------------------------
// -------------------------------------    END STRUCTURES      ---------------------------------------
// ----------------------------------------------------------------------------------------------------

#endif