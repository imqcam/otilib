cdef extern from "oti/oti.h" nogil:

  # From oti/semisparse/scalar/structures.h

  ctypedef struct semiotin_t: # {
      coeff_t          re;
      coeff_t**      p_im;
      bases_t*    p_bases;
      ndir_t*      p_size;
      ord_t     act_order;
      ord_t     trc_order;
      flag_t         flag;
  # } semiotin_t;

  # From oti/semisparse/array/structures.h

  ctypedef struct arrsso_t: # {
      semiotin_t*    p_data;
      uint64_t       nrows;
      uint64_t       ncols;
      uint64_t        size;
      flag_t          flag;
  # } arrsso_t;


  # From oti/semisparse/array/gauss/structures.h

  ctypedef struct fearrsso_t: # {
      arrsso_t*      p_data;
      uint64_t      nrows;
      uint64_t      ncols;
      uint64_t       size;
      uint64_t        nip;
  # } fearrsso_t;

  # From oti/semisparse/scalar/gauss/structures.h

  ctypedef struct fessoti_t: # {
      semiotin_t*  p_data;
      uint64_t    nip;
  # } fessoti_t;


  # =========================================================================================

  # From oti/semisparse/array/utils.h

  void arrsso_dimCheck_OO_elementwise(arrsso_t* arr1, arrsso_t* arr2, arrsso_t* res);
  void arrsso_dimCheck_RO_elementwise(darr_t*  arr1, arrsso_t* arr2, arrsso_t* res);
  void arrsso_dimCheck_OO_matmul(arrsso_t* arr1, arrsso_t* arr2, arrsso_t* res);
  void arrsso_dimCheck_RO_matmul(darr_t*  arr1, arrsso_t* arr2, arrsso_t* res);
  void arrsso_dimCheck_OR_matmul(arrsso_t* arr1, darr_t*  arr2, arrsso_t* res);
  void arrsso_dimCheck_O_squareness(arrsso_t* arr1, arrsso_t* res);
  void arrsso_dimCheck_OO_samesize(arrsso_t* arr1, arrsso_t* res);
  void arrsso_dimCheck_RO_samesize(darr_t* arr1, arrsso_t* res);
  ord_t arrsso_get_order(arrsso_t* arr);
  void arrsso_get_active_bases(arrsso_t* arr, imdir_t* list_vals, dhelpl_t dhl);


  # From oti/semisparse/array/algebra_elementwise.h

  arrsso_t arrsso_neg(arrsso_t* arr, dhelpl_t dhl);
  void arrsso_neg_to(arrsso_t* rhs, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_sum_OO(arrsso_t*   lhs, arrsso_t* rhs, dhelpl_t dhl);
  arrsso_t arrsso_sum_RO(darr_t*    lhs, arrsso_t* rhs, dhelpl_t dhl);
  arrsso_t arrsso_sum_oO(semiotin_t* lhs, arrsso_t* rhs, dhelpl_t dhl);
  arrsso_t arrsso_sum_rO(coeff_t    lhs, arrsso_t* rhs, dhelpl_t dhl);
  void arrsso_sum_OO_to(arrsso_t*   lhs, arrsso_t* rhs, arrsso_t* res, dhelpl_t dhl);
  void arrsso_sum_RO_to(darr_t*    lhs, arrsso_t* rhs, arrsso_t* res, dhelpl_t dhl);
  void arrsso_sum_oO_to(semiotin_t* lhs, arrsso_t* rhs, arrsso_t* res, dhelpl_t dhl);
  void arrsso_sum_rO_to(coeff_t    lhs, arrsso_t* rhs, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_sub_OO(arrsso_t*   lhs, arrsso_t*   rhs, dhelpl_t dhl);
  arrsso_t arrsso_sub_RO(darr_t*    lhs, arrsso_t*   rhs, dhelpl_t dhl);
  arrsso_t arrsso_sub_OR(arrsso_t*   lhs, darr_t*    rhs, dhelpl_t dhl);
  arrsso_t arrsso_sub_oO(semiotin_t* lhs, arrsso_t*   rhs, dhelpl_t dhl);
  arrsso_t arrsso_sub_Oo(arrsso_t*   lhs, semiotin_t* rhs, dhelpl_t dhl);
  arrsso_t arrsso_sub_rO(coeff_t    lhs, arrsso_t*   rhs, dhelpl_t dhl);
  arrsso_t arrsso_sub_Or(arrsso_t*   lhs, coeff_t    rhs, dhelpl_t dhl);
  void arrsso_sub_OO_to( arrsso_t*   lhs, arrsso_t*   rhs, arrsso_t* res, dhelpl_t dhl);
  void arrsso_sub_RO_to( darr_t*    lhs, arrsso_t*   rhs, arrsso_t* res, dhelpl_t dhl);
  void arrsso_sub_OR_to( arrsso_t*   lhs, darr_t*    rhs, arrsso_t* res, dhelpl_t dhl);
  void arrsso_sub_oO_to( semiotin_t* lhs, arrsso_t*   rhs, arrsso_t* res, dhelpl_t dhl);
  void arrsso_sub_Oo_to( arrsso_t*   lhs, semiotin_t* rhs, arrsso_t* res, dhelpl_t dhl);
  void arrsso_sub_rO_to( coeff_t    lhs, arrsso_t*   rhs, arrsso_t* res, dhelpl_t dhl);
  void arrsso_sub_Or_to( arrsso_t*   lhs, coeff_t    rhs, arrsso_t* res, dhelpl_t dhl);
  void arrsso_trunc_sub_OO_to( ord_t ord, arrsso_t* arr1, arrsso_t* arr2, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_mul_OO(arrsso_t*   lhs, arrsso_t* rhs, dhelpl_t dhl);
  arrsso_t arrsso_mul_RO(darr_t*    lhs, arrsso_t* rhs, dhelpl_t dhl);
  arrsso_t arrsso_mul_oO(semiotin_t* lhs, arrsso_t* rhs, dhelpl_t dhl);
  arrsso_t arrsso_mul_rO(coeff_t    lhs, arrsso_t* rhs, dhelpl_t dhl);
  void arrsso_mul_OO_to(arrsso_t*   lhs, arrsso_t* rhs, arrsso_t* res, dhelpl_t dhl);
  void arrsso_mul_RO_to(darr_t*    lhs, arrsso_t* rhs, arrsso_t* res, dhelpl_t dhl);
  void arrsso_mul_oO_to(semiotin_t* lhs, arrsso_t* rhs, arrsso_t* res, dhelpl_t dhl);
  void arrsso_mul_rO_to(coeff_t    lhs, arrsso_t* rhs, arrsso_t* res, dhelpl_t dhl);
  void arrsso_gem_OO_to(  arrsso_t* arr1, arrsso_t* arr2, arrsso_t* arr3, arrsso_t* res, dhelpl_t dhl);
  void arrsso_gem_oO_to(semiotin_t* arr1, arrsso_t* arr2, arrsso_t* arr3, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_div_OO(arrsso_t*   lhs, arrsso_t*   rhs, dhelpl_t dhl);
  arrsso_t arrsso_div_OR(arrsso_t*   lhs, darr_t*    rhs, dhelpl_t dhl);
  arrsso_t arrsso_div_RO(darr_t*    lhs, arrsso_t*   rhs, dhelpl_t dhl);
  arrsso_t arrsso_div_oO(semiotin_t* lhs, arrsso_t*   rhs, dhelpl_t dhl);
  arrsso_t arrsso_div_Oo(arrsso_t*   lhs, semiotin_t* rhs, dhelpl_t dhl);
  arrsso_t arrsso_div_rO(coeff_t    lhs, arrsso_t*   rhs, dhelpl_t dhl);
  arrsso_t arrsso_div_Or(arrsso_t*   lhs, coeff_t    rhs, dhelpl_t dhl);
  void arrsso_div_OO_to(arrsso_t*   lhs, arrsso_t*   rhs, arrsso_t* res, dhelpl_t dhl);
  void arrsso_div_RO_to(darr_t*    lhs, arrsso_t*   rhs, arrsso_t* res, dhelpl_t dhl);
  void arrsso_div_OR_to(arrsso_t*   lhs, darr_t*    rhs, arrsso_t* res, dhelpl_t dhl);
  void arrsso_div_oO_to(semiotin_t* lhs, arrsso_t*   rhs, arrsso_t* res, dhelpl_t dhl);
  void arrsso_div_Oo_to(arrsso_t*   lhs, semiotin_t* rhs, arrsso_t* res, dhelpl_t dhl);
  void arrsso_div_rO_to(coeff_t    lhs, arrsso_t*   rhs, arrsso_t* res, dhelpl_t dhl);
  void arrsso_div_Or_to(arrsso_t*   lhs, coeff_t    rhs, arrsso_t* res, dhelpl_t dhl);


  # From oti/semisparse/array/algebra_matops.h

  semiotin_t arrsso_dotproduct_OO(    arrsso_t* lhs, arrsso_t* rhs,                 dhelpl_t dhl);
  void      arrsso_dotproduct_OO_to( arrsso_t* lhs, arrsso_t* rhs, semiotin_t* res, dhelpl_t dhl);
  semiotin_t arrsso_dotproduct_RO(     darr_t* lhs, arrsso_t* rhs,                 dhelpl_t dhl);
  void      arrsso_dotproduct_RO_to(  darr_t* lhs, arrsso_t* rhs, semiotin_t* res, dhelpl_t dhl);
  arrsso_t arrsso_matmul_OO(    arrsso_t* lhs, arrsso_t* rhs,               dhelpl_t dhl);
  arrsso_t arrsso_matmul_OR(    arrsso_t* lhs,  darr_t* rhs,               dhelpl_t dhl);
  arrsso_t arrsso_matmul_RO(     darr_t* lhs, arrsso_t* rhs,               dhelpl_t dhl);
  void    arrsso_matmul_OO_to( arrsso_t* lhs, arrsso_t* rhs, arrsso_t* res, dhelpl_t dhl);
  void    arrsso_matmul_OR_to( arrsso_t* lhs,  darr_t* rhs, arrsso_t* res, dhelpl_t dhl);
  void    arrsso_matmul_RO_to(  darr_t* lhs, arrsso_t* rhs, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_transpose(    arrsso_t* arr1,               dhelpl_t dhl);
  void    arrsso_transpose_to( arrsso_t* arr1, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_invert(    arrsso_t* arr1,               dhelpl_t dhl);
  void    arrsso_invert_to( arrsso_t* arr1, arrsso_t* res, dhelpl_t dhl);
  semiotin_t arrsso_det(    arrsso_t* arr1,                 dhelpl_t dhl);
  void      arrsso_det_to( arrsso_t* arr1, semiotin_t* res, dhelpl_t dhl);
  semiotin_t arrsso_norm(    arrsso_t* arr1,                  dhelpl_t dhl);
  void      arrsso_norm_to( arrsso_t* arr1,  semiotin_t* res, dhelpl_t dhl);
  semiotin_t arrsso_pnorm(    arrsso_t* arr1, coeff_t p,                 dhelpl_t dhl);
  void      arrsso_pnorm_to( arrsso_t* arr1, coeff_t p, semiotin_t* res, dhelpl_t dhl);


  # From oti/semisparse/array/gauss.h



  # From oti/semisparse/array/functions.h

  arrsso_t arrsso_atanh(   arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_atanh_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_asinh(   arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_asinh_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_acosh(   arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_acosh_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_tanh(    arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_tanh_to( arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_cbrt(    arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_cbrt_to( arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_sqrt(    arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_sqrt_to( arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_cosh(    arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_cosh_to( arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_sinh(    arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_sinh_to( arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_asin(    arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_asin_to( arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_acos(    arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_acos_to( arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_atan(    arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_atan_to( arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_tan(     arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_tan_to(  arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_cos(     arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_cos_to(  arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_sin(     arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_sin_to(  arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_logb(    arrsso_t* arr, double base,               dhelpl_t dhl);
  void    arrsso_logb_to( arrsso_t* arr, double base, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_log10(   arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_log10_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_log(     arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_log_to(  arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_exp(     arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_exp_to(  arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_pow(     arrsso_t* arr, double e,               dhelpl_t dhl);
  void    arrsso_pow_to(  arrsso_t* arr, double e, arrsso_t* res, dhelpl_t dhl);


  # From oti/semisparse/array/base.h

  void    arrsso_taylor_integrate_to( coeff_t* deltas, arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_taylor_integrate(    coeff_t* deltas, arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_get_order_im_to( ord_t order, arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_get_order_im(    ord_t order, arrsso_t* arr,               dhelpl_t dhl);
  void arrsso_set_slice_r( coeff_t val,
                          int64_t starti, int64_t stopi, int64_t stepi,
                          int64_t startj, int64_t stopj, int64_t stepj,
                           arrsso_t* res, dhelpl_t dhl);
  void arrsso_set_slice_O( arrsso_t* val,
                          int64_t starti, int64_t stopi, int64_t stepi,
                          int64_t startj, int64_t stopj, int64_t stepj,
                           arrsso_t* res, dhelpl_t dhl);
  void arrsso_set_slice_o( semiotin_t* val,
                          int64_t starti, int64_t stopi, int64_t stepi,
                          int64_t startj, int64_t stopj, int64_t stepj,
                           arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_get_slice( arrsso_t* arr,
                          int64_t starti, int64_t stopi, int64_t stepi,
                          int64_t startj, int64_t stopj, int64_t stepj,
                          dhelpl_t dhl);
  void arrsso_get_slice_to( arrsso_t* arr,
                          int64_t starti, int64_t stopi, int64_t stepi,
                          int64_t startj, int64_t stopj, int64_t stepj,
                           arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_truncate_im(    imdir_t idx, ord_t order, arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_truncate_im_to( imdir_t idx, ord_t order, arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_extract_im(   imdir_t idx, ord_t order, arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_extract_im_to(imdir_t idx, ord_t order, arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  darr_t  arrsso_get_deriv(    imdir_t idx, ord_t order, arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_get_deriv_to( imdir_t idx, ord_t order, arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_get_deriv_o(  imdir_t idx, ord_t order, arrsso_t* arr,               dhelpl_t dhl);
  arrsso_t arrsso_extract_deriv(    imdir_t idx, ord_t order, arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_extract_deriv_to( imdir_t idx, ord_t order, arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  darr_t  arrsso_get_im(   imdir_t idx, ord_t order, arrsso_t* arr,               dhelpl_t dhl);
  arrsso_t arrsso_get_im_o( imdir_t idx, ord_t order, arrsso_t* arr,               dhelpl_t dhl);
  void    arrsso_get_im_to(imdir_t idx, ord_t order, arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  void    arrsso_copy_to(arrsso_t* arr, arrsso_t* res, dhelpl_t dhl);
  arrsso_t arrsso_copy(arrsso_t* arr, dhelpl_t dhl);
  void arrsso_set_all_r( coeff_t num, arrsso_t* arr, dhelpl_t dhl);
  void arrsso_set_item_i_r( coeff_t num, uint64_t i, arrsso_t* arr, dhelpl_t dhl);
  void arrsso_set_item_ij_r( coeff_t num, uint64_t i, uint64_t j, arrsso_t* arr, dhelpl_t dhl);
  void arrsso_set_r(   coeff_t  num,   arrsso_t* arr, dhelpl_t dhl);
  void arrsso_set_o( semiotin_t* num,   arrsso_t* arr, dhelpl_t dhl);
  void arrsso_set_O(   arrsso_t* arrin, arrsso_t* arr, dhelpl_t dhl);
  void arrsso_set_all_o( semiotin_t* src, arrsso_t* arr, dhelpl_t dhl);
  void arrsso_set_item_i_o( semiotin_t* num, uint64_t i, arrsso_t* arr, dhelpl_t dhl);
  void arrsso_set_item_ij_o( semiotin_t* num, uint64_t i, uint64_t j, arrsso_t* arr, dhelpl_t dhl);
  semiotin_t arrsso_get_item_i(    arrsso_t* arr, uint64_t i,                             dhelpl_t dhl);
  void      arrsso_get_item_i_to( arrsso_t* arr, uint64_t i,             semiotin_t* res, dhelpl_t dhl);
  semiotin_t arrsso_get_item_ij(   arrsso_t* arr, uint64_t i, uint64_t j,                 dhelpl_t dhl);
  void      arrsso_get_item_ij_to(arrsso_t* arr, uint64_t i, uint64_t j, semiotin_t* res, dhelpl_t dhl);
  arrsso_t arrsso_init();
  void arrsso_free(arrsso_t* arr);
  arrsso_t arrsso_empty_like(arrsso_t* arr, dhelpl_t dhl);
  arrsso_t arrsso_eye(uint64_t nrows, ndir_t* p_nnz, ord_t order, dhelpl_t dhl);
  arrsso_t arrsso_eye_bases(uint64_t nrows, bases_t nbases, ord_t order, dhelpl_t dhl);
  arrsso_t arrsso_ones(uint64_t nrows, uint64_t ncols, ndir_t* p_nnz, ord_t order, dhelpl_t dhl);
  arrsso_t arrsso_ones_bases(uint64_t nrows, uint64_t ncols, bases_t nbases, ord_t order, dhelpl_t dhl);
  arrsso_t arrsso_zeros(uint64_t nrows, uint64_t ncols, ndir_t* p_nnz, ord_t order, dhelpl_t dhl);
  arrsso_t arrsso_zeros_bases(uint64_t nrows, uint64_t ncols, bases_t nbases, ord_t order, dhelpl_t dhl);
  arrsso_t arrsso_createEmpty_predef(uint64_t nrows, uint64_t ncols, ndir_t* p_nnz, ord_t order, dhelpl_t dhl);
  arrsso_t arrsso_createEmpty_bases(uint64_t nrows, uint64_t ncols, bases_t nbases, ord_t order, dhelpl_t dhl);
  size_t arrsso_memory_size( uint64_t size, ndir_t* p_nnz, ord_t order);
  void arrsso_distribute_memory(void* mem, uint64_t nrows, uint64_t ncols, ndir_t* p_nnz, ord_t order,
      flag_t flag, arrsso_t* res);
  void arrsso_save(char* filename, arrsso_t* arr, dhelpl_t dhl);
  arrsso_t arrsso_read(char* filename, dhelpl_t dhl);


  # From oti/semisparse/array/gauss/utils.h

  void fearrsso_dimCheck_FF_samesize(fearrsso_t* arr1, fearrsso_t* arr2, fessoti_t* res);
  void fearrsso_dimCheck_OF_samesize(  arrsso_t* arr1, fearrsso_t* arr2, fessoti_t* res);
  void fearrsso_dimCheck_RF_samesize(   darr_t* arr1, fearrsso_t* arr2, fessoti_t* res);
  void fearrsso_dimCheck_FF_elementwise(fearrsso_t* arr1, fearrsso_t* arr2, fearrsso_t* res);
  void fearrsso_dimCheck_OF_elementwise(  arrsso_t* arr1, fearrsso_t* arr2, fearrsso_t* res);
  void fearrsso_dimCheck_RF_elementwise(   darr_t* arr1, fearrsso_t* arr2, fearrsso_t* res);
  void fearrsso_dimCheck_fF_elementwise( fessoti_t* num1, fearrsso_t* arr2, fearrsso_t* res);
  void fearrsso_dimCheck_Ff_elementwise(fearrsso_t* arr1,  fessoti_t* num2, fearrsso_t* res);
  void fearrsso_dimCheck_FF_matmul( fearrsso_t* lhs, fearrsso_t* rhs, fearrsso_t* res);
  void fearrsso_dimCheck_OF_matmul(   arrsso_t* lhs, fearrsso_t* rhs, fearrsso_t* res);
  void fearrsso_dimCheck_RF_matmul(    darr_t* lhs, fearrsso_t* rhs, fearrsso_t* res);
  void fearrsso_dimCheck_FO_matmul( fearrsso_t* lhs,   arrsso_t* rhs, fearrsso_t* res);
  void fearrsso_dimCheck_FR_matmul( fearrsso_t* lhs,    darr_t* rhs, fearrsso_t* res);
  void fearrsso_dimCheck_F_squareness( fearrsso_t* arr1, fearrsso_t* res);
  void fearrsso_dimCheck_F_transpose( fearrsso_t* arr1, fearrsso_t* res);
  void fearrsso_dimCheck_FfO_integrate(fearrsso_t* arr, fessoti_t* num,arrsso_t* res);
  void fearrsso_get_active_bases(fearrsso_t* arr, imdir_t* list_vals, dhelpl_t dhl);


  # From oti/semisparse/array/gauss/algebra.h

  fearrsso_t fearrsso_neg(    fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_neg_to( fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_sum_FF(   fearrsso_t* lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_sum_FF_to(fearrsso_t* lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_sum_fF(    fessoti_t* lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_sum_fF_to( fessoti_t* lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_sum_OF(     arrsso_t* lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_sum_OF_to(  arrsso_t* lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_sum_RF(      darr_t* lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_sum_RF_to(   darr_t* lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_sum_oF(   semiotin_t* lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_sum_oF_to(semiotin_t* lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_sum_rF(     coeff_t  lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_sum_rF_to(  coeff_t  lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_sub_FF(    fearrsso_t* lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_sub_FF_to( fearrsso_t* lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_sub_fF(    fessoti_t* lhs, fearrsso_t* rhs,                  dhelpl_t dhl);
  void      fearrsso_sub_fF_to( fessoti_t* lhs, fearrsso_t* rhs, fearrsso_t* res,  dhelpl_t dhl);
  fearrsso_t fearrsso_sub_Ff(    fearrsso_t* lhs, fessoti_t* rhs,                  dhelpl_t dhl);
  void      fearrsso_sub_Ff_to( fearrsso_t* lhs, fessoti_t* rhs, fearrsso_t* res,  dhelpl_t dhl);
  fearrsso_t fearrsso_sub_OF(      arrsso_t* lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_sub_OF_to(   arrsso_t* lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_sub_FO(    fearrsso_t* lhs,   arrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_sub_FO_to( fearrsso_t* lhs,   arrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_sub_RF(       darr_t* lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_sub_RF_to(    darr_t* lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_sub_FR(    fearrsso_t* lhs,    darr_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_sub_FR_to( fearrsso_t* lhs,    darr_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_sub_oF(    semiotin_t* lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_sub_oF_to( semiotin_t* lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_sub_Fo(    fearrsso_t* lhs, semiotin_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_sub_Fo_to( fearrsso_t* lhs, semiotin_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_sub_rF(      coeff_t  lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_sub_rF_to(    coeff_t lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_sub_Fr(    fearrsso_t* lhs,   coeff_t  rhs,                 dhelpl_t dhl);
  void      fearrsso_sub_Fr_to( fearrsso_t* lhs,   coeff_t  rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_mul_FF(   fearrsso_t* lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_mul_FF_to(fearrsso_t* lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_mul_fF(    fessoti_t* lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_mul_fF_to( fessoti_t* lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_mul_OF(     arrsso_t* lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_mul_OF_to(  arrsso_t* lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_mul_RF(      darr_t* lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_mul_RF_to(   darr_t* lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_mul_oF(   semiotin_t* lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_mul_oF_to(semiotin_t* lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_mul_rF(     coeff_t  lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_mul_rF_to(  coeff_t  lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_div_FF(    fearrsso_t* lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_div_FF_to( fearrsso_t* lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_div_fF(     fessoti_t* lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_div_fF_to(  fessoti_t* lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_div_Ff(    fearrsso_t* lhs,  fessoti_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_div_Ff_to( fearrsso_t* lhs,  fessoti_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_div_OF(      arrsso_t* lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_div_OF_to(   arrsso_t* lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_div_FO(    fearrsso_t* lhs,   arrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_div_FO_to( fearrsso_t* lhs,   arrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_div_RF(       darr_t* lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_div_RF_to(    darr_t* lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_div_FR(    fearrsso_t* lhs,    darr_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_div_FR_to( fearrsso_t* lhs,    darr_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_div_oF(    semiotin_t* lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_div_oF_to( semiotin_t* lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_div_Fo(    fearrsso_t* lhs, semiotin_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_div_Fo_to( fearrsso_t* lhs, semiotin_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_div_rF(      coeff_t  lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_div_rF_to(    coeff_t lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_div_Fr(    fearrsso_t* lhs,   coeff_t  rhs,                 dhelpl_t dhl);
  void      fearrsso_div_Fr_to( fearrsso_t* lhs,   coeff_t  rhs, fearrsso_t* res, dhelpl_t dhl);
  arrsso_t fearrsso_integrate(    fearrsso_t* arr, fessoti_t* w,               dhelpl_t dhl);
  void    fearrsso_integrate_to( fearrsso_t* arr, fessoti_t* w, arrsso_t* res, dhelpl_t dhl);
  fessoti_t fearrsso_dotproduct_FF(    fearrsso_t* lhs, fearrsso_t* rhs,                dhelpl_t dhl);
  void     fearrsso_dotproduct_FF_to( fearrsso_t* lhs, fearrsso_t* rhs, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fearrsso_dotproduct_OF(      arrsso_t* lhs, fearrsso_t* rhs,                dhelpl_t dhl);
  void     fearrsso_dotproduct_OF_to(   arrsso_t* lhs, fearrsso_t* rhs, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fearrsso_dotproduct_RF(       darr_t* lhs, fearrsso_t* rhs,                dhelpl_t dhl);
  void     fearrsso_dotproduct_RF_to(    darr_t* lhs, fearrsso_t* rhs, fessoti_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_matmul_FF(    fearrsso_t* lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_matmul_FF_to( fearrsso_t* lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_matmul_OF(    arrsso_t*   lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_matmul_OF_to( arrsso_t*   lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_matmul_FO(    fearrsso_t* lhs, arrsso_t*   rhs,                 dhelpl_t dhl);
  void      fearrsso_matmul_FO_to( fearrsso_t* lhs, arrsso_t*   rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_matmul_RF(    darr_t*    lhs, fearrsso_t* rhs,                 dhelpl_t dhl);
  void      fearrsso_matmul_RF_to( darr_t*    lhs, fearrsso_t* rhs, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_matmul_FR(    fearrsso_t* lhs, darr_t*    rhs,                 dhelpl_t dhl);
  void      fearrsso_matmul_FR_to( fearrsso_t* lhs, darr_t*    rhs, fearrsso_t* res, dhelpl_t dhl);
  fessoti_t fearrsso_det(   fearrsso_t* arr,                dhelpl_t dhl);
  void     fearrsso_det_to(fearrsso_t* arr, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fearrsso_norm(     fearrsso_t* arr,                dhelpl_t dhl);
  void     fearrsso_norm_to(  fearrsso_t* arr, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fearrsso_pnorm(    fearrsso_t* arr, coeff_t p,                dhelpl_t dhl);
  void     fearrsso_pnorm_to( fearrsso_t* arr, coeff_t p, fessoti_t* res, dhelpl_t dhl);
  fearrsso_t   fearrsso_invert(    fearrsso_t* arr,                 dhelpl_t dhl);
  void        fearrsso_invert_to( fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t   fearrsso_transpose(   fearrsso_t* arr,                 dhelpl_t dhl);
  void        fearrsso_transpose_to(fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);


  # From oti/semisparse/array/gauss/functions.h

  fearrsso_t fearrsso_atanh(    fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_atanh_to( fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_asinh(    fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_asinh_to( fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_acosh(    fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_acosh_to( fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_tanh(     fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_tanh_to(  fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_sinh(     fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_sinh_to(  fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_cosh(     fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_cosh_to(  fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_atan(     fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_atan_to(  fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_asin(     fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_asin_to(  fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_acos(     fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_acos_to(  fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_tan(      fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_tan_to(   fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_sin(      fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_sin_to(   fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_cos(      fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_cos_to(   fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_logb(     fearrsso_t* arr, double base,                 dhelpl_t dhl);
  void      fearrsso_logb_to(  fearrsso_t* arr, double base, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_log10(    fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_log10_to( fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_log(      fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_log_to(   fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_exp(      fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_exp_to(   fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_cbrt(     fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_cbrt_to(  fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_sqrt(     fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_sqrt_to(  fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_pow(      fearrsso_t* arr, double e,                    dhelpl_t dhl);
  void      fearrsso_pow_to(   fearrsso_t* arr, double e, fearrsso_t* res,    dhelpl_t dhl);


  # From oti/semisparse/array/gauss/base.h

  void      fearrsso_get_order_im_to( ord_t order, fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_get_order_im(    ord_t order, fearrsso_t* arr,                 dhelpl_t dhl);
  fearrsso_t fearrsso_get_deriv(   imdir_t idx, ord_t order, fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_get_deriv_to(imdir_t idx, ord_t order, fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_get_im(      imdir_t idx, ord_t order, fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_get_im_to(   imdir_t idx, ord_t order, fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_truncate_im(   imdir_t idx, ord_t order, fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_truncate_im_to(imdir_t idx, ord_t order, fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_copy(   fearrsso_t* src,                 dhelpl_t dhl);
  void      fearrsso_copy_to(fearrsso_t* src, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_get_im(    imdir_t idx, ord_t order, fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_get_im_to( imdir_t idx, ord_t order, fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_get_deriv(    imdir_t idx, ord_t order, fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_get_deriv_to( imdir_t idx, ord_t order, fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_extract_im(    imdir_t idx, ord_t order, fearrsso_t* arr,                  dhelpl_t dhl);
  void      fearrsso_extract_im_to( imdir_t idx, ord_t order, fearrsso_t* arr,  fearrsso_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_extract_deriv(    imdir_t idx, ord_t order, fearrsso_t* arr,                 dhelpl_t dhl);
  void      fearrsso_extract_deriv_to( imdir_t idx, ord_t order, fearrsso_t* arr, fearrsso_t* res, dhelpl_t dhl);
  arrsso_t   fearrsso_get_item_k(  fearrsso_t* arr, uint64_t k,                         dhelpl_t dhl);
  fessoti_t  fearrsso_get_item_ij( fearrsso_t* arr, uint64_t i, uint64_t j,             dhelpl_t dhl);
  semiotin_t fearrsso_get_item_ijk(fearrsso_t* arr, uint64_t i, uint64_t j, uint64_t k, dhelpl_t dhl);
  void fearrsso_get_item_ij_to(  fearrsso_t* arr, uint64_t i, uint64_t j,
                                 fessoti_t* res, dhelpl_t dhl);
  void fearrsso_get_item_k_to(   fearrsso_t* arr, uint64_t k,
                                  arrsso_t* res, dhelpl_t dhl);
  void fearrsso_get_item_ijk_to( fearrsso_t* arr, uint64_t i, uint64_t j, uint64_t k,
                                semiotin_t* res, dhelpl_t dhl);
  fearrsso_t fearrsso_get_slice(fearrsso_t* arr,
                            int64_t starti, int64_t stopi, int64_t stepi,
                            int64_t startj, int64_t stopj, int64_t stepj,
                             dhelpl_t dhl);
  void      fearrsso_get_slice_to(fearrsso_t* arr,
                            int64_t starti, int64_t stopi, int64_t stepi,
                            int64_t startj, int64_t stopj, int64_t stepj,
                            fearrsso_t* res, dhelpl_t dhl);
  void fearrsso_set_item_ij_r(   coeff_t  elm, uint64_t i, uint64_t j,
                              fearrsso_t* res, dhelpl_t dhl);
  void fearrsso_set_item_ij_o(  semiotin_t* elm, uint64_t i, uint64_t j,
                               fearrsso_t* res, dhelpl_t dhl);
  void fearrsso_set_item_ij_f(  fessoti_t* elm, uint64_t i, uint64_t j,
                              fearrsso_t* res, dhelpl_t dhl);
  void fearrsso_set_item_k_r(    coeff_t  elm, uint64_t k,
                              fearrsso_t* res, dhelpl_t dhl);
  void fearrsso_set_item_k_o(  semiotin_t* elm, uint64_t k,
                              fearrsso_t* res, dhelpl_t dhl);
  void fearrsso_set_item_k_R(    arrsso_t* elm, uint64_t k,
                            fearrsso_t* res, dhelpl_t dhl);
  void fearrsso_set_item_k_O(    arrsso_t* elm, uint64_t k,
                            fearrsso_t* res, dhelpl_t dhl);
  void fearrsso_set_item_ijk_r(   coeff_t  elm, uint64_t i, uint64_t j, uint64_t k,
                               fearrsso_t* res, dhelpl_t dhl);
  void fearrsso_set_item_ijk_o( semiotin_t* elm, uint64_t i, uint64_t j, uint64_t k,
                               fearrsso_t* res, dhelpl_t dhl);
  void fearrsso_set_slice_r( coeff_t val,
                           int64_t starti, int64_t stopi, int64_t stepi,
                           int64_t startj, int64_t stopj, int64_t stepj,
                            fearrsso_t* res, dhelpl_t dhl);
  void fearrsso_set_slice_o( semiotin_t* val,
                           int64_t starti, int64_t stopi, int64_t stepi,
                           int64_t startj, int64_t stopj, int64_t stepj,
                            fearrsso_t* res, dhelpl_t dhl);
  void fearrsso_set_slice_f( fessoti_t* val,
                           int64_t starti, int64_t stopi, int64_t stepi,
                           int64_t startj, int64_t stopj, int64_t stepj,
                            fearrsso_t* res, dhelpl_t dhl);
  void fearrsso_set_slice_O( arrsso_t* val,
                           int64_t starti, int64_t stopi, int64_t stepi,
                           int64_t startj, int64_t stopj, int64_t stepj,
                            fearrsso_t* res, dhelpl_t dhl);
  void fearrsso_set_slice_F( fearrsso_t* val,
                           int64_t starti, int64_t stopi, int64_t stepi,
                           int64_t startj, int64_t stopj, int64_t stepj,
                            fearrsso_t* res, dhelpl_t dhl);
  void fearrsso_set_all_o( semiotin_t* num, fearrsso_t* arr, dhelpl_t dhl );
  void fearrsso_set_all_r(   coeff_t  num, fearrsso_t* arr, dhelpl_t dhl );
  void fearrsso_set_all_f(  fessoti_t* num, fearrsso_t* arr, dhelpl_t dhl );
  void fearrsso_set_r(    coeff_t src, fearrsso_t* res, dhelpl_t dhl );
  void fearrsso_set_o( semiotin_t* src, fearrsso_t* res, dhelpl_t dhl );
  void fearrsso_set_f(  fessoti_t* src, fearrsso_t* res, dhelpl_t dhl );
  void fearrsso_set_R(    darr_t* src, fearrsso_t* res, dhelpl_t dhl );
  void fearrsso_set_O(   arrsso_t* src, fearrsso_t* res, dhelpl_t dhl );
  void fearrsso_set_F( fearrsso_t* src, fearrsso_t* res, dhelpl_t dhl );
  fearrsso_t fearrsso_eye_bases( uint64_t size,
                                 uint64_t nip, bases_t  nbases,
                                 ord_t    order,   dhelpl_t dhl     );
  fearrsso_t fearrsso_zeros_bases( uint64_t nrows,   uint64_t ncols,
                                 uint64_t nIntPts, bases_t  nbases,
                                 ord_t    order,   dhelpl_t dhl     );
  fearrsso_t fearrsso_ones_bases( uint64_t nrows,   uint64_t ncols,
                                 uint64_t nip, bases_t  nbases,
                                 ord_t    order,   dhelpl_t dhl     );
  fearrsso_t fearrsso_createEmpty_bases( uint64_t nrows,   uint64_t ncols,
                                       uint64_t nIntPts, bases_t  nbases,
                                       ord_t    order,   dhelpl_t dhl);
  void fearrsso_free(fearrsso_t* arr);
  fearrsso_t fearrsso_init();
  ord_t fearrsso_get_order(fearrsso_t* arr);


  # From oti/semisparse/scalar/utils.h

  void ssoti_trunc_ssum(semiotin_t* num1, ord_t ord, semiotin_t* res, dhelpl_t dhl );
  void ssoti_trunc_mul(semiotin_t* num1, ord_t ord1,
                      semiotin_t* num2, ord_t ord2,
                      semiotin_t* dest, dhelpl_t dhl );
  void ssoti_trunc_smul_real(coeff_t a, ord_t ord, semiotin_t* res, dhelpl_t dhl);
  void ssoti_get_active_bases(semiotin_t* num, imdir_t* list, dhelpl_t dhl);


  # From oti/semisparse/scalar/algebra.h

  semiotin_t ssoti_div_oo(semiotin_t* num, semiotin_t* den, dhelpl_t dhl);
  semiotin_t ssoti_div_ro(   coeff_t num, semiotin_t* den, dhelpl_t dhl);
  semiotin_t ssoti_div_or(semiotin_t* num,    coeff_t val, dhelpl_t dhl);
  void      ssoti_div_oo_to(semiotin_t* num, semiotin_t* den, semiotin_t* res, dhelpl_t dhl);
  void      ssoti_div_ro_to(coeff_t num, semiotin_t* den, semiotin_t* res, dhelpl_t dhl);
  void      ssoti_div_or_to(semiotin_t* num, coeff_t val, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_mul_oo(   semiotin_t* num1, semiotin_t* num2,                 dhelpl_t dhl);
  semiotin_t ssoti_mul_ro(      coeff_t num1, semiotin_t* num2,                 dhelpl_t dhl);
  semiotin_t ssoti_mul_or(   semiotin_t* num1,    coeff_t num2,                 dhelpl_t dhl);
  semiotin_t ssoti_base_mul( semiotin_t* num1, semiotin_t* num2,                 dhelpl_t dhl);
  semiotin_t ssoti_base_trunc_mul(ord_t ord1, semiotin_t* num1, ord_t ord2, semiotin_t* num2, dhelpl_t dhl);
  void      ssoti_mul_oo_to(semiotin_t* num1, semiotin_t* num2, semiotin_t* res, dhelpl_t dhl);
  void      ssoti_mul_ro_to(   coeff_t num1, semiotin_t* num2, semiotin_t* res, dhelpl_t dhl);
  void      ssoti_mul_or_to(semiotin_t* num1,    coeff_t num2, semiotin_t* res, dhelpl_t dhl);
  void ssoti_gem_oo_to( semiotin_t* a, semiotin_t* b, semiotin_t* c, semiotin_t* res, dhelpl_t dhl);
  void ssoti_gem_or_to( semiotin_t* a,    coeff_t b, semiotin_t* c, semiotin_t* res, dhelpl_t dhl);
  void ssoti_gem_ro_to(    coeff_t a, semiotin_t* b, semiotin_t* c, semiotin_t* res, dhelpl_t dhl);
  void ssoti_trunc_gem_oo_to(ord_t orda, semiotin_t* a, ord_t ordb, semiotin_t* b, semiotin_t* c, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_sub_oo(    semiotin_t* num1, semiotin_t* num2,                 dhelpl_t dhl);
  semiotin_t ssoti_sub_ro(       coeff_t num1, semiotin_t* num2,                 dhelpl_t dhl);
  semiotin_t ssoti_sub_or(    semiotin_t* num1,    coeff_t num2,                 dhelpl_t dhl);
  semiotin_t ssoti_base_sub(semiotin_t* num1, semiotin_t* num2, dhelpl_t dhl);
  void      ssoti_sub_oo_to( semiotin_t* num1, semiotin_t* num2, semiotin_t* res, dhelpl_t dhl);
  void      ssoti_sub_ro_to(    coeff_t num1, semiotin_t* num2, semiotin_t* res, dhelpl_t dhl);
  void      ssoti_sub_or_to( semiotin_t* num1,    coeff_t num2, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_base_trunc_sub(ord_t ord, semiotin_t* num1, semiotin_t* num2, dhelpl_t dhl);
  void ssoti_trunc_sub_oo_to(ord_t ord, semiotin_t* num1, semiotin_t* num2, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_sum_oo(    semiotin_t* num1, semiotin_t* num2,                 dhelpl_t dhl);
  semiotin_t ssoti_sum_ro(       coeff_t num1, semiotin_t* num2,                 dhelpl_t dhl);
  semiotin_t ssoti_sum_or(    semiotin_t* num1,    coeff_t num2,                 dhelpl_t dhl);
  semiotin_t ssoti_base_sum(  semiotin_t* num1, semiotin_t* num2, dhelpl_t dhl);
  void      ssoti_sum_oo_to( semiotin_t* num1, semiotin_t* num2, semiotin_t* res, dhelpl_t dhl);
  void      ssoti_sum_ro_to(    coeff_t num1, semiotin_t* num2, semiotin_t* res, dhelpl_t dhl);
  void      ssoti_sum_or_to( semiotin_t* num1,    coeff_t num2, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_base_trunc_sum(ord_t ord, semiotin_t* num1, semiotin_t* num2, dhelpl_t dhl);
  void ssoti_trunc_sum_oo_to(ord_t ord, semiotin_t* num1, semiotin_t* num2, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_neg(semiotin_t* num, dhelpl_t dhl);
  void      ssoti_neg_to(semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_abs(   semiotin_t* num,                 dhelpl_t dhl);
  void      ssoti_abs_to(semiotin_t* num, semiotin_t* res, dhelpl_t dhl);


  # From oti/semisparse/scalar/gauss.h



  # From oti/semisparse/scalar/functions.h

  semiotin_t ssoti_atanh(semiotin_t* num, dhelpl_t dhl);
  void ssoti_atanh_to(semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_asinh(semiotin_t* num, dhelpl_t dhl);
  void ssoti_asinh_to(semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_acosh(semiotin_t* num, dhelpl_t dhl);
  void ssoti_acosh_to(semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_tanh(semiotin_t* num, dhelpl_t dhl);
  void ssoti_tanh_to(semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_sqrt(semiotin_t* num, dhelpl_t dhl);
  void ssoti_sqrt_to(semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_cbrt(semiotin_t* num, dhelpl_t dhl);
  void ssoti_cbrt_to(semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_cosh(semiotin_t* num, dhelpl_t dhl);
  void ssoti_cosh_to(semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_sinh(semiotin_t* num, dhelpl_t dhl);
  void ssoti_sinh_to(semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_asin(semiotin_t* num, dhelpl_t dhl);
  void ssoti_asin_to(semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_acos(semiotin_t* num, dhelpl_t dhl);
  void ssoti_acos_to(semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_atan(semiotin_t* num, dhelpl_t dhl);
  void ssoti_atan_to(semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_tan(semiotin_t* num, dhelpl_t dhl);
  void ssoti_tan_to(semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_cos(semiotin_t* num, dhelpl_t dhl);
  void ssoti_cos_to(semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_sin(semiotin_t* num, dhelpl_t dhl );
  void ssoti_sin_to(semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_logb(semiotin_t* num, double base, dhelpl_t dhl);
  void ssoti_logb_to(semiotin_t* num, double base, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_log10(semiotin_t* num, dhelpl_t dhl);
  void ssoti_log10_to(semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_log(semiotin_t* num, dhelpl_t dhl);
  void ssoti_log_to(semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_exp(semiotin_t* num, dhelpl_t dhl);
  void ssoti_exp_to(semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_pow(semiotin_t* num, double e, dhelpl_t dhl);
  void ssoti_pow_to(semiotin_t* num, coeff_t e, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_feval(coeff_t* feval_re, semiotin_t* num, dhelpl_t dhl );
  semiotin_t ssoti_base_feval(coeff_t* feval_re, semiotin_t* num, dhelpl_t dhl );
  void ssoti_feval_to(coeff_t* feval_re, semiotin_t* num, semiotin_t* res, dhelpl_t dhl );


  # From oti/semisparse/scalar/base.h

  semiotin_t ssoti_taylor_integrate(    coeff_t* deltas, semiotin_t* num,                 dhelpl_t dhl);
  void      ssoti_taylor_integrate_to( coeff_t* deltas, semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_get_order_im(    ord_t order, semiotin_t* num,                 dhelpl_t dhl);
  void      ssoti_get_order_im_to( ord_t order, semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_truncate_im(    imdir_t idx, ord_t order, semiotin_t* num,                 dhelpl_t dhl);
  void      ssoti_truncate_im_to( imdir_t idx, ord_t order, semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_extract_deriv(   imdir_t idx, ord_t ord, semiotin_t* num,                 dhelpl_t dhl);
  void      ssoti_extract_deriv_to(imdir_t idx, ord_t ord, semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_extract_im(   imdir_t idx, ord_t ord, semiotin_t* num,                 dhelpl_t dhl);
  void      ssoti_extract_im_to(imdir_t idx, ord_t ord, semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  void*     ssoti_read_from_mem_to( void* mem,       semiotin_t* dst, dhelpl_t dhl);
  void      ssoti_save_to_mem(      semiotin_t* num,  void* mem,      dhelpl_t dhl);
  uint64_t  ssoti_get_memsize_save( semiotin_t* num,                  dhelpl_t dhl);
  void* ssoti_distribute_memory(void* mem, const ndir_t* p_nnz, ord_t order, flag_t flag, semiotin_t* res);
  size_t ssoti_memory_size( const ndir_t* p_nnz, ord_t order);
  uint8_t ssoti_requiresrealloc(semiotin_t* src, semiotin_t* dest);
  semiotin_t ssoti_init();
  void ssoti_set_o( semiotin_t* src, semiotin_t* dest, dhelpl_t dhl);
  void ssoti_set_r(    coeff_t src, semiotin_t* dest, dhelpl_t dhl);
  void ssoti_set_trunc( semiotin_t* src, ord_t ord, semiotin_t* dest, dhelpl_t dhl);
  void ssoti_set_deriv_r(   coeff_t  coef, imdir_t idx, ord_t order, semiotin_t* num, dhelpl_t dhl);
  void ssoti_set_deriv_o( semiotin_t* coef, imdir_t idx, ord_t order, semiotin_t* num, dhelpl_t dhl);
  coeff_t   ssoti_get_deriv(    imdir_t idx, ord_t order, semiotin_t* num,                 dhelpl_t dhl);
  semiotin_t ssoti_get_deriv_o(  imdir_t idx, ord_t order, semiotin_t* num,                 dhelpl_t dhl);
  void      ssoti_get_deriv_to( imdir_t idx, ord_t order, semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  semiotin_t ssoti_get_tmp( ndir_t ntmp, ord_t order, dhelpl_t dhl);
  semiotin_t ssoti_get_rtmp(ndir_t ntmp, ord_t order, dhelpl_t dhl);
  void ssoti_insert_item(ndir_t pos, coeff_t val, imdir_t idx, ord_t order, semiotin_t* num, dhelpl_t dhl);
  void ssoti_set_item(   coeff_t val, imdir_t idx, ord_t order, semiotin_t* num, dhelpl_t dhl);
  void ssoti_set_im_r(   coeff_t val, imdir_t idx, ord_t order, semiotin_t* num, dhelpl_t dhl);
  void ssoti_set_im_o(semiotin_t* val, imdir_t idx, ord_t order, semiotin_t* num, dhelpl_t dhl);
  coeff_t ssoti_get_item(    imdir_t idx, ord_t order, semiotin_t* num,                 dhelpl_t dhl);
  coeff_t ssoti_get_im(      imdir_t idx, ord_t order, semiotin_t* num,                 dhelpl_t dhl);
  semiotin_t ssoti_get_im_o(  imdir_t idx, ord_t order, semiotin_t* num,                 dhelpl_t dhl);
  void    ssoti_get_im_to_o( imdir_t idx, ord_t order, semiotin_t* num, semiotin_t* res, dhelpl_t dhl);
  void    ssoti_get_im_to_r( imdir_t idx, ord_t order, semiotin_t* num,   coeff_t* res, dhelpl_t dhl);
  semiotin_t ssoti_copy(             semiotin_t* num,                  dhelpl_t dhl);
  void      ssoti_copy_to(          semiotin_t* src, semiotin_t* dest, dhelpl_t dhl);
  void      ssoti_copy_nomemchk_to( semiotin_t* src, semiotin_t* dest, dhelpl_t dhl);
  void ssoti_print(semiotin_t* num, dhelpl_t dhl);
  void ssoti_free(semiotin_t* num);
  semiotin_t ssoti_createReal_bases(  coeff_t num, bases_t nbases, ord_t order, dhelpl_t dhl);
  semiotin_t ssoti_createEmpty_bases(              bases_t nbases, ord_t order, dhelpl_t dhl);
  semiotin_t ssoti_createReal(coeff_t num, ord_t order, dhelpl_t dhl);
  semiotin_t ssoti_createEmpty( ord_t order, dhelpl_t dhl);
  semiotin_t ssoti_createEmpty_like( semiotin_t* other, dhelpl_t dhl);
  semiotin_t ssoti_createEmpty_predef(ndir_t* p_nnz, ord_t order, dhelpl_t dhl);
  void ssoti_reset_orders(ord_t ord_start, ord_t ord_end, semiotin_t* num, dhelpl_t dhl);


  # From oti/semisparse/scalar/gauss/utils.h

  void fessoti_dimCheck(fessoti_t* arr1,fessoti_t* arr2);
  void fessoti_get_active_bases(fessoti_t* num, imdir_t* list_vals, dhelpl_t dhl);


  # From oti/semisparse/scalar/gauss/algebra.h

  fessoti_t fessoti_neg(   fessoti_t* num,                dhelpl_t dhl);
  void     fessoti_neg_to(fessoti_t* num, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_sum_ff(   fessoti_t* lhs, fessoti_t* rhs,                dhelpl_t dhl);
  void     fessoti_sum_ff_to(fessoti_t* lhs, fessoti_t* rhs, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_sum_of(   semiotin_t* lhs, fessoti_t* rhs,                dhelpl_t dhl);
  void     fessoti_sum_of_to(semiotin_t* lhs, fessoti_t* rhs, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_sum_rf(   coeff_t lhs, fessoti_t* rhs,                dhelpl_t dhl);
  void     fessoti_sum_rf_to(coeff_t lhs, fessoti_t* rhs, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_sub_ff(     fessoti_t* lhs,  fessoti_t* rhs,                dhelpl_t dhl);
  void     fessoti_sub_ff_to(  fessoti_t* lhs,  fessoti_t* rhs, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_sub_of(    semiotin_t* lhs,  fessoti_t* rhs,                dhelpl_t dhl);
  void     fessoti_sub_of_to( semiotin_t* lhs,  fessoti_t* rhs, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_sub_fo(     fessoti_t* lhs, semiotin_t* rhs,                dhelpl_t dhl);
  void     fessoti_sub_fo_to(  fessoti_t* lhs, semiotin_t* rhs, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_sub_rf(       coeff_t lhs,  fessoti_t* rhs,                dhelpl_t dhl);
  void     fessoti_sub_rf_to(    coeff_t lhs,  fessoti_t* rhs, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_sub_fr(     fessoti_t* lhs,    coeff_t rhs,                dhelpl_t dhl);
  void     fessoti_sub_fr_to(  fessoti_t* lhs,    coeff_t rhs, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_mul_ff(   fessoti_t* lhs, fessoti_t* rhs,                dhelpl_t dhl);
  void     fessoti_mul_ff_to(fessoti_t* lhs, fessoti_t* rhs, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_mul_of(   semiotin_t* lhs, fessoti_t* rhs,                dhelpl_t dhl);
  void     fessoti_mul_of_to(semiotin_t* lhs, fessoti_t* rhs, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_mul_rf(   coeff_t lhs, fessoti_t* rhs,                dhelpl_t dhl);
  void     fessoti_mul_rf_to(coeff_t lhs, fessoti_t* rhs, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_div_ff(     fessoti_t* lhs,  fessoti_t* rhs,                dhelpl_t dhl);
  void     fessoti_div_ff_to(  fessoti_t* lhs,  fessoti_t* rhs, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_div_of(    semiotin_t* lhs,  fessoti_t* rhs,                dhelpl_t dhl);
  void     fessoti_div_of_to( semiotin_t* lhs,  fessoti_t* rhs, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_div_fo(     fessoti_t* lhs, semiotin_t* rhs,                dhelpl_t dhl);
  void     fessoti_div_fo_to(  fessoti_t* lhs, semiotin_t* rhs, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_div_rf(       coeff_t lhs,  fessoti_t* rhs,                dhelpl_t dhl);
  void     fessoti_div_rf_to(    coeff_t lhs,  fessoti_t* rhs, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_div_fr(     fessoti_t* lhs,    coeff_t rhs,                dhelpl_t dhl);
  void     fessoti_div_fr_to(  fessoti_t* lhs,    coeff_t rhs, fessoti_t* res, dhelpl_t dhl);


  # From oti/semisparse/scalar/gauss/functions.h

  fessoti_t fessoti_atanh(    fessoti_t* num,                             dhelpl_t dhl);
  void     fessoti_atanh_to( fessoti_t* num, fessoti_t* res,              dhelpl_t dhl);
  fessoti_t fessoti_asinh(    fessoti_t* num,                             dhelpl_t dhl);
  void     fessoti_asinh_to( fessoti_t* num, fessoti_t* res,              dhelpl_t dhl);
  fessoti_t fessoti_acosh(    fessoti_t* num,                             dhelpl_t dhl);
  void     fessoti_acosh_to( fessoti_t* num, fessoti_t* res,              dhelpl_t dhl);
  fessoti_t fessoti_tanh(     fessoti_t* num,                             dhelpl_t dhl);
  void     fessoti_tanh_to(  fessoti_t* num, fessoti_t* res,              dhelpl_t dhl);
  fessoti_t fessoti_cosh(     fessoti_t* num,                             dhelpl_t dhl);
  void     fessoti_cosh_to(  fessoti_t* num, fessoti_t* res,              dhelpl_t dhl);
  fessoti_t fessoti_sinh(     fessoti_t* num,                             dhelpl_t dhl);
  void     fessoti_sinh_to(  fessoti_t* num, fessoti_t* res,              dhelpl_t dhl);
  fessoti_t fessoti_asin(     fessoti_t* num,                             dhelpl_t dhl);
  void     fessoti_asin_to(  fessoti_t* num, fessoti_t* res,              dhelpl_t dhl);
  fessoti_t fessoti_acos(     fessoti_t* num,                             dhelpl_t dhl);
  void     fessoti_acos_to(  fessoti_t* num, fessoti_t* res,              dhelpl_t dhl);
  fessoti_t fessoti_atan(     fessoti_t* num,                             dhelpl_t dhl);
  void     fessoti_atan_to(  fessoti_t* num, fessoti_t* res,              dhelpl_t dhl);
  fessoti_t fessoti_tan(      fessoti_t* num,                             dhelpl_t dhl);
  void     fessoti_tan_to(   fessoti_t* num, fessoti_t* res,              dhelpl_t dhl);
  fessoti_t fessoti_cos(      fessoti_t* num,                             dhelpl_t dhl);
  void     fessoti_cos_to(   fessoti_t* num, fessoti_t* res,              dhelpl_t dhl);
  fessoti_t fessoti_sin(      fessoti_t* num,                             dhelpl_t dhl);
  void     fessoti_sin_to(   fessoti_t* num, fessoti_t* res,              dhelpl_t dhl);
  fessoti_t fessoti_logb(     fessoti_t* num, double base,                dhelpl_t dhl);
  void     fessoti_logb_to(  fessoti_t* num, double base, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_log10(    fessoti_t* num,                             dhelpl_t dhl);
  void     fessoti_log10_to( fessoti_t* num, fessoti_t* res,              dhelpl_t dhl);
  fessoti_t fessoti_log(      fessoti_t* num,                             dhelpl_t dhl);
  void     fessoti_log_to(   fessoti_t* num, fessoti_t* res,              dhelpl_t dhl);
  fessoti_t fessoti_exp(      fessoti_t* num,                             dhelpl_t dhl);
  void     fessoti_exp_to(   fessoti_t* num, fessoti_t* res,              dhelpl_t dhl);
  fessoti_t fessoti_cbrt(     fessoti_t* num,                             dhelpl_t dhl);
  void     fessoti_cbrt_to(  fessoti_t* num, fessoti_t* res,              dhelpl_t dhl);
  fessoti_t fessoti_sqrt(     fessoti_t* num,                             dhelpl_t dhl);
  void     fessoti_sqrt_to(  fessoti_t* num, fessoti_t* res,              dhelpl_t dhl);
  fessoti_t fessoti_pow(      fessoti_t* num, double e,                   dhelpl_t dhl);
  void     fessoti_pow_to(   fessoti_t* num, double e, fessoti_t* res,    dhelpl_t dhl);
  semiotin_t fessoti_integrate(       fessoti_t* num, fessoti_t* w,                 dhelpl_t dhl);
  void      fessoti_integrate_to(    fessoti_t* num, fessoti_t* w, semiotin_t* res, dhelpl_t dhl);
  semiotin_t fessoti_integrate_f(     fessoti_t* num, fessoti_t* w,                 dhelpl_t dhl);
  void      fessoti_integrate_f_to(  fessoti_t* num, fessoti_t* w, semiotin_t* res, dhelpl_t dhl);
  semiotin_t fessoti_integrate_r(       coeff_t num, fessoti_t* w,                 dhelpl_t dhl);
  void      fessoti_integrate_r_to(    coeff_t num, fessoti_t* w, semiotin_t* res, dhelpl_t dhl);
  semiotin_t fessoti_integrate_o(    semiotin_t* num, fessoti_t* w,                 dhelpl_t dhl);
  void      fessoti_integrate_o_to( semiotin_t* num, fessoti_t* w, semiotin_t* res, dhelpl_t dhl);


  # From oti/semisparse/scalar/gauss/base.h

  void     fessoti_get_order_im_to( ord_t order, fessoti_t* num, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_get_order_im(    ord_t order, fessoti_t* num,                dhelpl_t dhl);
  fessoti_t fessoti_get_im(    imdir_t idx, ord_t order, fessoti_t* num,                dhelpl_t dhl);
  void     fessoti_get_im_to( imdir_t idx, ord_t order, fessoti_t* num, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_get_deriv(    imdir_t idx, ord_t order, fessoti_t* num,                dhelpl_t dhl);
  void     fessoti_get_deriv_to( imdir_t idx, ord_t order, fessoti_t* num, fessoti_t* res, dhelpl_t dhl);
  void fessoti_set_im_r(   coeff_t  val, imdir_t idx, ord_t order, fessoti_t* num, dhelpl_t dhl);
  void fessoti_set_im_o( semiotin_t* val, imdir_t idx, ord_t order, fessoti_t* num, dhelpl_t dhl);
  void fessoti_set_im_f(  fessoti_t* val, imdir_t idx, ord_t order, fessoti_t* num, dhelpl_t dhl);
  void fessoti_set_deriv_r(   coeff_t  val, imdir_t idx, ord_t order, fessoti_t* num, dhelpl_t dhl);
  void fessoti_set_deriv_o( semiotin_t* val, imdir_t idx, ord_t order, fessoti_t* num, dhelpl_t dhl);
  void fessoti_set_deriv_f(  fessoti_t* val, imdir_t idx, ord_t order, fessoti_t* num, dhelpl_t dhl);
  fessoti_t fessoti_extract_im(    imdir_t idx, ord_t order, fessoti_t* num,                dhelpl_t dhl);
  void     fessoti_extract_im_to( imdir_t idx, ord_t order, fessoti_t* num, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_extract_deriv(    imdir_t idx, ord_t order, fessoti_t* num,                dhelpl_t dhl);
  void     fessoti_extract_deriv_to( imdir_t idx, ord_t order, fessoti_t* num, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_truncate_im(    imdir_t idx, ord_t order, fessoti_t* num,                dhelpl_t dhl);
  void     fessoti_truncate_im_to( imdir_t idx, ord_t order, fessoti_t* num, fessoti_t* res, dhelpl_t dhl);
  fessoti_t fessoti_copy(    fessoti_t* src,                dhelpl_t dhl);
  void     fessoti_copy_to( fessoti_t* src, fessoti_t* dst, dhelpl_t dhl);
  void fessoti_set_r(    coeff_t num, fessoti_t* res, dhelpl_t dhl);
  void fessoti_set_o( semiotin_t* num, fessoti_t* res, dhelpl_t dhl);
  void fessoti_set_f(  fessoti_t* num, fessoti_t* res, dhelpl_t dhl);
  void fessoti_set_item_k_r(   coeff_t  num, uint64_t k, fessoti_t* res, dhelpl_t dhl);
  void fessoti_set_item_k_o( semiotin_t* num, uint64_t k, fessoti_t* res, dhelpl_t dhl);
  semiotin_t fessoti_get_item_k(   fessoti_t* num, uint64_t k,                 dhelpl_t dhl);
  void      fessoti_get_item_k_to(fessoti_t* num, uint64_t k, semiotin_t* res, dhelpl_t dhl);
  fessoti_t fessoti_zeros_bases(uint64_t nIntPts, bases_t nbases, ord_t order, dhelpl_t dhl);
  fessoti_t fessoti_createEmpty_bases(uint64_t nIntPts, bases_t nbases, ord_t order, dhelpl_t dhl);
  fessoti_t fessoti_empty_like(fessoti_t* arr, dhelpl_t dhl);
  void fessoti_free(fessoti_t* num);
  ord_t fessoti_get_order( fessoti_t* num );
  fessoti_t fessoti_init();

