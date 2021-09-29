




// ****************************************************************************************************
void arrsso_atanh_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        ssoti_atanh_to(&arr->p_data[i], &res->p_data[i], dhl);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void arrsso_asinh_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        ssoti_asinh_to(&arr->p_data[i], &res->p_data[i], dhl);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void arrsso_acosh_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        ssoti_acosh_to(&arr->p_data[i], &res->p_data[i], dhl);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void arrsso_tanh_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        ssoti_tanh_to(&arr->p_data[i], &res->p_data[i], dhl);

    }



}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void arrsso_cbrt_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        ssoti_cbrt_to(&arr->p_data[i], &res->p_data[i], dhl);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void arrsso_sqrt_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        ssoti_sqrt_to(&arr->p_data[i], &res->p_data[i], dhl);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void arrsso_cosh_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        ssoti_cosh_to(&arr->p_data[i], &res->p_data[i], dhl);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void arrsso_sinh_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        ssoti_sinh_to(&arr->p_data[i], &res->p_data[i], dhl);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void arrsso_asin_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        ssoti_asin_to(&arr->p_data[i], &res->p_data[i], dhl);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void arrsso_acos_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        ssoti_acos_to(&arr->p_data[i], &res->p_data[i], dhl);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void arrsso_atan_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        ssoti_atan_to(&arr->p_data[i], &res->p_data[i], dhl);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void arrsso_tan_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        ssoti_tan_to(&arr->p_data[i], &res->p_data[i], dhl);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void arrsso_cos_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        ssoti_cos_to(&arr->p_data[i], &res->p_data[i], dhl);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void arrsso_sin_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        ssoti_sin_to(&arr->p_data[i], &res->p_data[i], dhl);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void arrsso_logb_to(arrsso_t* arr, double base, arrsso_t* res, dhelpl_t dhl){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        ssoti_logb_to(&arr->p_data[i], base, &res->p_data[i], dhl);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void arrsso_log10_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        ssoti_log10_to(&arr->p_data[i], &res->p_data[i], dhl);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void arrsso_log_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        ssoti_log_to(&arr->p_data[i], &res->p_data[i], dhl);

    } 

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void arrsso_exp_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        ssoti_exp_to(&arr->p_data[i], &res->p_data[i], dhl);

    }

}
// ----------------------------------------------------------------------------------------------------


// ****************************************************************************************************
void arrsso_pow_to(arrsso_t* arr, double e, arrsso_t* res, dhelpl_t dhl){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        ssoti_pow_to(&arr->p_data[i], e, &res->p_data[i], dhl);

    }

}
// ----------------------------------------------------------------------------------------------------








