

// ****************************************************************************************************
onumm5n5_t onumm5n5_atanh(onumm5n5_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atanh(num->r, 5, derivs);

    return onumm5n5_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n5_t onumm5n5_asinh(onumm5n5_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asinh(num->r, 5, derivs);

    return onumm5n5_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n5_t onumm5n5_acosh(onumm5n5_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acosh(num->r, 5, derivs);

    return onumm5n5_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n5_t onumm5n5_tanh(onumm5n5_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tanh(num->r, 5, derivs);

    return onumm5n5_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n5_t onumm5n5_cbrt(onumm5n5_t* num){

    return onumm5n5_pow(num,1./3.);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n5_t onumm5n5_sqrt(onumm5n5_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sqrt(num->r, 5, derivs);

    return onumm5n5_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n5_t onumm5n5_cosh(onumm5n5_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cosh(num->r, 5, derivs);

    return onumm5n5_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n5_t onumm5n5_sinh(onumm5n5_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sinh(num->r, 5, derivs);

    return onumm5n5_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n5_t onumm5n5_asin(onumm5n5_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asin(num->r, 5, derivs);

    return onumm5n5_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n5_t onumm5n5_acos(onumm5n5_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acos(num->r, 5, derivs);

    return onumm5n5_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n5_t onumm5n5_atan(onumm5n5_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atan(num->r, 5, derivs);

    return onumm5n5_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n5_t onumm5n5_tan(onumm5n5_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tan(num->r, 5, derivs);

    return onumm5n5_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n5_t onumm5n5_cos(onumm5n5_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cos(num->r, 5, derivs);

    return onumm5n5_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n5_t onumm5n5_sin(onumm5n5_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sin(num->r, 5, derivs);

    return onumm5n5_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n5_t onumm5n5_logb(onumm5n5_t* num, double base){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_logb(num->r, base, 5, derivs);

    return onumm5n5_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n5_t onumm5n5_log10(onumm5n5_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log10(num->r, 5, derivs);

    return onumm5n5_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n5_t onumm5n5_log(onumm5n5_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log(num->r, 5, derivs);

    return onumm5n5_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n5_t onumm5n5_exp(onumm5n5_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_exp(num->r, 5, derivs);

    return onumm5n5_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n5_t onumm5n5_pow(onumm5n5_t* num, double e){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_pow(num->r, e, 5, derivs);

    return onumm5n5_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------
