#ifndef OTI_ONUMM1N8_ARRAY_ALGEBRA_MATOPS_H
#define OTI_ONUMM1N8_ARRAY_ALGEBRA_MATOPS_H

/**************************************************************************************************//**
@brief Vector dot product

RES  = DOT_PRODUCT( LHS,  RHS)

@param[in] lhs    Left hand side array.
@param[in] rhs    Right hand side array.
@param[in] dhl    Direction helper list object.
******************************************************************************************************/ 
onumm1n8_t oarrm1n8_dotproduct_OO(    oarrm1n8_t* lhs, oarrm1n8_t* rhs);
void      oarrm1n8_dotproduct_OO_to( oarrm1n8_t* lhs, oarrm1n8_t* rhs, onumm1n8_t* res);

onumm1n8_t oarrm1n8_dotproduct_RO(     darr_t* lhs, oarrm1n8_t* rhs);
void      oarrm1n8_dotproduct_RO_to(  darr_t* lhs, oarrm1n8_t* rhs, onumm1n8_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Matrix multiplication.

RES  = MATMUL( LHS,  RHS)

@param[in] lhs    Left hand side array.
@param[in] rhs    Right hand side array.
@param[in] dhl    Direction helper list object.
******************************************************************************************************/ 
oarrm1n8_t oarrm1n8_matmul_OO(    oarrm1n8_t* lhs, oarrm1n8_t* rhs);
oarrm1n8_t oarrm1n8_matmul_OR(    oarrm1n8_t* lhs,  darr_t* rhs);
oarrm1n8_t oarrm1n8_matmul_RO(     darr_t* lhs, oarrm1n8_t* rhs);

void    oarrm1n8_matmul_OO_to( oarrm1n8_t* lhs, oarrm1n8_t* rhs, oarrm1n8_t* res);
void    oarrm1n8_matmul_OR_to( oarrm1n8_t* lhs,  darr_t* rhs, oarrm1n8_t* res);
void    oarrm1n8_matmul_RO_to(  darr_t* lhs, oarrm1n8_t* rhs, oarrm1n8_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Matrix transpose.

RES  = TRANSPOSE( ARR1 )

@param[in] arr1   Array to be transposed
@param[in] dhl    Direction helper list object.
******************************************************************************************************/ 
oarrm1n8_t oarrm1n8_transpose(    oarrm1n8_t* arr1);
void    oarrm1n8_transpose_to( oarrm1n8_t* arr1, oarrm1n8_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Matrix invertion.

RES  = INVERSE( ARR1 )

@param[in] arr1   Array to be inverted.
@param[in] dhl    Direction helper list object.
******************************************************************************************************/ 
oarrm1n8_t oarrm1n8_invert(    oarrm1n8_t* arr1);
void    oarrm1n8_invert_to( oarrm1n8_t* arr1, oarrm1n8_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Matrix determinant.

RES  = DET( ARR1 )

@param[in] arr1   Array to compute determinant.
@param[in] dhl    Direction helper list object.
******************************************************************************************************/ 
onumm1n8_t oarrm1n8_det(    oarrm1n8_t* arr1);
void      oarrm1n8_det_to( oarrm1n8_t* arr1, onumm1n8_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Norm.

RES  = NORM( ARR1 )

@param[in] arr1   Array to compute norm.
@param[in] dhl    Direction helper list object.
******************************************************************************************************/ 
onumm1n8_t oarrm1n8_norm(    oarrm1n8_t* arr1);
void      oarrm1n8_norm_to( oarrm1n8_t* arr1,  onumm1n8_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief P-Norm for "vector".

RES  = PNORM( ARR1 )

@param[in] arr1   Array to compute norm.
@param[in] p      P-value of norm.
@param[in] dhl    Direction helper list object.
******************************************************************************************************/ 
onumm1n8_t oarrm1n8_pnorm(    oarrm1n8_t* arr1, coeff_t p);
void      oarrm1n8_pnorm_to( oarrm1n8_t* arr1, coeff_t p, onumm1n8_t* res);
// ----------------------------------------------------------------------------------------------------

#endif