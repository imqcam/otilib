

// ****************************************************************************************************
void onumm2n2_atanh_to(onumm2n2_t* num, onumm2n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atanh(num->r, 2, derivs);

    onumm2n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm2n2_asinh_to(onumm2n2_t* num, onumm2n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asinh(num->r, 2, derivs);

    onumm2n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm2n2_acosh_to(onumm2n2_t* num, onumm2n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acosh(num->r, 2, derivs);

    onumm2n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm2n2_tanh_to(onumm2n2_t* num, onumm2n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tanh(num->r, 2, derivs);

    onumm2n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm2n2_cbrt_to(onumm2n2_t* num, onumm2n2_t* res){

    onumm2n2_pow_to(num, 1./3., res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm2n2_sqrt_to(onumm2n2_t* num, onumm2n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sqrt(num->r, 2, derivs);

    onumm2n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm2n2_cosh_to(onumm2n2_t* num, onumm2n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cosh(num->r, 2, derivs);

    onumm2n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm2n2_sinh_to(onumm2n2_t* num, onumm2n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sinh(num->r, 2, derivs);

    onumm2n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm2n2_asin_to(onumm2n2_t* num, onumm2n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asin(num->r, 2, derivs);

    onumm2n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm2n2_acos_to(onumm2n2_t* num, onumm2n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acos(num->r, 2, derivs);

    onumm2n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm2n2_atan_to(onumm2n2_t* num, onumm2n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atan(num->r, 2, derivs);

    onumm2n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm2n2_tan_to(onumm2n2_t* num, onumm2n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tan(num->r, 2, derivs);

    onumm2n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm2n2_cos_to(onumm2n2_t* num, onumm2n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cos(num->r, 2, derivs);

    onumm2n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm2n2_sin_to(onumm2n2_t* num, onumm2n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sin(num->r, 2, derivs);

    onumm2n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm2n2_logb_to(onumm2n2_t* num, double base, onumm2n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_logb(num->r, base, 2, derivs);

    onumm2n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm2n2_log10_to(onumm2n2_t* num, onumm2n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log10(num->r, 2, derivs);

    onumm2n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm2n2_log_to(onumm2n2_t* num, onumm2n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log(num->r, 2, derivs);

    onumm2n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm2n2_exp_to(onumm2n2_t* num, onumm2n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_exp(num->r, 2, derivs);

    onumm2n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm2n2_pow_to(onumm2n2_t* num, double e, onumm2n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_pow(num->r, e, 2, derivs);

    onumm2n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

