
cdef extern from "oti/oti.h" nogil:

  # Defs from "real.h"
  ctypedef struct darr_t:
    coeff_t*       p_data
    uint64_t        nrows
    uint64_t        ncols
    uint64_t         size

  # Include functions from "real.h"
  #---------------------------------------------------------------------------------------------------

  darr_t darr_atanh(darr_t* arr);
  void darr_atanh_to(darr_t* arr, darr_t* res);
  darr_t darr_asinh(darr_t* arr);
  void darr_asinh_to(darr_t* arr, darr_t* res);
  darr_t darr_acosh(darr_t* arr);
  void darr_acosh_to(darr_t* arr, darr_t* res);
  darr_t darr_tanh(darr_t* arr);
  void darr_tanh_to(darr_t* arr, darr_t* res);
  darr_t darr_sqrt(darr_t* arr);
  void darr_sqrt_to(darr_t* arr, darr_t* res);
  darr_t darr_cosh(darr_t* arr);
  void darr_cosh_to(darr_t* arr, darr_t* res);
  darr_t darr_sinh(darr_t* arr);
  void darr_sinh_to(darr_t* arr, darr_t* res);
  darr_t darr_asin(darr_t* arr);
  void darr_asin_to(darr_t* arr, darr_t* res);
  darr_t darr_acos(darr_t* arr);
  void darr_acos_to(darr_t* arr, darr_t* res);
  darr_t darr_atan(darr_t* arr);
  void darr_atan_to(darr_t* arr, darr_t* res);
  darr_t darr_tan(darr_t* arr);
  void darr_tan_to(darr_t* arr, darr_t* res);
  darr_t darr_cos(darr_t* arr);
  void darr_cos_to(darr_t* arr, darr_t* res);
  darr_t darr_sin(darr_t* arr );
  void darr_sin_to(darr_t* arr, darr_t* res);
  darr_t darr_logb(darr_t* arr, double base);
  void darr_logb_to(darr_t* arr, double base, darr_t* res);
  darr_t darr_log10(darr_t* arr);
  void darr_log10_to(darr_t* arr, darr_t* res);
  darr_t darr_log(darr_t* arr);
  void darr_log_to(darr_t* arr, darr_t* res);
  darr_t darr_exp(darr_t* arr);
  void darr_exp_to(darr_t* arr, darr_t* res);
  darr_t darr_pow(darr_t* arr, double e);
  void darr_pow_to(darr_t* arr, double e, darr_t* res);

  void der_r_atan2(coeff_t x, coeff_t y, ord_t order, coeff_t* derivs);
  void der_r_logb(coeff_t x, coeff_t base, ord_t order, coeff_t* derivs);
  void der_r_log10(coeff_t x, ord_t order, coeff_t* derivs);
  void der_r_atanh(coeff_t x, ord_t order, coeff_t* derivs);
  void der_r_asinh(coeff_t x, ord_t order, coeff_t* derivs);
  void der_r_acosh(coeff_t x, ord_t order, coeff_t* derivs);
  void der_r_tanh(coeff_t x, ord_t order, coeff_t* derivs);
  void der_r_sqrt(coeff_t x, ord_t order, coeff_t* derivs);
  void der_r_cosh(coeff_t x, ord_t order, coeff_t* derivs);
  void der_r_sinh(coeff_t x, ord_t order, coeff_t* derivs);
  void der_r_asin(coeff_t x, ord_t order, coeff_t* derivs);
  void der_r_acos(coeff_t x, ord_t order, coeff_t* derivs);
  void der_r_atan(coeff_t x, ord_t order, coeff_t* derivs);
  void der_r_tan(coeff_t x, ord_t order, coeff_t* derivs);
  void der_r_cos(coeff_t x, ord_t order, coeff_t* derivs);
  void der_r_sin(coeff_t x, ord_t order, coeff_t* derivs);
  void der_r_log(coeff_t x , ord_t order, coeff_t* derivs);
  void der_r_exp(coeff_t x, ord_t order, coeff_t* derivs);
  void der_r_pow(coeff_t x, coeff_t e, ord_t order, coeff_t* derivs);
  
  darr_t darr_matmul(darr_t* arr1, darr_t* arr2 );
  void darr_matmul_to(darr_t* arr1, darr_t* arr2, darr_t* aRes );

  darr_t darr_transpose(darr_t* arr1);
  void darr_transpose_to(darr_t* arr1, darr_t* aRes);

  darr_t darr_invert(darr_t* arr1);
  void darr_invert_to(darr_t* arr1, darr_t* aRes);

  coeff_t darr_det( darr_t* arr1 );

  void darr_neg_to(darr_t* arr1, darr_t* aRes);
  darr_t darr_neg(darr_t* arr1);
  darr_t darr_div_RR(darr_t* arr1, darr_t* arr2);
  darr_t darr_div_Rr(darr_t* arr1, coeff_t num);
  darr_t darr_div_rR(coeff_t num, darr_t* arr1);
  void darr_div_RR_to(darr_t* arr1, darr_t* arr2, darr_t* aRes);
  void darr_div_Rr_to(darr_t* arr1, coeff_t num, darr_t* aRes);
  void darr_div_rR_to(coeff_t num, darr_t* arr2, darr_t* aRes);
  darr_t darr_mul_RR(darr_t* arr1, darr_t* arr2);
  darr_t darr_mul_rR(coeff_t num, darr_t* arr1);
  void darr_mul_RR_to(darr_t* arr1, darr_t* arr2, darr_t* aRes);
  void darr_mul_rR_to(coeff_t num, darr_t* arr1, darr_t* aRes);
  darr_t darr_sub_RR(darr_t* arr1, darr_t* arr2);
  darr_t darr_sub_Rr(darr_t* arr1, coeff_t num);
  darr_t darr_sub_rR(coeff_t num, darr_t* arr1);
  void darr_sub_RR_to(darr_t* arr1, darr_t* arr2, darr_t* aRes);
  void darr_sub_Rr_to(darr_t* arr1, coeff_t num, darr_t* aRes);
  void darr_sub_rR_to(coeff_t num, darr_t* arr1, darr_t* aRes);
  darr_t darr_sum_RR(darr_t* arr1, darr_t* arr2);
  darr_t darr_sum_rR(coeff_t num, darr_t* arr1);
  void darr_sum_RR_to(darr_t* arr1, darr_t* arr2, darr_t* aRes);
  void darr_sum_rR_to(coeff_t num, darr_t* arr1, darr_t* aRes);
  void darr_set_all( coeff_t num, darr_t* arr);
  coeff_t darr_get_item_ij(darr_t* arr, uint64_t i, uint64_t j);
  coeff_t darr_get_item_i(darr_t* arr, uint64_t i);
  void darr_set_item_ij( coeff_t num, uint64_t i, uint64_t j, darr_t* arr);
  void darr_set_item_i( coeff_t num, uint64_t i, darr_t* arr);
  darr_t   darr_copy(darr_t* src );
  void     darr_copy_to(darr_t* src, darr_t* dst );
  uint64_t darr_getSize(darr_t* arr);
  darr_t darr_ones( uint64_t nrows, uint64_t ncols);
  darr_t darr_zeros( uint64_t nrows, uint64_t ncols);
  void darr_free(darr_t* arr);
  darr_t darr_createEmpty( uint64_t nrows, uint64_t ncols);
  #---------------------------------------------------------------------------------------------------