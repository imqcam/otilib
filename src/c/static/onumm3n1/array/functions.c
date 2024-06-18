

// ****************************************************************************************************
oarrm3n1_t oarrm3n1_atanh(oarrm3n1_t* arr){

    oarrm3n1_t res = oarrm3n1_init();

    res = oarrm3n1_zeros(arr->nrows, arr->ncols);

    oarrm3n1_atanh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm3n1_t oarrm3n1_asinh(oarrm3n1_t* arr){

    oarrm3n1_t res = oarrm3n1_init();

    res = oarrm3n1_zeros(arr->nrows, arr->ncols);

    oarrm3n1_asinh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm3n1_t oarrm3n1_acosh(oarrm3n1_t* arr){

    oarrm3n1_t res = oarrm3n1_init();

    res = oarrm3n1_zeros(arr->nrows, arr->ncols);

    oarrm3n1_acosh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm3n1_t oarrm3n1_tanh(oarrm3n1_t* arr){

    oarrm3n1_t res = oarrm3n1_init();

    res = oarrm3n1_zeros(arr->nrows, arr->ncols);

    oarrm3n1_tanh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm3n1_t oarrm3n1_cbrt(oarrm3n1_t* arr){

    oarrm3n1_t res = oarrm3n1_init();

    res = oarrm3n1_zeros(arr->nrows, arr->ncols);

    oarrm3n1_cbrt_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm3n1_t oarrm3n1_sqrt(oarrm3n1_t* arr){

    oarrm3n1_t res = oarrm3n1_init();

    res = oarrm3n1_zeros(arr->nrows, arr->ncols);
    
    oarrm3n1_sqrt_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm3n1_t oarrm3n1_cosh(oarrm3n1_t* arr){

    oarrm3n1_t res = oarrm3n1_init();

    res = oarrm3n1_zeros(arr->nrows, arr->ncols);
    
    oarrm3n1_cosh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm3n1_t oarrm3n1_sinh(oarrm3n1_t* arr){

    oarrm3n1_t res = oarrm3n1_init();

    res = oarrm3n1_zeros(arr->nrows, arr->ncols);
    
    oarrm3n1_sinh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm3n1_t oarrm3n1_asin(oarrm3n1_t* arr){

    oarrm3n1_t res = oarrm3n1_init();

    res = oarrm3n1_zeros(arr->nrows, arr->ncols);
    
    oarrm3n1_asin_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm3n1_t oarrm3n1_acos(oarrm3n1_t* arr){

    oarrm3n1_t res = oarrm3n1_init();

    res = oarrm3n1_zeros(arr->nrows, arr->ncols);
    
    oarrm3n1_acos_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm3n1_t oarrm3n1_atan(oarrm3n1_t* arr){

    oarrm3n1_t res = oarrm3n1_init();

    res = oarrm3n1_zeros(arr->nrows, arr->ncols);
    
    oarrm3n1_atan_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm3n1_t oarrm3n1_tan(oarrm3n1_t* arr){

    oarrm3n1_t res = oarrm3n1_init();

    res = oarrm3n1_zeros(arr->nrows, arr->ncols);
    
    oarrm3n1_tan_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm3n1_t oarrm3n1_cos(oarrm3n1_t* arr){

    oarrm3n1_t res = oarrm3n1_init();

    res = oarrm3n1_zeros(arr->nrows, arr->ncols);
    
    oarrm3n1_cos_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm3n1_t oarrm3n1_sin(oarrm3n1_t* arr){

    oarrm3n1_t res = oarrm3n1_init();

    res = oarrm3n1_zeros(arr->nrows, arr->ncols);
    
    oarrm3n1_sin_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm3n1_t oarrm3n1_logb(oarrm3n1_t* arr, double base){

    oarrm3n1_t res = oarrm3n1_init();

    res = oarrm3n1_zeros(arr->nrows, arr->ncols);
    
    oarrm3n1_logb_to(arr, base, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm3n1_t oarrm3n1_log10(oarrm3n1_t* arr){

    oarrm3n1_t res = oarrm3n1_init();

    res = oarrm3n1_zeros(arr->nrows, arr->ncols);
    
    oarrm3n1_log10_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm3n1_t oarrm3n1_log(oarrm3n1_t* arr){

    oarrm3n1_t res = oarrm3n1_init();

    res = oarrm3n1_zeros(arr->nrows, arr->ncols);
    
    oarrm3n1_log_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm3n1_t oarrm3n1_exp(oarrm3n1_t* arr){

    oarrm3n1_t res = oarrm3n1_init();

    res = oarrm3n1_zeros(arr->nrows, arr->ncols);
    
    oarrm3n1_exp_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm3n1_t oarrm3n1_pow(oarrm3n1_t* arr, double e){

    oarrm3n1_t res = oarrm3n1_init();

    res = oarrm3n1_zeros(arr->nrows, arr->ncols);

    oarrm3n1_pow_to(arr, e, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

