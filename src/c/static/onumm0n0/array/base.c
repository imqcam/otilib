

// typedef struct {
//     onumm0n0_t*    p_data; ///< Pointer to array of Sparse otinums.
//     uint64_t       nrows; ///< Number of rows.
//     uint64_t       ncols; ///< Number of cols.
//     uint64_t        size; ///< Size of array.
//     flag_t          flag; ///< Memory flag.
// } oarrm0n0_t;                ///< Array of OTIs type.

// ****************************************************************************************************
void oarrm0n0_taylor_integrate_to( coeff_t* deltas, oarrm0n0_t* arr, oarrm0n0_t* res){
    
    uint64_t i;

    oarrm0n0_dimCheck_OO_elementwise(arr,res,res);

    for (i = 0; i<arr->size; i++ ){
        
        onumm0n0_taylor_integrate_to( deltas, &arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm0n0_t oarrm0n0_taylor_integrate( coeff_t* deltas, oarrm0n0_t* arr){
    
    oarrm0n0_t res;

    res = oarrm0n0_zeros( arr->nrows, arr->ncols);

    oarrm0n0_taylor_integrate_to( deltas, arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm0n0_get_order_im_to( ord_t order, oarrm0n0_t* arr, oarrm0n0_t* res){
    
    uint64_t i;

    oarrm0n0_dimCheck_OO_elementwise(arr,res,res);

    for (i = 0; i<arr->size; i++ ){
        
        onumm0n0_get_order_im_to( order, &arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm0n0_t oarrm0n0_get_order_im( ord_t order, oarrm0n0_t* arr){
    
    oarrm0n0_t res;

    res = oarrm0n0_zeros( arr->nrows, arr->ncols);

    oarrm0n0_get_order_im_to( order, arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm0n0_truncate_im_to( imdir_t idx, ord_t order, oarrm0n0_t* arr, oarrm0n0_t* res){
    
    uint64_t i;

    oarrm0n0_dimCheck_OO_elementwise(arr,res,res);

    for (i = 0; i<arr->size; i++ ){
        
        onumm0n0_truncate_im_to( idx, order, &arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm0n0_t oarrm0n0_truncate_im( imdir_t idx, ord_t order, oarrm0n0_t* arr){
    
    oarrm0n0_t res;

    res = oarrm0n0_zeros( arr->nrows, arr->ncols);

    oarrm0n0_truncate_im_to( idx, order, arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// Copy operations.
// ****************************************************************************************************
void oarrm0n0_copy_to(oarrm0n0_t* arr, oarrm0n0_t* res){

    uint64_t i;
    // TODO: add allocation check.
    if(res->nrows != arr->nrows || res->ncols != arr->ncols || res->size != arr->size){
        printf("ERROR: Assignment mismatch in dimensions. Check destination.\n");
        exit(OTI_undetErr);
    } 

    for (i=0; i<arr->size; i++){

        onumm0n0_copy_to(&arr->p_data[i],&res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm0n0_t oarrm0n0_copy(oarrm0n0_t* arr){

    oarrm0n0_t res = oarrm0n0_empty_like(arr);

    oarrm0n0_copy_to(arr,&res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// Setters.
// Setter by one index.

// ****************************************************************************************************
inline void oarrm0n0_set_all_r( coeff_t num, oarrm0n0_t* arr){
    
    uint64_t i;

    for (i = 0; i<arr->size; i++ ){
        oarrm0n0_set_item_i_r( num, i, arr);
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline void oarrm0n0_set_r( coeff_t num, oarrm0n0_t* arr){
    
    uint64_t i;

    for (i = 0; i<arr->size; i++ ){
        oarrm0n0_set_item_i_r( num, i, arr);
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline void oarrm0n0_set_item_i_r( coeff_t num, uint64_t i, oarrm0n0_t* arr){
        
    if( i<arr->size ){
        
        onumm0n0_set_r( num, &arr->p_data[i]);

    } else {

        // res = onumm0n0_init();
        
        printf("ERROR: Index out of bounds in oarrm0n0_get_item_i(...)\n Exiting...\n");
        exit(OTI_BadIndx);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline void oarrm0n0_set_item_ij_r( coeff_t num, uint64_t i, uint64_t j, oarrm0n0_t* arr){

    oarrm0n0_set_item_i_r( num, j + i*arr->ncols, arr);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline void oarrm0n0_set_all_o( onumm0n0_t* num, oarrm0n0_t* arr){

    uint64_t i;

    for (i = 0; i<arr->size; i++ ){
        oarrm0n0_set_item_i_o( num, i, arr);
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline void oarrm0n0_set_o( onumm0n0_t* num, oarrm0n0_t* arr){

    uint64_t i;

    for (i = 0; i<arr->size; i++ ){
        oarrm0n0_set_item_i_o( num, i, arr);
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline void oarrm0n0_set_item_i_o( onumm0n0_t* src, uint64_t i, oarrm0n0_t* arr){
    
    if (i < arr->size){

        onumm0n0_copy_to(src, &arr->p_data[i]);

    }  else {
        
        printf("ERROR: Index out of bounds in oarrm0n0_get_item_i(...)\n Exiting...\n");
        exit(OTI_BadIndx);

    }
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline void oarrm0n0_set_item_ij_o( onumm0n0_t* num, uint64_t i, uint64_t j, oarrm0n0_t* arr){

    if ( i < arr->nrows && j < arr->ncols ){

        oarrm0n0_set_item_i_o( num, j + i*arr->ncols, arr);

    } else {

        printf("ERROR: Index out of bounds in oarrm0n0_get_item_ij(...)\n Exiting...\n");
        exit(OTI_BadIndx);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm0n0_set_slice_O( oarrm0n0_t* arr, 
                        int64_t starti, int64_t stopi, int64_t stepi,
                        int64_t startj, int64_t stopj, int64_t stepj,
                         oarrm0n0_t* res){

    int64_t ncols = 0, nrows = 0; // Resulting number of rows and columns
    int64_t i, j, ii, jj; 

    // Handle broadcasting?

    nrows = slice_size(starti, stopi, stepi);
    ncols = slice_size(startj, stopj, stepj);

    // printf("nrows: %lld, ncols %lld \n",nrows, ncols);

    // printf("i: (%lld, %lld, %lld) \n", starti, stopi, stepi);
    // printf("j: (%lld, %lld, %lld) \n", startj, stopj, stepj);

    // Check dimensions:
    if ( (arr->ncols != ncols) ||
         (arr->nrows != nrows)    ){

        printf("ERROR: Wrong dimensions for input array.\n");
        exit(OTI_BadIndx);

    }
    
    ii = starti;
    
    for ( i = 0; i < nrows; i++){

        jj = startj;
        
        for ( j = 0; j < ncols; j++){

            // printf("Setting result ( i, j) (%lld,%lld) from source (ii,jj) (%lld,%lld) \n", i, j, ii, jj);
            // printf("( i, j) (%lld,%lld) equates: %lld\n",  i,  j,  j +  i * res->ncols );
            // printf("(ii,jj) (%lld,%lld) equates: %lld\n", ii, jj, jj + ii * arr->ncols );

            onumm0n0_copy_to( &arr->p_data[  j +  i * arr->ncols ], 
                          &res->p_data[ jj + ii * res->ncols ]);

            jj += stepj;
        
        }   

        ii += stepi;

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm0n0_set_slice_o( onumm0n0_t* num, 
                        int64_t starti, int64_t stopi, int64_t stepi,
                        int64_t startj, int64_t stopj, int64_t stepj,
                         oarrm0n0_t* res){

    int64_t ncols = 0, nrows = 0; // Resulting number of rows and columns
    int64_t i, j, ii, jj; 

    // Handle broadcasting?
    nrows = slice_size(starti, stopi, stepi);
    ncols = slice_size(startj, stopj, stepj);

    // Check dimensions:
    if ( (res->ncols < ncols) ||
         (res->nrows < nrows)    ){

        printf("ERROR: Wrong dimensions resulting slicing array.\n");
        exit(OTI_BadIndx);

    }
    
    ii = starti;
    
    for ( i = 0; i < nrows; i++){

        jj = startj;
        
        for ( j = 0; j < ncols; j++){

            onumm0n0_set_o( num, 
                       &res->p_data[ jj + ii * res->ncols ]);

            jj += stepj;
        
        }   

        ii += stepi;

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm0n0_set_slice_r( coeff_t val, 
                        int64_t starti, int64_t stopi, int64_t stepi,
                        int64_t startj, int64_t stopj, int64_t stepj,
                         oarrm0n0_t* res){

    int64_t ncols = 0, nrows = 0; // Resulting number of rows and columns
    int64_t i, j, ii, jj; 

    // Handle broadcasting?

    nrows = slice_size(starti, stopi, stepi);
    ncols = slice_size(startj, stopj, stepj);

    // printf("nrows: %lld, ncols %lld \n",nrows, ncols);

    // printf("i: (%lld, %lld, %lld) \n", starti, stopi, stepi);
    // printf("j: (%lld, %lld, %lld) \n", startj, stopj, stepj);

    // Check dimensions:
    if ( (res->ncols < ncols) ||
         (res->nrows < nrows)    ){

        printf("ERROR: Wrong dimensions resulting slicing array.\n");
        exit(OTI_BadIndx);

    }
    
    ii = starti;
    
    for ( i = 0; i < nrows; i++){

        jj = startj;
        
        for ( j = 0; j < ncols; j++){

            // printf("Setting result ( i, j) (%lld,%lld) from source (ii,jj) (%lld,%lld) \n", i, j, ii, jj);
            // printf("( i, j) (%lld,%lld) equates: %lld\n",  i,  j,  j +  i * res->ncols );
            // printf("(ii,jj) (%lld,%lld) equates: %lld\n", ii, jj, jj + ii * arr->ncols );

            onumm0n0_set_r( val, 
                        &res->p_data[ jj + ii * res->ncols ]);

            jj += stepj;
        
        }   

        ii += stepi;

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm0n0_set_O( oarrm0n0_t* arrin, oarrm0n0_t* arr){

    oarrm0n0_copy_to( arrin, arr);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
darr_t oarrm0n0_get_im(imdir_t idx, ord_t order, oarrm0n0_t* arr){
    
    darr_t res = darr_zeros( arr->nrows, arr->ncols);
    uint64_t i;
    
    for( i = 0; i < arr->size ; i++ ){
        
        darr_set_item_i(  
            onumm0n0_get_item( idx, order, &arr->p_data[i]), 
            i, &res);

    }

    return res;
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm0n0_t oarrm0n0_extract_im(imdir_t idx, ord_t order, oarrm0n0_t* arr){
    
    oarrm0n0_t res = oarrm0n0_zeros( arr->nrows, arr->ncols);
    
    oarrm0n0_extract_im_to( idx, order, arr, &res);

    return res;
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm0n0_extract_im_to(imdir_t idx, ord_t order, oarrm0n0_t* arr, oarrm0n0_t* res){
    
    uint64_t i;
    
    // Check first dimensions.
    oarrm0n0_dimCheck_OO_elementwise(arr,arr,res);

    for( i = 0; i < arr->size ; i++ ){
                
        onumm0n0_extract_im_to( idx, order, &arr->p_data[i], &res->p_data[i]);

    }
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
darr_t oarrm0n0_get_deriv(imdir_t idx, ord_t order, oarrm0n0_t* arr){
    
    darr_t res = darr_zeros( arr->nrows, arr->ncols);
    uint64_t i;
    
    for( i = 0; i < arr->size ; i++ ){
        
        darr_set_item_i(  
            onumm0n0_get_deriv( idx, order, &arr->p_data[i]), 
            i, &res);

    }

    return res;
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm0n0_t oarrm0n0_get_im_o(imdir_t idx, ord_t order, oarrm0n0_t* arr){
    
    oarrm0n0_t res = oarrm0n0_zeros( arr->nrows, arr->ncols);
    
    oarrm0n0_get_im_to( idx, order, arr, &res);

    return res;
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm0n0_get_im_to(imdir_t idx, ord_t order, oarrm0n0_t* arr, oarrm0n0_t* res){
    
    uint64_t i;
    
    // Check first dimensions.
    oarrm0n0_dimCheck_OO_elementwise(arr,arr,res);

    for( i = 0; i < arr->size ; i++ ){
        
        onumm0n0_get_im_to_o( idx, order, &arr->p_data[i], &res->p_data[i]);

    }
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm0n0_t oarrm0n0_get_deriv_o(imdir_t idx, ord_t order, oarrm0n0_t* arr){
    
    oarrm0n0_t res = oarrm0n0_zeros( arr->nrows, arr->ncols);
    
    oarrm0n0_get_deriv_to( idx, order, arr, &res);

    return res;
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm0n0_get_deriv_to(imdir_t idx, ord_t order, oarrm0n0_t* arr, oarrm0n0_t* res){
    
    uint64_t i;
    
    // Check first dimensions.
    oarrm0n0_dimCheck_OO_elementwise(arr,arr,res);

    for( i = 0; i < arr->size ; i++ ){
        
        onumm0n0_get_deriv_to( idx, order, &arr->p_data[i], &res->p_data[i]);

    }
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm0n0_t oarrm0n0_extract_deriv(imdir_t idx, ord_t order, oarrm0n0_t* arr){
    
    oarrm0n0_t res = oarrm0n0_zeros( arr->nrows, arr->ncols);
    
    oarrm0n0_extract_deriv_to( idx, order, arr, &res);

    return res;
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm0n0_extract_deriv_to(imdir_t idx, ord_t order, oarrm0n0_t* arr, oarrm0n0_t* res){
    
    uint64_t i;
    
    // Check first dimensions.
    oarrm0n0_dimCheck_OO_elementwise(arr,arr,res);

    for( i = 0; i < arr->size ; i++ ){
                
        onumm0n0_extract_deriv_to( idx, order, &arr->p_data[i], &res->p_data[i]);

    }
    
}
// ----------------------------------------------------------------------------------------------------

// Getters.
// ****************************************************************************************************
inline onumm0n0_t oarrm0n0_get_item_i(oarrm0n0_t* arr, uint64_t i){
    
    onumm0n0_t res;

    // Check boundness
    if (i < arr->size){

        res = arr->p_data[i];
        
    } else {

        // res = onumm0n0_init();
        
        printf("ERROR: Index out of bounds in oarrm0n0_get_item_i(...)\n Exiting...\n");
        exit(OTI_BadIndx);

    }

    return res;
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm0n0_t oarrm0n0_get_item_ij(oarrm0n0_t* arr, uint64_t i, uint64_t j){

    onumm0n0_t res = oarrm0n0_get_item_i(arr, j + i*arr->ncols );

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm0n0_get_item_i_to(oarrm0n0_t* arr, uint64_t i, onumm0n0_t* res){
    
    // Check boundness
    if (i < arr->size){

        onumm0n0_copy_to( &arr->p_data[i], res);
        
    } else {
        // Raise error?
        printf("ERROR: Index out of bounds in oarrm0n0_get_item_i_to(...)\n");
        exit(OTI_BadIndx);
    }
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm0n0_get_item_ij_to(oarrm0n0_t* arr, uint64_t i, uint64_t j, onumm0n0_t* res){

    oarrm0n0_get_item_i_to(arr, j + i*arr->ncols, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm0n0_t oarrm0n0_get_slice( oarrm0n0_t* arr, 
                        int64_t starti, int64_t stopi, int64_t stepi,
                        int64_t startj, int64_t stopj, int64_t stepj){

    uint64_t ncols, nrows; // Resulting number of rows and columns
    oarrm0n0_t res = oarrm0n0_init();

    nrows = slice_size(starti, stopi, stepi);
    ncols = slice_size(startj, stopj, stepj);
    
    res = oarrm0n0_zeros( nrows, ncols);

    oarrm0n0_get_slice_to( arr, starti, stopi, stepi, startj, stopj, stepj, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm0n0_get_slice_to( oarrm0n0_t* arr, 
                        int64_t starti, int64_t stopi, int64_t stepi,
                        int64_t startj, int64_t stopj, int64_t stepj,
                         oarrm0n0_t* res){

    int64_t ncols = 0, nrows = 0; // Resulting number of rows and columns
    int64_t i, j, ii, jj; 

    // Handle broadcasting?

    nrows = slice_size(starti, stopi, stepi);
    ncols = slice_size(startj, stopj, stepj);

    // Check dimensions:
    if ( (res->ncols != ncols) || (res->nrows != nrows) ){

        printf("ERROR: Wrong dimensions resulting slicing array.\n");
        exit(OTI_BadIndx);

    }
    
    ii = starti;
    
    for ( i = 0; i < nrows; i++){

        jj = startj;
        
        for ( j = 0; j < ncols; j++){

            // printf("Setting result ( i, j) (%lld,%lld) from source (ii,jj) (%lld,%lld) \n", i, j, ii, jj);
            // printf("( i, j) (%lld,%lld) equates: %lld\n",  i,  j,  j +  i * res->ncols );
            // printf("(ii,jj) (%lld,%lld) equates: %lld\n", ii, jj, jj + ii * arr->ncols );

            onumm0n0_copy_to( &arr->p_data[ jj + ii * arr->ncols ], 
                          &res->p_data[  j +  i * res->ncols ]);

            jj += stepj;
        
        }   

        ii += stepi;

    }

}
// ----------------------------------------------------------------------------------------------------

// Memory management.

// ****************************************************************************************************
oarrm0n0_t oarrm0n0_eye(uint64_t nrows){

    oarrm0n0_t  res;
    uint64_t i;

    res = oarrm0n0_zeros( nrows, nrows);
    
    for (i=0; i<res.nrows; i++ ){
        res.p_data[ i + i*res.ncols ].r = 1.0;
    }
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm0n0_t oarrm0n0_ones(uint64_t nrows, uint64_t ncols){

    oarrm0n0_t  res;
    uint64_t i;
    
    res = oarrm0n0_createEmpty(nrows, ncols);

    for (i=0; i<res.size; i++ ){
        onumm0n0_set_r(1.0,&res.p_data[i]);
    }
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
oarrm0n0_t oarrm0n0_zeros(uint64_t nrows, uint64_t ncols){
    
    oarrm0n0_t  res;
    uint64_t i;
    
    res = oarrm0n0_createEmpty(nrows, ncols);
    
    for (i=0; i<res.size; i++ ){
        onumm0n0_set_r(0.0,&res.p_data[i]);
    }
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline oarrm0n0_t oarrm0n0_empty_like(oarrm0n0_t* arr){

    oarrm0n0_t  res;
    
    res = oarrm0n0_createEmpty(arr->nrows, arr->ncols);    

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline oarrm0n0_t oarrm0n0_createEmpty(uint64_t nrows, uint64_t ncols){

    oarrm0n0_t  res ;
    uint64_t size = nrows * ncols;

    res.p_data = (onumm0n0_t*) malloc( size * sizeof( onumm0n0_t ) );

    if ( res.p_data == NULL ){
        printf("ERROR: Not enough memory to handle oarrm0n0.\n Exiting...\n");
        exit(OTI_OutOfMemory);
    }

    res.ncols = ncols;
    res.nrows = nrows;
    res.size  = size;

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm0n0_free(oarrm0n0_t* arr){

    if ( (arr->flag != 0) && (arr->p_data!= NULL) ){
        
        free(arr->p_data);

    }

    (*arr) = oarrm0n0_init();

}
// ----------------------------------------------------------------------------------------------------

// Initialization
// ****************************************************************************************************
inline oarrm0n0_t oarrm0n0_init(void){

    oarrm0n0_t res;

    res.p_data = NULL;
    res.nrows = 0;
    res.ncols = 0;
    res.size  = 0;
    res.flag  = 0;

    return res;

}
// ----------------------------------------------------------------------------------------------------