

// ****************************************************************************************************
mdnum10_t mdnum10_atanh(mdnum10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atanh(num->r, 10, derivs);

    return mdnum10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum10_t mdnum10_asinh(mdnum10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asinh(num->r, 10, derivs);

    return mdnum10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum10_t mdnum10_acosh(mdnum10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acosh(num->r, 10, derivs);

    return mdnum10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum10_t mdnum10_tanh(mdnum10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tanh(num->r, 10, derivs);

    return mdnum10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum10_t mdnum10_cbrt(mdnum10_t* num){

    return mdnum10_pow(num,1./3.);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum10_t mdnum10_sqrt(mdnum10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sqrt(num->r, 10, derivs);

    return mdnum10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum10_t mdnum10_cosh(mdnum10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cosh(num->r, 10, derivs);

    return mdnum10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum10_t mdnum10_sinh(mdnum10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sinh(num->r, 10, derivs);

    return mdnum10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum10_t mdnum10_asin(mdnum10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asin(num->r, 10, derivs);

    return mdnum10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum10_t mdnum10_acos(mdnum10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acos(num->r, 10, derivs);

    return mdnum10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum10_t mdnum10_atan(mdnum10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atan(num->r, 10, derivs);

    return mdnum10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum10_t mdnum10_tan(mdnum10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tan(num->r, 10, derivs);

    return mdnum10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum10_t mdnum10_cos(mdnum10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cos(num->r, 10, derivs);

    return mdnum10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum10_t mdnum10_sin(mdnum10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sin(num->r, 10, derivs);

    return mdnum10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum10_t mdnum10_logb(mdnum10_t* num, double base){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_logb(num->r, base, 10, derivs);

    return mdnum10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum10_t mdnum10_log10(mdnum10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log10(num->r, 10, derivs);

    return mdnum10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum10_t mdnum10_log(mdnum10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log(num->r, 10, derivs);

    return mdnum10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum10_t mdnum10_exp(mdnum10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_exp(num->r, 10, derivs);

    return mdnum10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum10_t mdnum10_pow(mdnum10_t* num, double e){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_pow(num->r, e, 10, derivs);

    return mdnum10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------
