

// ****************************************************************************************************
oarrm1n7_t oarrm1n7_atanh(oarrm1n7_t* arr){

    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr->nrows, arr->ncols);

    oarrm1n7_atanh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n7_t oarrm1n7_asinh(oarrm1n7_t* arr){

    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr->nrows, arr->ncols);

    oarrm1n7_asinh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n7_t oarrm1n7_acosh(oarrm1n7_t* arr){

    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr->nrows, arr->ncols);

    oarrm1n7_acosh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n7_t oarrm1n7_tanh(oarrm1n7_t* arr){

    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr->nrows, arr->ncols);

    oarrm1n7_tanh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n7_t oarrm1n7_cbrt(oarrm1n7_t* arr){

    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr->nrows, arr->ncols);

    oarrm1n7_cbrt_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n7_t oarrm1n7_sqrt(oarrm1n7_t* arr){

    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr->nrows, arr->ncols);
    
    oarrm1n7_sqrt_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n7_t oarrm1n7_cosh(oarrm1n7_t* arr){

    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr->nrows, arr->ncols);
    
    oarrm1n7_cosh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n7_t oarrm1n7_sinh(oarrm1n7_t* arr){

    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr->nrows, arr->ncols);
    
    oarrm1n7_sinh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n7_t oarrm1n7_asin(oarrm1n7_t* arr){

    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr->nrows, arr->ncols);
    
    oarrm1n7_asin_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n7_t oarrm1n7_acos(oarrm1n7_t* arr){

    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr->nrows, arr->ncols);
    
    oarrm1n7_acos_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n7_t oarrm1n7_atan(oarrm1n7_t* arr){

    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr->nrows, arr->ncols);
    
    oarrm1n7_atan_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n7_t oarrm1n7_tan(oarrm1n7_t* arr){

    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr->nrows, arr->ncols);
    
    oarrm1n7_tan_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n7_t oarrm1n7_cos(oarrm1n7_t* arr){

    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr->nrows, arr->ncols);
    
    oarrm1n7_cos_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n7_t oarrm1n7_sin(oarrm1n7_t* arr){

    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr->nrows, arr->ncols);
    
    oarrm1n7_sin_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n7_t oarrm1n7_logb(oarrm1n7_t* arr, double base){

    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr->nrows, arr->ncols);
    
    oarrm1n7_logb_to(arr, base, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n7_t oarrm1n7_log10(oarrm1n7_t* arr){

    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr->nrows, arr->ncols);
    
    oarrm1n7_log10_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n7_t oarrm1n7_log(oarrm1n7_t* arr){

    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr->nrows, arr->ncols);
    
    oarrm1n7_log_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n7_t oarrm1n7_exp(oarrm1n7_t* arr){

    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr->nrows, arr->ncols);
    
    oarrm1n7_exp_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n7_t oarrm1n7_pow(oarrm1n7_t* arr, double e){

    oarrm1n7_t res = oarrm1n7_init();

    res = oarrm1n7_zeros(arr->nrows, arr->ncols);

    oarrm1n7_pow_to(arr, e, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

