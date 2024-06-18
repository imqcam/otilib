

// ****************************************************************************************************
onumm1n3_t onumm1n3_atanh(onumm1n3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atanh(num->r, 3, derivs);

    return onumm1n3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n3_t onumm1n3_asinh(onumm1n3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asinh(num->r, 3, derivs);

    return onumm1n3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n3_t onumm1n3_acosh(onumm1n3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acosh(num->r, 3, derivs);

    return onumm1n3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n3_t onumm1n3_tanh(onumm1n3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tanh(num->r, 3, derivs);

    return onumm1n3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n3_t onumm1n3_cbrt(onumm1n3_t* num){

    return onumm1n3_pow(num,1./3.);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n3_t onumm1n3_sqrt(onumm1n3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sqrt(num->r, 3, derivs);

    return onumm1n3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n3_t onumm1n3_cosh(onumm1n3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cosh(num->r, 3, derivs);

    return onumm1n3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n3_t onumm1n3_sinh(onumm1n3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sinh(num->r, 3, derivs);

    return onumm1n3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n3_t onumm1n3_asin(onumm1n3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asin(num->r, 3, derivs);

    return onumm1n3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n3_t onumm1n3_acos(onumm1n3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acos(num->r, 3, derivs);

    return onumm1n3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n3_t onumm1n3_atan(onumm1n3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atan(num->r, 3, derivs);

    return onumm1n3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n3_t onumm1n3_tan(onumm1n3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tan(num->r, 3, derivs);

    return onumm1n3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n3_t onumm1n3_cos(onumm1n3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cos(num->r, 3, derivs);

    return onumm1n3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n3_t onumm1n3_sin(onumm1n3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sin(num->r, 3, derivs);

    return onumm1n3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n3_t onumm1n3_logb(onumm1n3_t* num, double base){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_logb(num->r, base, 3, derivs);

    return onumm1n3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n3_t onumm1n3_log10(onumm1n3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log10(num->r, 3, derivs);

    return onumm1n3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n3_t onumm1n3_log(onumm1n3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log(num->r, 3, derivs);

    return onumm1n3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n3_t onumm1n3_exp(onumm1n3_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_exp(num->r, 3, derivs);

    return onumm1n3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n3_t onumm1n3_pow(onumm1n3_t* num, double e){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_pow(num->r, e, 3, derivs);

    return onumm1n3_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

