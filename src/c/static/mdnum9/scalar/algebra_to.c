
// Division.
// ****************************************************************************************************
void mdnum9_div_ro_to(coeff_t num, mdnum9_t* den, mdnum9_t* res){

    mdnum9_t inv;
    mdnum9_pow_to( den, -1, &inv);
    mdnum9_mul_ro_to(num,&inv,res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum9_div_oo_to(mdnum9_t* num, mdnum9_t* den, mdnum9_t* res){

    mdnum9_t inv = mdnum9_init();
    mdnum9_pow_to( den, -1, &inv);
    mdnum9_mul_oo_to( num, &inv, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum9_div_or_to(mdnum9_t* num, coeff_t val, mdnum9_t* res){

    mdnum9_mul_ro_to(1.0/val, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum9_abs_to(mdnum9_t* num, mdnum9_t* res){

	if (num->r < 0){
		mdnum9_neg_to(num,res);
	} else {
		mdnum9_copy_to(num,res);
	}

}
// ----------------------------------------------------------------------------------------------------