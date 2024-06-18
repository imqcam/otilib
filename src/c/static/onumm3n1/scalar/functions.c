

// ****************************************************************************************************
onumm3n1_t onumm3n1_atanh(onumm3n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atanh(num->r, 1, derivs);

    return onumm3n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm3n1_t onumm3n1_asinh(onumm3n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asinh(num->r, 1, derivs);

    return onumm3n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm3n1_t onumm3n1_acosh(onumm3n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acosh(num->r, 1, derivs);

    return onumm3n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm3n1_t onumm3n1_tanh(onumm3n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tanh(num->r, 1, derivs);

    return onumm3n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm3n1_t onumm3n1_cbrt(onumm3n1_t* num){

    return onumm3n1_pow(num,1./3.);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm3n1_t onumm3n1_sqrt(onumm3n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sqrt(num->r, 1, derivs);

    return onumm3n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm3n1_t onumm3n1_cosh(onumm3n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cosh(num->r, 1, derivs);

    return onumm3n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm3n1_t onumm3n1_sinh(onumm3n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sinh(num->r, 1, derivs);

    return onumm3n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm3n1_t onumm3n1_asin(onumm3n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asin(num->r, 1, derivs);

    return onumm3n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm3n1_t onumm3n1_acos(onumm3n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acos(num->r, 1, derivs);

    return onumm3n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm3n1_t onumm3n1_atan(onumm3n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atan(num->r, 1, derivs);

    return onumm3n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm3n1_t onumm3n1_tan(onumm3n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tan(num->r, 1, derivs);

    return onumm3n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm3n1_t onumm3n1_cos(onumm3n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cos(num->r, 1, derivs);

    return onumm3n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm3n1_t onumm3n1_sin(onumm3n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sin(num->r, 1, derivs);

    return onumm3n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm3n1_t onumm3n1_logb(onumm3n1_t* num, double base){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_logb(num->r, base, 1, derivs);

    return onumm3n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm3n1_t onumm3n1_log10(onumm3n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log10(num->r, 1, derivs);

    return onumm3n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm3n1_t onumm3n1_log(onumm3n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log(num->r, 1, derivs);

    return onumm3n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm3n1_t onumm3n1_exp(onumm3n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_exp(num->r, 1, derivs);

    return onumm3n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm3n1_t onumm3n1_pow(onumm3n1_t* num, double e){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_pow(num->r, e, 1, derivs);

    return onumm3n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

