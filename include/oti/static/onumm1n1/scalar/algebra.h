#ifndef OTI_ONUMM1N1_SCALAR_ALGEBRA_H
#define OTI_ONUMM1N1_SCALAR_ALGEBRA_H

onumm1n1_t onumm1n1_abs(onumm1n1_t* num);
onumm1n1_t onumm1n1_div_ro(coeff_t num, onumm1n1_t* den);
onumm1n1_t onumm1n1_div_oo(onumm1n1_t* num, onumm1n1_t* den);
onumm1n1_t onumm1n1_div_or(onumm1n1_t* num, coeff_t val);
void onumm1n1_div_ro_to(coeff_t num, onumm1n1_t* den, onumm1n1_t* res);
void onumm1n1_div_oo_to(onumm1n1_t* num, onumm1n1_t* den, onumm1n1_t* res);
void onumm1n1_div_or_to(onumm1n1_t* num, coeff_t val, onumm1n1_t* res);
void onumm1n1_abs_to(onumm1n1_t* num, onumm1n1_t* res);

onumm1n1_t onumm1n1_neg(  onumm1n1_t* lhs);
void onumm1n1_neg_to(  onumm1n1_t* lhs, onumm1n1_t* res);
onumm1n1_t onumm1n1_sum_oo(  onumm1n1_t* lhs,  onumm1n1_t* rhs);
void onumm1n1_sum_oo_to(  onumm1n1_t* lhs,  onumm1n1_t* rhs, onumm1n1_t* res);
onumm1n1_t onumm1n1_sum_ro(  coeff_t lhs,  onumm1n1_t* rhs);
void onumm1n1_sum_ro_to(  coeff_t lhs,  onumm1n1_t* rhs, onumm1n1_t* res);
onumm1n1_t onumm1n1_sub_oo(  onumm1n1_t* lhs,  onumm1n1_t* rhs);
void onumm1n1_sub_oo_to(  onumm1n1_t* lhs,  onumm1n1_t* rhs, onumm1n1_t* res);
onumm1n1_t onumm1n1_sub_ro(  coeff_t lhs,  onumm1n1_t* rhs);
void onumm1n1_sub_ro_to(  coeff_t lhs,  onumm1n1_t* rhs, onumm1n1_t* res);
onumm1n1_t onumm1n1_sub_or(  onumm1n1_t* lhs,  coeff_t rhs);
void onumm1n1_sub_or_to(  onumm1n1_t* lhs,  coeff_t rhs, onumm1n1_t* res);
onumm1n1_t onumm1n1_mul_oo(  onumm1n1_t* lhs,  onumm1n1_t* rhs);
void onumm1n1_mul_oo_to(  onumm1n1_t* lhs,  onumm1n1_t* rhs, onumm1n1_t* res);
onumm1n1_t onumm1n1_mul_ro(  coeff_t lhs,  onumm1n1_t* rhs);
void onumm1n1_mul_ro_to(  coeff_t lhs,  onumm1n1_t* rhs, onumm1n1_t* res);
onumm1n1_t onumm1n1_trunc_mul_oo(  onumm1n1_t* lhs,  onumm1n1_t* rhs);
void onumm1n1_trunc_mul_oo_to(  onumm1n1_t* lhs,  onumm1n1_t* rhs, onumm1n1_t* res);
onumm1n1_t onumm1n1_gem_oo(  onumm1n1_t* a,  onumm1n1_t* b,  onumm1n1_t* c);
void onumm1n1_gem_oo_to(  onumm1n1_t* a,  onumm1n1_t* b,  onumm1n1_t* c, onumm1n1_t* res);
onumm1n1_t onumm1n1_gem_ro(  coeff_t a,  onumm1n1_t* b,  onumm1n1_t* c);
void onumm1n1_gem_ro_to(  coeff_t a,  onumm1n1_t* b,  onumm1n1_t* c, onumm1n1_t* res);
void onumm1n1_trunc_gem_oo_to( ord_t ord_lhs,  onumm1n1_t* a,  ord_t ord_rhs,  onumm1n1_t* b,  onumm1n1_t* c, onumm1n1_t* res);
void onumm1n1_trunc_sum_oo_to(ord_t order, onumm1n1_t* lhs,onumm1n1_t* rhs, onumm1n1_t* res);
void onumm1n1_trunc_sub_oo_to(ord_t order, onumm1n1_t* lhs,onumm1n1_t* rhs, onumm1n1_t* res);
onumm1n1_t onumm1n1_feval(coeff_t* feval_re, onumm1n1_t* x);
void onumm1n1_feval_to(coeff_t* feval_re, onumm1n1_t* x, onumm1n1_t* res);


#endif