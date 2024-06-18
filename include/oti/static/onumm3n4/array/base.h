#ifndef OTI_ONUMM3N4_ARRAY_BASE_H
#define OTI_ONUMM3N4_ARRAY_BASE_H

/**************************************************************************************************//**
@brief Perform taylor series evaluation given the array of deltas..

@param[in]    deltas Array of delta values for every imaginary basis.
@param[in]    arr    Address of array from which to get data.
@param[inout] res    Address of the result holder
@param[in]    dhl    Direction helper list object.
******************************************************************************************************/ 
void    oarrm3n4_taylor_integrate_to( coeff_t* deltas, oarrm3n4_t* arr, oarrm3n4_t* res);
oarrm3n4_t oarrm3n4_taylor_integrate(    coeff_t* deltas, oarrm3n4_t* arr);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Get all imaginary coefficients of given order in oarrm3n4 object.

@param[in]    order  Order to get data from.
@param[in]    arr    Address of array from which to get data.
@param[inout] res    Address of the result holder
@param[in]    dhl    Direction helper list object.
******************************************************************************************************/ 
void    oarrm3n4_get_order_im_to( ord_t order, oarrm3n4_t* arr, oarrm3n4_t* res);
oarrm3n4_t oarrm3n4_get_order_im(    ord_t order, oarrm3n4_t* arr);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Set slice to oarrm3n4 object.

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
void oarrm3n4_set_slice_r( coeff_t val, 
                        int64_t starti, int64_t stopi, int64_t stepi,
                        int64_t startj, int64_t stopj, int64_t stepj,
                         oarrm3n4_t* res);
void oarrm3n4_set_slice_O( oarrm3n4_t* val, 
                        int64_t starti, int64_t stopi, int64_t stepi,
                        int64_t startj, int64_t stopj, int64_t stepj,
                         oarrm3n4_t* res);
