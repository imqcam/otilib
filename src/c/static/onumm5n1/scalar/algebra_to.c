
// Division.
// ****************************************************************************************************
void onumm5n1_div_ro_to(coeff_t num, onumm5n1_t* den, onumm5n1_t* res){

    onumm5n1_t inv;
    onumm5n1_pow_to( den, -1, &inv);
    onumm5n1_mul_ro_to(num,&inv,res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n1_div_oo_to(onumm5n1_t* num, onumm5n1_t* den, onumm5n1_t* res){

    onumm5n1_t inv = onumm5n1_init();
    onumm5n1_pow_to( den, -1, &inv);
    onumm5n1_mul_oo_to( num, &inv, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n1_div_or_to(onumm5n1_t* num, coeff_t val, onumm5n1_t* res){

    onumm5n1_mul_ro_to(1.0/val, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n1_abs_to(onumm5n1_t* num, onumm5n1_t* res){

	if (num->r < 0){
		onumm5n1_neg_to(num,res);
	} else {
		onumm5n1_copy_to(num,res);
	}

}
// ----------------------------------------------------------------------------------------------------