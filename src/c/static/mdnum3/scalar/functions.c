

// ****************************************************************************************************
mdnum3_t mdnum3_atanh(mdnum3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atanh(num->r, 3, derivs);

    return mdnum3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum3_t mdnum3_asinh(mdnum3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asinh(num->r, 3, derivs);

    return mdnum3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum3_t mdnum3_acosh(mdnum3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acosh(num->r, 3, derivs);

    return mdnum3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum3_t mdnum3_tanh(mdnum3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tanh(num->r, 3, derivs);

    return mdnum3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum3_t mdnum3_cbrt(mdnum3_t* num){

    return mdnum3_pow(num,1./3.);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum3_t mdnum3_sqrt(mdnum3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sqrt(num->r, 3, derivs);

    return mdnum3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum3_t mdnum3_cosh(mdnum3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cosh(num->r, 3, derivs);

    return mdnum3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum3_t mdnum3_sinh(mdnum3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sinh(num->r, 3, derivs);

    return mdnum3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum3_t mdnum3_asin(mdnum3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asin(num->r, 3, derivs);

    return mdnum3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum3_t mdnum3_acos(mdnum3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acos(num->r, 3, derivs);

    return mdnum3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum3_t mdnum3_atan(mdnum3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atan(num->r, 3, derivs);

    return mdnum3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum3_t mdnum3_tan(mdnum3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tan(num->r, 3, derivs);

    return mdnum3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum3_t mdnum3_cos(mdnum3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cos(num->r, 3, derivs);

    return mdnum3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum3_t mdnum3_sin(mdnum3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sin(num->r, 3, derivs);

    return mdnum3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum3_t mdnum3_logb(mdnum3_t* num, double base){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_logb(num->r, base, 3, derivs);

    return mdnum3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum3_t mdnum3_log10(mdnum3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log10(num->r, 3, derivs);

    return mdnum3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum3_t mdnum3_log(mdnum3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log(num->r, 3, derivs);

    return mdnum3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum3_t mdnum3_exp(mdnum3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_exp(num->r, 3, derivs);

    return mdnum3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum3_t mdnum3_pow(mdnum3_t* num, double e){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_pow(num->r, e, 3, derivs);

    return mdnum3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------
