#ifndef OTI_ONUMM5N2_SCALAR_BASE_H
#define OTI_ONUMM5N2_SCALAR_BASE_H

// Not implemented correctly:
void onumm5n2_set_im_o(onumm5n2_t* num, imdir_t idx, ord_t order, onumm5n2_t* res);
void onumm5n2_set_deriv_r(coeff_t num, imdir_t idx, ord_t order, onumm5n2_t* res);
void onumm5n2_set_deriv_o(onumm5n2_t* num, imdir_t idx, ord_t order, onumm5n2_t* res);
void onumm5n2_extract_im_to( imdir_t idx, ord_t order, onumm5n2_t* num, onumm5n2_t* res);
onumm5n2_t onumm5n2_extract_im(imdir_t idx, ord_t order, onumm5n2_t* num);
onumm5n2_t onumm5n2_extract_deriv(imdir_t idx, ord_t order, onumm5n2_t* num);
void onumm5n2_extract_deriv_to(imdir_t idx, ord_t order, onumm5n2_t* num, onumm5n2_t* res);
void onumm5n2_get_im_to_o(imdir_t idx, ord_t order, onumm5n2_t* num, onumm5n2_t* res);
onumm5n2_t onumm5n2_get_im_o(imdir_t idx, ord_t order, onumm5n2_t* num);
void onumm5n2_get_im_to_r(imdir_t idx, ord_t order, onumm5n2_t* num, coeff_t* res);

ord_t onumm5n2_get_order(onumm5n2_t* lhs);
onumm5n2_t onumm5n2_get_deriv_o( imdir_t idx, ord_t order, onumm5n2_t* num);
void onumm5n2_get_deriv_to( imdir_t idx, ord_t order, onumm5n2_t* num, onumm5n2_t* res);
void onumm5n2_set_im_r(coeff_t num, imdir_t idx, ord_t order, onumm5n2_t* res);

onumm5n2_t onumm5n2_init(void);
ndir_t onumm5n2_get_ndir_order(ord_t order, onumm5n2_t* num);
ndir_t onumm5n2_get_ndir_total(onumm5n2_t* num);
coeff_t* onumm5n2_get_order_address(ord_t order, onumm5n2_t* num);
onumm5n2_t onumm5n2_create_r(  coeff_t lhs);
void onumm5n2_set_r(  coeff_t lhs, onumm5n2_t* res);
void onumm5n2_set_o(  onumm5n2_t* lhs, onumm5n2_t* res);
onumm5n2_t onumm5n2_get_order_im(ord_t order, onumm5n2_t* lhs);
void onumm5n2_get_order_im_to(ord_t order, onumm5n2_t* lhs, onumm5n2_t* res);
coeff_t onumm5n2_get_item(imdir_t idx, ord_t order, onumm5n2_t* lhs);
coeff_t onumm5n2_get_deriv(imdir_t idx, ord_t order, onumm5n2_t* lhs);
void onumm5n2_set_item(coeff_t val, imdir_t idx, ord_t order, onumm5n2_t* x);
onumm5n2_t onumm5n2_copy(  onumm5n2_t* lhs);
void onumm5n2_copy_to(  onumm5n2_t* lhs, onumm5n2_t* res);
onumm5n2_t onumm5n2_taylor_integrate(coeff_t* deltas,onumm5n2_t* lhs);
void onumm5n2_taylor_integrate_to(coeff_t* deltas,onumm5n2_t* lhs, onumm5n2_t* res);
onumm5n2_t onumm5n2_truncate_im(imdir_t idx, ord_t order, onumm5n2_t* lhs);
void onumm5n2_truncate_im_to(imdir_t idx, ord_t order, onumm5n2_t* lhs, onumm5n2_t* res);
void onumm5n2_print(  onumm5n2_t* lhs);
imdir_t onumm5n2_get_indx(imdir_t idx, ord_t order);


#endif