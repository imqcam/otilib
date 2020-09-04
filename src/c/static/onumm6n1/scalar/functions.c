

// ****************************************************************************************************
onumm6n1_t onumm6n1_atanh(onumm6n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atanh(num->r, 1, derivs);

    return onumm6n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm6n1_t onumm6n1_asinh(onumm6n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asinh(num->r, 1, derivs);

    return onumm6n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm6n1_t onumm6n1_acosh(onumm6n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acosh(num->r, 1, derivs);

    return onumm6n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm6n1_t onumm6n1_tanh(onumm6n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tanh(num->r, 1, derivs);

    return onumm6n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm6n1_t onumm6n1_cbrt(onumm6n1_t* num){

    return onumm6n1_pow(num,1./3.);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm6n1_t onumm6n1_sqrt(onumm6n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sqrt(num->r, 1, derivs);

    return onumm6n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm6n1_t onumm6n1_cosh(onumm6n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cosh(num->r, 1, derivs);

    return onumm6n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm6n1_t onumm6n1_sinh(onumm6n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sinh(num->r, 1, derivs);

    return onumm6n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm6n1_t onumm6n1_asin(onumm6n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asin(num->r, 1, derivs);

    return onumm6n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm6n1_t onumm6n1_acos(onumm6n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acos(num->r, 1, derivs);

    return onumm6n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm6n1_t onumm6n1_atan(onumm6n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atan(num->r, 1, derivs);

    return onumm6n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm6n1_t onumm6n1_tan(onumm6n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tan(num->r, 1, derivs);

    return onumm6n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm6n1_t onumm6n1_cos(onumm6n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cos(num->r, 1, derivs);

    return onumm6n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm6n1_t onumm6n1_sin(onumm6n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sin(num->r, 1, derivs);

    return onumm6n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm6n1_t onumm6n1_logb(onumm6n1_t* num, double base){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_logb(num->r, base, 1, derivs);

    return onumm6n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm6n1_t onumm6n1_log10(onumm6n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log10(num->r, 1, derivs);

    return onumm6n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm6n1_t onumm6n1_log(onumm6n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log(num->r, 1, derivs);

    return onumm6n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm6n1_t onumm6n1_exp(onumm6n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_exp(num->r, 1, derivs);

    return onumm6n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm6n1_t onumm6n1_pow(onumm6n1_t* num, double e){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_pow(num->r, e, 1, derivs);

    return onumm6n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------
