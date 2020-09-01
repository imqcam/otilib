
// Division.
// ****************************************************************************************************
void mdnum4_div_ro_to(coeff_t num, mdnum4_t* den, mdnum4_t* res){

    mdnum4_t inv;
    mdnum4_pow_to( den, -1, &inv);
    mdnum4_mul_ro_to(num,&inv,res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum4_div_oo_to(mdnum4_t* num, mdnum4_t* den, mdnum4_t* res){

    mdnum4_t inv = mdnum4_init();
    mdnum4_pow_to( den, -1, &inv);
    mdnum4_mul_oo_to( num, &inv, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum4_div_or_to(mdnum4_t* num, coeff_t val, mdnum4_t* res){

    mdnum4_mul_ro_to(1.0/val, num, res);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
void mdnum4_abs_to(mdnum4_t* num, mdnum4_t* res){

	if (num->r < 0){
		mdnum4_neg_to(num,res);
	} else {
		mdnum4_copy_to(num,res);
	}

}
// ----------------------------------------------------------------------------------------------------