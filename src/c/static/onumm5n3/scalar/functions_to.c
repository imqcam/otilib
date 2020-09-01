

// ****************************************************************************************************
void onumm5n3_atanh_to(onumm5n3_t* num, onumm5n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atanh(num->r, 3, derivs);

    onumm5n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_asinh_to(onumm5n3_t* num, onumm5n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asinh(num->r, 3, derivs);

    onumm5n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_acosh_to(onumm5n3_t* num, onumm5n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acosh(num->r, 3, derivs);

    onumm5n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_tanh_to(onumm5n3_t* num, onumm5n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tanh(num->r, 3, derivs);

    onumm5n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_cbrt_to(onumm5n3_t* num, onumm5n3_t* res){

    onumm5n3_pow_to(num, 1./3., res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_sqrt_to(onumm5n3_t* num, onumm5n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sqrt(num->r, 3, derivs);

    onumm5n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_cosh_to(onumm5n3_t* num, onumm5n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cosh(num->r, 3, derivs);

    onumm5n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_sinh_to(onumm5n3_t* num, onumm5n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sinh(num->r, 3, derivs);

    onumm5n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_asin_to(onumm5n3_t* num, onumm5n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asin(num->r, 3, derivs);

    onumm5n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_acos_to(onumm5n3_t* num, onumm5n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acos(num->r, 3, derivs);

    onumm5n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_atan_to(onumm5n3_t* num, onumm5n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atan(num->r, 3, derivs);

    onumm5n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_tan_to(onumm5n3_t* num, onumm5n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tan(num->r, 3, derivs);

    onumm5n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_cos_to(onumm5n3_t* num, onumm5n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cos(num->r, 3, derivs);

    onumm5n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_sin_to(onumm5n3_t* num, onumm5n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sin(num->r, 3, derivs);

    onumm5n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_logb_to(onumm5n3_t* num, double base, onumm5n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_logb(num->r, base, 3, derivs);

    onumm5n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_log10_to(onumm5n3_t* num, onumm5n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log10(num->r, 3, derivs);

    onumm5n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_log_to(onumm5n3_t* num, onumm5n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log(num->r, 3, derivs);

    onumm5n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_exp_to(onumm5n3_t* num, onumm5n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_exp(num->r, 3, derivs);

    onumm5n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_pow_to(onumm5n3_t* num, double e, onumm5n3_t* res){

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_pow(num->r, e, 3, derivs);

    onumm5n3_feval_to(derivs, num, res);

}
// ----------------------------------------------------------------------------------------------------
