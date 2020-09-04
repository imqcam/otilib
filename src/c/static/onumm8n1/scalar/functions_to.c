

// ****************************************************************************************************
void onumm8n1_atanh_to(onumm8n1_t* num, onumm8n1_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atanh(num->r, 1, derivs);

    onumm8n1_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm8n1_asinh_to(onumm8n1_t* num, onumm8n1_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asinh(num->r, 1, derivs);

    onumm8n1_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm8n1_acosh_to(onumm8n1_t* num, onumm8n1_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acosh(num->r, 1, derivs);

    onumm8n1_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm8n1_tanh_to(onumm8n1_t* num, onumm8n1_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tanh(num->r, 1, derivs);

    onumm8n1_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm8n1_cbrt_to(onumm8n1_t* num, onumm8n1_t* res){

    onumm8n1_pow_to(num, 1./3., res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm8n1_sqrt_to(onumm8n1_t* num, onumm8n1_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sqrt(num->r, 1, derivs);

    onumm8n1_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm8n1_cosh_to(onumm8n1_t* num, onumm8n1_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cosh(num->r, 1, derivs);

    onumm8n1_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm8n1_sinh_to(onumm8n1_t* num, onumm8n1_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sinh(num->r, 1, derivs);

    onumm8n1_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm8n1_asin_to(onumm8n1_t* num, onumm8n1_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asin(num->r, 1, derivs);

    onumm8n1_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm8n1_acos_to(onumm8n1_t* num, onumm8n1_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acos(num->r, 1, derivs);

    onumm8n1_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm8n1_atan_to(onumm8n1_t* num, onumm8n1_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atan(num->r, 1, derivs);

    onumm8n1_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm8n1_tan_to(onumm8n1_t* num, onumm8n1_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tan(num->r, 1, derivs);

    onumm8n1_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm8n1_cos_to(onumm8n1_t* num, onumm8n1_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cos(num->r, 1, derivs);

    onumm8n1_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm8n1_sin_to(onumm8n1_t* num, onumm8n1_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sin(num->r, 1, derivs);

    onumm8n1_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm8n1_logb_to(onumm8n1_t* num, double base, onumm8n1_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_logb(num->r, base, 1, derivs);

    onumm8n1_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm8n1_log10_to(onumm8n1_t* num, onumm8n1_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log10(num->r, 1, derivs);

    onumm8n1_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm8n1_log_to(onumm8n1_t* num, onumm8n1_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log(num->r, 1, derivs);

    onumm8n1_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm8n1_exp_to(onumm8n1_t* num, onumm8n1_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_exp(num->r, 1, derivs);

    onumm8n1_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm8n1_pow_to(onumm8n1_t* num, double e, onumm8n1_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_pow(num->r, e, 1, derivs);

    onumm8n1_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------
