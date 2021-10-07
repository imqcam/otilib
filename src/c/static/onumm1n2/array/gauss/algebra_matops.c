
// void feoarrm1n2_dimCheck_FF_elementwise(feoarrm1n2_t* arr1, feoarrm1n2_t* arr2, feoarrm1n2_t* res);
// void feoarrm1n2_dimCheck_OF_elementwise(  oarrm1n2_t* arr1, feoarrm1n2_t* arr2, feoarrm1n2_t* res);
// void feoarrm1n2_dimCheck_RF_elementwise(   darr_t* arr1, feoarrm1n2_t* arr2, feoarrm1n2_t* res);
// void feoarrm1n2_dimCheck_FF_matmul( feoarrm1n2_t* lhs, feoarrm1n2_t* rhs, feoarrm1n2_t* res);
// void feoarrm1n2_dimCheck_OF_matmul(   oarrm1n2_t* lhs, feoarrm1n2_t* rhs, feoarrm1n2_t* res);
// void feoarrm1n2_dimCheck_RF_matmul(    darr_t* lhs, feoarrm1n2_t* rhs, feoarrm1n2_t* res);
// void feoarrm1n2_dimCheck_FO_matmul( feoarrm1n2_t* lhs,   oarrm1n2_t* rhs, feoarrm1n2_t* res);
// void feoarrm1n2_dimCheck_FR_matmul( feoarrm1n2_t* lhs,    darr_t* rhs, feoarrm1n2_t* res);
// void feoarrm1n2_dimCheck_F_squareness( feoarrm1n2_t* arr1, feoarrm1n2_t* res);
// void feoarrm1n2_dimCheck_F_transpose( feoarrm1n2_t* arr1, feoarrm1n2_t* res);

