// typedef struct{
//     onumm8n2_t*  p_data;   ///< Data array
//     uint64_t    nip;  ///< Number of integration points.
// } feonumm8n2_t;

// ****************************************************************************************************
ord_t feonumm8n2_get_order( feonumm8n2_t* num ){
    
    ord_t order = 0;
    uint64_t i;

    // Finds the maximum order in the array.
    for( i = 0; i<num->nip; i++ ){
        
        order = MAX(order, onumm8n2_get_order(&num->p_data[i]) );
    
    }

    return order;
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_get_order_im_to( ord_t order, feonumm8n2_t* num, feonumm8n2_t* res){
    
    uint64_t k;

    feonumm8n2_dimCheck(num,res);

    for (k = 0; k<num->nip; k++ ){
        
        onumm8n2_get_order_im_to( order, &num->p_data[k], &res->p_data[k]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm8n2_t feonumm8n2_get_order_im( ord_t order, feonumm8n2_t* num){
    
    feonumm8n2_t res;

    res = feonumm8n2_zeros( num->nip);

    feonumm8n2_get_order_im_to( order, num, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_extract_im_to( imdir_t idx, ord_t order, feonumm8n2_t* num, feonumm8n2_t* res){
    
    uint64_t k;

    feonumm8n2_dimCheck(num,res);

    for (k = 0; k<num->nip; k++ ){
        
        onumm8n2_extract_im_to( idx, order, &num->p_data[k], &res->p_data[k]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm8n2_t feonumm8n2_extract_im( imdir_t idx, ord_t order, feonumm8n2_t* num){
    
    feonumm8n2_t res;

    res = feonumm8n2_zeros( num->nip);

    feonumm8n2_extract_im_to( idx, order, num, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_extract_deriv_to( imdir_t idx, ord_t order, feonumm8n2_t* num, feonumm8n2_t* res){
    
    uint64_t k;

    feonumm8n2_dimCheck(num,res);

    for (k = 0; k<num->nip; k++ ){
        
        onumm8n2_extract_deriv_to( idx, order, &num->p_data[k], &res->p_data[k]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm8n2_t feonumm8n2_extract_deriv( imdir_t idx, ord_t order, feonumm8n2_t* num){
    
    feonumm8n2_t res;

    res = feonumm8n2_zeros( num->nip);

    feonumm8n2_extract_deriv_to( idx, order, num, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_get_deriv_to( imdir_t idx, ord_t order, feonumm8n2_t* num, feonumm8n2_t* res){
    
    uint64_t k;

    feonumm8n2_dimCheck(num,res);

    for (k = 0; k<num->nip; k++ ){
        
        onumm8n2_get_deriv_to( idx, order, &num->p_data[k], &res->p_data[k]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm8n2_t feonumm8n2_get_deriv( imdir_t idx, ord_t order, feonumm8n2_t* num){
    
    feonumm8n2_t res;

    res = feonumm8n2_zeros( num->nip);

    feonumm8n2_get_deriv_to( idx, order, num, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_get_im_to( imdir_t idx, ord_t order, feonumm8n2_t* num, feonumm8n2_t* res){
    
    uint64_t k;

    feonumm8n2_dimCheck(num,res);

    for (k = 0; k<num->nip; k++ ){
        
        onumm8n2_get_im_to_o( idx, order, &num->p_data[k], &res->p_data[k]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm8n2_t feonumm8n2_get_im( imdir_t idx, ord_t order, feonumm8n2_t* num){
    
    feonumm8n2_t res;

    res = feonumm8n2_zeros( num->nip);

    feonumm8n2_get_im_to( idx, order, num, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_truncate_im_to( imdir_t idx, ord_t order, feonumm8n2_t* num,  feonumm8n2_t* res){
    
    uint64_t k;

    feonumm8n2_dimCheck(num,res);

    for (k = 0; k<num->nip; k++ ){
        
        onumm8n2_truncate_im_to( idx, order, &num->p_data[k], &res->p_data[k]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm8n2_t feonumm8n2_truncate_im( imdir_t idx, ord_t order, feonumm8n2_t* num){
    
    feonumm8n2_t res;

    res = feonumm8n2_zeros( num->nip);

    feonumm8n2_truncate_im_to( idx, order, num, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_set_im_r( coeff_t val, imdir_t idx, ord_t order, feonumm8n2_t* num){
    
    uint64_t k;

    for (k = 0; k<num->nip; k++ ){
        
        onumm8n2_set_im_r( val, idx, order, &num->p_data[k]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_set_im_o( onumm8n2_t* val, imdir_t idx, ord_t order, feonumm8n2_t* num){
    
    uint64_t k;

    for (k = 0; k<num->nip; k++ ){
        
        onumm8n2_set_im_o( val, idx, order, &num->p_data[k]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_set_im_f( feonumm8n2_t* val, imdir_t idx, ord_t order, feonumm8n2_t* num){
    
    uint64_t k;

    feonumm8n2_dimCheck(val,num);

    for (k = 0; k<num->nip; k++ ){
        
        onumm8n2_set_im_o( &val->p_data[k], idx, order, &num->p_data[k]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_set_deriv_r( coeff_t val, imdir_t idx, ord_t order, feonumm8n2_t* num){
    
    uint64_t k;

    for (k = 0; k<num->nip; k++ ){
        
        onumm8n2_set_deriv_r( val, idx, order, &num->p_data[k]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_set_deriv_o( onumm8n2_t* val, imdir_t idx, ord_t order, feonumm8n2_t* num){
    
    uint64_t k;

    for (k = 0; k<num->nip; k++ ){
        
        onumm8n2_set_deriv_o( val, idx, order, &num->p_data[k]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_set_deriv_f( feonumm8n2_t* val, imdir_t idx, ord_t order, feonumm8n2_t* num){
    
    uint64_t k;

    feonumm8n2_dimCheck(val,num);

    for (k = 0; k<num->nip; k++ ){
        
        onumm8n2_set_deriv_o( &val->p_data[k], idx, order, &num->p_data[k]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_set_to( feonumm8n2_t* src, feonumm8n2_t* dst){
    
    uint64_t i;

    feonumm8n2_dimCheck(src,dst);

    for (i = 0; i<src->nip; i++ ){
        
        onumm8n2_copy_to( &src->p_data[i], &dst->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm8n2_t feonumm8n2_copy( feonumm8n2_t* src){
    
    feonumm8n2_t res = feonumm8n2_init();

    res = feonumm8n2_createEmpty(src->nip);

    feonumm8n2_copy_to( src, &res);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_copy_to( feonumm8n2_t* src, feonumm8n2_t* dst){
    
    uint64_t i;

    feonumm8n2_dimCheck(src,dst);

    for (i = 0; i<src->nip; i++ ){
        
        onumm8n2_copy_to( &src->p_data[i], &dst->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_set_f( feonumm8n2_t* num, feonumm8n2_t* res){
    
    feonumm8n2_copy_to(num,res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_set_o( onumm8n2_t* num, feonumm8n2_t* res){
    
    uint64_t i;

    for (i = 0; i<res->nip; i++ ){
        
        onumm8n2_set_o( num, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_set_r( coeff_t num, feonumm8n2_t* res){
    
    uint64_t i;

    for (i = 0; i<res->nip; i++ ){
        
        onumm8n2_set_r( num, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_set_item_k_o( onumm8n2_t* num, uint64_t k, feonumm8n2_t* res){
    
    if (k < res->nip){

        onumm8n2_set_o(num, &res->p_data[k]); 

    } else {

        printf("ERROR: Index out of bounds in feonumm8n2_get_item_k.\n");
        exit(OTI_BadIndx); // TODO: Raise error instead of quitting the program.

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_set_item_k_r(   coeff_t  num, uint64_t k, feonumm8n2_t* res){

    if (k < res->nip){

        onumm8n2_set_r(num, &res->p_data[k]); 

    } else {

        printf("ERROR: Index out of bounds in feonumm8n2_get_item_k.\n");
        exit(OTI_BadIndx); // TODO: Raise error instead of quitting the program.

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm8n2_t feonumm8n2_get_item_k(feonumm8n2_t* num, uint64_t k){

    onumm8n2_t  res ;
    
    // TODO: Check dimensions
    
    if (k < num->nip){

        res = num->p_data[k];

    } else {

        printf("ERROR: Index out of bounds in feonumm8n2_get_item_k.\n");
        exit(OTI_BadIndx); // TODO: Raise error instead of quitting the program.

    }

    // This is returned uninitialized.
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_get_item_k_to(feonumm8n2_t* num, uint64_t k, onumm8n2_t* res){
    
    
    if (k < num->nip){

        onumm8n2_copy_to( &num->p_data[k], res);

    } else {

        printf("ERROR: Index out of bounds in feonumm8n2_get_item_k.\n");
        exit(OTI_BadIndx); // TODO: Raise error instead of quitting the program.

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm8n2_t feonumm8n2_zeros(uint64_t nip){

    feonumm8n2_t  res  = feonumm8n2_createEmpty(nip);
    
    feonumm8n2_set_r( 0.0, &res);

    // This is returned uninitialized.
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline feonumm8n2_t feonumm8n2_createEmpty(uint64_t nip){

    feonumm8n2_t  res ;  
    void * memory = NULL;

    // Allocate memory and check if correctly allocated.
    memory = malloc( nip * sizeof( onumm8n2_t ) );

    if ( memory == NULL ){
        printf("ERROR: Not enough memory to handle array of feonumm8n2.\n Exiting...\n");
        exit(OTI_OutOfMemory); // TODO: Raise error instead of quitting the program.
    }
    
    res.p_data = ( onumm8n2_t* ) memory;
    res.nip = nip;

    // This is returned uninitialized.
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm8n2_free(feonumm8n2_t* num){

    // Free all memory within each coefficient in p_array

    if (num->p_data != NULL){
        // Free pointer 
        free(num->p_data);
    }

    *num = feonumm8n2_init();
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline feonumm8n2_t feonumm8n2_init(void){
    
    feonumm8n2_t res;
    
    res.p_data  = NULL;    
    res.nip = 0;

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline feonumm8n2_t feonumm8n2_empty_like(feonumm8n2_t* arr){

    feonumm8n2_t res = feonumm8n2_createEmpty(arr->nip);

    return res;

}
// ----------------------------------------------------------------------------------------------------

