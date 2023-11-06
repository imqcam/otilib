

// ****************************************************************************************************
onumm1n1_t onumm1n1_atanh(onumm1n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atanh(num->r, 1, derivs);

    return onumm1n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n1_t onumm1n1_asinh(onumm1n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asinh(num->r, 1, derivs);

    return onumm1n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n1_t onumm1n1_acosh(onumm1n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acosh(num->r, 1, derivs);

    return onumm1n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n1_t onumm1n1_tanh(onumm1n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tanh(num->r, 1, derivs);

    return onumm1n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n1_t onumm1n1_cbrt(onumm1n1_t* num){

    return onumm1n1_pow(num,1./3.);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n1_t onumm1n1_sqrt(onumm1n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sqrt(num->r, 1, derivs);

    return onumm1n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n1_t onumm1n1_cosh(onumm1n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cosh(num->r, 1, derivs);

    return onumm1n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n1_t onumm1n1_sinh(onumm1n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sinh(num->r, 1, derivs);

    return onumm1n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n1_t onumm1n1_asin(onumm1n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asin(num->r, 1, derivs);

    return onumm1n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n1_t onumm1n1_acos(onumm1n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acos(num->r, 1, derivs);

    return onumm1n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n1_t onumm1n1_atan(onumm1n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atan(num->r, 1, derivs);

    return onumm1n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n1_t onumm1n1_tan(onumm1n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tan(num->r, 1, derivs);

    return onumm1n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// // ****************************************************************************************************
// onumm1n1_t onumm1n1_cos(onumm1n1_t* num){

//     coeff_t derivs[_MAXORDER_OTI+1];

//     der_r_cos(num->r, 1, derivs);

//     return onumm1n1_feval(derivs, num);

// }
// // ----------------------------------------------------------------------------------------------------
// ****************************************************************************************************
onumm1n1_t onumm1n1_cos(onumm1n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    // der_r_cos(num->r, 1, derivs);
    derivs[0] = cos(num->r);
    derivs[1] =-sin(num->r);

    return onumm1n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n1_t onumm1n1_sin(onumm1n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sin(num->r, 1, derivs);

    return onumm1n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------


// ****************************************************************************************************
onumm1n1_t onumm1n1_logb(onumm1n1_t* num, double base){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_logb(num->r, base, 1, derivs);

    return onumm1n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n1_t onumm1n1_log10(onumm1n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log10(num->r, 1, derivs);

    return onumm1n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n1_t onumm1n1_log(onumm1n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log(num->r, 1, derivs);

    return onumm1n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n1_t onumm1n1_exp(onumm1n1_t* num){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_exp(num->r, 1, derivs);

    return onumm1n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm1n1_t onumm1n1_pow(onumm1n1_t* num, double e){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_pow(num->r, e, 1, derivs);

    return onumm1n1_feval(derivs, num);

}
// ----------------------------------------------------------------------------------------------------

