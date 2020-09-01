

// ****************************************************************************************************
mdarr3_t mdarr3_atanh(mdarr3_t* arr){

    mdarr3_t res = mdarr3_init();

    res = mdarr3_zeros(arr->nrows, arr->ncols);

    mdarr3_atanh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr3_t mdarr3_asinh(mdarr3_t* arr){

    mdarr3_t res = mdarr3_init();

    res = mdarr3_zeros(arr->nrows, arr->ncols);

    mdarr3_asinh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr3_t mdarr3_acosh(mdarr3_t* arr){

    mdarr3_t res = mdarr3_init();

    res = mdarr3_zeros(arr->nrows, arr->ncols);

    mdarr3_acosh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr3_t mdarr3_tanh(mdarr3_t* arr){

    mdarr3_t res = mdarr3_init();

    res = mdarr3_zeros(arr->nrows, arr->ncols);

    mdarr3_tanh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr3_t mdarr3_cbrt(mdarr3_t* arr){

    mdarr3_t res = mdarr3_init();

    res = mdarr3_zeros(arr->nrows, arr->ncols);

    mdarr3_cbrt_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr3_t mdarr3_sqrt(mdarr3_t* arr){

    mdarr3_t res = mdarr3_init();

    res = mdarr3_zeros(arr->nrows, arr->ncols);
    
    mdarr3_sqrt_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr3_t mdarr3_cosh(mdarr3_t* arr){

    mdarr3_t res = mdarr3_init();

    res = mdarr3_zeros(arr->nrows, arr->ncols);
    
    mdarr3_cosh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr3_t mdarr3_sinh(mdarr3_t* arr){

    mdarr3_t res = mdarr3_init();

    res = mdarr3_zeros(arr->nrows, arr->ncols);
    
    mdarr3_sinh_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr3_t mdarr3_asin(mdarr3_t* arr){

    mdarr3_t res = mdarr3_init();

    res = mdarr3_zeros(arr->nrows, arr->ncols);
    
    mdarr3_asin_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr3_t mdarr3_acos(mdarr3_t* arr){

    mdarr3_t res = mdarr3_init();

    res = mdarr3_zeros(arr->nrows, arr->ncols);
    
    mdarr3_acos_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr3_t mdarr3_atan(mdarr3_t* arr){

    mdarr3_t res = mdarr3_init();

    res = mdarr3_zeros(arr->nrows, arr->ncols);
    
    mdarr3_atan_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr3_t mdarr3_tan(mdarr3_t* arr){

    mdarr3_t res = mdarr3_init();

    res = mdarr3_zeros(arr->nrows, arr->ncols);
    
    mdarr3_tan_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr3_t mdarr3_cos(mdarr3_t* arr){

    mdarr3_t res = mdarr3_init();

    res = mdarr3_zeros(arr->nrows, arr->ncols);
    
    mdarr3_cos_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr3_t mdarr3_sin(mdarr3_t* arr){

    mdarr3_t res = mdarr3_init();

    res = mdarr3_zeros(arr->nrows, arr->ncols);
    
    mdarr3_sin_to(arr, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr3_t mdarr3_logb(mdarr3_t* arr, double base){

    mdarr3_t res = mdarr3_init();

    res = mdarr3_zeros(arr->nrows, arr->ncols);
    
    mdarr3_logb_to(arr, base, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr3_t mdarr3_log10(mdarr3_t* arr){

    mdarr3_t res = mdarr3_init();

    res = mdarr3_zeros(arr->nrows, arr->ncols);
    
    mdarr3_log10_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr3_t mdarr3_log(mdarr3_t* arr){

    mdarr3_t res = mdarr3_init();

    res = mdarr3_zeros(arr->nrows, arr->ncols);
    
    mdarr3_log_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr3_t mdarr3_exp(mdarr3_t* arr){

    mdarr3_t res = mdarr3_init();

    res = mdarr3_zeros(arr->nrows, arr->ncols);
    
    mdarr3_exp_to(arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr3_t mdarr3_pow(mdarr3_t* arr, double e){

    mdarr3_t res = mdarr3_init();

    res = mdarr3_zeros(arr->nrows, arr->ncols);

    mdarr3_pow_to(arr, e, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------