void oarrm3n4_set_slice_o( onumm3n4_t* val, 
                        int64_t starti, int64_t stopi, int64_t stepi,
                        int64_t startj, int64_t stopj, int64_t stepj,
                         oarrm3n4_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Get slice from oarrm3n4 object.

@param[in]    arr    Address of array from which to get data.
@param[in]    starti Starting row index.
@param[in]    stopi  Final row index.
@param[in]    stepi  Row step.
@param[in]    startj Starting column index.
@param[in]    stopj  Final column index.
@param[in]    stepj  Column step.
@param[inout] res    Address of the result holder
@param[in]    dhl    Direction helper list object.
******************************************************************************************************/ 
oarrm3n4_t oarrm3n4_get_slice( oarrm3n4_t* arr, 
                        int64_t starti, int64_t stopi, int64_t stepi,
                        int64_t startj, int64_t stopj, int64_t stepj);
void oarrm3n4_get_slice_to( oarrm3n4_t* arr, 
                        int64_t starti, int64_t stopi, int64_t stepi,
                        int64_t startj, int64_t stopj, int64_t stepj,
                         oarrm3n4_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Truncate imaginary direction in oarrm3n4 object.

@param[in]    idx    Imaginary index.
@param[in]    order  Order of the imaignary direction.
@param[in]    arr    Address of array from which to get data.
@param[inout] res    Address of the result holder
@param[in]    dhl    Direction helper list object.
******************************************************************************************************/ 
oarrm3n4_t oarrm3n4_truncate_im(    imdir_t idx, ord_t order, oarrm3n4_t* arr);
void    oarrm3n4_truncate_im_to( imdir_t idx, ord_t order, oarrm3n4_t* arr, oarrm3n4_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Imaignary direction extractor from oarrm3n4 object..

@param[in]    idx    Imaginary index.
@param[in]    order  Order of the imaignary direction.
@param[in]    arr    Address of array from which to get data.
@param[inout] res    Address of the result holder
@param[in]    dhl    Direction helper list object.
******************************************************************************************************/ 
oarrm3n4_t oarrm3n4_extract_im(   imdir_t idx, ord_t order, oarrm3n4_t* arr);
void    oarrm3n4_extract_im_to(imdir_t idx, ord_t order, oarrm3n4_t* arr, oarrm3n4_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Get derivative from oarrm3n4 object..

@param[in]    idx    Imaginary index.
@param[in]    order  Order of the imaignary direction.
@param[in]    arr    Address of array from which to get data.
@param[inout] res    Address of the result holder
@param[in]    dhl    Direction helper list object.
******************************************************************************************************/ 
darr_t  oarrm3n4_get_deriv(    imdir_t idx, ord_t order, oarrm3n4_t* arr);
void    oarrm3n4_get_deriv_to( imdir_t idx, ord_t order, oarrm3n4_t* arr, oarrm3n4_t* res);
oarrm3n4_t oarrm3n4_get_deriv_o(  imdir_t idx, ord_t order, oarrm3n4_t* arr);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Derivative extractor from oarrm3n4 object.

@param[in]    idx    Imaginary index.
@param[in]    order  Order of the imaignary direction.
@param[in]    arr    Address of array from which to get data.
@param[inout] res    Address of the result holder
@param[in]    dhl    Direction helper list object.
******************************************************************************************************/ 
oarrm3n4_t oarrm3n4_extract_deriv(    imdir_t idx, ord_t order, oarrm3n4_t* arr);
void    oarrm3n4_extract_deriv_to( imdir_t idx, ord_t order, oarrm3n4_t* arr, oarrm3n4_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Get imaginary direction from oarrm3n4 object..

@param[in]    idx    Imaginary index.
@param[in]    order  Order of the imaignary direction.
@param[in]    arr    Address of array from which to get data.
@param[inout] res    Address of the result holder
@param[in]    dhl    Direction helper list object.
******************************************************************************************************/ 
darr_t  oarrm3n4_get_im(   imdir_t idx, ord_t order, oarrm3n4_t* arr);
oarrm3n4_t oarrm3n4_get_im_o( imdir_t idx, ord_t order, oarrm3n4_t* arr);
void    oarrm3n4_get_im_to(imdir_t idx, ord_t order, oarrm3n4_t* arr, oarrm3n4_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Copy an existing array. Data is copied to the new memory.

@param[in] arr    Address of array from which to get data.
@param[in] dhl    Direction helper list object.
******************************************************************************************************/ 
void    oarrm3n4_copy_to(oarrm3n4_t* arr, oarrm3n4_t* res);
oarrm3n4_t oarrm3n4_copy(oarrm3n4_t* arr);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Setter functions. These functions sets the specified elements of an array given a real number.

******************************************************************************************************/ 
void oarrm3n4_set_all_r( coeff_t num, oarrm3n4_t* arr);
void oarrm3n4_set_item_i_r( coeff_t num, uint64_t i, oarrm3n4_t* arr);
void oarrm3n4_set_item_ij_r( coeff_t num, uint64_t i, uint64_t j, oarrm3n4_t* arr);
// ----------------------------------------------------------------------------------------------------

void oarrm3n4_set_r(   coeff_t  num,   oarrm3n4_t* arr);
void oarrm3n4_set_o( onumm3n4_t* num,   oarrm3n4_t* arr);
void oarrm3n4_set_O(   oarrm3n4_t* arrin, oarrm3n4_t* arr);

/**************************************************************************************************//**
@brief Setter functions. These functions sets the specified elements of an array given an OTI number.

******************************************************************************************************/ 
void oarrm3n4_set_all_o( onumm3n4_t* src, oarrm3n4_t* arr);
void oarrm3n4_set_item_i_o( onumm3n4_t* num, uint64_t i, oarrm3n4_t* arr);
void oarrm3n4_set_item_ij_o( onumm3n4_t* num, uint64_t i, uint64_t j, oarrm3n4_t* arr);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Getter functions. These functions extract a member of the array.

******************************************************************************************************/ 
onumm3n4_t oarrm3n4_get_item_i(    oarrm3n4_t* arr, uint64_t i);
void      oarrm3n4_get_item_i_to( oarrm3n4_t* arr, uint64_t i,             onumm3n4_t* res);
onumm3n4_t oarrm3n4_get_item_ij(   oarrm3n4_t* arr, uint64_t i, uint64_t j);
void      oarrm3n4_get_item_ij_to(oarrm3n4_t* arr, uint64_t i, uint64_t j, onumm3n4_t* res);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Initialization of the oarrm3n4_t type. In this case, all pointers are initialized to NULL to avoid
       unwanted segmentation faults.

       Usage is as follows:
       oarrm3n4_t myArray = oarrm3n4_init();

******************************************************************************************************/ 
oarrm3n4_t oarrm3n4_init(void);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Initialization of the oarrm3n4_t type. In this case, all pointers are initialized to NULL to avoid
       unwanted segmentation faults.

       Usage is as follows:
       oarrm3n4_t myArray = oarrm3n4_init();

******************************************************************************************************/ 
void oarrm3n4_free(oarrm3n4_t* arr);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Create an empty array similar in order, allocation size and shape from the given array.

@param[in] arr    Address of array from which to get the allocation information.
@param[in] dhl    Direction helper list object.
******************************************************************************************************/ 
oarrm3n4_t oarrm3n4_empty_like(oarrm3n4_t* arr);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Create an identity array, all zeros and diagonal all ones. All members defined as sparse oti 
       numbers. This is allocated given the number of imagianary directions per order in p_nnz.

@param[in] nrows  Number of rows of the array (This array is square).
@param[in] p_nnz  Array with the number of im dir to allocate for each order.
@param[in] order  Truncation order of the array.
@param[in] dhl    Direction helper list object.
******************************************************************************************************/ 
oarrm3n4_t oarrm3n4_eye(uint64_t nrows);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Create an array filled with ones, defined as sparse oti numbers. This is allocated given the
       number of imagianry directions per order, in p_nnz.

@param[in] nrows  Number of rows of the array.
@param[in] ncols  Number of columns of the array.
@param[in] p_nnz  Array with the number of im dir to allocate for each order.
@param[in] order  Truncation order of the array.
@param[in] dhl    Direction helper list object.
******************************************************************************************************/ 
oarrm3n4_t oarrm3n4_ones(uint64_t nrows, uint64_t ncols);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Create an array filled with zeros, defined as sparse oti numbers. This is allocated given the
       number of imagianry directions per order, in p_nnz.

@param[in] nrows  Number of rows of the array.
@param[in] ncols  Number of columns of the array.
@param[in] p_nnz  Array with the number of im dir to allocate for each order.
@param[in] order  Truncation order of the array.
@param[in] dhl    Direction helper list object.
******************************************************************************************************/ 
oarrm3n4_t oarrm3n4_zeros(uint64_t nrows, uint64_t ncols);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Create an empty array of sparse oti numbers. This is allocated given the
       number of imagianry directions per order, in p_nnz.

@param[in] nrows  Number of rows of the array.
@param[in] ncols  Number of columns of the array.
@param[in] p_nnz  Array with the number of im dir to allocate for each order.
@param[in] order  Truncation order of the array.
@param[in] dhl    Direction helper list object.
******************************************************************************************************/ 
oarrm3n4_t oarrm3n4_createEmpty(uint64_t nrows, uint64_t ncols);
// ----------------------------------------------------------------------------------------------------

#endif