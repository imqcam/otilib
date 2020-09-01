
// 1. Elementwise operations.
// 1.1. Negation.

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_neg(feoarrm5n2_t* arr){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(arr->nrows, arr->ncols, arr->nip);

    feoarrm5n2_neg_to( arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_neg_to(feoarrm5n2_t* arr, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_FF_elementwise(arr, arr, res);

    // The loop for every element in arr.
    for (i = 0; i<res->nip; i++){

        oarrm5n2_neg_to( &arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// 1.2 Addition
// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_sum_FF(feoarrm5n2_t* lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_sum_FF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_sum_fF(feonumm5n2_t* lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_sum_fF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_sum_OF(oarrm5n2_t* lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_sum_OF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_sum_RF(darr_t* lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_sum_RF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_sum_oF(onumm5n2_t* lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_sum_oF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_sum_rF(coeff_t lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_sum_rF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_sum_FF_to(feoarrm5n2_t* lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_FF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_sum_OO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_sum_fF_to(feonumm5n2_t* lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_fF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_sum_oO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_sum_OF_to(oarrm5n2_t* lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_OF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_sum_OO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_sum_RF_to(darr_t* lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_RF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_sum_RO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_sum_oF_to(onumm5n2_t* lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_sum_oO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_sum_rF_to(coeff_t lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_sum_rO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// 1.3 Subtraction
// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_sub_FF(feoarrm5n2_t* lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_sub_FF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_sub_fF(feonumm5n2_t* lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_sub_fF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_sub_Ff(feoarrm5n2_t* lhs, feonumm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm5n2_sub_Ff_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_sub_OF(oarrm5n2_t* lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_sub_OF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_sub_FO(feoarrm5n2_t* lhs, oarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm5n2_sub_FO_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_sub_RF(darr_t* lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_sub_RF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_sub_FR(feoarrm5n2_t* lhs, darr_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm5n2_sub_FR_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_sub_oF(onumm5n2_t* lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_sub_oF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_sub_Fo(feoarrm5n2_t* lhs, onumm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm5n2_sub_Fo_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_sub_rF(coeff_t lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_sub_rF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_sub_Fr(feoarrm5n2_t* lhs, coeff_t rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm5n2_sub_Fr_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_sub_FF_to(feoarrm5n2_t* lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_FF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_sub_OO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_sub_fF_to(feonumm5n2_t* lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_fF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_sub_oO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_sub_Ff_to(feoarrm5n2_t* lhs, feonumm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_Ff_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_sub_Oo_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_sub_OF_to(oarrm5n2_t* lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_OF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_sub_OO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_sub_FO_to(feoarrm5n2_t* lhs, oarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_OF_elementwise(rhs,lhs,res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_sub_OO_to( &lhs->p_data[i], rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_sub_RF_to(darr_t* lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_RF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_sub_RO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_sub_FR_to(feoarrm5n2_t* lhs, darr_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_RF_elementwise( rhs, lhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_sub_OR_to(&lhs->p_data[i], rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_sub_oF_to(onumm5n2_t* lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_sub_oO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_sub_Fo_to(feoarrm5n2_t* lhs, onumm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_FF_elementwise(lhs, lhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_sub_Oo_to(&lhs->p_data[i],  rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_sub_rF_to(coeff_t lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_sub_rO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_sub_Fr_to(feoarrm5n2_t* lhs, coeff_t rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_FF_elementwise(lhs, lhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_sub_Or_to( &lhs->p_data[i], rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// 1.4 Multiplication
// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_mul_FF(feoarrm5n2_t* lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_mul_FF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_mul_fF(feonumm5n2_t* lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_mul_fF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_mul_OF(oarrm5n2_t* lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_mul_OF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_mul_RF(darr_t* lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_mul_RF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_mul_oF(onumm5n2_t* lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_mul_oF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_mul_rF(coeff_t lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_mul_rF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_mul_FF_to(feoarrm5n2_t* lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_FF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_mul_OO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_mul_fF_to(feonumm5n2_t* lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_fF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_mul_oO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_mul_OF_to(oarrm5n2_t* lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_OF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_mul_OO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_mul_RF_to(darr_t* lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_RF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_mul_RO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_mul_oF_to(onumm5n2_t* lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_mul_oO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_mul_rF_to(coeff_t lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_mul_rO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// 1.5 Division
// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_div_FF(feoarrm5n2_t* lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_div_FF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_div_Ff(feoarrm5n2_t* lhs, feonumm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm5n2_div_Ff_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_div_fF(feonumm5n2_t* lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_div_fF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_div_OF(oarrm5n2_t* lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_div_OF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_div_FO(feoarrm5n2_t* lhs, oarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm5n2_div_FO_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_div_RF(darr_t* lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_div_RF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_div_FR(feoarrm5n2_t* lhs, darr_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm5n2_div_FR_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_div_oF(onumm5n2_t* lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_div_oF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_div_Fo(feoarrm5n2_t* lhs, onumm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm5n2_div_Fo_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_div_rF(coeff_t lhs, feoarrm5n2_t* rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(rhs->nrows, rhs->ncols, rhs->nip);

    feoarrm5n2_div_rF_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feoarrm5n2_t feoarrm5n2_div_Fr(feoarrm5n2_t* lhs, coeff_t rhs){

    feoarrm5n2_t res;

    res = feoarrm5n2_createEmpty(lhs->nrows, lhs->ncols, lhs->nip);

    feoarrm5n2_div_Fr_to(lhs,rhs,&res);       
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_div_FF_to(feoarrm5n2_t* lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_FF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_div_OO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_div_fF_to(feonumm5n2_t* lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_fF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_div_oO_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_div_Ff_to(feoarrm5n2_t* lhs, feonumm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_Ff_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_div_Oo_to( &lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_div_OF_to(oarrm5n2_t* lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_OF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_div_OO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_div_FO_to(feoarrm5n2_t* lhs, oarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_OF_elementwise(rhs,lhs,res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_div_OO_to( &lhs->p_data[i], rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_div_RF_to(darr_t* lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_RF_elementwise(lhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_div_RO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_div_FR_to(feoarrm5n2_t* lhs, darr_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_RF_elementwise( rhs, lhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_div_OR_to(&lhs->p_data[i], rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_div_oF_to(onumm5n2_t* lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_div_oO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_div_Fo_to(feoarrm5n2_t* lhs, onumm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_FF_elementwise(lhs, lhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_div_Oo_to(&lhs->p_data[i],  rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_div_rF_to(coeff_t lhs, feoarrm5n2_t* rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_FF_elementwise(rhs, rhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_div_rO_to( lhs, &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_div_Fr_to(feoarrm5n2_t* lhs, coeff_t rhs, feoarrm5n2_t* res){

    uint64_t i;

    // Check first dimensions.
    feoarrm5n2_dimCheck_FF_elementwise(lhs, lhs, res);

    // The loop for every element in arr.
    for (i = 0; i < res->nip; i++){

        oarrm5n2_div_Or_to( &lhs->p_data[i], rhs, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm5n2_t feoarrm5n2_integrate(feoarrm5n2_t* arr, feonumm5n2_t* w){

    oarrm5n2_t  res = oarrm5n2_init();

    res = oarrm5n2_zeros(arr->nrows, arr->ncols);

    feoarrm5n2_integrate_to(arr, w, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feoarrm5n2_integrate_to(feoarrm5n2_t* arr, feonumm5n2_t* w, oarrm5n2_t* res){

    uint64_t i = 0;

    // Check dimensions.
    feoarrm5n2_dimCheck_FfO_integrate( arr, w, res);

    oarrm5n2_set_r(0.0, res);

    // The loop for every element in arr.
    for (i = 0; i < arr->nip; i++){
        
        oarrm5n2_gem_oO_to( &w->p_data[i], &arr->p_data[i], res, res);

    }
    
}
// ----------------------------------------------------------------------------------------------------

