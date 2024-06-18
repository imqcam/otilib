

// ****************************************************************************************************
void onumm1n3_atanh_to(onumm1n3_t* num, onumm1n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atanh(num->r, 3, derivs);

    onumm1n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm1n3_asinh_to(onumm1n3_t* num, onumm1n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asinh(num->r, 3, derivs);

    onumm1n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm1n3_acosh_to(onumm1n3_t* num, onumm1n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acosh(num->r, 3, derivs);

    onumm1n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm1n3_tanh_to(onumm1n3_t* num, onumm1n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tanh(num->r, 3, derivs);

    onumm1n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm1n3_cbrt_to(onumm1n3_t* num, onumm1n3_t* res){

    onumm1n3_pow_to(num, 1./3., res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm1n3_sqrt_to(onumm1n3_t* num, onumm1n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sqrt(num->r, 3, derivs);

    onumm1n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm1n3_cosh_to(onumm1n3_t* num, onumm1n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cosh(num->r, 3, derivs);

    onumm1n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm1n3_sinh_to(onumm1n3_t* num, onumm1n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sinh(num->r, 3, derivs);

    onumm1n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm1n3_asin_to(onumm1n3_t* num, onumm1n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asin(num->r, 3, derivs);

    onumm1n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm1n3_acos_to(onumm1n3_t* num, onumm1n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acos(num->r, 3, derivs);

    onumm1n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm1n3_atan_to(onumm1n3_t* num, onumm1n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atan(num->r, 3, derivs);

    onumm1n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm1n3_tan_to(onumm1n3_t* num, onumm1n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tan(num->r, 3, derivs);

    onumm1n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm1n3_cos_to(onumm1n3_t* num, onumm1n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cos(num->r, 3, derivs);

    onumm1n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm1n3_sin_to(onumm1n3_t* num, onumm1n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sin(num->r, 3, derivs);

    onumm1n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm1n3_logb_to(onumm1n3_t* num, double base, onumm1n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_logb(num->r, base, 3, derivs);

    onumm1n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm1n3_log10_to(onumm1n3_t* num, onumm1n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log10(num->r, 3, derivs);

    onumm1n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm1n3_log_to(onumm1n3_t* num, onumm1n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log(num->r, 3, derivs);

    onumm1n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm1n3_exp_to(onumm1n3_t* num, onumm1n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_exp(num->r, 3, derivs);

    onumm1n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm1n3_pow_to(onumm1n3_t* num, double e, onumm1n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_pow(num->r, e, 3, derivs);

    onumm1n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

