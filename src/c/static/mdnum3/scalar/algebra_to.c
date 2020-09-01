
// Division.
// ****************************************************************************************************
void mdnum3_div_ro_to(coeff_t num, mdnum3_t* den, mdnum3_t* res){

    mdnum3_t inv;
    mdnum3_pow_to( den, -1, &inv);
    mdnum3_mul_ro_to(num,&inv,res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_div_oo_to(mdnum3_t* num, mdnum3_t* den, mdnum3_t* res){

    mdnum3_t inv = mdnum3_init();
    mdnum3_pow_to( den, -1, &inv);
    mdnum3_mul_oo_to( num, &inv, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_div_or_to(mdnum3_t* num, coeff_t val, mdnum3_t* res){

    mdnum3_mul_ro_to(1.0/val, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum3_abs_to(mdnum3_t* num, mdnum3_t* res){

	if (num->r < 0){
		mdnum3_neg_to(num,res);
	} else {
		mdnum3_copy_to(num,res);
	}

}
// ----------------------------------------------------------------------------------------------------