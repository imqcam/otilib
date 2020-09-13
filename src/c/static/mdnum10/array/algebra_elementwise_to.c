
// typedef struct {
//     mdnum10_t*    p_data; ///< Pointer to array of Sparse otinums.
//     uint64_t       nrows; ///< Number of rows.
//     uint64_t       ncols; ///< Number of cols.
//     uint64_t        size; ///< Size of array.
//     flag_t          flag; ///< Memory flag.
// } mdarr10_t;                ///< Array of OTIs type.

// 1. Elementwise operations.
// 1.1. Negation.
// ****************************************************************************************************
void mdarr10_neg_to(mdarr10_t* arr, mdarr10_t* res){

    uint64_t i;
    // Check first dimensions.
    mdarr10_dimCheck_OO_elementwise(arr,arr,res);

    // The loop for every element in arr.
    for (i = 0; i<arr->size; i++){
        mdnum10_neg_to( &arr->p_data[i], &res->p_data[i]);
    }

}
// ----------------------------------------------------------------------------------------------------

// 1.2. Addition.
// ****************************************************************************************************
void mdarr10_sum_OO_to(mdarr10_t* arr1, mdarr10_t* arr2, mdarr10_t* res){
    // Perform O + O.
    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_OO_elementwise(arr1,arr2,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr1->size; i++){
        mdnum10_sum_oo_to(&arr1->p_data[i], &arr2->p_data[i], &res->p_data[i]);
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_sum_RO_to(darr_t* arr1, mdarr10_t* arr2, mdarr10_t* res){
    
    // Perform R + O.

    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_RO_elementwise(arr1,arr2,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr1->size; i++){
        mdnum10_sum_ro_to(arr1->p_data[i], &arr2->p_data[i], &res->p_data[i]);        
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_sum_oO_to(mdnum10_t* num, mdarr10_t* arr1, mdarr10_t* res){
    // Perform o + O.
    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_OO_elementwise(arr1,arr1,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr1->size; i++){
        mdnum10_sum_oo_to( num, &arr1->p_data[i], &res->p_data[i]);
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_sum_rO_to(coeff_t num, mdarr10_t* arr1, mdarr10_t* res){

    // Perform r + O.
    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_OO_elementwise(arr1,arr1,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr1->size; i++){
        mdnum10_sum_ro_to(num, &arr1->p_data[i], &res->p_data[i]);        
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_trunc_sum_OO_to(ord_t order, mdarr10_t* arr1, mdarr10_t* arr2, mdarr10_t* res){
    // Perform O + O.
    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_OO_elementwise(arr1,arr2,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr1->size; i++){
        mdnum10_trunc_sum_oo_to(order, &arr1->p_data[i], &arr2->p_data[i], &res->p_data[i]);
    }

}
// ----------------------------------------------------------------------------------------------------

// 1.3. Subtraction.
// ****************************************************************************************************
void mdarr10_sub_OO_to( mdarr10_t* arr1, mdarr10_t* arr2, mdarr10_t* res){
    // Perform O - O
    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_OO_elementwise(arr1,arr2, res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr1->size; i++){
        mdnum10_sub_oo_to(&arr1->p_data[i], &arr2->p_data[i], &res->p_data[i]);
    }
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_sub_OR_to( mdarr10_t* arr1, darr_t* arr2, mdarr10_t* res){
    // Perform O - R
    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_RO_elementwise(arr2,arr1,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr1->size; i++){
        mdnum10_sub_or_to(&arr1->p_data[i], arr2->p_data[i], &res->p_data[i]);
    }
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_sub_RO_to( darr_t* arr1, mdarr10_t* arr2, mdarr10_t* res){
    // Perform R - O
    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_RO_elementwise(arr1,arr2,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr1->size; i++){
        mdnum10_sub_ro_to( arr1->p_data[i], &arr2->p_data[i], &res->p_data[i]);
    }
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_sub_Oo_to( mdarr10_t* arr1, mdnum10_t* num, mdarr10_t* res){
    // Perform O - o
    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_OO_elementwise(arr1,arr1,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr1->size; i++){
        mdnum10_sub_oo_to( &arr1->p_data[i], num, &res->p_data[i]);
    }
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_sub_oO_to( mdnum10_t* num, mdarr10_t* arr1, mdarr10_t* res){
    // Prrform o - O
    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_OO_elementwise(arr1,arr1,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr1->size; i++){
        mdnum10_sub_oo_to( num, &arr1->p_data[i], &res->p_data[i]);
    }
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_sub_Or_to( mdarr10_t* arr1, coeff_t num, mdarr10_t* res){
    // Prrform O - r
    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_OO_elementwise(arr1,arr1,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr1->size; i++){
        mdnum10_sub_or_to( &arr1->p_data[i], num, &res->p_data[i]);
    }
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_sub_rO_to( coeff_t num, mdarr10_t* arr1, mdarr10_t* res){
    // Prrform r - O
    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_OO_elementwise(arr1,arr1,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr1->size; i++){
        mdnum10_sub_ro_to( num, &arr1->p_data[i], &res->p_data[i]);
    }
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_trunc_sub_OO_to(ord_t order, mdarr10_t* arr1, mdarr10_t* arr2, mdarr10_t* res){
    // Perform O + O.
    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_OO_elementwise(arr1,arr2,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr1->size; i++){
        mdnum10_trunc_sub_oo_to(order, &arr1->p_data[i], &arr2->p_data[i], &res->p_data[i]);
    }

}
// ----------------------------------------------------------------------------------------------------

// 1.4. Multiplication.
// ****************************************************************************************************
void mdarr10_mul_OO_to(mdarr10_t* arr1, mdarr10_t* arr2, mdarr10_t* res){
    // Perform O * O
    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_OO_elementwise(arr1,arr2,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr1->size; i++){
        mdnum10_mul_oo_to(&arr1->p_data[i], &arr2->p_data[i], &res->p_data[i]);
    }
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_mul_RO_to(darr_t* arr1, mdarr10_t* arr2, mdarr10_t* res){
    // Perform R * O
    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_RO_elementwise(arr1,arr2,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr1->size; i++){
        mdnum10_mul_ro_to(arr1->p_data[i], &arr2->p_data[i], &res->p_data[i]);
    }
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_mul_oO_to(mdnum10_t* num, mdarr10_t* arr2, mdarr10_t* res){
    // Perform o * O
    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_OO_elementwise(arr2,arr2,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr2->size; i++){
        mdnum10_mul_oo_to(num, &arr2->p_data[i], &res->p_data[i]);
    }
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_mul_rO_to(coeff_t num, mdarr10_t* arr2, mdarr10_t* res){
    // Perform r * O
    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_OO_elementwise(arr2,arr2,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr2->size; i++){
        mdnum10_mul_ro_to(num, &arr2->p_data[i], &res->p_data[i]);
    }
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_gem_OO_to(mdarr10_t* arr1, mdarr10_t* arr2, mdarr10_t* arr3, mdarr10_t* res){
    // This function does GEM (GEneral Multiplication): RES = ARR1*ARR2 + ARR3
    // Allows to do the following RES = ARR1*ARR2 + RES
    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_OO_elementwise(arr1,arr2,res);
    mdarr10_dimCheck_OO_elementwise(arr1,arr3,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < res->size; i++){

        mdnum10_gem_oo_to(&arr1->p_data[i], &arr2->p_data[i], &arr3->p_data[i], &res->p_data[i]);

    }
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_gem_oO_to(mdnum10_t* arr1, mdarr10_t* arr2, mdarr10_t* arr3, mdarr10_t* res){
    // This function does GEM (GEneral Multiplication): RES = ARR1*ARR2 + ARR3
    // Allows to do the following RES = ARR1*ARR2 + RES
    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_OO_elementwise(arr2,arr3,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < res->size; i++){

        mdnum10_gem_oo_to( arr1 , &arr2->p_data[i], &arr3->p_data[i], &res->p_data[i]);

    }
}
// ----------------------------------------------------------------------------------------------------

// 1.5. Division
// ****************************************************************************************************
void mdarr10_div_OO_to(mdarr10_t* arr1, mdarr10_t* arr2, mdarr10_t* res){
    // Perform O/O
    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_OO_elementwise(arr1,arr2,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr1->size; i++){
        mdnum10_div_oo_to(&arr1->p_data[i], &arr2->p_data[i], &res->p_data[i]);
    }
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_div_OR_to(mdarr10_t* arr1, darr_t* arr2, mdarr10_t* res){
    // Perform O/R
    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_RO_elementwise(arr2,arr1,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr1->size; i++){
        mdnum10_div_or_to(&arr1->p_data[i], arr2->p_data[i], &res->p_data[i]);
    }
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_div_RO_to(darr_t* arr1, mdarr10_t* arr2, mdarr10_t* res){
    // Perform R/O

    uint64_t i;

    // Check inputs:
    mdarr10_dimCheck_RO_elementwise(arr1,arr2,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr2->size; i++){
        mdnum10_div_ro_to( arr1->p_data[i], &arr2->p_data[i], &res->p_data[i]);
    }
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_div_oO_to(mdnum10_t* num, mdarr10_t* arr2, mdarr10_t* res){
    // Perform o/O
    uint64_t i;
    
        // Check inputs:
    mdarr10_dimCheck_OO_elementwise(arr2,arr2,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr2->size; i++){
        mdnum10_div_oo_to( num, &arr2->p_data[i], &res->p_data[i]);
    }
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_div_Oo_to(mdarr10_t* arr1, mdnum10_t* num, mdarr10_t* res){
    // Perform O/o
    uint64_t i;
    
    // Check inputs:
    mdarr10_dimCheck_OO_elementwise(arr1,arr1,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr1->size; i++){
        mdnum10_div_oo_to(&arr1->p_data[i], num, &res->p_data[i]);
    }
}   
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_div_rO_to(coeff_t num, mdarr10_t* arr2, mdarr10_t* res){
    // Perform r/O
    uint64_t i;
    
    // Check inputs:
    mdarr10_dimCheck_OO_elementwise(arr2,arr2,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr2->size; i++){
        mdnum10_div_ro_to( num, &arr2->p_data[i], &res->p_data[i]);
    }
} 
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr10_div_Or_to(mdarr10_t* arr1, coeff_t num, mdarr10_t* res){
    // Perform O/r
    uint64_t i;
    
    // Check inputs:
    mdarr10_dimCheck_OO_elementwise(arr1,arr1,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < arr1->size; i++){
        mdnum10_div_or_to(&arr1->p_data[i], num, &res->p_data[i]);
    }

}
// ----------------------------------------------------------------------------------------------------

