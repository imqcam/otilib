#ifndef OTI_ONUMM9N2_SCALAR_FUNCTIONS_H
#define OTI_ONUMM9N2_SCALAR_FUNCTIONS_H

/**************************************************************************************************//**
@brief Evaluation of inverse hyperbolic tangent function at (num).

@param[in] num: Oti number.
@param[in] dhl: Direction helper list object.
******************************************************************************************************/ 
onumm9n2_t onumm9n2_atanh(onumm9n2_t* num);
void onumm9n2_atanh_to(onumm9n2_t* num, onumm9n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Evaluation of inverse hyperbolic sine function at (num).

@param[in] num Oti number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
onumm9n2_t onumm9n2_asinh(onumm9n2_t* num);
void onumm9n2_asinh_to(onumm9n2_t* num, onumm9n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Evaluation of inverse hyperbolic cosine function at (num).

@param[in] num Oti number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
onumm9n2_t onumm9n2_acosh(onumm9n2_t* num);
void onumm9n2_acosh_to(onumm9n2_t* num, onumm9n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Evaluation of hiperbolic tangent function at (num).

@param[in] num Oti number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
onumm9n2_t onumm9n2_tanh(onumm9n2_t* num);
void onumm9n2_tanh_to(onumm9n2_t* num, onumm9n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Evaluation of square root function at (num).

@param[in] num Oti number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
onumm9n2_t onumm9n2_sqrt(onumm9n2_t* num);
void onumm9n2_sqrt_to(onumm9n2_t* num, onumm9n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Evaluation of cubic root function at (num).

@param[in] num Oti number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
onumm9n2_t onumm9n2_cbrt(onumm9n2_t* num);
void onumm9n2_cbrt_to(onumm9n2_t* num, onumm9n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Evaluation of hiperbolic cosine function at (num).

@param[in] num Oti number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
onumm9n2_t onumm9n2_cosh(onumm9n2_t* num);
void onumm9n2_cosh_to(onumm9n2_t* num, onumm9n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Evaluation of hiperbolic sine function at (num).

@param[in] num Oti number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
onumm9n2_t onumm9n2_sinh(onumm9n2_t* num);
void onumm9n2_sinh_to(onumm9n2_t* num, onumm9n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Evaluation of arcsine function at (num).

@param[in] num Oti number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
onumm9n2_t onumm9n2_asin(onumm9n2_t* num);
void onumm9n2_asin_to(onumm9n2_t* num, onumm9n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Evaluation of arccosine function at (num).

@param[in] num Oti number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
onumm9n2_t onumm9n2_acos(onumm9n2_t* num);
void onumm9n2_acos_to(onumm9n2_t* num, onumm9n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Evaluation of arctangent function at (num).

@param[in] num Oti number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
onumm9n2_t onumm9n2_atan(onumm9n2_t* num);
void onumm9n2_atan_to(onumm9n2_t* num, onumm9n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Evaluation of the tangent function at (num).

@param[in] num Oti number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
onumm9n2_t onumm9n2_tan(onumm9n2_t* num);
void onumm9n2_tan_to(onumm9n2_t* num, onumm9n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Evaluation of function cosine at (num).

@param[in] num Oti number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
onumm9n2_t onumm9n2_cos(onumm9n2_t* num);
void onumm9n2_cos_to(onumm9n2_t* num, onumm9n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Evaluation of function sine at (num).

@param[in] num Oti number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
onumm9n2_t onumm9n2_sin(onumm9n2_t* num );
void onumm9n2_sin_to(onumm9n2_t* num, onumm9n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Evaluation of Logarithm at base b function at (num).

@param[in] num Oti number.
@param[in] b Real number. Base of the logarithm to be evaluated.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
onumm9n2_t onumm9n2_logb(onumm9n2_t* num, double base);
void onumm9n2_logb_to(onumm9n2_t* num, double base, onumm9n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Evaluation of Logarithm at base 10 function at (num).

@param[in] num Oti number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
onumm9n2_t onumm9n2_log10(onumm9n2_t* num);
void onumm9n2_log10_to(onumm9n2_t* num, onumm9n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Evaluation of natural logarithm function at (num).

@param[in] num Oti number.
@param[in] b Real number. Base of the logarithm to be evaluated.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
onumm9n2_t onumm9n2_log(onumm9n2_t* num);
void onumm9n2_log_to(onumm9n2_t* num, onumm9n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Evaluation of natural logarithm function at (num).

@param[in] num Oti number.
@param[in] b Real number. Base of the logarithm to be evaluated.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
onumm9n2_t onumm9n2_exp(onumm9n2_t* num);
void onumm9n2_exp_to(onumm9n2_t* num, onumm9n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Evaluation of natural logarithm function at (num).

@param[in] num Oti number.
@param[in] b Real number. Base of the logarithm to be evaluated.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
onumm9n2_t onumm9n2_pow(onumm9n2_t* num, double e);
void onumm9n2_pow_to(onumm9n2_t* num, coeff_t e, onumm9n2_t* res);
// ----------------------------------------------------------------------------------------------------

#endif