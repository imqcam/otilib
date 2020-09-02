

// typedef struct {
//     mdnum1_t*    p_data; ///< Pointer to array of Sparse otinums.
//     uint64_t       nrows; ///< Number of rows.
//     uint64_t       ncols; ///< Number of cols.
//     uint64_t        size; ///< Size of array.
//     flag_t          flag; ///< Memory flag.
// } mdarr1_t;                ///< Array of OTIs type.

// ****************************************************************************************************
void mdarr1_taylor_integrate_to( coeff_t* deltas, mdarr1_t* arr, mdarr1_t* res){
    
    uint64_t i;

    mdarr1_dimCheck_OO_elementwise(arr,res,res);

    for (i = 0; i<arr->size; i++ ){
        
        mdnum1_taylor_integrate_to( deltas, &arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr1_t mdarr1_taylor_integrate( coeff_t* deltas, mdarr1_t* arr){
    
    mdarr1_t res;

    res = mdarr1_zeros( arr->nrows, arr->ncols);

    mdarr1_taylor_integrate_to( deltas, arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr1_get_order_im_to( ord_t order, mdarr1_t* arr, mdarr1_t* res){
    
    uint64_t i;

    mdarr1_dimCheck_OO_elementwise(arr,res,res);

    for (i = 0; i<arr->size; i++ ){
        
        mdnum1_get_order_im_to( order, &arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr1_t mdarr1_get_order_im( ord_t order, mdarr1_t* arr){
    
    mdarr1_t res;

    res = mdarr1_zeros( arr->nrows, arr->ncols);

    mdarr1_get_order_im_to( order, arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr1_truncate_im_to( imdir_t idx, ord_t order, mdarr1_t* arr, mdarr1_t* res){
    
    uint64_t i;

    mdarr1_dimCheck_OO_elementwise(arr,res,res);

    for (i = 0; i<arr->size; i++ ){
        
        mdnum1_truncate_im_to( idx, order, &arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr1_t mdarr1_truncate_im( imdir_t idx, ord_t order, mdarr1_t* arr){
    
    mdarr1_t res;

    res = mdarr1_zeros( arr->nrows, arr->ncols);

    mdarr1_truncate_im_to( idx, order, arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// Copy operations.
// ****************************************************************************************************
void mdarr1_copy_to(mdarr1_t* arr, mdarr1_t* res){

    uint64_t i;
    // TODO: add allocation check.
    if(res->nrows != arr->nrows || res->ncols != arr->ncols || res->size != arr->size){
        printf("ERROR: Assignment mismatch in dimensions. Check destination.\n");
        exit(OTI_undetErr);
    } 

    for (i=0; i<arr->size; i++){

        mdnum1_copy_to(&arr->p_data[i],&res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr1_t mdarr1_copy(mdarr1_t* arr){

    mdarr1_t res = mdarr1_empty_like(arr);

    mdarr1_copy_to(arr,&res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// Setters.
// Setter by one index.

// ****************************************************************************************************
inline void mdarr1_set_all_r( coeff_t num, mdarr1_t* arr){
    
    uint64_t i;

    for (i = 0; i<arr->size; i++ ){
        mdarr1_set_item_i_r( num, i, arr);
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline void mdarr1_set_r( coeff_t num, mdarr1_t* arr){
    
    uint64_t i;

    for (i = 0; i<arr->size; i++ ){
        mdarr1_set_item_i_r( num, i, arr);
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline void mdarr1_set_item_i_r( coeff_t num, uint64_t i, mdarr1_t* arr){
        
    if( i<arr->size ){
        
        mdnum1_set_r( num, &arr->p_data[i]);

    } else {

        // res = mdnum1_init();
        
        printf("ERROR: Index out of bounds in mdarr1_get_item_i(...)\n Exiting...\n");
        exit(OTI_BadIndx);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline void mdarr1_set_item_ij_r( coeff_t num, uint64_t i, uint64_t j, mdarr1_t* arr){

    mdarr1_set_item_i_r( num, j + i*arr->ncols, arr);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline void mdarr1_set_all_o( mdnum1_t* num, mdarr1_t* arr){

    uint64_t i;

    for (i = 0; i<arr->size; i++ ){
        mdarr1_set_item_i_o( num, i, arr);
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline void mdarr1_set_o( mdnum1_t* num, mdarr1_t* arr){

    uint64_t i;

    for (i = 0; i<arr->size; i++ ){
        mdarr1_set_item_i_o( num, i, arr);
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline void mdarr1_set_item_i_o( mdnum1_t* src, uint64_t i, mdarr1_t* arr){
    
    if (i < arr->size){

        mdnum1_copy_to(src, &arr->p_data[i]);

    }  else {
        
        printf("ERROR: Index out of bounds in mdarr1_get_item_i(...)\n Exiting...\n");
        exit(OTI_BadIndx);

    }
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline void mdarr1_set_item_ij_o( mdnum1_t* num, uint64_t i, uint64_t j, mdarr1_t* arr){

    if ( i < arr->nrows && j < arr->ncols ){

        mdarr1_set_item_i_o( num, j + i*arr->ncols, arr);

    } else {

        printf("ERROR: Index out of bounds in mdarr1_get_item_ij(...)\n Exiting...\n");
        exit(OTI_BadIndx);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr1_set_slice_O( mdarr1_t* arr, 
                        int64_t starti, int64_t stopi, int64_t stepi,
                        int64_t startj, int64_t stopj, int64_t stepj,
                         mdarr1_t* res){

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

            mdnum1_copy_to( &arr->p_data[  j +  i * arr->ncols ], 
                          &res->p_data[ jj + ii * res->ncols ]);

            jj += stepj;
        
        }   

        ii += stepi;

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr1_set_slice_o( mdnum1_t* num, 
                        int64_t starti, int64_t stopi, int64_t stepi,
                        int64_t startj, int64_t stopj, int64_t stepj,
                         mdarr1_t* res){

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

            mdnum1_set_o( num, 
                       &res->p_data[ jj + ii * res->ncols ]);

            jj += stepj;
        
        }   

        ii += stepi;

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr1_set_slice_r( coeff_t val, 
                        int64_t starti, int64_t stopi, int64_t stepi,
                        int64_t startj, int64_t stopj, int64_t stepj,
                         mdarr1_t* res){

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

            mdnum1_set_r( val, 
                        &res->p_data[ jj + ii * res->ncols ]);

            jj += stepj;
        
        }   

        ii += stepi;

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr1_set_O( mdarr1_t* arrin, mdarr1_t* arr){

    mdarr1_copy_to( arrin, arr);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
darr_t mdarr1_get_im(imdir_t idx, ord_t order, mdarr1_t* arr){
    
    darr_t res = darr_zeros( arr->nrows, arr->ncols);
    uint64_t i;
    
    for( i = 0; i < arr->size ; i++ ){
        
        darr_set_item_i(  
            mdnum1_get_item( idx, order, &arr->p_data[i]), 
            i, &res);

    }

    return res;
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr1_t mdarr1_extract_im(imdir_t idx, ord_t order, mdarr1_t* arr){
    
    mdarr1_t res = mdarr1_zeros( arr->nrows, arr->ncols);
    
    mdarr1_extract_im_to( idx, order, arr, &res);

    return res;
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr1_extract_im_to(imdir_t idx, ord_t order, mdarr1_t* arr, mdarr1_t* res){
    
    uint64_t i;
    
    // Check first dimensions.
    mdarr1_dimCheck_OO_elementwise(arr,arr,res);

    for( i = 0; i < arr->size ; i++ ){
                
        mdnum1_extract_im_to( idx, order, &arr->p_data[i], &res->p_data[i]);

    }
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
darr_t mdarr1_get_deriv(imdir_t idx, ord_t order, mdarr1_t* arr){
    
    darr_t res = darr_zeros( arr->nrows, arr->ncols);
    uint64_t i;
    
    for( i = 0; i < arr->size ; i++ ){
        
        darr_set_item_i(  
            mdnum1_get_deriv( idx, order, &arr->p_data[i]), 
            i, &res);

    }

    return res;
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr1_t mdarr1_get_im_o(imdir_t idx, ord_t order, mdarr1_t* arr){
    
    mdarr1_t res = mdarr1_zeros( arr->nrows, arr->ncols);
    
    mdarr1_get_im_to( idx, order, arr, &res);

    return res;
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr1_get_im_to(imdir_t idx, ord_t order, mdarr1_t* arr, mdarr1_t* res){
    
    uint64_t i;
    
    // Check first dimensions.
    mdarr1_dimCheck_OO_elementwise(arr,arr,res);

    for( i = 0; i < arr->size ; i++ ){
        
        mdnum1_get_im_to_o( idx, order, &arr->p_data[i], &res->p_data[i]);

    }
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr1_t mdarr1_get_deriv_o(imdir_t idx, ord_t order, mdarr1_t* arr){
    
    mdarr1_t res = mdarr1_zeros( arr->nrows, arr->ncols);
    
    mdarr1_get_deriv_to( idx, order, arr, &res);

    return res;
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr1_get_deriv_to(imdir_t idx, ord_t order, mdarr1_t* arr, mdarr1_t* res){
    
    uint64_t i;
    
    // Check first dimensions.
    mdarr1_dimCheck_OO_elementwise(arr,arr,res);

    for( i = 0; i < arr->size ; i++ ){
        
        mdnum1_get_deriv_to( idx, order, &arr->p_data[i], &res->p_data[i]);

    }
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr1_t mdarr1_extract_deriv(imdir_t idx, ord_t order, mdarr1_t* arr){
    
    mdarr1_t res = mdarr1_zeros( arr->nrows, arr->ncols);
    
    mdarr1_extract_deriv_to( idx, order, arr, &res);

    return res;
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr1_extract_deriv_to(imdir_t idx, ord_t order, mdarr1_t* arr, mdarr1_t* res){
    
    uint64_t i;
    
    // Check first dimensions.
    mdarr1_dimCheck_OO_elementwise(arr,arr,res);

    for( i = 0; i < arr->size ; i++ ){
                
        mdnum1_extract_deriv_to( idx, order, &arr->p_data[i], &res->p_data[i]);

    }
    
}
// ----------------------------------------------------------------------------------------------------

// Getters.
// ****************************************************************************************************
inline mdnum1_t mdarr1_get_item_i(mdarr1_t* arr, uint64_t i){
    
    mdnum1_t res;

    // Check boundness
    if (i < arr->size){

        res = arr->p_data[i];
        
    } else {

        // res = mdnum1_init();
        
        printf("ERROR: Index out of bounds in mdarr1_get_item_i(...)\n Exiting...\n");
        exit(OTI_BadIndx);

    }

    return res;
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum1_t mdarr1_get_item_ij(mdarr1_t* arr, uint64_t i, uint64_t j){

    mdnum1_t res = mdarr1_get_item_i(arr, j + i*arr->ncols );

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr1_get_item_i_to(mdarr1_t* arr, uint64_t i, mdnum1_t* res){
    
    // Check boundness
    if (i < arr->size){

        mdnum1_copy_to( &arr->p_data[i], res);
        
    } else {
        // Raise error?
        printf("ERROR: Index out of bounds in mdarr1_get_item_i_to(...)\n");
        exit(OTI_BadIndx);
    }
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr1_get_item_ij_to(mdarr1_t* arr, uint64_t i, uint64_t j, mdnum1_t* res){

    mdarr1_get_item_i_to(arr, j + i*arr->ncols, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr1_t mdarr1_get_slice( mdarr1_t* arr, 
                        int64_t starti, int64_t stopi, int64_t stepi,
                        int64_t startj, int64_t stopj, int64_t stepj){

    uint64_t ncols, nrows; // Resulting number of rows and columns
    mdarr1_t res = mdarr1_init();

    nrows = slice_size(starti, stopi, stepi);
    ncols = slice_size(startj, stopj, stepj);
    
    res = mdarr1_zeros( nrows, ncols);

    mdarr1_get_slice_to( arr, starti, stopi, stepi, startj, stopj, stepj, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr1_get_slice_to( mdarr1_t* arr, 
                        int64_t starti, int64_t stopi, int64_t stepi,
                        int64_t startj, int64_t stopj, int64_t stepj,
                         mdarr1_t* res){

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

            mdnum1_copy_to( &arr->p_data[ jj + ii * arr->ncols ], 
                          &res->p_data[  j +  i * res->ncols ]);

            jj += stepj;
        
        }   

        ii += stepi;

    }

}
// ----------------------------------------------------------------------------------------------------

// Memory management.

// ****************************************************************************************************
mdarr1_t mdarr1_eye(uint64_t nrows){

    mdarr1_t  res;
    uint64_t i;

    res = mdarr1_zeros( nrows, nrows);
    
    for (i=0; i<res.nrows; i++ ){
        res.p_data[ i + i*res.ncols ].r = 1.0;
    }
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr1_t mdarr1_ones(uint64_t nrows, uint64_t ncols){

    mdarr1_t  res;
    uint64_t i;
    
    res = mdarr1_createEmpty(nrows, ncols);

    for (i=0; i<res.size; i++ ){
        mdnum1_set_r(1.0,&res.p_data[i]);
    }
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr1_t mdarr1_zeros(uint64_t nrows, uint64_t ncols){
    
    mdarr1_t  res;
    uint64_t i;
    
    res = mdarr1_createEmpty(nrows, ncols);
    
    for (i=0; i<res.size; i++ ){
        mdnum1_set_r(0.0,&res.p_data[i]);
    }
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline mdarr1_t mdarr1_empty_like(mdarr1_t* arr){

    mdarr1_t  res;
    
    res = mdarr1_createEmpty(arr->nrows, arr->ncols);    

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
inline mdarr1_t mdarr1_createEmpty(uint64_t nrows, uint64_t ncols){

    mdarr1_t  res ;
    uint64_t size = nrows * ncols;

    res.p_data = (mdnum1_t*) malloc( size * sizeof( mdnum1_t ) );

    if ( res.p_data == NULL ){
        printf("ERROR: Not enough memory to handle mdarr1.\n Exiting...\n");
        exit(OTI_OutOfMemory);
    }

    res.ncols = ncols;
    res.nrows = nrows;
    res.size  = size;

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr1_free(mdarr1_t* arr){

    if ( (arr->flag != 0) && (arr->p_data!= NULL) ){
        
        free(arr->p_data);

    }

    (*arr) = mdarr1_init();

}
// ----------------------------------------------------------------------------------------------------

// Initialization
// ****************************************************************************************************
inline mdarr1_t mdarr1_init(void){

    mdarr1_t res;

    res.p_data = NULL;
    res.nrows = 0;
    res.ncols = 0;
    res.size  = 0;
    res.flag  = 0;

    return res;

}
// ----------------------------------------------------------------------------------------------------