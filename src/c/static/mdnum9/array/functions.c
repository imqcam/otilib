

// ****************************************************************************************************
mdarr9_t mdarr9_atanh(mdarr9_t* arr){

    mdarr9_t res = mdarr9_init();

    res = mdarr9_zeros(arr->nrows, arr->ncols);

    mdarr9_atanh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr9_t mdarr9_asinh(mdarr9_t* arr){

    mdarr9_t res = mdarr9_init();

    res = mdarr9_zeros(arr->nrows, arr->ncols);

    mdarr9_asinh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr9_t mdarr9_acosh(mdarr9_t* arr){

    mdarr9_t res = mdarr9_init();

    res = mdarr9_zeros(arr->nrows, arr->ncols);

    mdarr9_acosh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr9_t mdarr9_tanh(mdarr9_t* arr){

    mdarr9_t res = mdarr9_init();

    res = mdarr9_zeros(arr->nrows, arr->ncols);

    mdarr9_tanh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr9_t mdarr9_cbrt(mdarr9_t* arr){

    mdarr9_t res = mdarr9_init();

    res = mdarr9_zeros(arr->nrows, arr->ncols);

    mdarr9_cbrt_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr9_t mdarr9_sqrt(mdarr9_t* arr){

    mdarr9_t res = mdarr9_init();

    res = mdarr9_zeros(arr->nrows, arr->ncols);
    
    mdarr9_sqrt_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr9_t mdarr9_cosh(mdarr9_t* arr){

    mdarr9_t res = mdarr9_init();

    res = mdarr9_zeros(arr->nrows, arr->ncols);
    
    mdarr9_cosh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr9_t mdarr9_sinh(mdarr9_t* arr){

    mdarr9_t res = mdarr9_init();

    res = mdarr9_zeros(arr->nrows, arr->ncols);
    
    mdarr9_sinh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr9_t mdarr9_asin(mdarr9_t* arr){

    mdarr9_t res = mdarr9_init();

    res = mdarr9_zeros(arr->nrows, arr->ncols);
    
    mdarr9_asin_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr9_t mdarr9_acos(mdarr9_t* arr){

    mdarr9_t res = mdarr9_init();

    res = mdarr9_zeros(arr->nrows, arr->ncols);
    
    mdarr9_acos_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr9_t mdarr9_atan(mdarr9_t* arr){

    mdarr9_t res = mdarr9_init();

    res = mdarr9_zeros(arr->nrows, arr->ncols);
    
    mdarr9_atan_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr9_t mdarr9_tan(mdarr9_t* arr){

    mdarr9_t res = mdarr9_init();

    res = mdarr9_zeros(arr->nrows, arr->ncols);
    
    mdarr9_tan_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr9_t mdarr9_cos(mdarr9_t* arr){

    mdarr9_t res = mdarr9_init();

    res = mdarr9_zeros(arr->nrows, arr->ncols);
    
    mdarr9_cos_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr9_t mdarr9_sin(mdarr9_t* arr){

    mdarr9_t res = mdarr9_init();

    res = mdarr9_zeros(arr->nrows, arr->ncols);
    
    mdarr9_sin_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr9_t mdarr9_logb(mdarr9_t* arr, double base){

    mdarr9_t res = mdarr9_init();

    res = mdarr9_zeros(arr->nrows, arr->ncols);
    
    mdarr9_logb_to(arr, base, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr9_t mdarr9_log10(mdarr9_t* arr){

    mdarr9_t res = mdarr9_init();

    res = mdarr9_zeros(arr->nrows, arr->ncols);
    
    mdarr9_log10_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr9_t mdarr9_log(mdarr9_t* arr){

    mdarr9_t res = mdarr9_init();

    res = mdarr9_zeros(arr->nrows, arr->ncols);
    
    mdarr9_log_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr9_t mdarr9_exp(mdarr9_t* arr){

    mdarr9_t res = mdarr9_init();

    res = mdarr9_zeros(arr->nrows, arr->ncols);
    
    mdarr9_exp_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr9_t mdarr9_pow(mdarr9_t* arr, double e){

    mdarr9_t res = mdarr9_init();

    res = mdarr9_zeros(arr->nrows, arr->ncols);

    mdarr9_pow_to(arr, e, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------
