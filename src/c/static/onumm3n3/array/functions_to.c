

// ****************************************************************************************************
void oarrm3n3_atanh_to(oarrm3n3_t* arr, oarrm3n3_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        onumm3n3_atanh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm3n3_asinh_to(oarrm3n3_t* arr, oarrm3n3_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        onumm3n3_asinh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm3n3_acosh_to(oarrm3n3_t* arr, oarrm3n3_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        onumm3n3_acosh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm3n3_tanh_to(oarrm3n3_t* arr, oarrm3n3_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        onumm3n3_tanh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm3n3_cbrt_to(oarrm3n3_t* arr, oarrm3n3_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        onumm3n3_cbrt_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

extern void oarrm3n3_sqrt_f(oarrm3n3_t* arr, oarrm3n3_t* res);
// // ****************************************************************************************************
void oarrm3n3_sqrt_to(oarrm3n3_t* arr, oarrm3n3_t* res){

    // uint64_t i;

    // for( i = 0; i<arr->size; i++){
        
    //     onumm3n3_sqrt_to(&arr->p_data[i], &res->p_data[i]);

    // }
    oarrm3n3_sqrt_f(arr,  res);

 }
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm3n3_cosh_to(oarrm3n3_t* arr, oarrm3n3_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        onumm3n3_cosh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm3n3_sinh_to(oarrm3n3_t* arr, oarrm3n3_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        onumm3n3_sinh_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------
extern void oarrm3n3_asin_f(oarrm3n3_t* arr, oarrm3n3_t* res);
// ****************************************************************************************************
void oarrm3n3_asin_to(oarrm3n3_t* arr, oarrm3n3_t* res){

    //uint64_t i;

    // for( i = 0; i<arr->size; i++){
        
    //     onumm3n3_asin_to(&arr->p_data[i], &res->p_data[i]);

    // }
    oarrm3n3_asin_f(arr,  res);
}
// ----------------------------------------------------------------------------------------------------
extern void oarrm3n3_acos_f(oarrm3n3_t* arr, oarrm3n3_t* res);
// ****************************************************************************************************
void oarrm3n3_acos_to(oarrm3n3_t* arr, oarrm3n3_t* res){

    // uint64_t i;

    // for( i = 0; i<arr->size; i++){
        
    //     onumm3n3_acos_to(&arr->p_data[i], &res->p_data[i]);

    // }
    oarrm3n3_acos_f(arr, res);
}
// ----------------------------------------------------------------------------------------------------
extern void oarrm3n3_atan_f(oarrm3n3_t* arr, oarrm3n3_t* res);
// ****************************************************************************************************
void oarrm3n3_atan_to(oarrm3n3_t* arr, oarrm3n3_t* res){

    // uint64_t i;

    // for( i = 0; i<arr->size; i++){
        
    //     onumm3n3_atan_to(&arr->p_data[i], &res->p_data[i]);

    // }
    oarrm3n3_atan_f( arr,  res);

}
// ----------------------------------------------------------------------------------------------------
extern void oarrm3n3_tan_f(oarrm3n3_t* arr, oarrm3n3_t* res);
// ****************************************************************************************************
void oarrm3n3_tan_to(oarrm3n3_t* arr, oarrm3n3_t* res){

    // uint64_t i;

    // for( i = 0; i<arr->size; i++){
        
    //     onumm3n3_tan_to(&arr->p_data[i], &res->p_data[i]);

    // }
    oarrm3n3_tan_f( arr,  res);
}
// ----------------------------------------------------------------------------------------------------
extern void oarrm3n3_cos_f(oarrm3n3_t* arr, oarrm3n3_t* res);
// ****************************************************************************************************
void oarrm3n3_cos_to(oarrm3n3_t* arr, oarrm3n3_t* res){

    // uint64_t i;

    // for( i = 0; i<arr->size; i++){
        
    //     onumm3n3_cos_to(&arr->p_data[i], &res->p_data[i]);

    // }
    oarrm3n3_cos_f( arr,  res);
}
// ----------------------------------------------------------------------------------------------------
extern void oarrm3n3_sin_f(oarrm3n3_t* arr, oarrm3n3_t* res);
// ****************************************************************************************************
void oarrm3n3_sin_to(oarrm3n3_t* arr, oarrm3n3_t* res){

    // uint64_t i;

    // for( i = 0; i<arr->size; i++){
        
    //     onumm3n3_sin_to(&arr->p_data[i], &res->p_data[i]);

    // }
    oarrm3n3_sin_f( arr,  res);
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm3n3_logb_to(oarrm3n3_t* arr, double base, oarrm3n3_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        onumm3n3_logb_to(&arr->p_data[i], base, &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void oarrm3n3_log10_to(oarrm3n3_t* arr, oarrm3n3_t* res){

    uint64_t i;

    for( i = 0; i<arr->size; i++){
        
        onumm3n3_log10_to(&arr->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------
extern void oarrm3n3_log_f(oarrm3n3_t* arr, oarrm3n3_t* res);
// ****************************************************************************************************
void oarrm3n3_log_to(oarrm3n3_t* arr, oarrm3n3_t* res){

    // uint64_t i;

    // for( i = 0; i<arr->size; i++){
        
    //     onumm3n3_log_to(&arr->p_data[i], &res->p_data[i]);

    // }

    oarrm3n3_log_f( arr,  res); 

}
// ----------------------------------------------------------------------------------------------------

extern void oarrm3n3_exp_f(oarrm3n3_t* arr, oarrm3n3_t* res);
// ****************************************************************************************************
void oarrm3n3_exp_to(oarrm3n3_t* arr, oarrm3n3_t* res){

    // uint64_t i;

    // for( i = 0; i<arr->size; i++){
        
    //     onumm3n3_exp_to(&arr->p_data[i], &res->p_data[i]);

    // }

    oarrm3n3_exp_f( arr,  res); 

}
// ----------------------------------------------------------------------------------------------------

extern void oarrm3n3_pow_f(oarrm3n3_t* arr, double* e, oarrm3n3_t* res);
// ****************************************************************************************************
void oarrm3n3_pow_to(oarrm3n3_t* arr, double e, oarrm3n3_t* res){

    // uint64_t i;

    // for( i = 0; i<arr->size; i++){
        
    //     onumm3n3_pow_to(&arr->p_data[i], e, &res->p_data[i]);

    // }

    oarrm3n3_pow_f( arr, &e, res);


}
// ----------------------------------------------------------------------------------------------------

