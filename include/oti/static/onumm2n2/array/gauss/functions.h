#ifndef OTI_ONUMM2N2_ARRAY_GAUSS_FUNCTIONS_H
#define OTI_ONUMM2N2_ARRAY_GAUSS_FUNCTIONS_H

/**************************************************************************************************//**
@brief Inverse hyperbolic functions.

@param[in] arr Matrix
@param[in] res Result
@param[in] dhl Direction helper list.
******************************************************************************************************/
feoarrm2n2_t feoarrm2n2_atanh(    feoarrm2n2_t* arr);
void      feoarrm2n2_atanh_to( feoarrm2n2_t* arr, feoarrm2n2_t* res);
feoarrm2n2_t feoarrm2n2_asinh(    feoarrm2n2_t* arr);
void      feoarrm2n2_asinh_to( feoarrm2n2_t* arr, feoarrm2n2_t* res);
feoarrm2n2_t feoarrm2n2_acosh(    feoarrm2n2_t* arr);
void      feoarrm2n2_acosh_to( feoarrm2n2_t* arr, feoarrm2n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief hyperbolic functions.

@param[in] arr Matrix
@param[in] res Result
@param[in] dhl Direction helper list.
******************************************************************************************************/
feoarrm2n2_t feoarrm2n2_tanh(     feoarrm2n2_t* arr);
void      feoarrm2n2_tanh_to(  feoarrm2n2_t* arr, feoarrm2n2_t* res);
feoarrm2n2_t feoarrm2n2_sinh(     feoarrm2n2_t* arr);
void      feoarrm2n2_sinh_to(  feoarrm2n2_t* arr, feoarrm2n2_t* res);
feoarrm2n2_t feoarrm2n2_cosh(     feoarrm2n2_t* arr);
void      feoarrm2n2_cosh_to(  feoarrm2n2_t* arr, feoarrm2n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Inverse trigonometric functions.

@param[in] arr Matrix
@param[in] res Result
@param[in] dhl Direction helper list.
******************************************************************************************************/
feoarrm2n2_t feoarrm2n2_atan(     feoarrm2n2_t* arr);
void      feoarrm2n2_atan_to(  feoarrm2n2_t* arr, feoarrm2n2_t* res);
feoarrm2n2_t feoarrm2n2_asin(     feoarrm2n2_t* arr);
void      feoarrm2n2_asin_to(  feoarrm2n2_t* arr, feoarrm2n2_t* res);
feoarrm2n2_t feoarrm2n2_acos(     feoarrm2n2_t* arr);
void      feoarrm2n2_acos_to(  feoarrm2n2_t* arr, feoarrm2n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Trigonometric functions.

@param[in] arr Matrix
@param[in] res Result
@param[in] dhl Direction helper list.
******************************************************************************************************/
feoarrm2n2_t feoarrm2n2_tan(      feoarrm2n2_t* arr);
void      feoarrm2n2_tan_to(   feoarrm2n2_t* arr, feoarrm2n2_t* res);
feoarrm2n2_t feoarrm2n2_sin(      feoarrm2n2_t* arr);
void      feoarrm2n2_sin_to(   feoarrm2n2_t* arr, feoarrm2n2_t* res);
feoarrm2n2_t feoarrm2n2_cos(      feoarrm2n2_t* arr);
void      feoarrm2n2_cos_to(   feoarrm2n2_t* arr, feoarrm2n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Logarithmic/exponential functions.

@param[in] arr  Matrix
@param[in] base Base.
@param[in] res  Result
@param[in] dhl  Direction helper list.
******************************************************************************************************/
feoarrm2n2_t feoarrm2n2_logb(     feoarrm2n2_t* arr, double base);
void      feoarrm2n2_logb_to(  feoarrm2n2_t* arr, double base, feoarrm2n2_t* res);
feoarrm2n2_t feoarrm2n2_log10(    feoarrm2n2_t* arr);
void      feoarrm2n2_log10_to( feoarrm2n2_t* arr, feoarrm2n2_t* res);
feoarrm2n2_t feoarrm2n2_log(      feoarrm2n2_t* arr);
void      feoarrm2n2_log_to(   feoarrm2n2_t* arr, feoarrm2n2_t* res);
feoarrm2n2_t feoarrm2n2_exp(      feoarrm2n2_t* arr);
void      feoarrm2n2_exp_to(   feoarrm2n2_t* arr, feoarrm2n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Power functions.

@param[in] arr Matrix
@param[in] e   Exponent
@param[in] res Result
@param[in] dhl Direction helper list.
******************************************************************************************************/
feoarrm2n2_t feoarrm2n2_cbrt(     feoarrm2n2_t* arr);
void      feoarrm2n2_cbrt_to(  feoarrm2n2_t* arr, feoarrm2n2_t* res);
feoarrm2n2_t feoarrm2n2_sqrt(     feoarrm2n2_t* arr);
void      feoarrm2n2_sqrt_to(  feoarrm2n2_t* arr, feoarrm2n2_t* res);
feoarrm2n2_t feoarrm2n2_pow(      feoarrm2n2_t* arr, double e);
void      feoarrm2n2_pow_to(   feoarrm2n2_t* arr, double e, feoarrm2n2_t* res);
// ----------------------------------------------------------------------------------------------------

#endif