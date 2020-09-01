
// 1. Elementwise operations.
// 1.1. Negation.

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_neg(feoarrm4n5_t* arr){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(arr->nrows, arr->ncols, arr->nip);

    feoarrm4n5_neg_to( arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_neg_to(feoarrm4n5_t* arr, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_FF_elementwise(arr, arr, res);

    // The loop for every element in arr.
    for (i = 0; i<res->nip; i++){

        oarrm4n5_neg_to( &arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// 1.2 Addition
// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_sum_FF(feoarrm4n5_t* lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_sum_FF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_sum_fF(feonumm4n5_t* lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_sum_fF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_sum_OF(oarrm4n5_t* lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_sum_OF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_sum_RF(darr_t* lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_sum_RF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_sum_oF(onumm4n5_t* lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_sum_oF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_sum_rF(coeff_t lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_sum_rF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_sum_FF_to(feoarrm4n5_t* lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_FF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_sum_OO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_sum_fF_to(feonumm4n5_t* lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_fF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_sum_oO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_sum_OF_to(oarrm4n5_t* lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_OF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_sum_OO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_sum_RF_to(darr_t* lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_RF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_sum_RO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_sum_oF_to(onumm4n5_t* lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_sum_oO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_sum_rF_to(coeff_t lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_sum_rO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// 1.3 Subtraction
// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_sub_FF(feoarrm4n5_t* lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_sub_FF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_sub_fF(feonumm4n5_t* lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_sub_fF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_sub_Ff(feoarrm4n5_t* lhs, feonumm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm4n5_sub_Ff_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_sub_OF(oarrm4n5_t* lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_sub_OF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_sub_FO(feoarrm4n5_t* lhs, oarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm4n5_sub_FO_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_sub_RF(darr_t* lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_sub_RF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_sub_FR(feoarrm4n5_t* lhs, darr_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm4n5_sub_FR_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_sub_oF(onumm4n5_t* lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_sub_oF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_sub_Fo(feoarrm4n5_t* lhs, onumm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm4n5_sub_Fo_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_sub_rF(coeff_t lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_sub_rF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_sub_Fr(feoarrm4n5_t* lhs, coeff_t rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm4n5_sub_Fr_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_sub_FF_to(feoarrm4n5_t* lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_FF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_sub_OO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_sub_fF_to(feonumm4n5_t* lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_fF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_sub_oO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_sub_Ff_to(feoarrm4n5_t* lhs, feonumm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_Ff_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_sub_Oo_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_sub_OF_to(oarrm4n5_t* lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_OF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_sub_OO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_sub_FO_to(feoarrm4n5_t* lhs, oarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_OF_elementwise(rhs,lhs,res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_sub_OO_to( &lhs->p_data[i], rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_sub_RF_to(darr_t* lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_RF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_sub_RO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_sub_FR_to(feoarrm4n5_t* lhs, darr_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_RF_elementwise( rhs, lhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_sub_OR_to(&lhs->p_data[i], rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_sub_oF_to(onumm4n5_t* lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_sub_oO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_sub_Fo_to(feoarrm4n5_t* lhs, onumm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_FF_elementwise(lhs, lhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_sub_Oo_to(&lhs->p_data[i],  rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_sub_rF_to(coeff_t lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_sub_rO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_sub_Fr_to(feoarrm4n5_t* lhs, coeff_t rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_FF_elementwise(lhs, lhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_sub_Or_to( &lhs->p_data[i], rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// 1.4 Multiplication
// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_mul_FF(feoarrm4n5_t* lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_mul_FF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_mul_fF(feonumm4n5_t* lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_mul_fF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_mul_OF(oarrm4n5_t* lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_mul_OF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_mul_RF(darr_t* lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_mul_RF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_mul_oF(onumm4n5_t* lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_mul_oF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_mul_rF(coeff_t lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_mul_rF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_mul_FF_to(feoarrm4n5_t* lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_FF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_mul_OO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_mul_fF_to(feonumm4n5_t* lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_fF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_mul_oO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_mul_OF_to(oarrm4n5_t* lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_OF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_mul_OO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_mul_RF_to(darr_t* lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_RF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_mul_RO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_mul_oF_to(onumm4n5_t* lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_mul_oO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_mul_rF_to(coeff_t lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_mul_rO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// 1.5 Division
// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_div_FF(feoarrm4n5_t* lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_div_FF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_div_Ff(feoarrm4n5_t* lhs, feonumm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm4n5_div_Ff_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_div_fF(feonumm4n5_t* lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_div_fF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_div_OF(oarrm4n5_t* lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_div_OF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_div_FO(feoarrm4n5_t* lhs, oarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm4n5_div_FO_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_div_RF(darr_t* lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_div_RF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_div_FR(feoarrm4n5_t* lhs, darr_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm4n5_div_FR_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_div_oF(onumm4n5_t* lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_div_oF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_div_Fo(feoarrm4n5_t* lhs, onumm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm4n5_div_Fo_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_div_rF(coeff_t lhs, feoarrm4n5_t* rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm4n5_div_rF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm4n5_t feoarrm4n5_div_Fr(feoarrm4n5_t* lhs, coeff_t rhs){

    feoarrm4n5_t res;

    res = feoarrm4n5_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm4n5_div_Fr_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_div_FF_to(feoarrm4n5_t* lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_FF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_div_OO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_div_fF_to(feonumm4n5_t* lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_fF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_div_oO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_div_Ff_to(feoarrm4n5_t* lhs, feonumm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_Ff_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_div_Oo_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_div_OF_to(oarrm4n5_t* lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_OF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_div_OO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_div_FO_to(feoarrm4n5_t* lhs, oarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_OF_elementwise(rhs,lhs,res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_div_OO_to( &lhs->p_data[i], rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_div_RF_to(darr_t* lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_RF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_div_RO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_div_FR_to(feoarrm4n5_t* lhs, darr_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_RF_elementwise( rhs, lhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_div_OR_to(&lhs->p_data[i], rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_div_oF_to(onumm4n5_t* lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_div_oO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_div_Fo_to(feoarrm4n5_t* lhs, onumm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_FF_elementwise(lhs, lhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_div_Oo_to(&lhs->p_data[i],  rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_div_rF_to(coeff_t lhs, feoarrm4n5_t* rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_div_rO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_div_Fr_to(feoarrm4n5_t* lhs, coeff_t rhs, feoarrm4n5_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm4n5_dimCheck_FF_elementwise(lhs, lhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm4n5_div_Or_to( &lhs->p_data[i], rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm4n5_t feoarrm4n5_integrate(feoarrm4n5_t* arr, feonumm4n5_t* w){

    oarrm4n5_t  res = oarrm4n5_init();

    res = oarrm4n5_zeros(arr->nrows, arr->ncols);

    feoarrm4n5_integrate_to(arr, w, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm4n5_integrate_to(feoarrm4n5_t* arr, feonumm4n5_t* w, oarrm4n5_t* res){

    uint64_t i = 0;

    // Check dimensions.
    feoarrm4n5_dimCheck_FfO_integrate( arr, w, res);

    oarrm4n5_set_r(0.0, res);

    // The loop for every element in arr.
    for (i = 0; i < arr->nip; i++){
        
        oarrm4n5_gem_oO_to( &w->p_data[i], &arr->p_data[i], res, res);

    }
    
}
// ----------------------------------------------------------------------------------------------------

