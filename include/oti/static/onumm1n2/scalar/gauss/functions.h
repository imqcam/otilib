#ifndef OTI_ONUMM1N2_SCALAR_GAUSS_FUNCTIONS_H
#define OTI_ONUMM1N2_SCALAR_GAUSS_FUNCTIONS_H

/**************************************************************************************************//**
@brief Hyperbolic functions.

@param[in] num Value to evaluate.
@param[in] res Result.
@param[in] dhl Direction helper list.
******************************************************************************************************/
feonumm1n2_t feonumm1n2_atanh(    feonumm1n2_t* num);
void     feonumm1n2_atanh_to( feonumm1n2_t* num, feonumm1n2_t* res);

feonumm1n2_t feonumm1n2_asinh(    feonumm1n2_t* num);
void     feonumm1n2_asinh_to( feonumm1n2_t* num, feonumm1n2_t* res);

feonumm1n2_t feonumm1n2_acosh(    feonumm1n2_t* num);
void     feonumm1n2_acosh_to( feonumm1n2_t* num, feonumm1n2_t* res);

feonumm1n2_t feonumm1n2_tanh(     feonumm1n2_t* num);
void     feonumm1n2_tanh_to(  feonumm1n2_t* num, feonumm1n2_t* res);

feonumm1n2_t feonumm1n2_cosh(     feonumm1n2_t* num);
void     feonumm1n2_cosh_to(  feonumm1n2_t* num, feonumm1n2_t* res);

feonumm1n2_t feonumm1n2_sinh(     feonumm1n2_t* num);
void     feonumm1n2_sinh_to(  feonumm1n2_t* num, feonumm1n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Trigonometric functions.

@param[in] num Value to evaluate.
@param[in] res Result.
@param[in] dhl Direction helper list.
******************************************************************************************************/
feonumm1n2_t feonumm1n2_asin(     feonumm1n2_t* num);
void     feonumm1n2_asin_to(  feonumm1n2_t* num, feonumm1n2_t* res);

feonumm1n2_t feonumm1n2_acos(     feonumm1n2_t* num);
void     feonumm1n2_acos_to(  feonumm1n2_t* num, feonumm1n2_t* res);

feonumm1n2_t feonumm1n2_atan(     feonumm1n2_t* num);
void     feonumm1n2_atan_to(  feonumm1n2_t* num, feonumm1n2_t* res);

feonumm1n2_t feonumm1n2_tan(      feonumm1n2_t* num);
void     feonumm1n2_tan_to(   feonumm1n2_t* num, feonumm1n2_t* res);

feonumm1n2_t feonumm1n2_cos(      feonumm1n2_t* num);
void     feonumm1n2_cos_to(   feonumm1n2_t* num, feonumm1n2_t* res);

feonumm1n2_t feonumm1n2_sin(      feonumm1n2_t* num);
void     feonumm1n2_sin_to(   feonumm1n2_t* num, feonumm1n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Logarithm and exponential functions

@param[in] num Value to evaluate.
@param[in] base Log base.
@param[in] res Result.
@param[in] dhl Direction helper list.
******************************************************************************************************/
feonumm1n2_t feonumm1n2_logb(     feonumm1n2_t* num, double base);
void     feonumm1n2_logb_to(  feonumm1n2_t* num, double base, feonumm1n2_t* res);

feonumm1n2_t feonumm1n2_log10(    feonumm1n2_t* num);
void     feonumm1n2_log10_to( feonumm1n2_t* num, feonumm1n2_t* res);

feonumm1n2_t feonumm1n2_log(      feonumm1n2_t* num);
void     feonumm1n2_log_to(   feonumm1n2_t* num, feonumm1n2_t* res);

feonumm1n2_t feonumm1n2_exp(      feonumm1n2_t* num);
void     feonumm1n2_exp_to(   feonumm1n2_t* num, feonumm1n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Power fuctions

@param[in] num Value to evaluate.
@param[in] e   Exponent
@param[in] res Result.
@param[in] dhl Direction helper list.
******************************************************************************************************/
feonumm1n2_t feonumm1n2_cbrt(     feonumm1n2_t* num);
void     feonumm1n2_cbrt_to(  feonumm1n2_t* num, feonumm1n2_t* res);

feonumm1n2_t feonumm1n2_sqrt(     feonumm1n2_t* num);
void     feonumm1n2_sqrt_to(  feonumm1n2_t* num, feonumm1n2_t* res);

feonumm1n2_t feonumm1n2_pow(      feonumm1n2_t* num, double e);
void     feonumm1n2_pow_to(   feonumm1n2_t* num, double e, feonumm1n2_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Gauss integration. Performs

res = \sum_{i=1}^{i=nip} w[i] * num[i]

@param[in] num Gauss scalar to integrate.
@param[in] w   Integration weights.
@param[in] res Result.
@param[in] dhl Direction helper list.
******************************************************************************************************/
onumm1n2_t feonumm1n2_integrate(       feonumm1n2_t* num, feonumm1n2_t* w);
void      feonumm1n2_integrate_to(    feonumm1n2_t* num, feonumm1n2_t* w, onumm1n2_t* res);

onumm1n2_t feonumm1n2_integrate_f(     feonumm1n2_t* num, feonumm1n2_t* w);
void      feonumm1n2_integrate_f_to(  feonumm1n2_t* num, feonumm1n2_t* w, onumm1n2_t* res);

onumm1n2_t feonumm1n2_integrate_r(       coeff_t num, feonumm1n2_t* w);
void      feonumm1n2_integrate_r_to(    coeff_t num, feonumm1n2_t* w, onumm1n2_t* res);

onumm1n2_t feonumm1n2_integrate_o(    onumm1n2_t* num, feonumm1n2_t* w);
void      feonumm1n2_integrate_o_to( onumm1n2_t* num, feonumm1n2_t* w, onumm1n2_t* res);
// ----------------------------------------------------------------------------------------------------

#endif