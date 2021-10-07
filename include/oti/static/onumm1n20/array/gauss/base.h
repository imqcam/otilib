#ifndef OTI_ONUMM1N20_ARRAY_GAUSS_BASE_H
#define OTI_ONUMM1N20_ARRAY_GAUSS_BASE_H

void      feoarrm1n20_get_order_im_to( ord_t order, feoarrm1n20_t* arr, feoarrm1n20_t* res);
feoarrm1n20_t feoarrm1n20_get_order_im(    ord_t order, feoarrm1n20_t* arr);

feoarrm1n20_t feoarrm1n20_get_deriv(   imdir_t idx, ord_t order, feoarrm1n20_t* arr);
void      feoarrm1n20_get_deriv_to(imdir_t idx, ord_t order, feoarrm1n20_t* arr, feoarrm1n20_t* res);
// ----------------------------------------------------------------------------------------------------

feoarrm1n20_t feoarrm1n20_get_im(      imdir_t idx, ord_t order, feoarrm1n20_t* arr);
void      feoarrm1n20_get_im_to(   imdir_t idx, ord_t order, feoarrm1n20_t* arr, feoarrm1n20_t* res);
// ----------------------------------------------------------------------------------------------------

feoarrm1n20_t feoarrm1n20_truncate_im(   imdir_t idx, ord_t order, feoarrm1n20_t* arr);
void      feoarrm1n20_truncate_im_to(imdir_t idx, ord_t order, feoarrm1n20_t* arr, feoarrm1n20_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Copy Gauss array.

@param[in] src. Item to copy.
@param[in] res  Result.
@param[in] dhl  Direction helper list.
******************************************************************************************************/
feoarrm1n20_t feoarrm1n20_copy(   feoarrm1n20_t* src);
void      feoarrm1n20_copy_to(feoarrm1n20_t* src, feoarrm1n20_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief  Imaginary direction getters.

@param[in] arr Gauss array.

@param[in] res Gauss array, result.
@param[in] dhl Direction helper list.
******************************************************************************************************/
feoarrm1n20_t feoarrm1n20_get_im(    imdir_t idx, ord_t order, feoarrm1n20_t* arr);
void      feoarrm1n20_get_im_to( imdir_t idx, ord_t order, feoarrm1n20_t* arr, feoarrm1n20_t* res);

feoarrm1n20_t feoarrm1n20_get_deriv(    imdir_t idx, ord_t order, feoarrm1n20_t* arr);
void      feoarrm1n20_get_deriv_to( imdir_t idx, ord_t order, feoarrm1n20_t* arr, feoarrm1n20_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief  Imaginary derivative extractors.

@param[in] idx Imagianry index.
@param[in] order Imagianry index.
@param[in] arr Gauss array.
@param[in] res Gauss array, result.
@param[in] dhl Direction helper list.
******************************************************************************************************/
feoarrm1n20_t feoarrm1n20_extract_im(    imdir_t idx, ord_t order, feoarrm1n20_t* arr);
void      feoarrm1n20_extract_im_to( imdir_t idx, ord_t order, feoarrm1n20_t* arr,  feoarrm1n20_t* res);

feoarrm1n20_t feoarrm1n20_extract_deriv(    imdir_t idx, ord_t order, feoarrm1n20_t* arr);
void      feoarrm1n20_extract_deriv_to( imdir_t idx, ord_t order, feoarrm1n20_t* arr, feoarrm1n20_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief  Item getters.

@param[in] arr Gauss array.

@param[in] res Gauss array, result.
@param[in] dhl Direction helper list.
******************************************************************************************************/
oarrm1n20_t   feoarrm1n20_get_item_k(  feoarrm1n20_t* arr, uint64_t k);
feonumm1n20_t  feoarrm1n20_get_item_ij( feoarrm1n20_t* arr, uint64_t i, uint64_t j);
onumm1n20_t feoarrm1n20_get_item_ijk(feoarrm1n20_t* arr, uint64_t i, uint64_t j, uint64_t k);

void feoarrm1n20_get_item_ij_to(  feoarrm1n20_t* arr, uint64_t i, uint64_t j, 
                               feonumm1n20_t* res);

void feoarrm1n20_get_item_k_to(   feoarrm1n20_t* arr, uint64_t k, 
                                oarrm1n20_t* res);

void feoarrm1n20_get_item_ijk_to( feoarrm1n20_t* arr, uint64_t i, uint64_t j, uint64_t k, 
                              onumm1n20_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Get slice from feoarrm1n20 object.

@param[in]    arr    array to get slice.
@param[in]    starti Starting row index.
@param[in]    stopi  Final row index.
@param[in]    stepi  Row step.
@param[in]    startj Starting column index.
@param[in]    stopj  Final column index.
@param[in]    stepj  Column step.
@param[inout] res    Address of the result holder (if any)
@param[in]    dhl    Direction helper list object.
******************************************************************************************************/ 
feoarrm1n20_t feoarrm1n20_get_slice(feoarrm1n20_t* arr, 
                          int64_t starti, int64_t stopi, int64_t stepi,
                          int64_t startj, int64_t stopj, int64_t stepj);

void      feoarrm1n20_get_slice_to(feoarrm1n20_t* arr, 
                          int64_t starti, int64_t stopi, int64_t stepi,
                          int64_t startj, int64_t stopj, int64_t stepj, 
                          feoarrm1n20_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Item setters

@param[in] elm   Element to set
@param[in] i     Row.
@param[in] j     Column.
@param[in] k     Integration point.
@param[in] dhl   Direction helper list.
******************************************************************************************************/
void feoarrm1n20_set_item_ij_r(   coeff_t  elm, uint64_t i, uint64_t j,
                            feoarrm1n20_t* res);

void feoarrm1n20_set_item_ij_o(  onumm1n20_t* elm, uint64_t i, uint64_t j,
                             feoarrm1n20_t* res);

void feoarrm1n20_set_item_ij_f(  feonumm1n20_t* elm, uint64_t i, uint64_t j,
                            feoarrm1n20_t* res);

void feoarrm1n20_set_item_k_r(    coeff_t  elm, uint64_t k, 
                            feoarrm1n20_t* res);

void feoarrm1n20_set_item_k_o(  onumm1n20_t* elm, uint64_t k, 
                            feoarrm1n20_t* res);

void feoarrm1n20_set_item_k_R(    oarrm1n20_t* elm, uint64_t k, 
                          feoarrm1n20_t* res);

void feoarrm1n20_set_item_k_O(    oarrm1n20_t* elm, uint64_t k, 
                          feoarrm1n20_t* res);

void feoarrm1n20_set_item_ijk_r(   coeff_t  elm, uint64_t i, uint64_t j, uint64_t k, 
                             feoarrm1n20_t* res);

void feoarrm1n20_set_item_ijk_o( onumm1n20_t* elm, uint64_t i, uint64_t j, uint64_t k, 
                             feoarrm1n20_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Set slice to feoarrm1n20 object.

@param[in]    val    Value to set in res array.
@param[in]    starti Starting row index.
@param[in]    stopi  Final row index.
@param[in]    stepi  Row step.
@param[in]    startj Starting column index.
@param[in]    stopj  Final column index.
@param[in]    stepj  Column step.
@param[inout] res    Address of the result holder
@param[in]    dhl    Direction helper list object.
******************************************************************************************************/ 
void feoarrm1n20_set_slice_r( coeff_t val, 
                         int64_t starti, int64_t stopi, int64_t stepi,
                         int64_t startj, int64_t stopj, int64_t stepj,
                          feoarrm1n20_t* res);
void feoarrm1n20_set_slice_o( onumm1n20_t* val, 
                         int64_t starti, int64_t stopi, int64_t stepi,
                         int64_t startj, int64_t stopj, int64_t stepj,
                          feoarrm1n20_t* res);
void feoarrm1n20_set_slice_f( feonumm1n20_t* val, 
                         int64_t starti, int64_t stopi, int64_t stepi,
                         int64_t startj, int64_t stopj, int64_t stepj,
                          feoarrm1n20_t* res);
void feoarrm1n20_set_slice_O( oarrm1n20_t* val, 
                         int64_t starti, int64_t stopi, int64_t stepi,
                         int64_t startj, int64_t stopj, int64_t stepj,
                          feoarrm1n20_t* res);
void feoarrm1n20_set_slice_F( feoarrm1n20_t* val, 
                         int64_t starti, int64_t stopi, int64_t stepi,
                         int64_t startj, int64_t stopj, int64_t stepj,
                          feoarrm1n20_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Broadcasted setter.

@param[in]
@param[in] dhl Direction helper list.
******************************************************************************************************/
void feoarrm1n20_set_all_o( onumm1n20_t* num, feoarrm1n20_t* arr );
void feoarrm1n20_set_all_r(   coeff_t  num, feoarrm1n20_t* arr );
void feoarrm1n20_set_all_f(  feonumm1n20_t* num, feoarrm1n20_t* arr );

void feoarrm1n20_set_r(    coeff_t src, feoarrm1n20_t* res );
void feoarrm1n20_set_o( onumm1n20_t* src, feoarrm1n20_t* res );
void feoarrm1n20_set_f(  feonumm1n20_t* src, feoarrm1n20_t* res );

void feoarrm1n20_set_R(    darr_t* src, feoarrm1n20_t* res );
void feoarrm1n20_set_O(   oarrm1n20_t* src, feoarrm1n20_t* res );
void feoarrm1n20_set_F( feoarrm1n20_t* src, feoarrm1n20_t* res );

// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Create a gauss array as the identity matrix.

@param[in] size     Size of the matrix (final shape: <size,size>)
@param[in] offsetx  Offset in the row direction.
@param[in] offsety  Offset in the column direction.
@param[in] nIntPts  Number of integration points.
@param[in] nbases   Number of imaginary basis.
@param[in] order    Truncation order of the number.
@param[in] dhl      Direction helper list.
******************************************************************************************************/
feoarrm1n20_t feoarrm1n20_eye( uint64_t size,  uint64_t nip);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Create a gauss array of Zeros.

@param[in] nrows    Number of rows
@param[in] ncols    Number of columns
@param[in] offsetx  Offset in the row direction.
@param[in] offsety  Offset in the column direction.
@param[in] nIntPts  Number of integration points.
@param[in] nbases   Number of imaginary basis.
@param[in] order    Truncation order of the number.
@param[in] dhl      Direction helper list.
******************************************************************************************************/
feoarrm1n20_t feoarrm1n20_zeros(  uint64_t nrows,   uint64_t ncols, uint64_t nip    );
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Create a gauss array of ones.

@param[in] nrows    Number of rows
@param[in] ncols    Number of columns
@param[in] offsetx  Offset in the row direction.
@param[in] offsety  Offset in the column direction.
@param[in] nIntPts  Number of integration points.
@param[in] nbases   Number of imaginary basis.
@param[in] order    Truncation order of the number.
@param[in] dhl      Direction helper list.
******************************************************************************************************/
feoarrm1n20_t feoarrm1n20_ones( uint64_t nrows,   uint64_t ncols, uint64_t nip     );
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Create an empty gauss object.

@param[in] nrows    Number of rows
@param[in] ncols    Number of columns
@param[in] offsetx  Offset in the row direction.
@param[in] offsety  Offset in the column direction.
@param[in] nIntPts  Number of integration points.
@param[in] nbases   Number of imaginary basis.
@param[in] order    Truncation order of the number.
@param[in] dhl      Direction helper list.
******************************************************************************************************/
feoarrm1n20_t feoarrm1n20_createEmpty( uint64_t nrows,   uint64_t ncols, uint64_t nIntPts);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Free memory of Gauss array.

@param[in] arr. Gauss array to free memory.
******************************************************************************************************/
void feoarrm1n20_free(feoarrm1n20_t* arr);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Initialization of Gauss array

******************************************************************************************************/
feoarrm1n20_t feoarrm1n20_init(void);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Get the max trunctation order of the OTI structure.

@param[in] arr. Gauss array.
@param[in] dhl. Direction helper list.
@param[out] ord. Maximum truncation order.
******************************************************************************************************/
ord_t feoarrm1n20_get_order(feoarrm1n20_t* arr);
// ----------------------------------------------------------------------------------------------------

#endif