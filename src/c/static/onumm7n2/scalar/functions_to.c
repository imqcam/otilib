

// ****************************************************************************************************
void onumm7n2_atanh_to(onumm7n2_t* num, onumm7n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atanh(num->r, 2, derivs);

    onumm7n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n2_asinh_to(onumm7n2_t* num, onumm7n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asinh(num->r, 2, derivs);

    onumm7n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n2_acosh_to(onumm7n2_t* num, onumm7n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acosh(num->r, 2, derivs);

    onumm7n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n2_tanh_to(onumm7n2_t* num, onumm7n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tanh(num->r, 2, derivs);

    onumm7n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n2_cbrt_to(onumm7n2_t* num, onumm7n2_t* res){

    onumm7n2_pow_to(num, 1./3., res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n2_sqrt_to(onumm7n2_t* num, onumm7n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sqrt(num->r, 2, derivs);

    onumm7n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n2_cosh_to(onumm7n2_t* num, onumm7n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cosh(num->r, 2, derivs);

    onumm7n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n2_sinh_to(onumm7n2_t* num, onumm7n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sinh(num->r, 2, derivs);

    onumm7n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n2_asin_to(onumm7n2_t* num, onumm7n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asin(num->r, 2, derivs);

    onumm7n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n2_acos_to(onumm7n2_t* num, onumm7n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acos(num->r, 2, derivs);

    onumm7n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n2_atan_to(onumm7n2_t* num, onumm7n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atan(num->r, 2, derivs);

    onumm7n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n2_tan_to(onumm7n2_t* num, onumm7n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tan(num->r, 2, derivs);

    onumm7n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n2_cos_to(onumm7n2_t* num, onumm7n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cos(num->r, 2, derivs);

    onumm7n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n2_sin_to(onumm7n2_t* num, onumm7n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sin(num->r, 2, derivs);

    onumm7n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n2_logb_to(onumm7n2_t* num, double base, onumm7n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_logb(num->r, base, 2, derivs);

    onumm7n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n2_log10_to(onumm7n2_t* num, onumm7n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log10(num->r, 2, derivs);

    onumm7n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n2_log_to(onumm7n2_t* num, onumm7n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log(num->r, 2, derivs);

    onumm7n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n2_exp_to(onumm7n2_t* num, onumm7n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_exp(num->r, 2, derivs);

    onumm7n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n2_pow_to(onumm7n2_t* num, double e, onumm7n2_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_pow(num->r, e, 2, derivs);

    onumm7n2_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------
