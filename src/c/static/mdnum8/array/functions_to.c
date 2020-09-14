

// ****************************************************************************************************
void mdarr8_atanh_to(mdarr8_t* arr, mdarr8_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum8_atanh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr8_asinh_to(mdarr8_t* arr, mdarr8_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum8_asinh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr8_acosh_to(mdarr8_t* arr, mdarr8_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum8_acosh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr8_tanh_to(mdarr8_t* arr, mdarr8_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum8_tanh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr8_cbrt_to(mdarr8_t* arr, mdarr8_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum8_cbrt_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr8_sqrt_to(mdarr8_t* arr, mdarr8_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum8_sqrt_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr8_cosh_to(mdarr8_t* arr, mdarr8_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum8_cosh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr8_sinh_to(mdarr8_t* arr, mdarr8_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum8_sinh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr8_asin_to(mdarr8_t* arr, mdarr8_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum8_asin_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr8_acos_to(mdarr8_t* arr, mdarr8_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum8_acos_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr8_atan_to(mdarr8_t* arr, mdarr8_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum8_atan_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr8_tan_to(mdarr8_t* arr, mdarr8_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum8_tan_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr8_cos_to(mdarr8_t* arr, mdarr8_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum8_cos_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr8_sin_to(mdarr8_t* arr, mdarr8_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum8_sin_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr8_logb_to(mdarr8_t* arr, double base, mdarr8_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum8_logb_to(&arr->p_data[i], base, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr8_log10_to(mdarr8_t* arr, mdarr8_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum8_log10_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr8_log_to(mdarr8_t* arr, mdarr8_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum8_log_to(&arr->p_data[i], &res->p_data[i]);

    } 

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr8_exp_to(mdarr8_t* arr, mdarr8_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum8_exp_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdarr8_pow_to(mdarr8_t* arr, double e, mdarr8_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        mdnum8_pow_to(&arr->p_data[i], e, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------