// ****************************************************************************************************
feonumm1n2_t feoarrm1n2_dotproduct_FF(feoarrm1n2_t* lhs, feoarrm1n2_t* rhs){

    feonumm1n2_t res = feonumm1n2_init();

    res = feonumm1n2_createEmpty( rhs->nip);

    feoarrm1n2_dotproduct_FF_to(lhs, rhs, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n2_dotproduct_FF_to(feoarrm1n2_t* lhs, feoarrm1n2_t* rhs, feonumm1n2_t* res){

    uint64_t i;

    // Check Dimensions
    feoarrm1n2_dimCheck_FF_samesize(lhs, rhs, res);

    for (i = 0; i<res->nip; i++){

        oarrm1n2_dotproduct_OO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i] );

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm1n2_t feoarrm1n2_dotproduct_OF(oarrm1n2_t* lhs, feoarrm1n2_t* rhs){

    feonumm1n2_t res = feonumm1n2_init();

    res = feonumm1n2_createEmpty( rhs->nip);

    feoarrm1n2_dotproduct_OF_to( lhs, rhs, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n2_dotproduct_OF_to( oarrm1n2_t* lhs, feoarrm1n2_t* rhs, feonumm1n2_t* res){

    uint64_t i;

    // Check Dimensions
    feoarrm1n2_dimCheck_OF_samesize(lhs, rhs, res);

    for (i = 0; i < res->nip; i++){

        oarrm1n2_dotproduct_OO_to( lhs, &rhs->p_data[i], &res->p_data[i] );

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm1n2_t feoarrm1n2_dotproduct_RF( darr_t* lhs, feoarrm1n2_t* rhs){

    feonumm1n2_t res = feonumm1n2_init();

    res = feonumm1n2_createEmpty( rhs->nip);

    feoarrm1n2_dotproduct_RF_to( lhs, rhs, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n2_dotproduct_RF_to( darr_t* lhs, feoarrm1n2_t* rhs, feonumm1n2_t* res){

    uint64_t i;

    // Check Dimensions
    feoarrm1n2_dimCheck_RF_samesize(lhs, rhs, res);

    for (i = 0; i < res->nip; i++){

        oarrm1n2_dotproduct_RO_to( lhs, &rhs->p_data[i], &res->p_data[i] );

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n2_t feoarrm1n2_matmul_FF(feoarrm1n2_t* lhs, feoarrm1n2_t* rhs){

    feoarrm1n2_t res = feoarrm1n2_init();

    // Check dimensions.
    res = feoarrm1n2_createEmpty( lhs->nrows, rhs->ncols, lhs->nip);

    feoarrm1n2_matmul_FF_to( lhs, rhs, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n2_matmul_FF_to(feoarrm1n2_t* lhs, feoarrm1n2_t* rhs, feoarrm1n2_t* res){

    uint64_t i;

    // Check Dimensions
    feoarrm1n2_dimCheck_FF_matmul(lhs, rhs, res);

    for (i = 0; i<res->nip; i++){

        oarrm1n2_matmul_OO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i] );

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n2_t feoarrm1n2_matmul_OF(oarrm1n2_t* lhs, feoarrm1n2_t* rhs){

    feoarrm1n2_t res = feoarrm1n2_init();

    // Check dimensions.
    res = feoarrm1n2_createEmpty( lhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n2_matmul_OF_to( lhs, rhs, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n2_matmul_OF_to(oarrm1n2_t* lhs, feoarrm1n2_t* rhs, feoarrm1n2_t* res){

    uint64_t i;

    // Check Dimensions
    feoarrm1n2_dimCheck_OF_matmul(lhs, rhs, res);

    for (i = 0; i<res->nip; i++){

        oarrm1n2_matmul_OO_to( lhs, &rhs->p_data[i], &res->p_data[i] );

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n2_t feoarrm1n2_matmul_FO(feoarrm1n2_t* lhs, oarrm1n2_t* rhs){

    feoarrm1n2_t res = feoarrm1n2_init();

    // Check dimensions.
    res = feoarrm1n2_createEmpty( lhs->nrows, rhs->ncols, lhs->nip);

    feoarrm1n2_matmul_FO_to( lhs, rhs, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n2_matmul_FO_to(feoarrm1n2_t* lhs, oarrm1n2_t* rhs, feoarrm1n2_t* res){

    uint64_t i;

    // Check Dimensions
    feoarrm1n2_dimCheck_FO_matmul(lhs, rhs, res);

    for (i = 0; i<res->nip; i++){

        oarrm1n2_matmul_OO_to( &lhs->p_data[i], rhs, &res->p_data[i] );

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n2_t feoarrm1n2_matmul_RF(darr_t* lhs, feoarrm1n2_t* rhs){

    feoarrm1n2_t res = feoarrm1n2_init();

    // Check dimensions.
    res = feoarrm1n2_createEmpty( lhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n2_matmul_RF_to( lhs, rhs, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n2_matmul_RF_to(darr_t* lhs, feoarrm1n2_t* rhs, feoarrm1n2_t* res){

    uint64_t i;

    // Check Dimensions
    feoarrm1n2_dimCheck_RF_matmul(lhs, rhs, res);

    for (i = 0; i<res->nip; i++){

        oarrm1n2_matmul_RO_to( lhs, &rhs->p_data[i], &res->p_data[i] );

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n2_t feoarrm1n2_matmul_FR(feoarrm1n2_t* lhs, darr_t* rhs){

    feoarrm1n2_t res = feoarrm1n2_init();

    // Check dimensions.
    res = feoarrm1n2_createEmpty( lhs->nrows, rhs->ncols, lhs->nip);

    feoarrm1n2_matmul_FR_to( lhs, rhs, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n2_matmul_FR_to(feoarrm1n2_t* lhs, darr_t* rhs, feoarrm1n2_t* res){

    uint64_t i;

    // Check Dimensions
    feoarrm1n2_dimCheck_FR_matmul(lhs, rhs, res);

    for (i = 0; i<res->nip; i++){

        oarrm1n2_matmul_OR_to( &lhs->p_data[i], rhs, &res->p_data[i] );

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm1n2_t feoarrm1n2_norm(feoarrm1n2_t* arr){
    
    feonumm1n2_t res = feonumm1n2_init();

    
    res = feonumm1n2_createEmpty( arr->nip);

    feoarrm1n2_norm_to( arr, &res );
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n2_norm_to(feoarrm1n2_t* arr, feonumm1n2_t* res){
    
    uint64_t i;
    
    // Check dimensions (squareness)
    feoarrm1n2_dimCheck_fF_elementwise(res,arr,arr);

    for (i = 0; i<arr->nip; i++){

        oarrm1n2_pnorm_to( &arr->p_data[i], 2.0, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm1n2_t feoarrm1n2_pnorm(feoarrm1n2_t* arr, coeff_t p){
    
    feonumm1n2_t res = feonumm1n2_init();

    
    res = feonumm1n2_createEmpty( arr->nip);

    feoarrm1n2_pnorm_to( arr, p, &res );
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n2_pnorm_to(feoarrm1n2_t* arr, coeff_t p, feonumm1n2_t* res){
    
    uint64_t i;
    
    // Check dimensions (squareness)
    feoarrm1n2_dimCheck_fF_elementwise(res,arr,arr);

    for (i = 0; i<arr->nip; i++){

        oarrm1n2_pnorm_to( &arr->p_data[i], p, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm1n2_t feoarrm1n2_det(feoarrm1n2_t* arr){
    
    feonumm1n2_t res = feonumm1n2_init();

    
    res = feonumm1n2_createEmpty( arr->nip);

    feoarrm1n2_det_to( arr, &res );
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n2_det_to(feoarrm1n2_t* arr, feonumm1n2_t* res){
    
    uint64_t i;
    
    // Check dimensions (squareness)
    feoarrm1n2_dimCheck_F_squareness( arr, arr);
    feoarrm1n2_dimCheck_fF_elementwise(res,arr,arr);

    for (i = 0; i<arr->nip; i++){
        
        oarrm1n2_det_to( &arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n2_t feoarrm1n2_invert(feoarrm1n2_t* arr){

    feoarrm1n2_t res = feoarrm1n2_init();

    // Should it copy offsets too?
    res = feoarrm1n2_createEmpty( arr->nrows, arr->ncols, arr->nip);
    
    feoarrm1n2_invert_to( arr, &res );

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n2_invert_to(feoarrm1n2_t* arr, feoarrm1n2_t* res){

    uint64_t i;

    // Check dimensions (must be square and equal).
    feoarrm1n2_dimCheck_F_squareness( arr, res);
    
    for (i = 0; i<arr->nip; i++){

        oarrm1n2_invert_to( &arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n2_t feoarrm1n2_transpose(feoarrm1n2_t* arr){

    feoarrm1n2_t res = feoarrm1n2_init();

    // Should it copy offsets?
    res = feoarrm1n2_createEmpty( arr->ncols, arr->nrows, arr->nip);
    
    feoarrm1n2_transpose_to( arr, &res );

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n2_transpose_to(feoarrm1n2_t* arr, feoarrm1n2_t* res){

    uint64_t i;

    // Check dimensions.
    feoarrm1n2_dimCheck_F_transpose( arr, res);
    
    for (i = 0; i<arr->nip; i++){

        oarrm1n2_transpose_to( &arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

