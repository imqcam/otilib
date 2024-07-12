

// ****************************************************************************************************
onumm2n2_t onumm2n2_atanh(onumm2n2_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atanh(num->r, 2, derivs);

    return onumm2n2_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n2_t onumm2n2_asinh(onumm2n2_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asinh(num->r, 2, derivs);

    return onumm2n2_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n2_t onumm2n2_acosh(onumm2n2_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acosh(num->r, 2, derivs);

    return onumm2n2_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n2_t onumm2n2_tanh(onumm2n2_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tanh(num->r, 2, derivs);

    return onumm2n2_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n2_t onumm2n2_cbrt(onumm2n2_t* num){

    return onumm2n2_pow(num,1./3.);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n2_t onumm2n2_sqrt(onumm2n2_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sqrt(num->r, 2, derivs);

    return onumm2n2_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n2_t onumm2n2_cosh(onumm2n2_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cosh(num->r, 2, derivs);

    return onumm2n2_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n2_t onumm2n2_sinh(onumm2n2_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sinh(num->r, 2, derivs);

    return onumm2n2_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n2_t onumm2n2_asin(onumm2n2_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asin(num->r, 2, derivs);

    return onumm2n2_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n2_t onumm2n2_acos(onumm2n2_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acos(num->r, 2, derivs);

    return onumm2n2_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n2_t onumm2n2_atan(onumm2n2_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atan(num->r, 2, derivs);

    return onumm2n2_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n2_t onumm2n2_tan(onumm2n2_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tan(num->r, 2, derivs);

    return onumm2n2_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n2_t onumm2n2_cos(onumm2n2_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cos(num->r, 2, derivs);

    return onumm2n2_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n2_t onumm2n2_sin(onumm2n2_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sin(num->r, 2, derivs);

    return onumm2n2_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n2_t onumm2n2_logb(onumm2n2_t* num, double base){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_logb(num->r, base, 2, derivs);

    return onumm2n2_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n2_t onumm2n2_log10(onumm2n2_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log10(num->r, 2, derivs);

    return onumm2n2_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n2_t onumm2n2_log(onumm2n2_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log(num->r, 2, derivs);

    return onumm2n2_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n2_t onumm2n2_exp(onumm2n2_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_exp(num->r, 2, derivs);

    return onumm2n2_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm2n2_t onumm2n2_pow(onumm2n2_t* num, double e){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_pow(num->r, e, 2, derivs);

    return onumm2n2_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------
