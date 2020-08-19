#ifndef OTI_MDNUM3_SCALAR_ALGEBRA_H
#define OTI_MDNUM3_SCALAR_ALGEBRA_H

mdnum3_t mdnum3_neg(  mdnum3_t* lhs);
void mdnum3_neg_to(  mdnum3_t* lhs, mdnum3_t* res);
mdnum3_t mdnum3_add_oo(  mdnum3_t* lhs,  mdnum3_t* rhs);
void mdnum3_add_oo_to(  mdnum3_t* lhs,  mdnum3_t* rhs, mdnum3_t* res);
mdnum3_t mdnum3_add_ro(  coeff_t lhs,  mdnum3_t* rhs);
void mdnum3_add_ro_to(  coeff_t lhs,  mdnum3_t* rhs, mdnum3_t* res);
mdnum3_t mdnum3_sub_oo(  mdnum3_t lhs,  mdnum3_t* rhs);
void mdnum3_sub_oo_to(  mdnum3_t lhs,  mdnum3_t* rhs, mdnum3_t* res);
mdnum3_t mdnum3_sub_ro(  coeff_t lhs,  mdnum3_t* rhs);
void mdnum3_sub_ro_to(  coeff_t lhs,  mdnum3_t* rhs, mdnum3_t* res);
mdnum3_t mdnum3_sub_or(  mdnum3_t* lhs,  coeff_t rhs);
void mdnum3_sub_or_to(  mdnum3_t* lhs,  coeff_t rhs, mdnum3_t* res);
mdnum3_t mdnum3_mul_oo(  mdnum3_t* lhs,  mdnum3_t* rhs);
void mdnum3_mul_oo_to(  mdnum3_t* lhs,  mdnum3_t* rhs, mdnum3_t* res);
mdnum3_t mdnum3_mul_ro(  coeff_t lhs,  mdnum3_t* rhs);
void mdnum3_mul_ro_to(  coeff_t lhs,  mdnum3_t* rhs, mdnum3_t* res);
mdnum3_t mdnum3_trunc_mul_oo(  mdnum3_t* lhs,  mdnum3_t* rhs);
void mdnum3_trunc_mul_oo_to(  mdnum3_t* lhs,  mdnum3_t* rhs, mdnum3_t* res);
mdnum3_t mdnum3_gem_oo(  mdnum3_t* a,  mdnum3_t* b,  mdnum3_t* c);
void mdnum3_gem_oo_to(  mdnum3_t* a,  mdnum3_t* b,  mdnum3_t* c, mdnum3_t* res);
mdnum3_t mdnum3_gem_ro(  coeff_t a,  mdnum3_t* b,  mdnum3_t* c);
void mdnum3_gem_ro_to(  coeff_t a,  mdnum3_t* b,  mdnum3_t* c, mdnum3_t* res);
mdnum3_t mdnum3_feval(coeff_t* feval_re, mdnum3_t* x);
void mdnum3_feval_to(coeff_t* feval_re, mdnum3_t* x, mdnum3_t* res);
mdnum3_t mdnum3_neg(  mdnum3_t* lhs);
void mdnum3_neg_to(  mdnum3_t* lhs, mdnum3_t* res);
mdnum3_t mdnum3_add_oo(  mdnum3_t* lhs,  mdnum3_t* rhs);
void mdnum3_add_oo_to(  mdnum3_t* lhs,  mdnum3_t* rhs, mdnum3_t* res);
mdnum3_t mdnum3_add_ro(  coeff_t lhs,  mdnum3_t* rhs);
void mdnum3_add_ro_to(  coeff_t lhs,  mdnum3_t* rhs, mdnum3_t* res);
mdnum3_t mdnum3_sub_oo(  mdnum3_t lhs,  mdnum3_t* rhs);
void mdnum3_sub_oo_to(  mdnum3_t lhs,  mdnum3_t* rhs, mdnum3_t* res);
mdnum3_t mdnum3_sub_ro(  coeff_t lhs,  mdnum3_t* rhs);
void mdnum3_sub_ro_to(  coeff_t lhs,  mdnum3_t* rhs, mdnum3_t* res);
mdnum3_t mdnum3_sub_or(  mdnum3_t* lhs,  coeff_t rhs);
void mdnum3_sub_or_to(  mdnum3_t* lhs,  coeff_t rhs, mdnum3_t* res);
mdnum3_t mdnum3_mul_oo(  mdnum3_t* lhs,  mdnum3_t* rhs);
void mdnum3_mul_oo_to(  mdnum3_t* lhs,  mdnum3_t* rhs, mdnum3_t* res);
mdnum3_t mdnum3_mul_ro(  coeff_t lhs,  mdnum3_t* rhs);
void mdnum3_mul_ro_to(  coeff_t lhs,  mdnum3_t* rhs, mdnum3_t* res);
mdnum3_t mdnum3_trunc_mul_oo(  mdnum3_t* lhs,  mdnum3_t* rhs);
void mdnum3_trunc_mul_oo_to(  mdnum3_t* lhs,  mdnum3_t* rhs, mdnum3_t* res);
mdnum3_t mdnum3_gem_oo(  mdnum3_t* a,  mdnum3_t* b,  mdnum3_t* c);
void mdnum3_gem_oo_to(  mdnum3_t* a,  mdnum3_t* b,  mdnum3_t* c, mdnum3_t* res);
mdnum3_t mdnum3_gem_ro(  coeff_t a,  mdnum3_t* b,  mdnum3_t* c);
void mdnum3_gem_ro_to(  coeff_t a,  mdnum3_t* b,  mdnum3_t* c, mdnum3_t* res);
mdnum3_t mdnum3_feval(coeff_t* feval_re, mdnum3_t* x);
void mdnum3_feval_to(coeff_t* feval_re, mdnum3_t* x, mdnum3_t* res);


#endif