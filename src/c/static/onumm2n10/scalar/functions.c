

// ****************************************************************************************************
onumm2n10_t onumm2n10_atanh(onumm2n10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atanh(num->r, 10, derivs);

    return onumm2n10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n10_t onumm2n10_asinh(onumm2n10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asinh(num->r, 10, derivs);

    return onumm2n10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n10_t onumm2n10_acosh(onumm2n10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acosh(num->r, 10, derivs);

    return onumm2n10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n10_t onumm2n10_tanh(onumm2n10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tanh(num->r, 10, derivs);

    return onumm2n10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n10_t onumm2n10_cbrt(onumm2n10_t* num){

    return onumm2n10_pow(num,1./3.);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n10_t onumm2n10_sqrt(onumm2n10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sqrt(num->r, 10, derivs);

    return onumm2n10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n10_t onumm2n10_cosh(onumm2n10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cosh(num->r, 10, derivs);

    return onumm2n10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n10_t onumm2n10_sinh(onumm2n10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sinh(num->r, 10, derivs);

    return onumm2n10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n10_t onumm2n10_asin(onumm2n10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asin(num->r, 10, derivs);

    return onumm2n10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n10_t onumm2n10_acos(onumm2n10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acos(num->r, 10, derivs);

    return onumm2n10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n10_t onumm2n10_atan(onumm2n10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atan(num->r, 10, derivs);

    return onumm2n10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n10_t onumm2n10_tan(onumm2n10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tan(num->r, 10, derivs);

    return onumm2n10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n10_t onumm2n10_cos(onumm2n10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cos(num->r, 10, derivs);

    return onumm2n10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n10_t onumm2n10_sin(onumm2n10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sin(num->r, 10, derivs);

    return onumm2n10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n10_t onumm2n10_logb(onumm2n10_t* num, double base){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_logb(num->r, base, 10, derivs);

    return onumm2n10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n10_t onumm2n10_log10(onumm2n10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log10(num->r, 10, derivs);

    return onumm2n10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n10_t onumm2n10_log(onumm2n10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log(num->r, 10, derivs);

    return onumm2n10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n10_t onumm2n10_exp(onumm2n10_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_exp(num->r, 10, derivs);

    return onumm2n10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n10_t onumm2n10_pow(onumm2n10_t* num, double e){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_pow(num->r, e, 10, derivs);

    return onumm2n10_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------
