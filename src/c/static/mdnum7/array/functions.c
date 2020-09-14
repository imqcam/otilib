

// ****************************************************************************************************
mdarr7_t mdarr7_atanh(mdarr7_t* arr){

    mdarr7_t res = mdarr7_init();

    res = mdarr7_zeros(arr->nrows, arr->ncols);

    mdarr7_atanh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr7_t mdarr7_asinh(mdarr7_t* arr){

    mdarr7_t res = mdarr7_init();

    res = mdarr7_zeros(arr->nrows, arr->ncols);

    mdarr7_asinh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr7_t mdarr7_acosh(mdarr7_t* arr){

    mdarr7_t res = mdarr7_init();

    res = mdarr7_zeros(arr->nrows, arr->ncols);

    mdarr7_acosh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr7_t mdarr7_tanh(mdarr7_t* arr){

    mdarr7_t res = mdarr7_init();

    res = mdarr7_zeros(arr->nrows, arr->ncols);

    mdarr7_tanh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr7_t mdarr7_cbrt(mdarr7_t* arr){

    mdarr7_t res = mdarr7_init();

    res = mdarr7_zeros(arr->nrows, arr->ncols);

    mdarr7_cbrt_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr7_t mdarr7_sqrt(mdarr7_t* arr){

    mdarr7_t res = mdarr7_init();

    res = mdarr7_zeros(arr->nrows, arr->ncols);
    
    mdarr7_sqrt_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr7_t mdarr7_cosh(mdarr7_t* arr){

    mdarr7_t res = mdarr7_init();

    res = mdarr7_zeros(arr->nrows, arr->ncols);
    
    mdarr7_cosh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr7_t mdarr7_sinh(mdarr7_t* arr){

    mdarr7_t res = mdarr7_init();

    res = mdarr7_zeros(arr->nrows, arr->ncols);
    
    mdarr7_sinh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr7_t mdarr7_asin(mdarr7_t* arr){

    mdarr7_t res = mdarr7_init();

    res = mdarr7_zeros(arr->nrows, arr->ncols);
    
    mdarr7_asin_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr7_t mdarr7_acos(mdarr7_t* arr){

    mdarr7_t res = mdarr7_init();

    res = mdarr7_zeros(arr->nrows, arr->ncols);
    
    mdarr7_acos_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr7_t mdarr7_atan(mdarr7_t* arr){

    mdarr7_t res = mdarr7_init();

    res = mdarr7_zeros(arr->nrows, arr->ncols);
    
    mdarr7_atan_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr7_t mdarr7_tan(mdarr7_t* arr){

    mdarr7_t res = mdarr7_init();

    res = mdarr7_zeros(arr->nrows, arr->ncols);
    
    mdarr7_tan_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr7_t mdarr7_cos(mdarr7_t* arr){

    mdarr7_t res = mdarr7_init();

    res = mdarr7_zeros(arr->nrows, arr->ncols);
    
    mdarr7_cos_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr7_t mdarr7_sin(mdarr7_t* arr){

    mdarr7_t res = mdarr7_init();

    res = mdarr7_zeros(arr->nrows, arr->ncols);
    
    mdarr7_sin_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr7_t mdarr7_logb(mdarr7_t* arr, double base){

    mdarr7_t res = mdarr7_init();

    res = mdarr7_zeros(arr->nrows, arr->ncols);
    
    mdarr7_logb_to(arr, base, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr7_t mdarr7_log10(mdarr7_t* arr){

    mdarr7_t res = mdarr7_init();

    res = mdarr7_zeros(arr->nrows, arr->ncols);
    
    mdarr7_log10_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr7_t mdarr7_log(mdarr7_t* arr){

    mdarr7_t res = mdarr7_init();

    res = mdarr7_zeros(arr->nrows, arr->ncols);
    
    mdarr7_log_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr7_t mdarr7_exp(mdarr7_t* arr){

    mdarr7_t res = mdarr7_init();

    res = mdarr7_zeros(arr->nrows, arr->ncols);
    
    mdarr7_exp_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr7_t mdarr7_pow(mdarr7_t* arr, double e){

    mdarr7_t res = mdarr7_init();

    res = mdarr7_zeros(arr->nrows, arr->ncols);

    mdarr7_pow_to(arr, e, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------
