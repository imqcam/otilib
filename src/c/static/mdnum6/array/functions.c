

// ****************************************************************************************************
mdarr6_t mdarr6_atanh(mdarr6_t* arr){

    mdarr6_t res = mdarr6_init();

    res = mdarr6_zeros(arr->nrows, arr->ncols);

    mdarr6_atanh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr6_t mdarr6_asinh(mdarr6_t* arr){

    mdarr6_t res = mdarr6_init();

    res = mdarr6_zeros(arr->nrows, arr->ncols);

    mdarr6_asinh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr6_t mdarr6_acosh(mdarr6_t* arr){

    mdarr6_t res = mdarr6_init();

    res = mdarr6_zeros(arr->nrows, arr->ncols);

    mdarr6_acosh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr6_t mdarr6_tanh(mdarr6_t* arr){

    mdarr6_t res = mdarr6_init();

    res = mdarr6_zeros(arr->nrows, arr->ncols);

    mdarr6_tanh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr6_t mdarr6_cbrt(mdarr6_t* arr){

    mdarr6_t res = mdarr6_init();

    res = mdarr6_zeros(arr->nrows, arr->ncols);

    mdarr6_cbrt_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr6_t mdarr6_sqrt(mdarr6_t* arr){

    mdarr6_t res = mdarr6_init();

    res = mdarr6_zeros(arr->nrows, arr->ncols);
    
    mdarr6_sqrt_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr6_t mdarr6_cosh(mdarr6_t* arr){

    mdarr6_t res = mdarr6_init();

    res = mdarr6_zeros(arr->nrows, arr->ncols);
    
    mdarr6_cosh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr6_t mdarr6_sinh(mdarr6_t* arr){

    mdarr6_t res = mdarr6_init();

    res = mdarr6_zeros(arr->nrows, arr->ncols);
    
    mdarr6_sinh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr6_t mdarr6_asin(mdarr6_t* arr){

    mdarr6_t res = mdarr6_init();

    res = mdarr6_zeros(arr->nrows, arr->ncols);
    
    mdarr6_asin_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr6_t mdarr6_acos(mdarr6_t* arr){

    mdarr6_t res = mdarr6_init();

    res = mdarr6_zeros(arr->nrows, arr->ncols);
    
    mdarr6_acos_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr6_t mdarr6_atan(mdarr6_t* arr){

    mdarr6_t res = mdarr6_init();

    res = mdarr6_zeros(arr->nrows, arr->ncols);
    
    mdarr6_atan_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr6_t mdarr6_tan(mdarr6_t* arr){

    mdarr6_t res = mdarr6_init();

    res = mdarr6_zeros(arr->nrows, arr->ncols);
    
    mdarr6_tan_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr6_t mdarr6_cos(mdarr6_t* arr){

    mdarr6_t res = mdarr6_init();

    res = mdarr6_zeros(arr->nrows, arr->ncols);
    
    mdarr6_cos_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr6_t mdarr6_sin(mdarr6_t* arr){

    mdarr6_t res = mdarr6_init();

    res = mdarr6_zeros(arr->nrows, arr->ncols);
    
    mdarr6_sin_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr6_t mdarr6_logb(mdarr6_t* arr, double base){

    mdarr6_t res = mdarr6_init();

    res = mdarr6_zeros(arr->nrows, arr->ncols);
    
    mdarr6_logb_to(arr, base, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr6_t mdarr6_log10(mdarr6_t* arr){

    mdarr6_t res = mdarr6_init();

    res = mdarr6_zeros(arr->nrows, arr->ncols);
    
    mdarr6_log10_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr6_t mdarr6_log(mdarr6_t* arr){

    mdarr6_t res = mdarr6_init();

    res = mdarr6_zeros(arr->nrows, arr->ncols);
    
    mdarr6_log_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr6_t mdarr6_exp(mdarr6_t* arr){

    mdarr6_t res = mdarr6_init();

    res = mdarr6_zeros(arr->nrows, arr->ncols);
    
    mdarr6_exp_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr6_t mdarr6_pow(mdarr6_t* arr, double e){

    mdarr6_t res = mdarr6_init();

    res = mdarr6_zeros(arr->nrows, arr->ncols);

    mdarr6_pow_to(arr, e, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------
