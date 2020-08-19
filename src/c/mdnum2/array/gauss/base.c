// typedef struct{
//     mdarr2_t*      p_data; ///< Data array
//     uint64_t      nrows;  ///< Number of rows.
//     uint64_t      ncols;  ///< Number of cols.
//     uint64_t       size;  ///< size of the array
//     uint64_t    nip;  ///< Number of integration points.
// } femdarr2_t;

// ****************************************************************************************************
ord_t femdarr2_get_order(femdarr2_t* arr){

    ord_t ord = 0;
    uint64_t i;

    for( i = 0; i < arr->nip; i++){

        ord = MAX( ord, mdarr2_get_order( &arr->p_data[i]) );

    }

    return ord;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_get_order_im_to( ord_t order, femdarr2_t* arr, femdarr2_t* res){
    
    uint64_t i;

    // check memory;
    femdarr2_dimCheck_FF_elementwise(arr, res, res);

    for (i = 0; i<arr->nip; i++ ){
        
        mdarr2_get_order_im_to( order, &arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
femdarr2_t femdarr2_get_order_im( ord_t order, femdarr2_t* arr){
    
    femdarr2_t res;

    res = femdarr2_zeros( arr->nrows, arr->ncols, arr->nip);

    femdarr2_get_order_im_to( order, arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_copy_to(femdarr2_t* src, femdarr2_t* dst){

    uint64_t i;

    // check memory;
    femdarr2_dimCheck_FF_elementwise(src, dst, dst);

    for( i = 0; i < src->nip; i++){

        mdarr2_copy_to( &src->p_data[i], &dst->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
femdarr2_t femdarr2_copy(femdarr2_t* src){

    femdarr2_t res = femdarr2_createEmpty( src->nrows, src->ncols, src->nip);
    
    femdarr2_copy_to( src, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_truncate_im_to(imdir_t idx, ord_t order, femdarr2_t* arr, femdarr2_t* res){

    uint64_t i;

    // check memory;
    femdarr2_dimCheck_FF_elementwise(arr, res, res);

    for( i = 0; i < arr->nip; i++){

        mdarr2_truncate_im_to( idx, order, &arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
femdarr2_t femdarr2_truncate_im(imdir_t idx, ord_t order, femdarr2_t* arr){

    femdarr2_t res = femdarr2_createEmpty( arr->nrows, arr->ncols, arr->nip);
    
    femdarr2_truncate_im_to( idx, order, arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_extract_deriv_to(imdir_t idx, ord_t order, femdarr2_t* arr, femdarr2_t* res){

    uint64_t i;

    // check memory;
    femdarr2_dimCheck_FF_elementwise(arr, res, res);

    for( i = 0; i < arr->nip; i++){

        mdarr2_extract_deriv_to( idx, order, &arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
femdarr2_t femdarr2_extract_deriv( imdir_t idx, ord_t order, femdarr2_t* arr){

    femdarr2_t res = femdarr2_createEmpty( arr->nrows, arr->ncols, arr->nip);
    
    femdarr2_extract_deriv_to( idx, order, arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_get_deriv_to(imdir_t idx, ord_t order, femdarr2_t* arr, femdarr2_t* res){

    uint64_t i;

    // check memory;
    femdarr2_dimCheck_FF_elementwise(arr, res, res);

    for( i = 0; i < arr->nip; i++){

        mdarr2_get_deriv_to( idx, order, &arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
femdarr2_t femdarr2_get_deriv(imdir_t idx, ord_t order, femdarr2_t* arr){

    femdarr2_t res = femdarr2_createEmpty( arr->nrows, arr->ncols, arr->nip);
    
    femdarr2_get_deriv_to( idx, order, arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_get_im_to(imdir_t idx, ord_t order, femdarr2_t* arr, femdarr2_t* res){

    uint64_t i;

    // check memory;
    femdarr2_dimCheck_FF_elementwise(arr, res, res);

    for( i = 0; i < arr->nip; i++){

        mdarr2_get_im_to( idx, order, &arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
femdarr2_t femdarr2_get_im(imdir_t idx, ord_t order, femdarr2_t* arr){

    femdarr2_t res = femdarr2_createEmpty( arr->nrows, arr->ncols, arr->nip);
    
    femdarr2_get_im_to( idx, order, arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_extract_im_to(imdir_t idx, ord_t order, femdarr2_t* arr, femdarr2_t* res){

    uint64_t i;

    // check memory;
    femdarr2_dimCheck_FF_elementwise(arr, res, res);

    for( i = 0; i < arr->nip; i++){

        mdarr2_extract_im_to( idx, order, &arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
femdarr2_t femdarr2_extract_im(imdir_t idx, ord_t order, femdarr2_t* arr){

    femdarr2_t res = femdarr2_createEmpty( arr->nrows, arr->ncols, arr->nip);
    
    femdarr2_extract_im_to( idx, order, arr, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdarr2_t femdarr2_get_item_k(femdarr2_t* arr, uint64_t k){
    
    mdarr2_t res;
    // TODO: Add bound checks.
    
    res = mdarr2_zeros(arr->nrows, arr->ncols);

    femdarr2_get_item_k_to(arr, k, &res);

    return res;    

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
femdnum2_t femdarr2_get_item_ij(femdarr2_t* arr, uint64_t i, uint64_t j){
        
    femdnum2_t res = femdnum2_init();
    // TODO: Add bound checks.
    
    res = femdnum2_zeros(arr->nip);

    femdarr2_get_item_ij_to(arr, i, j, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum2_t femdarr2_get_item_ijk(femdarr2_t* arr, uint64_t i, uint64_t j, uint64_t k){
    
    mdnum2_t res;
    
    res = mdarr2_get_item_ij(&arr->p_data[k], i, j);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
femdarr2_t femdarr2_get_slice(femdarr2_t* arr, 
                          int64_t starti, int64_t stopi, int64_t stepi,
                          int64_t startj, int64_t stopj, int64_t stepj, 
                           dhelpl_t dhl){
    
    int64_t ncols, nrows;
    femdarr2_t res = femdarr2_init();

    // TODO: Add bound checks.
    nrows = slice_size(starti, stopi, stepi);
    ncols = slice_size(startj, stopj, stepj);

    res = femdarr2_zeros( nrows, ncols, arr->nip);

    femdarr2_get_slice_to( arr, starti, stopi, stepi, startj, stopj, stepj, &res);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_get_item_k_to(femdarr2_t* arr, uint64_t k, mdarr2_t* res){
    
    // TODO: Add bound checks.

    mdarr2_copy_to( &arr->p_data[k], res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_get_item_ij_to(femdarr2_t* arr, uint64_t i, uint64_t j, femdnum2_t* res){
        
    uint64_t k;
    
    femdarr2_dimCheck_fF_elementwise(res,arr,arr);

    for (k = 0; k < arr->nip; k++){
        
        mdarr2_get_item_ij_to( &arr->p_data[k], i, j, &res->p_data[k]);
    
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_get_item_ijk_to(femdarr2_t* arr, uint64_t i, uint64_t j, uint64_t k, mdnum2_t* res){
    
    // TODO: Add bound checks.
    if ( k < arr->nip && i < arr->nrows && j < arr->ncols){

        mdarr2_get_item_ij_to(&arr->p_data[k], i, j, res);

    } else {

        printf("Error: Bad index \n");
        exit(OTI_BadIndx);
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_get_slice_to(femdarr2_t* arr, 
                          int64_t starti, int64_t stopi, int64_t stepi,
                          int64_t startj, int64_t stopj, int64_t stepj, 
                          femdarr2_t* res){
        
    uint64_t k;
    int64_t ncols, nrows;

    nrows = slice_size(starti, stopi, stepi);
    ncols = slice_size(startj, stopj, stepj);

    // Check dimensions:
    if ( (res->ncols != ncols) || (res->nrows != nrows) || (res->nip != arr->nip)){

        printf("ERROR: Wrong dimensions resulting slicing array.\n");
        exit(OTI_BadIndx);

    }

    for (k = 0; k < arr->nip; k++){
        
        mdarr2_get_slice_to( &arr->p_data[k], starti, stopi, stepi, startj, stopj, stepj, &res->p_data[k]);
    
    }

}
// ----------------------------------------------------------------------------------------------------

// void mdarr2_set_slice_r( coeff_t val, 
//                         int64_t starti, int64_t stopi, int64_t stepi,
//                         int64_t startj, int64_t stopj, int64_t stepj,
//                          mdarr2_t* res);
// void mdarr2_set_slice_O( mdarr2_t* val, 
//                         int64_t starti, int64_t stopi, int64_t stepi,
//                         int64_t startj, int64_t stopj, int64_t stepj,
//                          mdarr2_t* res);
// void mdarr2_set_slice_o( mdnum2_t* val, 
//                         int64_t starti, int64_t stopi, int64_t stepi,
//                         int64_t startj, int64_t stopj, int64_t stepj,
//                          mdarr2_t* res);

// ****************************************************************************************************
void femdarr2_set_slice_r( coeff_t val, 
                          int64_t starti, int64_t stopi, int64_t stepi,
                          int64_t startj, int64_t stopj, int64_t stepj, 
                          femdarr2_t* res){
        
    uint64_t k;
    int64_t ncols, nrows;

    nrows = slice_size(starti, stopi, stepi);
    ncols = slice_size(startj, stopj, stepj);

    // Check dimensions:
    if ( (res->ncols < ncols) || (res->nrows < nrows) ){

        printf("ERROR: Wrong dimensions resulting slicing array.\n");
        exit(OTI_BadIndx);

    }

    for (k = 0; k < res->nip; k++){
        
        mdarr2_set_slice_r( val, starti, stopi, stepi, startj, stopj, stepj, &res->p_data[k]);
    
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_set_slice_o( mdnum2_t* val, 
                          int64_t starti, int64_t stopi, int64_t stepi,
                          int64_t startj, int64_t stopj, int64_t stepj, 
                          femdarr2_t* res){
        
    uint64_t k;
    int64_t ncols, nrows;

    nrows = slice_size(starti, stopi, stepi);
    ncols = slice_size(startj, stopj, stepj);

    for (k = 0; k < res->nip; k++){
        
        mdarr2_set_slice_o( val, starti, stopi, stepi, startj, stopj, stepj, &res->p_data[k]);
    
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_set_slice_f( femdnum2_t* val, 
                          int64_t starti, int64_t stopi, int64_t stepi,
                          int64_t startj, int64_t stopj, int64_t stepj, 
                          femdarr2_t* res){
        
    uint64_t k;
    int64_t ncols, nrows;

    nrows = slice_size(starti, stopi, stepi);
    ncols = slice_size(startj, stopj, stepj);

    // Check dimensions:
    if ( (res->nip != val->nip) ){

        printf("ERROR: Wrong number of integration points.\n");
        exit(OTI_BadIndx);

    }

    for (k = 0; k < res->nip; k++){
        
        mdarr2_set_slice_o( &val->p_data[k], starti, stopi, stepi, startj, stopj, stepj, &res->p_data[k]);
    
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_set_slice_O( mdarr2_t* val, 
                          int64_t starti, int64_t stopi, int64_t stepi,
                          int64_t startj, int64_t stopj, int64_t stepj, 
                          femdarr2_t* res){
        
    uint64_t k;
    int64_t ncols, nrows;

    nrows = slice_size(starti, stopi, stepi);
    ncols = slice_size(startj, stopj, stepj);

    for (k = 0; k < res->nip; k++){
        
        mdarr2_set_slice_O( val, starti, stopi, stepi, startj, stopj, stepj, &res->p_data[k]);
    
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_set_slice_F( femdarr2_t* val, 
                          int64_t starti, int64_t stopi, int64_t stepi,
                          int64_t startj, int64_t stopj, int64_t stepj, 
                          femdarr2_t* res){
        
    uint64_t k;
    int64_t ncols, nrows;

    nrows = slice_size(starti, stopi, stepi);
    ncols = slice_size(startj, stopj, stepj);

    // Check dimensions:
    if ( (res->nip != val->nip) ){

        printf("ERROR: Wrong number of integration points.\n");
        exit(OTI_BadIndx);

    }

    for (k = 0; k < res->nip; k++){
        
        mdarr2_set_slice_O( &val->p_data[k], starti, stopi, stepi, startj, stopj, stepj, &res->p_data[k]);
    
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_set_item_k( mdarr2_t* arr , uint64_t k, femdarr2_t* res){
    
    // No new allocation needed.
    mdarr2_copy_to( arr, &res->p_data[k]);

}
// ----------------------------------------------------------------------------------------------------

// // ****************************************************************************************************
// void femdarr2_set_item_ij(femdnum2_t* num, uint64_t i, uint64_t j, femdarr2_t* res){
    
//     uint64_t k;

//     //Check
//     femdarr2_dimCheck_fF_elementwise(num,res,res);

//     for (k = 0; k < num->nip; k++){
        
//         mdarr2_set_item_ij_o( &num->p_data[k], i, j, &res->p_data[k] );

//     }

// }
// // ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_set_item_ij_f(femdnum2_t* num, uint64_t i, uint64_t j, femdarr2_t* res){
    
    uint64_t k;

    //Check
    femdarr2_dimCheck_fF_elementwise(num,res,res);

    for (k = 0; k < num->nip; k++){
        
        mdarr2_set_item_ij_o( &num->p_data[k], i, j, &res->p_data[k] );

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_set_item_ij_o( mdnum2_t* num, uint64_t i, uint64_t j, femdarr2_t* res){
    
    uint64_t k;

    //Check
    for (k = 0; k < res->nip; k++){
        
        mdarr2_set_item_ij_o( num, i, j, &res->p_data[k] );

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_set_item_ij_r( coeff_t num, uint64_t i, uint64_t j, femdarr2_t* res){
    
    uint64_t k;

    //Check
    for (k = 0; k < res->nip; k++){
        
        mdarr2_set_item_ij_r( num, i, j, &res->p_data[k] );

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_set_item_ijk(mdnum2_t* num, uint64_t i, uint64_t j, uint64_t k, 
        femdarr2_t* res){

    mdarr2_set_item_ij_o( num, i, j, &res->p_data[k]);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_set_f( femdnum2_t* num, femdarr2_t* res ){ 
    
    uint64_t i;
    
    femdarr2_dimCheck_fF_elementwise(num,res,res);

    for( i = 0; i < res->nip; i++){

        mdarr2_set_all_o( &num->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_set_o( mdnum2_t* num, femdarr2_t* res ){ 
    
    uint64_t i;
    
    for( i = 0; i < res->nip; i++){

        mdarr2_set_all_o( num, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_set_r( coeff_t num, femdarr2_t* res ){ 
    
    uint64_t i;
    
    for( i = 0; i < res->nip; i++){

        mdarr2_set_all_r( num, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_set_all_f( femdnum2_t* num, femdarr2_t* res ){ 
    
    uint64_t i;
    
    femdarr2_dimCheck_fF_elementwise(num,res,res);

    for( i = 0; i < res->nip; i++){

        mdarr2_set_all_o( &num->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_set_all_o( mdnum2_t* num, femdarr2_t* res ){ 
    
    uint64_t i;
    
    for( i = 0; i < res->nip; i++){

        mdarr2_set_all_o( num, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_set_all_r( coeff_t num, femdarr2_t* res ){ 
    
    uint64_t i;
    
    for( i = 0; i < res->nip; i++){

        mdarr2_set_all_r( num, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
femdarr2_t femdarr2_eye( uint64_t size,
                               uint64_t nip, bases_t  nbases, 
                               ord_t    order     ){ 
    
    uint64_t i,k;

    femdarr2_t res = femdarr2_createEmpty( size, size, nip);
    
    for( k = 0; k < res.nip; k++){

        mdarr2_set_all_r( 0.0, &res.p_data[k]);

    }
    
    for( i = 0; i < res.nrows; i++){
    
        for( k = 0; k < res.nip; k++){

            mdarr2_set_item_ij_r( 1.0, i, i, &res.p_data[k]);

        }

    }

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
femdarr2_t femdarr2_zeros( uint64_t nrows,   uint64_t ncols, 
                               uint64_t nip, bases_t  nbases, 
                               ord_t    order     ){ 
    
    uint64_t i;

    femdarr2_t res = femdarr2_createEmpty( nrows, ncols, nip);
    
    for( i = 0; i < res.nip; i++){

        mdarr2_set_all_r( 0.0, &res.p_data[i]);

    }

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
femdarr2_t femdarr2_ones( uint64_t nrows,   uint64_t ncols, uint64_t nip, bases_t  nbases, 
                               ord_t    order     ){ 
    
    uint64_t i;

    femdarr2_t res = femdarr2_createEmpty( nrows, ncols, nip);
    
    for( i = 0; i < res.nip; i++){

        mdarr2_set_all_r( 1.0, &res.p_data[i]);

    }

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
femdarr2_t femdarr2_createEmpty( uint64_t nrows,   uint64_t ncols, 
                                     uint64_t nip, bases_t  nbases, 
                                     ord_t    order){  
    
    uint64_t i;

    femdarr2_t res = femdarr2_init();

    res.nrows    =  nrows;
    res.ncols    =  ncols;
    res.size     =  nrows*ncols;
    
    res.nip  =  nip;

    // Allocate memory.
    res.p_data   = (mdarr2_t*) malloc( res.nip * sizeof(mdarr2_t) );

    // mdnum2array_createEmpty(mdnum2array_t* p_array, uint64_t nrows, uint64_t ncols, uint8_t order);
    if (res.p_data == NULL){
        printf("--- MemoryError ---\n");
        exit(1);
    }

    for( i = 0; i < res.nip; i++){

        res.p_data[i] = mdarr2_createEmpty( nrows, ncols);

    }

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void femdarr2_free(femdarr2_t* arr){
    
    uint64_t i;

    // Free all memory within each coefficient in p_array

    if (arr->p_data != NULL){

        // Free all arrays.
        for (i = 0; i<arr->nip; i++){
        
            mdarr2_free(&arr->p_data[i]); 

        }

        // Free pointer 
        free(arr->p_data);

    }

    *arr = femdarr2_init();
    
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
femdarr2_t femdarr2_init(void){
    
    femdarr2_t res;
    
    res.p_data  = NULL;  
    res.nrows   = 0;   
    res.ncols   = 0;   
    res.size    = 0;    
    res.nip = 0; 

    return res;

}
// ----------------------------------------------------------------------------------------------------

