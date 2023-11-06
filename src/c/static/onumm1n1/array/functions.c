

// ****************************************************************************************************
oarrm1n1_t oarrm1n1_atanh(oarrm1n1_t* arr){

    oarrm1n1_t res = oarrm1n1_init();

    res = oarrm1n1_zeros(arr->nrows, arr->ncols);

    oarrm1n1_atanh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n1_t oarrm1n1_asinh(oarrm1n1_t* arr){

    oarrm1n1_t res = oarrm1n1_init();

    res = oarrm1n1_zeros(arr->nrows, arr->ncols);

    oarrm1n1_asinh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n1_t oarrm1n1_acosh(oarrm1n1_t* arr){

    oarrm1n1_t res = oarrm1n1_init();

    res = oarrm1n1_zeros(arr->nrows, arr->ncols);

    oarrm1n1_acosh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n1_t oarrm1n1_tanh(oarrm1n1_t* arr){

    oarrm1n1_t res = oarrm1n1_init();

    res = oarrm1n1_zeros(arr->nrows, arr->ncols);

    oarrm1n1_tanh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n1_t oarrm1n1_cbrt(oarrm1n1_t* arr){

    oarrm1n1_t res = oarrm1n1_init();

    res = oarrm1n1_zeros(arr->nrows, arr->ncols);

    oarrm1n1_cbrt_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n1_t oarrm1n1_sqrt(oarrm1n1_t* arr){

    oarrm1n1_t res = oarrm1n1_init();

    res = oarrm1n1_zeros(arr->nrows, arr->ncols);
    
    oarrm1n1_sqrt_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n1_t oarrm1n1_cosh(oarrm1n1_t* arr){

    oarrm1n1_t res = oarrm1n1_init();

    res = oarrm1n1_zeros(arr->nrows, arr->ncols);
    
    oarrm1n1_cosh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n1_t oarrm1n1_sinh(oarrm1n1_t* arr){

    oarrm1n1_t res = oarrm1n1_init();

    res = oarrm1n1_zeros(arr->nrows, arr->ncols);
    
    oarrm1n1_sinh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n1_t oarrm1n1_asin(oarrm1n1_t* arr){

    oarrm1n1_t res = oarrm1n1_init();

    res = oarrm1n1_zeros(arr->nrows, arr->ncols);
    
    oarrm1n1_asin_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n1_t oarrm1n1_acos(oarrm1n1_t* arr){

    oarrm1n1_t res = oarrm1n1_init();

    res = oarrm1n1_zeros(arr->nrows, arr->ncols);
    
    oarrm1n1_acos_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

extern void oarrm1n1_atan_f(oarrm1n1_t*,oarrm1n1_t*);
// ****************************************************************************************************
oarrm1n1_t oarrm1n1_atan(oarrm1n1_t* arr){

    oarrm1n1_t res = oarrm1n1_init();

    res = oarrm1n1_zeros(arr->nrows, arr->ncols);
    
    // oarrm1n1_atan_to(arr, &res);
    oarrm1n1_atan_f(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

extern void oarrm1n1_tan_f(oarrm1n1_t*,oarrm1n1_t*);
// ****************************************************************************************************
oarrm1n1_t oarrm1n1_tan(oarrm1n1_t* arr){

    oarrm1n1_t res = oarrm1n1_init();

    res = oarrm1n1_zeros(arr->nrows, arr->ncols);
    
    // oarrm1n1_tan_to(arr, &res);
    oarrm1n1_tan_f(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

extern void oarrm1n1_cos_f(oarrm1n1_t*,oarrm1n1_t*);
// ****************************************************************************************************
oarrm1n1_t oarrm1n1_cos(oarrm1n1_t* arr){

    oarrm1n1_t res = oarrm1n1_init();

    res = oarrm1n1_zeros(arr->nrows, arr->ncols);
    
    oarrm1n1_cos_to(arr, &res);
    // oarrm1n1_cos_f(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// // ****************************************************************************************************
// oarrm1n1_t oarrm1n1_sin(oarrm1n1_t* arr){

//     oarrm1n1_t res = oarrm1n1_init();

//     res = oarrm1n1_zeros(arr->nrows, arr->ncols);
    
//     oarrm1n1_sin_to(arr, &res);
    
//     return res;
// }
// // ----------------------------------------------------------------------------------------------------

extern void oarrm1n1_sin_f(oarrm1n1_t*,oarrm1n1_t*);

// ****************************************************************************************************
oarrm1n1_t oarrm1n1_sin(oarrm1n1_t* arr){

    oarrm1n1_t res = oarrm1n1_init();

    res = oarrm1n1_zeros(arr->nrows, arr->ncols);
    
    // oarrm1n1_sin_to(arr, &res);
    oarrm1n1_sin_f(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------


// ****************************************************************************************************
oarrm1n1_t oarrm1n1_logb(oarrm1n1_t* arr, double base){

    oarrm1n1_t res = oarrm1n1_init();

    res = oarrm1n1_zeros(arr->nrows, arr->ncols);
    
    oarrm1n1_logb_to(arr, base, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n1_t oarrm1n1_log10(oarrm1n1_t* arr){

    oarrm1n1_t res = oarrm1n1_init();

    res = oarrm1n1_zeros(arr->nrows, arr->ncols);
    
    oarrm1n1_log10_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n1_t oarrm1n1_log(oarrm1n1_t* arr){

    oarrm1n1_t res = oarrm1n1_init();

    res = oarrm1n1_zeros(arr->nrows, arr->ncols);
    
    oarrm1n1_log_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n1_t oarrm1n1_exp(oarrm1n1_t* arr){

    oarrm1n1_t res = oarrm1n1_init();

    res = oarrm1n1_zeros(arr->nrows, arr->ncols);
    
    oarrm1n1_exp_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm1n1_t oarrm1n1_pow(oarrm1n1_t* arr, double e){

    oarrm1n1_t res = oarrm1n1_init();

    res = oarrm1n1_zeros(arr->nrows, arr->ncols);

    oarrm1n1_pow_to(arr, e, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

