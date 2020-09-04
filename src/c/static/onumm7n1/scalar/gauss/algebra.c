

// 1. Elementwise operations.
// 1.1. Negation.
// ****************************************************************************************************
feonumm7n1_t feonumm7n1_neg(feonumm7n1_t* num){

    feonumm7n1_t res = feonumm7n1_empty_like( num);

    feonumm7n1_neg_to(num,&res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm7n1_neg_to(feonumm7n1_t* num, feonumm7n1_t* res){

    uint64_t i;
    
    // Check dimensions
    feonumm7n1_dimCheck(num,res);

    for ( i = 0; i < num->nip; i++){
    
        onumm7n1_neg_to( &num->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// 1.2. Addition.
// ****************************************************************************************************
feonumm7n1_t feonumm7n1_sum_ff(feonumm7n1_t* lhs, feonumm7n1_t* rhs){
    
    // Perform O + O.
    feonumm7n1_t res;

    res = feonumm7n1_empty_like( lhs);

    feonumm7n1_sum_ff_to( lhs, rhs, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm7n1_t feonumm7n1_sum_of(onumm7n1_t* lhs, feonumm7n1_t* rhs){
    
    // Perform o + O.
    feonumm7n1_t res;
    res = feonumm7n1_empty_like( rhs);

    feonumm7n1_sum_of_to( lhs, rhs, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm7n1_t feonumm7n1_sum_rf(coeff_t lhs, feonumm7n1_t* rhs){
    
    // Perform r + O.
    feonumm7n1_t res;

    res = feonumm7n1_empty_like( rhs);

    feonumm7n1_sum_rf_to( lhs, rhs, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// 1.2. Addition.
// ****************************************************************************************************
void feonumm7n1_sum_ff_to(feonumm7n1_t* lhs, feonumm7n1_t* rhs, feonumm7n1_t* res){
    // Perform O + O.
    uint64_t i;

    // Check inputs to have same number of integration points:
    feonumm7n1_dimCheck( lhs, rhs );
    feonumm7n1_dimCheck( rhs, res );

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < lhs->nip; i++){

        onumm7n1_sum_oo_to(&lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm7n1_sum_of_to(onumm7n1_t* lhs, feonumm7n1_t* rhs, feonumm7n1_t* res){
    
    // Perform o + O.
    uint64_t i;

    // Check inputs:
    feonumm7n1_dimCheck(rhs,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < rhs->nip; i++){
        onumm7n1_sum_oo_to( lhs, &rhs->p_data[i], &res->p_data[i]);
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm7n1_sum_rf_to(coeff_t lhs, feonumm7n1_t* rhs, feonumm7n1_t* res){

    // Perform r + O.
    uint64_t i;

    // Check inputs:
    feonumm7n1_dimCheck(rhs,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < rhs->nip; i++){
        onumm7n1_sum_ro_to(lhs, &rhs->p_data[i], &res->p_data[i]);        
    }

}
// ----------------------------------------------------------------------------------------------------

// 1.2. Subtraction.
// ****************************************************************************************************
feonumm7n1_t feonumm7n1_sub_ff(feonumm7n1_t* lhs, feonumm7n1_t* rhs){
    
    // Perform O + O.
    feonumm7n1_t res;

    res = feonumm7n1_empty_like( lhs);

    feonumm7n1_sub_ff_to( lhs, rhs, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm7n1_t feonumm7n1_sub_of(onumm7n1_t* lhs, feonumm7n1_t* rhs){
    
    // Perform o + O.
    feonumm7n1_t res;
    res = feonumm7n1_empty_like( rhs);

    feonumm7n1_sub_of_to( lhs, rhs, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm7n1_t feonumm7n1_sub_fo(feonumm7n1_t* lhs, onumm7n1_t* rhs){
    
    // Perform o + O.
    feonumm7n1_t res;
    res = feonumm7n1_empty_like( lhs);

    feonumm7n1_sub_fo_to( lhs, rhs, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm7n1_t feonumm7n1_sub_rf(coeff_t lhs, feonumm7n1_t* rhs){
    
    // Perform r + O.
    feonumm7n1_t res;

    res = feonumm7n1_empty_like( rhs);

    feonumm7n1_sub_rf_to( lhs, rhs, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm7n1_t feonumm7n1_sub_fr(feonumm7n1_t* lhs, coeff_t rhs){
    
    // Perform r + O.
    feonumm7n1_t res;

    res = feonumm7n1_empty_like( lhs);

    feonumm7n1_sub_fr_to( lhs, rhs, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// 1.2. Subtraction.
// ****************************************************************************************************
void feonumm7n1_sub_ff_to(feonumm7n1_t* lhs, feonumm7n1_t* rhs, feonumm7n1_t* res){
    // Perform O + O.
    uint64_t i;

    // Check inputs to have same number of integration points:
    feonumm7n1_dimCheck( lhs, rhs );
    feonumm7n1_dimCheck( rhs, res );

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < lhs->nip; i++){

        onumm7n1_sub_oo_to(&lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm7n1_sub_of_to(onumm7n1_t* lhs, feonumm7n1_t* rhs, feonumm7n1_t* res){
    
    // Perform o + O.
    uint64_t i;

    // Check inputs:
    feonumm7n1_dimCheck(rhs,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < rhs->nip; i++){
        onumm7n1_sub_oo_to( lhs, &rhs->p_data[i], &res->p_data[i]);
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm7n1_sub_fo_to(feonumm7n1_t* lhs, onumm7n1_t* rhs, feonumm7n1_t* res){
    
    // Perform o + O.
    uint64_t i;

    // Check inputs:
    feonumm7n1_dimCheck(lhs,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < lhs->nip; i++){
        onumm7n1_sub_oo_to( &lhs->p_data[i],  rhs, &res->p_data[i]);
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm7n1_sub_rf_to(coeff_t lhs, feonumm7n1_t* rhs, feonumm7n1_t* res){

    // Perform r + O.
    uint64_t i;

    // Check inputs:
    feonumm7n1_dimCheck(rhs,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < rhs->nip; i++){
        onumm7n1_sub_ro_to(lhs, &rhs->p_data[i], &res->p_data[i]);        
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm7n1_sub_fr_to(feonumm7n1_t* lhs, coeff_t rhs, feonumm7n1_t* res){

    // Perform r + O.
    uint64_t i;

    // Check inputs:
    feonumm7n1_dimCheck(lhs,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < lhs->nip; i++){
        onumm7n1_sub_or_to(&lhs->p_data[i], rhs, &res->p_data[i]);        
    }

}
// ----------------------------------------------------------------------------------------------------

// 1.4. Multiplication.
// ****************************************************************************************************
feonumm7n1_t feonumm7n1_mul_ff(feonumm7n1_t* lhs, feonumm7n1_t* rhs){
    
    // Perform O + O.
    feonumm7n1_t res;

    res = feonumm7n1_empty_like( lhs);

    feonumm7n1_mul_ff_to( lhs, rhs, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm7n1_t feonumm7n1_mul_of(onumm7n1_t* lhs, feonumm7n1_t* rhs){
    
    // Perform o + O.
    feonumm7n1_t res;
    res = feonumm7n1_empty_like( rhs);

    feonumm7n1_mul_of_to( lhs, rhs, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm7n1_t feonumm7n1_mul_rf(coeff_t lhs, feonumm7n1_t* rhs){
    
    // Perform r + O.
    feonumm7n1_t res;

    res = feonumm7n1_empty_like( rhs);

    feonumm7n1_mul_rf_to( lhs, rhs, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// 1.4. Multiplication.
// ****************************************************************************************************
void feonumm7n1_mul_ff_to(feonumm7n1_t* lhs, feonumm7n1_t* rhs, feonumm7n1_t* res){
    // Perform O + O.
    uint64_t i;

    // Check inputs to have same number of integration points:
    feonumm7n1_dimCheck( lhs, rhs );
    feonumm7n1_dimCheck( rhs, res );

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < lhs->nip; i++){

        onumm7n1_mul_oo_to(&lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm7n1_mul_of_to(onumm7n1_t* lhs, feonumm7n1_t* rhs, feonumm7n1_t* res){
    
    // Perform o + O.
    uint64_t i;

    // Check inputs:
    feonumm7n1_dimCheck(rhs,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < rhs->nip; i++){
        onumm7n1_mul_oo_to( lhs, &rhs->p_data[i], &res->p_data[i]);
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm7n1_mul_rf_to(coeff_t lhs, feonumm7n1_t* rhs, feonumm7n1_t* res){

    // Perform r + O.
    uint64_t i;

    // Check inputs:
    feonumm7n1_dimCheck(rhs,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < rhs->nip; i++){
        onumm7n1_mul_ro_to(lhs, &rhs->p_data[i], &res->p_data[i]);        
    }

}
// ----------------------------------------------------------------------------------------------------

// 1.5. Division.
// ****************************************************************************************************
feonumm7n1_t feonumm7n1_div_ff(feonumm7n1_t* lhs, feonumm7n1_t* rhs){
    
    // Perform O + O.
    feonumm7n1_t res;

    res = feonumm7n1_empty_like( lhs);

    feonumm7n1_div_ff_to( lhs, rhs, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm7n1_t feonumm7n1_div_of(onumm7n1_t* lhs, feonumm7n1_t* rhs){
    
    // Perform o + O.
    feonumm7n1_t res;
    res = feonumm7n1_empty_like( rhs);

    feonumm7n1_div_of_to( lhs, rhs, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm7n1_t feonumm7n1_div_fo(feonumm7n1_t* lhs, onumm7n1_t* rhs){
    
    // Perform o + O.
    feonumm7n1_t res;
    res = feonumm7n1_empty_like( lhs);

    feonumm7n1_div_fo_to( lhs, rhs, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm7n1_t feonumm7n1_div_rf(coeff_t lhs, feonumm7n1_t* rhs){
    
    // Perform r + O.
    feonumm7n1_t res;

    res = feonumm7n1_empty_like( rhs);

    feonumm7n1_div_rf_to( lhs, rhs, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
feonumm7n1_t feonumm7n1_div_fr(feonumm7n1_t* lhs, coeff_t rhs){
    
    // Perform r + O.
    feonumm7n1_t res;

    res = feonumm7n1_empty_like( lhs);

    feonumm7n1_div_fr_to( lhs, rhs, &res);

    return res;
}
// ----------------------------------------------------------------------------------------------------

// 1.5. Division.
// ****************************************************************************************************
void feonumm7n1_div_ff_to(feonumm7n1_t* lhs, feonumm7n1_t* rhs, feonumm7n1_t* res){
    // Perform O + O.
    uint64_t i;

    // Check inputs to have same number of integration points:
    feonumm7n1_dimCheck( lhs, rhs );
    feonumm7n1_dimCheck( rhs, res );

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < lhs->nip; i++){

        onumm7n1_div_oo_to(&lhs->p_data[i], &rhs->p_data[i], &res->p_data[i]);

    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm7n1_div_of_to(onumm7n1_t* lhs, feonumm7n1_t* rhs, feonumm7n1_t* res){
    
    // Perform o + O.
    uint64_t i;

    // Check inputs:
    feonumm7n1_dimCheck(rhs,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < rhs->nip; i++){
        onumm7n1_div_oo_to( lhs, &rhs->p_data[i], &res->p_data[i]);
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm7n1_div_fo_to(feonumm7n1_t* lhs, onumm7n1_t* rhs, feonumm7n1_t* res){
    
    // Perform o + O.
    uint64_t i;

    // Check inputs:
    feonumm7n1_dimCheck(lhs,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < lhs->nip; i++){
        onumm7n1_div_oo_to( &lhs->p_data[i],  rhs, &res->p_data[i]);
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm7n1_div_rf_to(coeff_t lhs, feonumm7n1_t* rhs, feonumm7n1_t* res){

    // Perform r + O.
    uint64_t i;

    // Check inputs:
    feonumm7n1_dimCheck(rhs,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < rhs->nip; i++){
        onumm7n1_div_ro_to(lhs, &rhs->p_data[i], &res->p_data[i]);        
    }

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void feonumm7n1_div_fr_to(feonumm7n1_t* lhs, coeff_t rhs, feonumm7n1_t* res){

    // Perform r + O.
    uint64_t i;

    // Check inputs:
    feonumm7n1_dimCheck(lhs,res);

    // Loop for every element and add real to the oti number.
    for ( i = 0; i < lhs->nip; i++){
        onumm7n1_div_or_to(&lhs->p_data[i], rhs, &res->p_data[i]);        
    }

}
// ----------------------------------------------------------------------------------------------------

