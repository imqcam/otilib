
uint8_t soti_requiresrealloc(sotinum_t* src, sotinum_t* dest);
sotinum_t soti_init(void);

/**************************************************************************************************//**
@brief Copy information from src to dest. Does not check if memory needs to be reallocated.
Useful when copying data to a temporal sotinum.

@param[in] src  Oti number.
@param[in] dest Oti number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/
void soti_set( sotinum_t* src, sotinum_t* dest, dhelpl_t dhl);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Copy information from src to dest only with orders ord or greater. Does not check if memory 
needs to be reallocated. Useful when copying data to a temporal sotinum.

@param[in] src Oti number.
@param[in] ord Order.
@param[in] dest Oti number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/
void soti_set_trunc( sotinum_t* src, ord_t ord, sotinum_t* dest, dhelpl_t dhl);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Set a sparse otinum from a real number. Does not check if memory needs to be reallocated.
Useful when setting data to a temporal sotinum.

@param[in] a real number to be set.
@param[in] num Oti number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
void soti_setFromReal( coeff_t a, sotinum_t* num, dhelpl_t dhl);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief  Get the derivative corresponding to the index and order.

@param[in] idx Number of imaginary bases.
@param[in] order Truncation order of the number.
@param[in] num Address of the otin number to be modified.    
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
coeff_t soti_get_deriv( imdir_t idx, ord_t order, sotinum_t* num, dhelpl_t dhl);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Generate a temporal sparse otinum with the allocated data in the direction helper.

@param[in] ntmp Number of temporal array to be retreived.
@param[in] order Truncation order.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
sotinum_t soti_get_tmp(ndir_t ntmp, ord_t order, dhelpl_t dhl);
sotinum_t soti_get_rtmp(ndir_t ntmp, ord_t order, dhelpl_t dhl);
// ----------------------------------------------------------------------------------------------------



/**************************************************************************************************//**
@brief Function that inserts the corresponding value in the arrays defining the oti number. If the 
array requires reallocation, it performs the reallocation in memory. This function preserves the order
of the indices.

@param[in] val Value to be set.
@param[in] idx Index of the imaginary direction
@param[in] order Order that defines the imaginary direction.
@param[inout] num OTI number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
void soti_insert_item(ndir_t pos, coeff_t val, imdir_t idx, ord_t order, sotinum_t* num, dhelpl_t dhl);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Function that sets the specified item value.

@param[in] val Value to be set.
@param[in] idx Index of the imaginary direction
@param[in] order Order that defines the imaginary direction.
@param[inout] num OTI number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
void soti_set_item(coeff_t val, imdir_t idx, ord_t order, sotinum_t* num, dhelpl_t dhl);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Function that gets the specified item value.

@param[in] idx Index of the imaginary direction
@param[in] order Order that defines the imaginary direction.
@param[in] num OTI number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
coeff_t soti_get_item(imdir_t idx, ord_t order, sotinum_t* num, dhelpl_t dhl);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Copy to another (new) sparse oti elements.

@param[in] num OTI number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
sotinum_t soti_copy(sotinum_t* num, dhelpl_t dhl);
void soti_copy_to(sotinum_t* src, sotinum_t* dest, dhelpl_t dhl);
// ----------------------------------------------------------------------------------------------------


/**************************************************************************************************//**
@brief Print function for oti numbers

@param[in] num OTI number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
void soti_print(sotinum_t* num, dhelpl_t dhl);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Free memory allocated for the given OTI number.

@param[in] num OTI number.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
void soti_free(sotinum_t* num);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Create a new oti number with a real coefficient given by the input parameter and 

@param[in] num Real coefficient of the OTI number.
@param[in] order Truncation order.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
sotinum_t soti_createReal(coeff_t num, ord_t order, dhelpl_t dhl);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Allocate a new sparse oti number in memory. Creation follows the standard memory sizes as 
indicated in dhl.

The number is created with a non-zero real coefficient (which is not initialized) and the creation in 
memory of the other elements correspond to zero value coefficients in the imaginary directions.

@param[in] order Truncation order.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
sotinum_t soti_createEmpty( ord_t order, dhelpl_t dhl); 
sotinum_t soti_createEmpty_like( sotinum_t* other, dhelpl_t dhl);
// ----------------------------------------------------------------------------------------------------

/**************************************************************************************************//**
@brief Allocate a new sparse oti number in memory using a specified allocated size.

@param[in] nnz Array of length order containing the sizes per order to be allocated.
@param[in] order Truncation order.
@param[in] dhl Direction helper list object.
******************************************************************************************************/ 
sotinum_t soti_createEmpty_predef(ndir_t* p_nnz, ord_t order, dhelpl_t dhl); 
// ----------------------------------------------------------------------------------------------------
