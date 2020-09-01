

// ****************************************************************************************************
oarrm5n2_t oarrm5n2_atanh(oarrm5n2_t* arr){

    oarrm5n2_t res = oarrm5n2_init();

    res = oarrm5n2_zeros(arr->nrows, arr->ncols);

    oarrm5n2_atanh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm5n2_t oarrm5n2_asinh(oarrm5n2_t* arr){

    oarrm5n2_t res = oarrm5n2_init();

    res = oarrm5n2_zeros(arr->nrows, arr->ncols);

    oarrm5n2_asinh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm5n2_t oarrm5n2_acosh(oarrm5n2_t* arr){

    oarrm5n2_t res = oarrm5n2_init();

    res = oarrm5n2_zeros(arr->nrows, arr->ncols);

    oarrm5n2_acosh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm5n2_t oarrm5n2_tanh(oarrm5n2_t* arr){

    oarrm5n2_t res = oarrm5n2_init();

    res = oarrm5n2_zeros(arr->nrows, arr->ncols);

    oarrm5n2_tanh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm5n2_t oarrm5n2_cbrt(oarrm5n2_t* arr){

    oarrm5n2_t res = oarrm5n2_init();

    res = oarrm5n2_zeros(arr->nrows, arr->ncols);

    oarrm5n2_cbrt_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm5n2_t oarrm5n2_sqrt(oarrm5n2_t* arr){

    oarrm5n2_t res = oarrm5n2_init();

    res = oarrm5n2_zeros(arr->nrows, arr->ncols);
    
    oarrm5n2_sqrt_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm5n2_t oarrm5n2_cosh(oarrm5n2_t* arr){

    oarrm5n2_t res = oarrm5n2_init();

    res = oarrm5n2_zeros(arr->nrows, arr->ncols);
    
    oarrm5n2_cosh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm5n2_t oarrm5n2_sinh(oarrm5n2_t* arr){

    oarrm5n2_t res = oarrm5n2_init();

    res = oarrm5n2_zeros(arr->nrows, arr->ncols);
    
    oarrm5n2_sinh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm5n2_t oarrm5n2_asin(oarrm5n2_t* arr){

    oarrm5n2_t res = oarrm5n2_init();

    res = oarrm5n2_zeros(arr->nrows, arr->ncols);
    
    oarrm5n2_asin_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm5n2_t oarrm5n2_acos(oarrm5n2_t* arr){

    oarrm5n2_t res = oarrm5n2_init();

    res = oarrm5n2_zeros(arr->nrows, arr->ncols);
    
    oarrm5n2_acos_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm5n2_t oarrm5n2_atan(oarrm5n2_t* arr){

    oarrm5n2_t res = oarrm5n2_init();

    res = oarrm5n2_zeros(arr->nrows, arr->ncols);
    
    oarrm5n2_atan_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm5n2_t oarrm5n2_tan(oarrm5n2_t* arr){

    oarrm5n2_t res = oarrm5n2_init();

    res = oarrm5n2_zeros(arr->nrows, arr->ncols);
    
    oarrm5n2_tan_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm5n2_t oarrm5n2_cos(oarrm5n2_t* arr){

    oarrm5n2_t res = oarrm5n2_init();

    res = oarrm5n2_zeros(arr->nrows, arr->ncols);
    
    oarrm5n2_cos_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm5n2_t oarrm5n2_sin(oarrm5n2_t* arr){

    oarrm5n2_t res = oarrm5n2_init();

    res = oarrm5n2_zeros(arr->nrows, arr->ncols);
    
    oarrm5n2_sin_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm5n2_t oarrm5n2_logb(oarrm5n2_t* arr, double base){

    oarrm5n2_t res = oarrm5n2_init();

    res = oarrm5n2_zeros(arr->nrows, arr->ncols);
    
    oarrm5n2_logb_to(arr, base, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm5n2_t oarrm5n2_log10(oarrm5n2_t* arr){

    oarrm5n2_t res = oarrm5n2_init();

    res = oarrm5n2_zeros(arr->nrows, arr->ncols);
    
    oarrm5n2_log10_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm5n2_t oarrm5n2_log(oarrm5n2_t* arr){

    oarrm5n2_t res = oarrm5n2_init();

    res = oarrm5n2_zeros(arr->nrows, arr->ncols);
    
    oarrm5n2_log_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm5n2_t oarrm5n2_exp(oarrm5n2_t* arr){

    oarrm5n2_t res = oarrm5n2_init();

    res = oarrm5n2_zeros(arr->nrows, arr->ncols);
    
    oarrm5n2_exp_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm5n2_t oarrm5n2_pow(oarrm5n2_t* arr, double e){

    oarrm5n2_t res = oarrm5n2_init();

    res = oarrm5n2_zeros(arr->nrows, arr->ncols);

    oarrm5n2_pow_to(arr, e, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

