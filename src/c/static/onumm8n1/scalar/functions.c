

// ****************************************************************************************************
onumm8n1_t onumm8n1_atanh(onumm8n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atanh(num->r, 1, derivs);

    return onumm8n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm8n1_t onumm8n1_asinh(onumm8n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asinh(num->r, 1, derivs);

    return onumm8n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm8n1_t onumm8n1_acosh(onumm8n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acosh(num->r, 1, derivs);

    return onumm8n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm8n1_t onumm8n1_tanh(onumm8n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tanh(num->r, 1, derivs);

    return onumm8n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm8n1_t onumm8n1_cbrt(onumm8n1_t* num){

    return onumm8n1_pow(num,1./3.);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm8n1_t onumm8n1_sqrt(onumm8n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sqrt(num->r, 1, derivs);

    return onumm8n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm8n1_t onumm8n1_cosh(onumm8n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cosh(num->r, 1, derivs);

    return onumm8n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm8n1_t onumm8n1_sinh(onumm8n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sinh(num->r, 1, derivs);

    return onumm8n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm8n1_t onumm8n1_asin(onumm8n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asin(num->r, 1, derivs);

    return onumm8n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm8n1_t onumm8n1_acos(onumm8n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acos(num->r, 1, derivs);

    return onumm8n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm8n1_t onumm8n1_atan(onumm8n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atan(num->r, 1, derivs);

    return onumm8n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm8n1_t onumm8n1_tan(onumm8n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tan(num->r, 1, derivs);

    return onumm8n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm8n1_t onumm8n1_cos(onumm8n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cos(num->r, 1, derivs);

    return onumm8n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm8n1_t onumm8n1_sin(onumm8n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sin(num->r, 1, derivs);

    return onumm8n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm8n1_t onumm8n1_logb(onumm8n1_t* num, double base){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_logb(num->r, base, 1, derivs);

    return onumm8n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm8n1_t onumm8n1_log10(onumm8n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log10(num->r, 1, derivs);

    return onumm8n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm8n1_t onumm8n1_log(onumm8n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log(num->r, 1, derivs);

    return onumm8n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm8n1_t onumm8n1_exp(onumm8n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_exp(num->r, 1, derivs);

    return onumm8n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm8n1_t onumm8n1_pow(onumm8n1_t* num, double e){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_pow(num->r, e, 1, derivs);

    return onumm8n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

