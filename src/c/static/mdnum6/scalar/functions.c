

// ****************************************************************************************************
mdnum6_t mdnum6_atanh(mdnum6_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atanh(num->r, 6, derivs);

    return mdnum6_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum6_t mdnum6_asinh(mdnum6_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asinh(num->r, 6, derivs);

    return mdnum6_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum6_t mdnum6_acosh(mdnum6_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acosh(num->r, 6, derivs);

    return mdnum6_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum6_t mdnum6_tanh(mdnum6_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tanh(num->r, 6, derivs);

    return mdnum6_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum6_t mdnum6_cbrt(mdnum6_t* num){

    return mdnum6_pow(num,1./3.);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum6_t mdnum6_sqrt(mdnum6_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sqrt(num->r, 6, derivs);

    return mdnum6_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum6_t mdnum6_cosh(mdnum6_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cosh(num->r, 6, derivs);

    return mdnum6_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum6_t mdnum6_sinh(mdnum6_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sinh(num->r, 6, derivs);

    return mdnum6_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum6_t mdnum6_asin(mdnum6_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asin(num->r, 6, derivs);

    return mdnum6_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum6_t mdnum6_acos(mdnum6_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acos(num->r, 6, derivs);

    return mdnum6_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum6_t mdnum6_atan(mdnum6_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atan(num->r, 6, derivs);

    return mdnum6_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum6_t mdnum6_tan(mdnum6_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tan(num->r, 6, derivs);

    return mdnum6_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum6_t mdnum6_cos(mdnum6_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cos(num->r, 6, derivs);

    return mdnum6_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum6_t mdnum6_sin(mdnum6_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sin(num->r, 6, derivs);

    return mdnum6_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum6_t mdnum6_logb(mdnum6_t* num, double base){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_logb(num->r, base, 6, derivs);

    return mdnum6_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum6_t mdnum6_log10(mdnum6_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log10(num->r, 6, derivs);

    return mdnum6_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum6_t mdnum6_log(mdnum6_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log(num->r, 6, derivs);

    return mdnum6_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum6_t mdnum6_exp(mdnum6_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_exp(num->r, 6, derivs);

    return mdnum6_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum6_t mdnum6_pow(mdnum6_t* num, double e){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_pow(num->r, e, 6, derivs);

    return mdnum6_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

