

// ****************************************************************************************************
void mdnum3_atanh_to(mdnum3_t* num, mdnum3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atanh(num->r, 3, derivs);

    mdnum3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_asinh_to(mdnum3_t* num, mdnum3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asinh(num->r, 3, derivs);

    mdnum3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_acosh_to(mdnum3_t* num, mdnum3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acosh(num->r, 3, derivs);

    mdnum3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_tanh_to(mdnum3_t* num, mdnum3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tanh(num->r, 3, derivs);

    mdnum3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_cbrt_to(mdnum3_t* num, mdnum3_t* res){

    mdnum3_pow_to(num, 1./3., res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_sqrt_to(mdnum3_t* num, mdnum3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sqrt(num->r, 3, derivs);

    mdnum3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_cosh_to(mdnum3_t* num, mdnum3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cosh(num->r, 3, derivs);

    mdnum3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_sinh_to(mdnum3_t* num, mdnum3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sinh(num->r, 3, derivs);

    mdnum3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_asin_to(mdnum3_t* num, mdnum3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asin(num->r, 3, derivs);

    mdnum3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_acos_to(mdnum3_t* num, mdnum3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acos(num->r, 3, derivs);

    mdnum3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_atan_to(mdnum3_t* num, mdnum3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atan(num->r, 3, derivs);

    mdnum3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_tan_to(mdnum3_t* num, mdnum3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tan(num->r, 3, derivs);

    mdnum3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_cos_to(mdnum3_t* num, mdnum3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cos(num->r, 3, derivs);

    mdnum3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_sin_to(mdnum3_t* num, mdnum3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sin(num->r, 3, derivs);

    mdnum3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_logb_to(mdnum3_t* num, double base, mdnum3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_logb(num->r, base, 3, derivs);

    mdnum3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_log10_to(mdnum3_t* num, mdnum3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log10(num->r, 3, derivs);

    mdnum3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_log_to(mdnum3_t* num, mdnum3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log(num->r, 3, derivs);

    mdnum3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_exp_to(mdnum3_t* num, mdnum3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_exp(num->r, 3, derivs);

    mdnum3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_pow_to(mdnum3_t* num, double e, mdnum3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_pow(num->r, e, 3, derivs);

    mdnum3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------
