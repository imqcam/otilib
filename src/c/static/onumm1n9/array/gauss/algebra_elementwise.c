
// 1. Elementwise operations.
// 1.1. Negation.

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_neg(feoarrm1n9_t* arr){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(arr->nrows, arr->ncols, arr->nip);

    feoarrm1n9_neg_to( arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_neg_to(feoarrm1n9_t* arr, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_FF_elementwise(arr, arr, res);

    // The loop for every element in arr.
    for (i = 0; i<res->nip; i++){

        oarrm1n9_neg_to( &arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// 1.2 Addition
// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_sum_FF(feoarrm1n9_t* lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_sum_FF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_sum_fF(feonumm1n9_t* lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_sum_fF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_sum_OF(oarrm1n9_t* lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_sum_OF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_sum_RF(darr_t* lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_sum_RF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_sum_oF(onumm1n9_t* lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_sum_oF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_sum_rF(coeff_t lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_sum_rF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_sum_FF_to(feoarrm1n9_t* lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_FF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_sum_OO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_sum_fF_to(feonumm1n9_t* lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_fF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_sum_oO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_sum_OF_to(oarrm1n9_t* lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_OF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_sum_OO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_sum_RF_to(darr_t* lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_RF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_sum_RO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_sum_oF_to(onumm1n9_t* lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_sum_oO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_sum_rF_to(coeff_t lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_sum_rO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// 1.3 Subtraction
// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_sub_FF(feoarrm1n9_t* lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_sub_FF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_sub_fF(feonumm1n9_t* lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_sub_fF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_sub_Ff(feoarrm1n9_t* lhs, feonumm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm1n9_sub_Ff_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_sub_OF(oarrm1n9_t* lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_sub_OF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_sub_FO(feoarrm1n9_t* lhs, oarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm1n9_sub_FO_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_sub_RF(darr_t* lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_sub_RF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_sub_FR(feoarrm1n9_t* lhs, darr_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm1n9_sub_FR_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_sub_oF(onumm1n9_t* lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_sub_oF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_sub_Fo(feoarrm1n9_t* lhs, onumm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm1n9_sub_Fo_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_sub_rF(coeff_t lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_sub_rF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_sub_Fr(feoarrm1n9_t* lhs, coeff_t rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm1n9_sub_Fr_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_sub_FF_to(feoarrm1n9_t* lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_FF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_sub_OO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_sub_fF_to(feonumm1n9_t* lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_fF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_sub_oO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_sub_Ff_to(feoarrm1n9_t* lhs, feonumm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_Ff_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_sub_Oo_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_sub_OF_to(oarrm1n9_t* lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_OF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_sub_OO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_sub_FO_to(feoarrm1n9_t* lhs, oarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_OF_elementwise(rhs,lhs,res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_sub_OO_to( &lhs->p_data[i], rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_sub_RF_to(darr_t* lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_RF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_sub_RO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_sub_FR_to(feoarrm1n9_t* lhs, darr_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_RF_elementwise( rhs, lhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_sub_OR_to(&lhs->p_data[i], rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_sub_oF_to(onumm1n9_t* lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_sub_oO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_sub_Fo_to(feoarrm1n9_t* lhs, onumm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_FF_elementwise(lhs, lhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_sub_Oo_to(&lhs->p_data[i],  rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_sub_rF_to(coeff_t lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_sub_rO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_sub_Fr_to(feoarrm1n9_t* lhs, coeff_t rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_FF_elementwise(lhs, lhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_sub_Or_to( &lhs->p_data[i], rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// 1.4 Multiplication
// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_mul_FF(feoarrm1n9_t* lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_mul_FF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_mul_fF(feonumm1n9_t* lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_mul_fF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_mul_OF(oarrm1n9_t* lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_mul_OF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_mul_RF(darr_t* lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_mul_RF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_mul_oF(onumm1n9_t* lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_mul_oF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_mul_rF(coeff_t lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_mul_rF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_mul_FF_to(feoarrm1n9_t* lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_FF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_mul_OO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_mul_fF_to(feonumm1n9_t* lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_fF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_mul_oO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_mul_OF_to(oarrm1n9_t* lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_OF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_mul_OO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_mul_RF_to(darr_t* lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_RF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_mul_RO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_mul_oF_to(onumm1n9_t* lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_mul_oO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_mul_rF_to(coeff_t lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_mul_rO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// 1.5 Division
// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_div_FF(feoarrm1n9_t* lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_div_FF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_div_Ff(feoarrm1n9_t* lhs, feonumm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm1n9_div_Ff_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_div_fF(feonumm1n9_t* lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_div_fF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_div_OF(oarrm1n9_t* lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_div_OF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_div_FO(feoarrm1n9_t* lhs, oarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm1n9_div_FO_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_div_RF(darr_t* lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_div_RF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_div_FR(feoarrm1n9_t* lhs, darr_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm1n9_div_FR_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_div_oF(onumm1n9_t* lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_div_oF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_div_Fo(feoarrm1n9_t* lhs, onumm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm1n9_div_Fo_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_div_rF(coeff_t lhs, feoarrm1n9_t* rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm1n9_div_rF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm1n9_t feoarrm1n9_div_Fr(feoarrm1n9_t* lhs, coeff_t rhs){

    feoarrm1n9_t res;

    res = feoarrm1n9_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm1n9_div_Fr_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_div_FF_to(feoarrm1n9_t* lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_FF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_div_OO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_div_fF_to(feonumm1n9_t* lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_fF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_div_oO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_div_Ff_to(feoarrm1n9_t* lhs, feonumm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_Ff_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_div_Oo_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_div_OF_to(oarrm1n9_t* lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_OF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_div_OO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_div_FO_to(feoarrm1n9_t* lhs, oarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_OF_elementwise(rhs,lhs,res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_div_OO_to( &lhs->p_data[i], rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_div_RF_to(darr_t* lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_RF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_div_RO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_div_FR_to(feoarrm1n9_t* lhs, darr_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_RF_elementwise( rhs, lhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_div_OR_to(&lhs->p_data[i], rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_div_oF_to(onumm1n9_t* lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_div_oO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_div_Fo_to(feoarrm1n9_t* lhs, onumm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_FF_elementwise(lhs, lhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_div_Oo_to(&lhs->p_data[i],  rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_div_rF_to(coeff_t lhs, feoarrm1n9_t* rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_div_rO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_div_Fr_to(feoarrm1n9_t* lhs, coeff_t rhs, feoarrm1n9_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm1n9_dimCheck_FF_elementwise(lhs, lhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm1n9_div_Or_to( &lhs->p_data[i], rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n9_t feoarrm1n9_integrate(feoarrm1n9_t* arr, feonumm1n9_t* w){

    oarrm1n9_t  res = oarrm1n9_init();

    res = oarrm1n9_zeros(arr->nrows, arr->ncols);

    feoarrm1n9_integrate_to(arr, w, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm1n9_integrate_to(feoarrm1n9_t* arr, feonumm1n9_t* w, oarrm1n9_t* res){

    uint64_t i = 0;

    // Check dimensions.
    feoarrm1n9_dimCheck_FfO_integrate( arr, w, res);

    oarrm1n9_set_r(0.0, res);

    // The loop for every element in arr.
    for (i = 0; i < arr->nip; i++){
        
        oarrm1n9_gem_oO_to( &w->p_data[i], &arr->p_data[i], res, res);

    }
    
}
// ----------------------------------------------------------------------------------------------------

