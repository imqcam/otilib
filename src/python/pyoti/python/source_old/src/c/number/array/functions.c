// ****************************************************************************************************
void {arr_func}_atanh_to({arr_type}* arr, {arr_type}* res){{

    uint64_t i;

    for( i = 0; i<arr->size; i++){{        
        {num_func}_atanh_to(&arr->p_data[i], &res->p_data[i]);
    }}

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void {arr_func}_asinh_to({arr_type}* arr, {arr_type}* res){{

    uint64_t i;

    for( i = 0; i<arr->size; i++){{        
        {num_func}_asinh_to(&arr->p_data[i], &res->p_data[i]);
    }}

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void {arr_func}_acosh_to({arr_type}* arr, {arr_type}* res){{

    uint64_t i;

    for( i = 0; i<arr->size; i++){{        
        {num_func}_acosh_to(&arr->p_data[i], &res->p_data[i]);
    }}

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void {arr_type}anh_to({arr_type}* arr, {arr_type}* res){{

    uint64_t i;

    for( i = 0; i<arr->size; i++){{        
        {num_func}_tanh_to(&arr->p_data[i], &res->p_data[i]);
    }}



}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void {arr_func}_cbrt_to({arr_type}* arr, {arr_type}* res){{

    uint64_t i;

    for( i = 0; i<arr->size; i++){{        
        {num_func}_cbrt_to(&arr->p_data[i], &res->p_data[i]);
    }}

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void {arr_func}_sqrt_to({arr_type}* arr, {arr_type}* res){{

    uint64_t i;

    for( i = 0; i<arr->size; i++){{        
        {num_func}_sqrt_to(&arr->p_data[i], &res->p_data[i]);
    }}

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void {arr_func}_cosh_to({arr_type}* arr, {arr_type}* res){{

    uint64_t i;

    for( i = 0; i<arr->size; i++){{        
        {num_func}_cosh_to(&arr->p_data[i], &res->p_data[i]);
    }}

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void {arr_func}_sinh_to({arr_type}* arr, {arr_type}* res){{

    uint64_t i;

    for( i = 0; i<arr->size; i++){{        
        {num_func}_sinh_to(&arr->p_data[i], &res->p_data[i]);
    }}

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void {arr_func}_asin_to({arr_type}* arr, {arr_type}* res){{

    uint64_t i;

    for( i = 0; i<arr->size; i++){{        
        {num_func}_asin_to(&arr->p_data[i], &res->p_data[i]);
    }}

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void {arr_func}_acos_to({arr_type}* arr, {arr_type}* res){{

    uint64_t i;

    for( i = 0; i<arr->size; i++){{        
        {num_func}_acos_to(&arr->p_data[i], &res->p_data[i]);
    }}

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void {arr_func}_atan_to({arr_type}* arr, {arr_type}* res){{

    uint64_t i;

    for( i = 0; i<arr->size; i++){{        
        {num_func}_atan_to(&arr->p_data[i], &res->p_data[i]);
    }}

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void {arr_type}an_to({arr_type}* arr, {arr_type}* res){{

    uint64_t i;

    for( i = 0; i<arr->size; i++){{        
        {num_func}_tan_to(&arr->p_data[i], &res->p_data[i]);
    }}

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void {arr_func}_cos_to({arr_type}* arr, {arr_type}* res){{

    uint64_t i;

    for( i = 0; i<arr->size; i++){{        
        {num_func}_cos_to(&arr->p_data[i], &res->p_data[i]);
    }}

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void {arr_func}_sin_to({arr_type}* arr, {arr_type}* res){{

    uint64_t i;

    for( i = 0; i<arr->size; i++){{        
        {num_func}_sin_to(&arr->p_data[i], &res->p_data[i]);
    }}

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void {arr_func}_logb_to({arr_type}* arr, double base, {arr_type}* res){{

    uint64_t i;

    for( i = 0; i<arr->size; i++){{        
        {num_func}_logb_to(&arr->p_data[i], base, &res->p_data[i]);
    }}

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void {arr_func}_log10_to({arr_type}* arr, {arr_type}* res){{

    uint64_t i;

    for( i = 0; i<arr->size; i++){{        
        {num_func}_log10_to(&arr->p_data[i], &res->p_data[i]);
    }}

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void {arr_func}_log_to({arr_type}* arr, {arr_type}* res){{

    uint64_t i;

    for( i = 0; i<arr->size; i++){{        
        {num_func}_log_to(&arr->p_data[i], &res->p_data[i]);
    }} 

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void {arr_func}_exp_to({arr_type}* arr, {arr_type}* res){{

    uint64_t i;

    for( i = 0; i<arr->size; i++){{        
        {num_func}_exp_to(&arr->p_data[i], &res->p_data[i]);
    }}

}}
// ----------------------------------------------------------------------------------------------------


// ****************************************************************************************************
void {arr_func}_pow_to({arr_type}* arr, double e, {arr_type}* res){{

    uint64_t i;

    for( i = 0; i<arr->size; i++){{        
        {num_func}_pow_to(&arr->p_data[i], e, &res->p_data[i]);
    }}

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{arr_type} {arr_func}_atanh({arr_type}* arr){{

    {arr_type} res = {arr_func}_init();

    res = {arr_func}_zeros(arr->nrows, arr->ncols);

    {arr_func}_atanh_to(arr, &res);
    
    return res;

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{arr_type} {arr_func}_asinh({arr_type}* arr){{

    {arr_type} res = {arr_func}_init();

    res = {arr_func}_zeros(arr->nrows, arr->ncols);

    {arr_func}_asinh_to(arr, &res);
    
    return res;

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{arr_type} {arr_func}_acosh({arr_type}* arr){{

    {arr_type} res = {arr_func}_init();

    res = {arr_func}_zeros(arr->nrows, arr->ncols);

    {arr_func}_acosh_to(arr, &res);
    
    return res;

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{arr_type} {arr_type}anh({arr_type}* arr){{

    {arr_type} res = {arr_func}_init();

    res = {arr_func}_zeros(arr->nrows, arr->ncols);

    {arr_type}anh_to(arr, &res);
    
    return res;

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{arr_type} {arr_func}_cbrt({arr_type}* arr){{

    {arr_type} res = {arr_func}_init();

    res = {arr_func}_zeros(arr->nrows, arr->ncols);

    {arr_func}_cbrt_to(arr, &res);
    
    return res;

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{arr_type} {arr_func}_sqrt({arr_type}* arr){{

    {arr_type} res = {arr_func}_init();

    res = {arr_func}_zeros(arr->nrows, arr->ncols);
    
    {arr_func}_sqrt_to(arr, &res);
    
    return res;

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{arr_type} {arr_func}_cosh({arr_type}* arr){{

    {arr_type} res = {arr_func}_init();

    res = {arr_func}_zeros(arr->nrows, arr->ncols);
    
    {arr_func}_cosh_to(arr, &res);
    
    return res;

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{arr_type} {arr_func}_sinh({arr_type}* arr){{

    {arr_type} res = {arr_func}_init();

    res = {arr_func}_zeros(arr->nrows, arr->ncols);
    
    {arr_func}_sinh_to(arr, &res);
    
    return res;

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{arr_type} {arr_func}_asin({arr_type}* arr){{

    {arr_type} res = {arr_func}_init();

    res = {arr_func}_zeros(arr->nrows, arr->ncols);
    
    {arr_func}_asin_to(arr, &res);
    
    return res;

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{arr_type} {arr_func}_acos({arr_type}* arr){{

    {arr_type} res = {arr_func}_init();

    res = {arr_func}_zeros(arr->nrows, arr->ncols);
    
    {arr_func}_acos_to(arr, &res);
    
    return res;

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{arr_type} {arr_func}_atan({arr_type}* arr){{

    {arr_type} res = {arr_func}_init();

    res = {arr_func}_zeros(arr->nrows, arr->ncols);
    
    {arr_func}_atan_to(arr, &res);
    
    return res;

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{arr_type} {arr_type}an({arr_type}* arr){{

    {arr_type} res = {arr_func}_init();

    res = {arr_func}_zeros(arr->nrows, arr->ncols);
    
    {arr_type}an_to(arr, &res);
    
    return res;

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{arr_type} {arr_func}_cos({arr_type}* arr){{

    {arr_type} res = {arr_func}_init();

    res = {arr_func}_zeros(arr->nrows, arr->ncols);
    
    {arr_func}_cos_to(arr, &res);
    
    return res;

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{arr_type} {arr_func}_sin({arr_type}* arr){{

    {arr_type} res = {arr_func}_init();

    res = {arr_func}_zeros(arr->nrows, arr->ncols);
    
    {arr_func}_sin_to(arr, &res);
    
    return res;

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{arr_type} {arr_func}_logb({arr_type}* arr, double base){{

    {arr_type} res = {arr_func}_init();

    res = {arr_func}_zeros(arr->nrows, arr->ncols);
    
    {arr_func}_logb_to(arr, base, &res);

    return res;

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{arr_type} {arr_func}_log10({arr_type}* arr){{

    {arr_type} res = {arr_func}_init();

    res = {arr_func}_zeros(arr->nrows, arr->ncols);
    
    {arr_func}_log10_to(arr, &res);

    return res;

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{arr_type} {arr_func}_log({arr_type}* arr){{

    {arr_type} res = {arr_func}_init();

    res = {arr_func}_zeros(arr->nrows, arr->ncols);
    
    {arr_func}_log_to(arr, &res);

    return res;

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{arr_type} {arr_func}_exp({arr_type}* arr){{

    {arr_type} res = {arr_func}_init();

    res = {arr_func}_zeros(arr->nrows, arr->ncols);
    
    {arr_func}_exp_to(arr, &res);

    return res;

}}
// ----------------------------------------------------------------------------------------------------


// ****************************************************************************************************
{arr_type} {arr_func}_pow({arr_type}* arr, double e){{

    {arr_type} res = {arr_func}_init();

    res = {arr_func}_zeros(arr->nrows, arr->ncols);

    {arr_func}_pow_to(arr, e, &res);
    
    return res;

}}
// ----------------------------------------------------------------------------------------------------