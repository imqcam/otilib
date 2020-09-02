// 1. Vector operations.
// 1.1.  Dot product.
// 1.1.1  dotproduct(O,O)
// ****************************************************************************************************
onumm1n7_t oarrm1n7_dotproduct_OO(oarrm1n7_t* arr1, oarrm1n7_t* arr2){

    
    onumm1n7_t res = onumm1n7_init();

    oarrm1n7_dotproduct_OO_to( arr1, arr2, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n7_t oarrm1n7_dotproduct_RO(darr_t* arr1, oarrm1n7_t* arr2){

    onumm1n7_t res = onumm1n7_init();

    oarrm1n7_dotproduct_RO_to( arr1, arr2, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// 2. Array operations.

// 2.1. Inner product.
// 2.1.1. OTI Array   - OTI Array.
// ****************************************************************************************************
oarrm1n7_t oarrm1n7_matmul_OO(oarrm1n7_t* arr1, oarrm1n7_t* arr2){

    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr1->nrows, arr2->ncols);

    oarrm1n7_matmul_OO_to( arr1, arr2, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// 2.1.2. OTI Array   - Real Array.
// ****************************************************************************************************
oarrm1n7_t oarrm1n7_matmul_OR(oarrm1n7_t* arr1, darr_t* arr2){
        
    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr1->nrows, arr2->ncols);

    oarrm1n7_matmul_OR_to( arr1, arr2, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// 2.1.3. Real Array  - OTI Array.
// ****************************************************************************************************
oarrm1n7_t oarrm1n7_matmul_RO(darr_t* arr1, oarrm1n7_t* arr2){
        
    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr1->nrows, arr2->ncols);

    oarrm1n7_matmul_RO_to( arr1, arr2, &res);

    return res;
    
}
// ----------------------------------------------------------------------------------------------------

// 2.2. Transpose.
// ****************************************************************************************************
oarrm1n7_t oarrm1n7_transpose(oarrm1n7_t* arr1){
        
    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr1->ncols, arr1->nrows);

    oarrm1n7_transpose_to( arr1, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// 2.3. Inversion.
// ****************************************************************************************************
oarrm1n7_t oarrm1n7_invert(oarrm1n7_t* arr1){
    
    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr1->ncols, arr1->nrows);

    oarrm1n7_invert_to(arr1, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// 2.4. Determinant.

// ****************************************************************************************************
onumm1n7_t oarrm1n7_det(oarrm1n7_t* arr1){
    
    onumm1n7_t res = onumm1n7_init();

    oarrm1n7_det_to(arr1, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// 2.5. Norm.

// ****************************************************************************************************
onumm1n7_t oarrm1n7_norm(oarrm1n7_t* arr1){
    
    onumm1n7_t res = onumm1n7_init();

    oarrm1n7_norm_to(arr1, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n7_t oarrm1n7_pnorm(oarrm1n7_t* arr1, coeff_t p){
    
    onumm1n7_t res = onumm1n7_init();

    oarrm1n7_pnorm_to(arr1, p, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

