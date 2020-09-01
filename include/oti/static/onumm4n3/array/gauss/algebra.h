#ifndef OTI_ONUMM4N3_ARRAY_GAUSS_ALGEBRA_H
#define OTI_ONUMM4N3_ARRAY_GAUSS_ALGEBRA_H

/**************************************************************************************************//**
@brief Matrix negation.

RES = - ARR

@param[in] arr Matrix to be negated
@param[in] res Result
@param[in] dhl Direction helper list.
******************************************************************************************************/
feoarrm4n3_t feoarrm4n3_neg(    feoarrm4n3_t* arr);
void      feoarrm4n3_neg_to( feoarrm4n3_t* arr, feoarrm4n3_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Matrix elementwise Addition.

RES = LHS + RHS

@param[in] lhs Left hand side.
@param[in] rhs Right hand side.
@param[in] res Result
@param[in] dhl Direction helper list.
******************************************************************************************************/
feoarrm4n3_t feoarrm4n3_sum_FF(   feoarrm4n3_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_sum_FF_to(feoarrm4n3_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_sum_fF(    feonumm4n3_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_sum_fF_to( feonumm4n3_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_sum_OF(     oarrm4n3_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_sum_OF_to(  oarrm4n3_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_sum_RF(      darr_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_sum_RF_to(   darr_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_sum_oF(   onumm4n3_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_sum_oF_to(onumm4n3_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_sum_rF(     coeff_t  lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_sum_rF_to(  coeff_t  lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Matrix elementwise subtraction.

RES = LHS - RHS

@param[in] lhs Left hand side.
@param[in] rhs Right hand side.
@param[in] res Result
@param[in] dhl Direction helper list.
******************************************************************************************************/
feoarrm4n3_t feoarrm4n3_sub_FF(    feoarrm4n3_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_sub_FF_to( feoarrm4n3_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_sub_fF(    feonumm4n3_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_sub_fF_to( feonumm4n3_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_sub_Ff(    feoarrm4n3_t* lhs, feonumm4n3_t* rhs);
void      feoarrm4n3_sub_Ff_to( feoarrm4n3_t* lhs, feonumm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_sub_OF(      oarrm4n3_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_sub_OF_to(   oarrm4n3_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_sub_FO(    feoarrm4n3_t* lhs,   oarrm4n3_t* rhs);
void      feoarrm4n3_sub_FO_to( feoarrm4n3_t* lhs,   oarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_sub_RF(       darr_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_sub_RF_to(    darr_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_sub_FR(    feoarrm4n3_t* lhs,    darr_t* rhs);
void      feoarrm4n3_sub_FR_to( feoarrm4n3_t* lhs,    darr_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_sub_oF(    onumm4n3_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_sub_oF_to( onumm4n3_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_sub_Fo(    feoarrm4n3_t* lhs, onumm4n3_t* rhs);
void      feoarrm4n3_sub_Fo_to( feoarrm4n3_t* lhs, onumm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_sub_rF(      coeff_t  lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_sub_rF_to(    coeff_t lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_sub_Fr(    feoarrm4n3_t* lhs,   coeff_t  rhs);
void      feoarrm4n3_sub_Fr_to( feoarrm4n3_t* lhs,   coeff_t  rhs, feoarrm4n3_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Matrix elementwise multiplication.

RES = LHS * RHS

@param[in] lhs Left hand side.
@param[in] rhs Right hand side.
@param[in] res Result
@param[in] dhl Direction helper list.
******************************************************************************************************/
feoarrm4n3_t feoarrm4n3_mul_FF(   feoarrm4n3_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_mul_FF_to(feoarrm4n3_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_mul_fF(    feonumm4n3_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_mul_fF_to( feonumm4n3_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_mul_OF(     oarrm4n3_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_mul_OF_to(  oarrm4n3_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_mul_RF(      darr_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_mul_RF_to(   darr_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_mul_oF(   onumm4n3_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_mul_oF_to(onumm4n3_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_mul_rF(     coeff_t  lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_mul_rF_to(  coeff_t  lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Matrix elementwise division.

RES = LHS / RHS

@param[in] lhs Left hand side.
@param[in] rhs Right hand side.
@param[in] res Result
@param[in] dhl Direction helper list.
******************************************************************************************************/
feoarrm4n3_t feoarrm4n3_div_FF(    feoarrm4n3_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_div_FF_to( feoarrm4n3_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_div_fF(     feonumm4n3_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_div_fF_to(  feonumm4n3_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_div_Ff(    feoarrm4n3_t* lhs,  feonumm4n3_t* rhs);
void      feoarrm4n3_div_Ff_to( feoarrm4n3_t* lhs,  feonumm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_div_OF(      oarrm4n3_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_div_OF_to(   oarrm4n3_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_div_FO(    feoarrm4n3_t* lhs,   oarrm4n3_t* rhs);
void      feoarrm4n3_div_FO_to( feoarrm4n3_t* lhs,   oarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_div_RF(       darr_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_div_RF_to(    darr_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_div_FR(    feoarrm4n3_t* lhs,    darr_t* rhs);
void      feoarrm4n3_div_FR_to( feoarrm4n3_t* lhs,    darr_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_div_oF(    onumm4n3_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_div_oF_to( onumm4n3_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_div_Fo(    feoarrm4n3_t* lhs, onumm4n3_t* rhs);
void      feoarrm4n3_div_Fo_to( feoarrm4n3_t* lhs, onumm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_div_rF(      coeff_t  lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_div_rF_to(    coeff_t lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_div_Fr(    feoarrm4n3_t* lhs,   coeff_t  rhs);
void      feoarrm4n3_div_Fr_to( feoarrm4n3_t* lhs,   coeff_t  rhs, feoarrm4n3_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Gauss integration.

@param[in] arr Array to integrate.
@param[in] w   Integration weights (scalar)
@param[in] res Result
@param[in] dhl Direction helper list.
******************************************************************************************************/
oarrm4n3_t feoarrm4n3_integrate(    feoarrm4n3_t* arr, feonumm4n3_t* w);
void    feoarrm4n3_integrate_to( feoarrm4n3_t* arr, feonumm4n3_t* w, oarrm4n3_t* res);
// ----------------------------------------------------------------------------------------------------

// VECTOR ALGEBRA

/**************************************************************************************************//**
@brief Dot product between two vectors

RES = DOT_PRODUCT( LHS, RHS )

@param[in] lhs Left hand side.
@param[in] rhs Right hand side.
@param[in] res result
@param[in] dhl Direction helper list
******************************************************************************************************/
feonumm4n3_t feoarrm4n3_dotproduct_FF(    feoarrm4n3_t* lhs, feoarrm4n3_t* rhs);
void     feoarrm4n3_dotproduct_FF_to( feoarrm4n3_t* lhs, feoarrm4n3_t* rhs, feonumm4n3_t* res);

feonumm4n3_t feoarrm4n3_dotproduct_OF(      oarrm4n3_t* lhs, feoarrm4n3_t* rhs);
void     feoarrm4n3_dotproduct_OF_to(   oarrm4n3_t* lhs, feoarrm4n3_t* rhs, feonumm4n3_t* res);

feonumm4n3_t feoarrm4n3_dotproduct_RF(       darr_t* lhs, feoarrm4n3_t* rhs);
void     feoarrm4n3_dotproduct_RF_to(    darr_t* lhs, feoarrm4n3_t* rhs, feonumm4n3_t* res);
// ----------------------------------------------------------------------------------------------------

// MATRIX ALGEBRA.

/**************************************************************************************************//**
@brief Matrix multiplication

RES = MATMUL( LHS, RHS )

@param[in] lhs Left hand side.
@param[in] rhs Right hand side.
@param[in] res result
@param[in] dhl Direction helper list
******************************************************************************************************/
feoarrm4n3_t feoarrm4n3_matmul_FF(    feoarrm4n3_t* lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_matmul_FF_to( feoarrm4n3_t* lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_matmul_OF(    oarrm4n3_t*   lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_matmul_OF_to( oarrm4n3_t*   lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_matmul_FO(    feoarrm4n3_t* lhs, oarrm4n3_t*   rhs);
void      feoarrm4n3_matmul_FO_to( feoarrm4n3_t* lhs, oarrm4n3_t*   rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_matmul_RF(    darr_t*    lhs, feoarrm4n3_t* rhs);
void      feoarrm4n3_matmul_RF_to( darr_t*    lhs, feoarrm4n3_t* rhs, feoarrm4n3_t* res);

feoarrm4n3_t feoarrm4n3_matmul_FR(    feoarrm4n3_t* lhs, darr_t*    rhs);
void      feoarrm4n3_matmul_FR_to( feoarrm4n3_t* lhs, darr_t*    rhs, feoarrm4n3_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Matrix determinant.

res = DET( ARR )

@param[in] arr Array to compute determinant.
@param[in] res Result 
@param[in] dhl Direction helper list
******************************************************************************************************/
feonumm4n3_t feoarrm4n3_det(   feoarrm4n3_t* arr);
void     feoarrm4n3_det_to(feoarrm4n3_t* arr, feonumm4n3_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief P-norm of array.

res = NORM( ARR )

@param[in] arr Array.
@param[in] p   Value p of norm.
@param[in] res Result.
@param[in] dhl Direction helper list.
******************************************************************************************************/
feonumm4n3_t feoarrm4n3_norm(     feoarrm4n3_t* arr);
void     feoarrm4n3_norm_to(  feoarrm4n3_t* arr, feonumm4n3_t* res);

feonumm4n3_t feoarrm4n3_pnorm(    feoarrm4n3_t* arr, coeff_t p);
void     feoarrm4n3_pnorm_to( feoarrm4n3_t* arr, coeff_t p, feonumm4n3_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Matrix invertion.

RES = ARR^( -1 )

@param[in] arr Array to invert.
@param[in] res Result 
@param[in] dhl Direction helper list
******************************************************************************************************/
feoarrm4n3_t   feoarrm4n3_invert(    feoarrm4n3_t* arr);
void        feoarrm4n3_invert_to( feoarrm4n3_t* arr, feoarrm4n3_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief  Matrix Transpose operation.

RES = TRANSPOSE( ARR )

@param[in] arr Array to invert.
@param[in] res Result 
@param[in] dhl Direction helper list
******************************************************************************************************/
feoarrm4n3_t   feoarrm4n3_transpose(   feoarrm4n3_t* arr);
void        feoarrm4n3_transpose_to(feoarrm4n3_t* arr, feoarrm4n3_t* res);
// ----------------------------------------------------------------------------------------------------

#endif