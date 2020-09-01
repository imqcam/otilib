
// Division.
// ****************************************************************************************************
void onumm5n3_div_ro_to(coeff_t num, onumm5n3_t* den, onumm5n3_t* res){

    onumm5n3_t inv;
    onumm5n3_pow_to( den, -1, &inv);
    onumm5n3_mul_ro_to(num,&inv,res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_div_oo_to(onumm5n3_t* num, onumm5n3_t* den, onumm5n3_t* res){

    onumm5n3_t inv = onumm5n3_init();
    onumm5n3_pow_to( den, -1, &inv);
    onumm5n3_mul_oo_to( num, &inv, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_div_or_to(onumm5n3_t* num, coeff_t val, onumm5n3_t* res){

    onumm5n3_mul_ro_to(1.0/val, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void onumm5n3_abs_to(onumm5n3_t* num, onumm5n3_t* res){

	if (num->r < 0){
		onumm5n3_neg_to(num,res);
	} else {
		onumm5n3_copy_to(num,res);
	}

}
// ----------------------------------------------------------------------------------------------------