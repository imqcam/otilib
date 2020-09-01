
// typedef struct {
//     onumm4n1_t*    p_data; ///< Pointer to array of Sparse otinums.
//     uint64_t       nrows; ///< Number of rows.
//     uint64_t       ncols; ///< Number of cols.
//     uint64_t        size; ///< Size of array.
//     flag_t          flag; ///< Memory flag.
//     return res;
// } oarrm4n1_t;                ///< Array of OTIs type.

// 1. Elementwise operations.
// 1.1. Negation.
// ****************************************************************************************************
oarrm4n1_t oarrm4n1_neg(oarrm4n1_t* arr){

    oarrm4n1_t res = oarrm4n1_empty_like( arr);

    oarrm4n1_neg_to(arr,&res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// 1.2. Addition.
// ****************************************************************************************************
oarrm4n1_t oarrm4n1_sum_OO(oarrm4n1_t* arr1, oarrm4n1_t* arr2){
    // Perform O + O.
    oarrm4n1_t res;

    res = oarrm4n1_empty_like( arr1);

    oarrm4n1_sum_OO_to( arr1, arr2, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm4n1_t oarrm4n1_sum_RO(darr_t* arr1, oarrm4n1_t* arr2){
    // Perform R + O.
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr2);

    oarrm4n1_sum_RO_to( arr1, arr2, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm4n1_t oarrm4n1_sum_oO(onumm4n1_t* num, oarrm4n1_t* arr1){
    // Perform o + O.
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr1);

    oarrm4n1_sum_oO_to( num, arr1, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm4n1_t oarrm4n1_sum_rO(coeff_t num, oarrm4n1_t* arr1){
    // Perform r + O.
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr1);

    oarrm4n1_sum_rO_to( num, arr1, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// 1.3. Subtraction.
// ****************************************************************************************************
oarrm4n1_t oarrm4n1_sub_OO( oarrm4n1_t* arr1, oarrm4n1_t* arr2){
    // Perform O - O
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr1);

    oarrm4n1_sub_OO_to( arr1, arr2, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm4n1_t oarrm4n1_sub_OR( oarrm4n1_t* arr1, darr_t* arr2){
    // Perform O - R
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr1);

    oarrm4n1_sub_OR_to( arr1, arr2, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm4n1_t oarrm4n1_sub_RO( darr_t* arr1, oarrm4n1_t* arr2){
    // Perform R - O
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr2);

    oarrm4n1_sub_RO_to( arr1, arr2, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm4n1_t oarrm4n1_sub_Oo( oarrm4n1_t* arr1, onumm4n1_t* num){
    // Perform O - o
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr1);

    oarrm4n1_sub_Oo_to( arr1, num, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm4n1_t oarrm4n1_sub_oO( onumm4n1_t* num, oarrm4n1_t* arr1){
    // Prrform o - O
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr1);

    oarrm4n1_sub_oO_to( num, arr1, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm4n1_t oarrm4n1_sub_Or( oarrm4n1_t* arr1, coeff_t num){
    // Prrform O - r
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr1);

    oarrm4n1_sub_Or_to( arr1, num, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm4n1_t oarrm4n1_sub_rO( coeff_t num, oarrm4n1_t* arr1){
    // Prrform r - O
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr1);

    oarrm4n1_sub_rO_to( num, arr1, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// 1.4. Multiplication.
// ****************************************************************************************************
oarrm4n1_t oarrm4n1_mul_OO(oarrm4n1_t* arr1, oarrm4n1_t* arr2){
    // Perform O * O
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr1);

    oarrm4n1_mul_OO_to( arr1, arr2, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm4n1_t oarrm4n1_mul_RO(darr_t* arr1, oarrm4n1_t* arr2){
    // Perform R * O
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr2);

    oarrm4n1_mul_RO_to( arr1, arr2, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm4n1_t oarrm4n1_mul_oO(onumm4n1_t* num, oarrm4n1_t* arr2){
    // Perform o * O
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr2);

    oarrm4n1_mul_oO_to( num, arr2, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm4n1_t oarrm4n1_mul_rO(coeff_t num, oarrm4n1_t* arr2){
    // Perform r * O
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr2);

    oarrm4n1_mul_rO_to( num, arr2, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// 1.5. Division
// ****************************************************************************************************
oarrm4n1_t oarrm4n1_div_OO(oarrm4n1_t* arr1, oarrm4n1_t* arr2){
    // Perform O/O
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr1);

    oarrm4n1_div_OO_to( arr1, arr2, &res);
    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm4n1_t oarrm4n1_div_OR(oarrm4n1_t* arr1, darr_t* arr2){
    // Perform O/R
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr1);

    oarrm4n1_div_OR_to( arr1, arr2, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm4n1_t oarrm4n1_div_RO(darr_t* arr1, oarrm4n1_t* arr2){
    // Perform R/O
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr2);

    oarrm4n1_div_RO_to( arr1, arr2, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm4n1_t oarrm4n1_div_oO(onumm4n1_t* num, oarrm4n1_t* arr2){
    // Perform o/O
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr2);

    oarrm4n1_div_oO_to( num, arr2, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm4n1_t oarrm4n1_div_Oo(oarrm4n1_t* arr1, onumm4n1_t* num){
    // Perform O/o
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr1);

    oarrm4n1_div_Oo_to( arr1, num, &res);

    return res;
}   
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm4n1_t oarrm4n1_div_rO(coeff_t num, oarrm4n1_t* arr2){
    // Perform r/O
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr2);

    oarrm4n1_div_rO_to( num, arr2, &res);

    return res;
} 
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm4n1_t oarrm4n1_div_Or(oarrm4n1_t* arr1, coeff_t num){
    // Perform O/r
    oarrm4n1_t res;
    res = oarrm4n1_empty_like( arr1);

    oarrm4n1_div_Or_to( arr1, num, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

