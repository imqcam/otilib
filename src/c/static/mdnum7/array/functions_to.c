

// ****************************************************************************************************
void mdarr7_atanh_to(mdarr7_t* arr, mdarr7_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum7_atanh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr7_asinh_to(mdarr7_t* arr, mdarr7_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum7_asinh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr7_acosh_to(mdarr7_t* arr, mdarr7_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum7_acosh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr7_tanh_to(mdarr7_t* arr, mdarr7_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum7_tanh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr7_cbrt_to(mdarr7_t* arr, mdarr7_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum7_cbrt_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr7_sqrt_to(mdarr7_t* arr, mdarr7_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum7_sqrt_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr7_cosh_to(mdarr7_t* arr, mdarr7_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum7_cosh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr7_sinh_to(mdarr7_t* arr, mdarr7_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum7_sinh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr7_asin_to(mdarr7_t* arr, mdarr7_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum7_asin_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr7_acos_to(mdarr7_t* arr, mdarr7_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum7_acos_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr7_atan_to(mdarr7_t* arr, mdarr7_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum7_atan_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr7_tan_to(mdarr7_t* arr, mdarr7_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum7_tan_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr7_cos_to(mdarr7_t* arr, mdarr7_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum7_cos_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr7_sin_to(mdarr7_t* arr, mdarr7_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum7_sin_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr7_logb_to(mdarr7_t* arr, double base, mdarr7_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum7_logb_to(&arr->p_data[i], base, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr7_log10_to(mdarr7_t* arr, mdarr7_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum7_log10_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr7_log_to(mdarr7_t* arr, mdarr7_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum7_log_to(&arr->p_data[i], &res->p_data[i]);

    } 

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr7_exp_to(mdarr7_t* arr, mdarr7_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum7_exp_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr7_pow_to(mdarr7_t* arr, double e, mdarr7_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum7_pow_to(&arr->p_data[i], e, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------
