
// Division.
// ****************************************************************************************************
void onumm7n1_div_ro_to(coeff_t num, onumm7n1_t* den, onumm7n1_t* res){

    onumm7n1_t inv;
    onumm7n1_pow_to( den, -1, &inv);
    onumm7n1_mul_ro_to(num,&inv,res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n1_div_oo_to(onumm7n1_t* num, onumm7n1_t* den, onumm7n1_t* res){

    onumm7n1_t inv = onumm7n1_init();
    onumm7n1_pow_to( den, -1, &inv);
    onumm7n1_mul_oo_to( num, &inv, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n1_div_or_to(onumm7n1_t* num, coeff_t val, onumm7n1_t* res){

    onumm7n1_mul_ro_to(1.0/val, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm7n1_abs_to(onumm7n1_t* num, onumm7n1_t* res){

	if (num->r < 0){
		onumm7n1_neg_to(num,res);
	} else {
		onumm7n1_copy_to(num,res);
	}

}
// ----------------------------------------------------------------------------------------------------