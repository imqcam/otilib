#ifndef OTI_MDNUM2_SCALAR_ALGEBRA_H
#define OTI_MDNUM2_SCALAR_ALGEBRA_H

mdnum2_t mdnum2_abs(mdnum2_t* num);
mdnum2_t mdnum2_div_ro(coeff_t num, mdnum2_t* den);
mdnum2_t mdnum2_div_oo(mdnum2_t* num, mdnum2_t* den);
mdnum2_t mdnum2_div_or(mdnum2_t* num, coeff_t val);
void mdnum2_div_ro_to(coeff_t num, mdnum2_t* den, mdnum2_t* res);
void mdnum2_div_oo_to(mdnum2_t* num, mdnum2_t* den, mdnum2_t* res);
void mdnum2_div_or_to(mdnum2_t* num, coeff_t val, mdnum2_t* res);
void mdnum2_abs_to(mdnum2_t* num, mdnum2_t* res);

mdnum2_t mdnum2_neg(  mdnum2_t* lhs);
void mdnum2_neg_to(  mdnum2_t* lhs, mdnum2_t* res);
mdnum2_t mdnum2_sum_oo(  mdnum2_t* lhs,  mdnum2_t* rhs);
void mdnum2_sum_oo_to(  mdnum2_t* lhs,  mdnum2_t* rhs, mdnum2_t* res);
mdnum2_t mdnum2_sum_ro(  coeff_t lhs,  mdnum2_t* rhs);
void mdnum2_sum_ro_to(  coeff_t lhs,  mdnum2_t* rhs, mdnum2_t* res);
mdnum2_t mdnum2_sub_oo(  mdnum2_t* lhs,  mdnum2_t* rhs);
void mdnum2_sub_oo_to(  mdnum2_t* lhs,  mdnum2_t* rhs, mdnum2_t* res);
mdnum2_t mdnum2_sub_ro(  coeff_t lhs,  mdnum2_t* rhs);
void mdnum2_sub_ro_to(  coeff_t lhs,  mdnum2_t* rhs, mdnum2_t* res);
mdnum2_t mdnum2_sub_or(  mdnum2_t* lhs,  coeff_t rhs);
void mdnum2_sub_or_to(  mdnum2_t* lhs,  coeff_t rhs, mdnum2_t* res);
mdnum2_t mdnum2_mul_oo(  mdnum2_t* lhs,  mdnum2_t* rhs);
void mdnum2_mul_oo_to(  mdnum2_t* lhs,  mdnum2_t* rhs, mdnum2_t* res);
mdnum2_t mdnum2_mul_ro(  coeff_t lhs,  mdnum2_t* rhs);
void mdnum2_mul_ro_to(  coeff_t lhs,  mdnum2_t* rhs, mdnum2_t* res);
mdnum2_t mdnum2_trunc_mul_oo(  mdnum2_t* lhs,  mdnum2_t* rhs);
void mdnum2_trunc_mul_oo_to(  mdnum2_t* lhs,  mdnum2_t* rhs, mdnum2_t* res);
mdnum2_t mdnum2_gem_oo(  mdnum2_t* a,  mdnum2_t* b,  mdnum2_t* c);
void mdnum2_gem_oo_to(  mdnum2_t* a,  mdnum2_t* b,  mdnum2_t* c, mdnum2_t* res);
mdnum2_t mdnum2_gem_ro(  coeff_t a,  mdnum2_t* b,  mdnum2_t* c);
void mdnum2_gem_ro_to(  coeff_t a,  mdnum2_t* b,  mdnum2_t* c, mdnum2_t* res);
void mdnum2_trunc_gem_oo_to( ord_t ord_lhs,  mdnum2_t* a,  ord_t ord_rhs,  mdnum2_t* b,  mdnum2_t* c, mdnum2_t* res);
mdnum2_t mdnum2_feval(coeff_t* feval_re, mdnum2_t* x);
void mdnum2_feval_to(coeff_t* feval_re, mdnum2_t* x, mdnum2_t* res);


#endif