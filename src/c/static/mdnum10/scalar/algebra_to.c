
// Division.
// ****************************************************************************************************
void mdnum10_div_ro_to(coeff_t num, mdnum10_t* den, mdnum10_t* res){

    mdnum10_t inv;
    mdnum10_pow_to( den, -1, &inv);
    mdnum10_mul_ro_to(num,&inv,res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum10_div_oo_to(mdnum10_t* num, mdnum10_t* den, mdnum10_t* res){

    mdnum10_t inv = mdnum10_init();
    mdnum10_pow_to( den, -1, &inv);
    mdnum10_mul_oo_to( num, &inv, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum10_div_or_to(mdnum10_t* num, coeff_t val, mdnum10_t* res){

    mdnum10_mul_ro_to(1.0/val, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum10_abs_to(mdnum10_t* num, mdnum10_t* res){

	if (num->r < 0){
		mdnum10_neg_to(num,res);
	} else {
		mdnum10_copy_to(num,res);
	}

}
// ----------------------------------------------------------------------------------------------------