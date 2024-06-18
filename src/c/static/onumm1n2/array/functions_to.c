

// ****************************************************************************************************
void oarrm1n2_atanh_to(oarrm1n2_t* arr, oarrm1n2_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        onumm1n2_atanh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm1n2_asinh_to(oarrm1n2_t* arr, oarrm1n2_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        onumm1n2_asinh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm1n2_acosh_to(oarrm1n2_t* arr, oarrm1n2_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        onumm1n2_acosh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm1n2_tanh_to(oarrm1n2_t* arr, oarrm1n2_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        onumm1n2_tanh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm1n2_cbrt_to(oarrm1n2_t* arr, oarrm1n2_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        onumm1n2_cbrt_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

extern void oarrm1n2_sqrt_f(oarrm1n2_t* arr, oarrm1n2_t* res);
// // ****************************************************************************************************
void oarrm1n2_sqrt_to(oarrm1n2_t* arr, oarrm1n2_t* res){

    // uint64_t i;

    // for( i = 0; i<arr->size; i++){
        
    //     onumm1n2_sqrt_to(&arr->p_data[i], &res->p_data[i]);

    // }
    oarrm1n2_sqrt_f(arr,  res);

 }
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm1n2_cosh_to(oarrm1n2_t* arr, oarrm1n2_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        onumm1n2_cosh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm1n2_sinh_to(oarrm1n2_t* arr, oarrm1n2_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        onumm1n2_sinh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------
extern void oarrm1n2_asin_f(oarrm1n2_t* arr, oarrm1n2_t* res);
// ****************************************************************************************************
void oarrm1n2_asin_to(oarrm1n2_t* arr, oarrm1n2_t* res){

    //uint64_t i;

    // for( i = 0; i<arr->size; i++){
        
    //     onumm1n2_asin_to(&arr->p_data[i], &res->p_data[i]);

    // }
    oarrm1n2_asin_f(arr,  res);
}
// ----------------------------------------------------------------------------------------------------
extern void oarrm1n2_acos_f(oarrm1n2_t* arr, oarrm1n2_t* res);
// ****************************************************************************************************
void oarrm1n2_acos_to(oarrm1n2_t* arr, oarrm1n2_t* res){

    // uint64_t i;

    // for( i = 0; i<arr->size; i++){
        
    //     onumm1n2_acos_to(&arr->p_data[i], &res->p_data[i]);

    // }
    oarrm1n2_acos_f(arr, res);
}
// ----------------------------------------------------------------------------------------------------
extern void oarrm1n2_atan_f(oarrm1n2_t* arr, oarrm1n2_t* res);
// ****************************************************************************************************
void oarrm1n2_atan_to(oarrm1n2_t* arr, oarrm1n2_t* res){

    // uint64_t i;

    // for( i = 0; i<arr->size; i++){
        
    //     onumm1n2_atan_to(&arr->p_data[i], &res->p_data[i]);

    // }
    oarrm1n2_atan_f( arr,  res);

}
// ----------------------------------------------------------------------------------------------------
extern void oarrm1n2_tan_f(oarrm1n2_t* arr, oarrm1n2_t* res);
// ****************************************************************************************************
void oarrm1n2_tan_to(oarrm1n2_t* arr, oarrm1n2_t* res){

    // uint64_t i;

    // for( i = 0; i<arr->size; i++){
        
    //     onumm1n2_tan_to(&arr->p_data[i], &res->p_data[i]);

    // }
    oarrm1n2_tan_f( arr,  res);
}
// ----------------------------------------------------------------------------------------------------
extern void oarrm1n2_cos_f(oarrm1n2_t* arr, oarrm1n2_t* res);
// ****************************************************************************************************
void oarrm1n2_cos_to(oarrm1n2_t* arr, oarrm1n2_t* res){

    // uint64_t i;

    // for( i = 0; i<arr->size; i++){
        
    //     onumm1n2_cos_to(&arr->p_data[i], &res->p_data[i]);

    // }
    oarrm1n2_cos_f( arr,  res);
}
// ----------------------------------------------------------------------------------------------------
extern void oarrm1n2_sin_f(oarrm1n2_t* arr, oarrm1n2_t* res);
// ****************************************************************************************************
void oarrm1n2_sin_to(oarrm1n2_t* arr, oarrm1n2_t* res){

    // uint64_t i;

    // for( i = 0; i<arr->size; i++){
        
    //     onumm1n2_sin_to(&arr->p_data[i], &res->p_data[i]);

    // }
    oarrm1n2_sin_f( arr,  res);
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm1n2_logb_to(oarrm1n2_t* arr, double base, oarrm1n2_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        onumm1n2_logb_to(&arr->p_data[i], base, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm1n2_log10_to(oarrm1n2_t* arr, oarrm1n2_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        onumm1n2_log10_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------
extern void oarrm1n2_log_f(oarrm1n2_t* arr, oarrm1n2_t* res);
// ****************************************************************************************************
void oarrm1n2_log_to(oarrm1n2_t* arr, oarrm1n2_t* res){

    // uint64_t i;

    // for( i = 0; i<arr->size; i++){
        
    //     onumm1n2_log_to(&arr->p_data[i], &res->p_data[i]);

    // }

    oarrm1n2_log_f( arr,  res); 

}
// ----------------------------------------------------------------------------------------------------

extern void oarrm1n2_exp_f(oarrm1n2_t* arr, oarrm1n2_t* res);
// ****************************************************************************************************
void oarrm1n2_exp_to(oarrm1n2_t* arr, oarrm1n2_t* res){

    // uint64_t i;

    // for( i = 0; i<arr->size; i++){
        
    //     onumm1n2_exp_to(&arr->p_data[i], &res->p_data[i]);

    // }

    oarrm1n2_exp_f( arr,  res); 

}
// ----------------------------------------------------------------------------------------------------

extern void oarrm1n2_pow_f(oarrm1n2_t* arr, double* e, oarrm1n2_t* res);
// ****************************************************************************************************
void oarrm1n2_pow_to(oarrm1n2_t* arr, double e, oarrm1n2_t* res){

    // uint64_t i;

    // for( i = 0; i<arr->size; i++){
        
    //     onumm2n2_pow_to(&arr->p_data[i], e, &res->p_data[i]);

    // }

    oarrm1n2_pow_f( arr, &e, res);


}
// ----------------------------------------------------------------------------------------------------

