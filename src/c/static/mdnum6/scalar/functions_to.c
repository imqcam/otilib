

// ****************************************************************************************************
void mdnum6_atanh_to(mdnum6_t* num, mdnum6_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atanh(num->r, 6, derivs);

    mdnum6_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum6_asinh_to(mdnum6_t* num, mdnum6_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asinh(num->r, 6, derivs);

    mdnum6_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum6_acosh_to(mdnum6_t* num, mdnum6_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acosh(num->r, 6, derivs);

    mdnum6_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum6_tanh_to(mdnum6_t* num, mdnum6_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tanh(num->r, 6, derivs);

    mdnum6_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum6_cbrt_to(mdnum6_t* num, mdnum6_t* res){

    mdnum6_pow_to(num, 1./3., res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum6_sqrt_to(mdnum6_t* num, mdnum6_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sqrt(num->r, 6, derivs);

    mdnum6_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum6_cosh_to(mdnum6_t* num, mdnum6_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cosh(num->r, 6, derivs);

    mdnum6_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum6_sinh_to(mdnum6_t* num, mdnum6_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sinh(num->r, 6, derivs);

    mdnum6_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum6_asin_to(mdnum6_t* num, mdnum6_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asin(num->r, 6, derivs);

    mdnum6_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum6_acos_to(mdnum6_t* num, mdnum6_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acos(num->r, 6, derivs);

    mdnum6_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum6_atan_to(mdnum6_t* num, mdnum6_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atan(num->r, 6, derivs);

    mdnum6_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum6_tan_to(mdnum6_t* num, mdnum6_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tan(num->r, 6, derivs);

    mdnum6_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum6_cos_to(mdnum6_t* num, mdnum6_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cos(num->r, 6, derivs);

    mdnum6_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum6_sin_to(mdnum6_t* num, mdnum6_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sin(num->r, 6, derivs);

    mdnum6_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum6_logb_to(mdnum6_t* num, double base, mdnum6_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_logb(num->r, base, 6, derivs);

    mdnum6_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum6_log10_to(mdnum6_t* num, mdnum6_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log10(num->r, 6, derivs);

    mdnum6_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum6_log_to(mdnum6_t* num, mdnum6_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log(num->r, 6, derivs);

    mdnum6_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum6_exp_to(mdnum6_t* num, mdnum6_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_exp(num->r, 6, derivs);

    mdnum6_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum6_pow_to(mdnum6_t* num, double e, mdnum6_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_pow(num->r, e, 6, derivs);

    mdnum6_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------
