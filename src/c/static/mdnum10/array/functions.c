

// ****************************************************************************************************
mdarr10_t mdarr10_atanh(mdarr10_t* arr){

    mdarr10_t res = mdarr10_init();

    res = mdarr10_zeros(arr->nrows, arr->ncols);

    mdarr10_atanh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr10_t mdarr10_asinh(mdarr10_t* arr){

    mdarr10_t res = mdarr10_init();

    res = mdarr10_zeros(arr->nrows, arr->ncols);

    mdarr10_asinh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr10_t mdarr10_acosh(mdarr10_t* arr){

    mdarr10_t res = mdarr10_init();

    res = mdarr10_zeros(arr->nrows, arr->ncols);

    mdarr10_acosh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr10_t mdarr10_tanh(mdarr10_t* arr){

    mdarr10_t res = mdarr10_init();

    res = mdarr10_zeros(arr->nrows, arr->ncols);

    mdarr10_tanh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr10_t mdarr10_cbrt(mdarr10_t* arr){

    mdarr10_t res = mdarr10_init();

    res = mdarr10_zeros(arr->nrows, arr->ncols);

    mdarr10_cbrt_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr10_t mdarr10_sqrt(mdarr10_t* arr){

    mdarr10_t res = mdarr10_init();

    res = mdarr10_zeros(arr->nrows, arr->ncols);
    
    mdarr10_sqrt_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr10_t mdarr10_cosh(mdarr10_t* arr){

    mdarr10_t res = mdarr10_init();

    res = mdarr10_zeros(arr->nrows, arr->ncols);
    
    mdarr10_cosh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr10_t mdarr10_sinh(mdarr10_t* arr){

    mdarr10_t res = mdarr10_init();

    res = mdarr10_zeros(arr->nrows, arr->ncols);
    
    mdarr10_sinh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr10_t mdarr10_asin(mdarr10_t* arr){

    mdarr10_t res = mdarr10_init();

    res = mdarr10_zeros(arr->nrows, arr->ncols);
    
    mdarr10_asin_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr10_t mdarr10_acos(mdarr10_t* arr){

    mdarr10_t res = mdarr10_init();

    res = mdarr10_zeros(arr->nrows, arr->ncols);
    
    mdarr10_acos_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr10_t mdarr10_atan(mdarr10_t* arr){

    mdarr10_t res = mdarr10_init();

    res = mdarr10_zeros(arr->nrows, arr->ncols);
    
    mdarr10_atan_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr10_t mdarr10_tan(mdarr10_t* arr){

    mdarr10_t res = mdarr10_init();

    res = mdarr10_zeros(arr->nrows, arr->ncols);
    
    mdarr10_tan_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr10_t mdarr10_cos(mdarr10_t* arr){

    mdarr10_t res = mdarr10_init();

    res = mdarr10_zeros(arr->nrows, arr->ncols);
    
    mdarr10_cos_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr10_t mdarr10_sin(mdarr10_t* arr){

    mdarr10_t res = mdarr10_init();

    res = mdarr10_zeros(arr->nrows, arr->ncols);
    
    mdarr10_sin_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr10_t mdarr10_logb(mdarr10_t* arr, double base){

    mdarr10_t res = mdarr10_init();

    res = mdarr10_zeros(arr->nrows, arr->ncols);
    
    mdarr10_logb_to(arr, base, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr10_t mdarr10_log10(mdarr10_t* arr){

    mdarr10_t res = mdarr10_init();

    res = mdarr10_zeros(arr->nrows, arr->ncols);
    
    mdarr10_log10_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr10_t mdarr10_log(mdarr10_t* arr){

    mdarr10_t res = mdarr10_init();

    res = mdarr10_zeros(arr->nrows, arr->ncols);
    
    mdarr10_log_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr10_t mdarr10_exp(mdarr10_t* arr){

    mdarr10_t res = mdarr10_init();

    res = mdarr10_zeros(arr->nrows, arr->ncols);
    
    mdarr10_exp_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr10_t mdarr10_pow(mdarr10_t* arr, double e){

    mdarr10_t res = mdarr10_init();

    res = mdarr10_zeros(arr->nrows, arr->ncols);

    mdarr10_pow_to(arr, e, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

