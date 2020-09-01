#ifndef OTI_MDNUM3_SCALAR_GAUSS_FUNCTIONS_H
#define OTI_MDNUM3_SCALAR_GAUSS_FUNCTIONS_H

/**************************************************************************************************//**
@brief Hyperbolic functions.

@param[in] num Value to evaluate.
@param[in] res Result.
@param[in] dhl Direction helper list.
******************************************************************************************************/
femdnum3_t femdnum3_atanh(    femdnum3_t* num);
void     femdnum3_atanh_to( femdnum3_t* num, femdnum3_t* res);

femdnum3_t femdnum3_asinh(    femdnum3_t* num);
void     femdnum3_asinh_to( femdnum3_t* num, femdnum3_t* res);

femdnum3_t femdnum3_acosh(    femdnum3_t* num);
void     femdnum3_acosh_to( femdnum3_t* num, femdnum3_t* res);

femdnum3_t femdnum3_tanh(     femdnum3_t* num);
void     femdnum3_tanh_to(  femdnum3_t* num, femdnum3_t* res);

femdnum3_t femdnum3_cosh(     femdnum3_t* num);
void     femdnum3_cosh_to(  femdnum3_t* num, femdnum3_t* res);

femdnum3_t femdnum3_sinh(     femdnum3_t* num);
void     femdnum3_sinh_to(  femdnum3_t* num, femdnum3_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Trigonometric functions.

@param[in] num Value to evaluate.
@param[in] res Result.
@param[in] dhl Direction helper list.
******************************************************************************************************/
femdnum3_t femdnum3_asin(     femdnum3_t* num);
void     femdnum3_asin_to(  femdnum3_t* num, femdnum3_t* res);

femdnum3_t femdnum3_acos(     femdnum3_t* num);
void     femdnum3_acos_to(  femdnum3_t* num, femdnum3_t* res);

femdnum3_t femdnum3_atan(     femdnum3_t* num);
void     femdnum3_atan_to(  femdnum3_t* num, femdnum3_t* res);

femdnum3_t femdnum3_tan(      femdnum3_t* num);
void     femdnum3_tan_to(   femdnum3_t* num, femdnum3_t* res);

femdnum3_t femdnum3_cos(      femdnum3_t* num);
void     femdnum3_cos_to(   femdnum3_t* num, femdnum3_t* res);

femdnum3_t femdnum3_sin(      femdnum3_t* num);
void     femdnum3_sin_to(   femdnum3_t* num, femdnum3_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Logarithm and exponential functions

@param[in] num Value to evaluate.
@param[in] base Log base.
@param[in] res Result.
@param[in] dhl Direction helper list.
******************************************************************************************************/
femdnum3_t femdnum3_logb(     femdnum3_t* num, double base);
void     femdnum3_logb_to(  femdnum3_t* num, double base, femdnum3_t* res);

femdnum3_t femdnum3_log10(    femdnum3_t* num);
void     femdnum3_log10_to( femdnum3_t* num, femdnum3_t* res);

femdnum3_t femdnum3_log(      femdnum3_t* num);
void     femdnum3_log_to(   femdnum3_t* num, femdnum3_t* res);

femdnum3_t femdnum3_exp(      femdnum3_t* num);
void     femdnum3_exp_to(   femdnum3_t* num, femdnum3_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Power fuctions

@param[in] num Value to evaluate.
@param[in] e   Exponent
@param[in] res Result.
@param[in] dhl Direction helper list.
******************************************************************************************************/
femdnum3_t femdnum3_cbrt(     femdnum3_t* num);
void     femdnum3_cbrt_to(  femdnum3_t* num, femdnum3_t* res);

femdnum3_t femdnum3_sqrt(     femdnum3_t* num);
void     femdnum3_sqrt_to(  femdnum3_t* num, femdnum3_t* res);

femdnum3_t femdnum3_pow(      femdnum3_t* num, double e);
void     femdnum3_pow_to(   femdnum3_t* num, double e, femdnum3_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Gauss integration. Performs

res = \sum_{i=1}^{i=nip} w[i] * num[i]

@param[in] num Gauss scalar to integrate.
@param[in] w   Integration weights.
@param[in] res Result.
@param[in] dhl Direction helper list.
******************************************************************************************************/
mdnum3_t femdnum3_integrate(       femdnum3_t* num, femdnum3_t* w);
void      femdnum3_integrate_to(    femdnum3_t* num, femdnum3_t* w, mdnum3_t* res);

mdnum3_t femdnum3_integrate_f(     femdnum3_t* num, femdnum3_t* w);
void      femdnum3_integrate_f_to(  femdnum3_t* num, femdnum3_t* w, mdnum3_t* res);

mdnum3_t femdnum3_integrate_r(       coeff_t num, femdnum3_t* w);
void      femdnum3_integrate_r_to(    coeff_t num, femdnum3_t* w, mdnum3_t* res);

mdnum3_t femdnum3_integrate_o(    mdnum3_t* num, femdnum3_t* w);
void      femdnum3_integrate_o_to( mdnum3_t* num, femdnum3_t* w, mdnum3_t* res);
// ----------------------------------------------------------------------------------------------------

#endif