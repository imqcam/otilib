

// ****************************************************************************************************
oarrm2n10_t oarrm2n10_atanh(oarrm2n10_t* arr){

    oarrm2n10_t res = oarrm2n10_init();

    res = oarrm2n10_zeros(arr->nrows, arr->ncols);

    oarrm2n10_atanh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm2n10_t oarrm2n10_asinh(oarrm2n10_t* arr){

    oarrm2n10_t res = oarrm2n10_init();

    res = oarrm2n10_zeros(arr->nrows, arr->ncols);

    oarrm2n10_asinh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm2n10_t oarrm2n10_acosh(oarrm2n10_t* arr){

    oarrm2n10_t res = oarrm2n10_init();

    res = oarrm2n10_zeros(arr->nrows, arr->ncols);

    oarrm2n10_acosh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm2n10_t oarrm2n10_tanh(oarrm2n10_t* arr){

    oarrm2n10_t res = oarrm2n10_init();

    res = oarrm2n10_zeros(arr->nrows, arr->ncols);

    oarrm2n10_tanh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm2n10_t oarrm2n10_cbrt(oarrm2n10_t* arr){

    oarrm2n10_t res = oarrm2n10_init();

    res = oarrm2n10_zeros(arr->nrows, arr->ncols);

    oarrm2n10_cbrt_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm2n10_t oarrm2n10_sqrt(oarrm2n10_t* arr){

    oarrm2n10_t res = oarrm2n10_init();

    res = oarrm2n10_zeros(arr->nrows, arr->ncols);
    
    oarrm2n10_sqrt_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm2n10_t oarrm2n10_cosh(oarrm2n10_t* arr){

    oarrm2n10_t res = oarrm2n10_init();

    res = oarrm2n10_zeros(arr->nrows, arr->ncols);
    
    oarrm2n10_cosh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm2n10_t oarrm2n10_sinh(oarrm2n10_t* arr){

    oarrm2n10_t res = oarrm2n10_init();

    res = oarrm2n10_zeros(arr->nrows, arr->ncols);
    
    oarrm2n10_sinh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm2n10_t oarrm2n10_asin(oarrm2n10_t* arr){

    oarrm2n10_t res = oarrm2n10_init();

    res = oarrm2n10_zeros(arr->nrows, arr->ncols);
    
    oarrm2n10_asin_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm2n10_t oarrm2n10_acos(oarrm2n10_t* arr){

    oarrm2n10_t res = oarrm2n10_init();

    res = oarrm2n10_zeros(arr->nrows, arr->ncols);
    
    oarrm2n10_acos_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm2n10_t oarrm2n10_atan(oarrm2n10_t* arr){

    oarrm2n10_t res = oarrm2n10_init();

    res = oarrm2n10_zeros(arr->nrows, arr->ncols);
    
    oarrm2n10_atan_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm2n10_t oarrm2n10_tan(oarrm2n10_t* arr){

    oarrm2n10_t res = oarrm2n10_init();

    res = oarrm2n10_zeros(arr->nrows, arr->ncols);
    
    oarrm2n10_tan_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm2n10_t oarrm2n10_cos(oarrm2n10_t* arr){

    oarrm2n10_t res = oarrm2n10_init();

    res = oarrm2n10_zeros(arr->nrows, arr->ncols);
    
    oarrm2n10_cos_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm2n10_t oarrm2n10_sin(oarrm2n10_t* arr){

    oarrm2n10_t res = oarrm2n10_init();

    res = oarrm2n10_zeros(arr->nrows, arr->ncols);
    
    oarrm2n10_sin_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm2n10_t oarrm2n10_logb(oarrm2n10_t* arr, double base){

    oarrm2n10_t res = oarrm2n10_init();

    res = oarrm2n10_zeros(arr->nrows, arr->ncols);
    
    oarrm2n10_logb_to(arr, base, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm2n10_t oarrm2n10_log10(oarrm2n10_t* arr){

    oarrm2n10_t res = oarrm2n10_init();

    res = oarrm2n10_zeros(arr->nrows, arr->ncols);
    
    oarrm2n10_log10_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm2n10_t oarrm2n10_log(oarrm2n10_t* arr){

    oarrm2n10_t res = oarrm2n10_init();

    res = oarrm2n10_zeros(arr->nrows, arr->ncols);
    
    oarrm2n10_log_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm2n10_t oarrm2n10_exp(oarrm2n10_t* arr){

    oarrm2n10_t res = oarrm2n10_init();

    res = oarrm2n10_zeros(arr->nrows, arr->ncols);
    
    oarrm2n10_exp_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm2n10_t oarrm2n10_pow(oarrm2n10_t* arr, double e){

    oarrm2n10_t res = oarrm2n10_init();

    res = oarrm2n10_zeros(arr->nrows, arr->ncols);

    oarrm2n10_pow_to(arr, e, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------
