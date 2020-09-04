cdef extern from "oti/oti.h" nogil:


  # From ../../../include/oti/static/mdnum4/scalar/structures.h
  
  ctypedef struct  mdnum4_t : # {
    coeff_t r;
    coeff_t e1;
    coeff_t e2;
    coeff_t e3;
    coeff_t e4;
    coeff_t e12;
    coeff_t e13;
    coeff_t e23;
    coeff_t e14;
    coeff_t e24;
    coeff_t e34;
    coeff_t e123;
    coeff_t e124;
    coeff_t e134;
    coeff_t e234;
    coeff_t e1234;
  # } mdnum4_t;
  
  
  # From ../../../include/oti/static/mdnum4/array/structures.h
  
  ctypedef struct  mdarr4_t : # {
      mdnum4_t*    p_data;
      uint64_t       nrows;
      uint64_t       ncols;
      uint64_t        size;
  # } mdarr4_t;
  
  
  # From ../../../include/oti/static/mdnum4/scalar/gauss/structures.h
  
  ctypedef struct  femdnum4_t: # {
      mdnum4_t*  p_data;
      uint64_t    nip;
  # } femdnum4_t;
  
  
  # From ../../../include/oti/static/mdnum4/array/gauss/structures.h
  
  ctypedef struct  femdarr4_t: # {
      mdarr4_t*      p_data;
      uint64_t      nrows;
      uint64_t      ncols;
      uint64_t       size;
      uint64_t        nip;
  # } femdarr4_t;
  
  # =========================================================================================
  # From ../../../include/oti/static/mdnum4/scalar/functions.h
  
  mdnum4_t mdnum4_atanh(mdnum4_t* num);
  void mdnum4_atanh_to(mdnum4_t* num, mdnum4_t* res);
  mdnum4_t mdnum4_asinh(mdnum4_t* num);
  void mdnum4_asinh_to(mdnum4_t* num, mdnum4_t* res);
  mdnum4_t mdnum4_acosh(mdnum4_t* num);
  void mdnum4_acosh_to(mdnum4_t* num, mdnum4_t* res);
  mdnum4_t mdnum4_tanh(mdnum4_t* num);
  void mdnum4_tanh_to(mdnum4_t* num, mdnum4_t* res);
  mdnum4_t mdnum4_sqrt(mdnum4_t* num);
  void mdnum4_sqrt_to(mdnum4_t* num, mdnum4_t* res);
  mdnum4_t mdnum4_cbrt(mdnum4_t* num);
  void mdnum4_cbrt_to(mdnum4_t* num, mdnum4_t* res);
  mdnum4_t mdnum4_cosh(mdnum4_t* num);
  void mdnum4_cosh_to(mdnum4_t* num, mdnum4_t* res);
  mdnum4_t mdnum4_sinh(mdnum4_t* num);
  void mdnum4_sinh_to(mdnum4_t* num, mdnum4_t* res);
  mdnum4_t mdnum4_asin(mdnum4_t* num);
  void mdnum4_asin_to(mdnum4_t* num, mdnum4_t* res);
  mdnum4_t mdnum4_acos(mdnum4_t* num);
  void mdnum4_acos_to(mdnum4_t* num, mdnum4_t* res);
  mdnum4_t mdnum4_atan(mdnum4_t* num);
  void mdnum4_atan_to(mdnum4_t* num, mdnum4_t* res);
  mdnum4_t mdnum4_tan(mdnum4_t* num);
  void mdnum4_tan_to(mdnum4_t* num, mdnum4_t* res);
  mdnum4_t mdnum4_cos(mdnum4_t* num);
  void mdnum4_cos_to(mdnum4_t* num, mdnum4_t* res);
  mdnum4_t mdnum4_sin(mdnum4_t* num );
  void mdnum4_sin_to(mdnum4_t* num, mdnum4_t* res);
  mdnum4_t mdnum4_logb(mdnum4_t* num, double base);
  void mdnum4_logb_to(mdnum4_t* num, double base, mdnum4_t* res);
  mdnum4_t mdnum4_log10(mdnum4_t* num);
  void mdnum4_log10_to(mdnum4_t* num, mdnum4_t* res);
  mdnum4_t mdnum4_log(mdnum4_t* num);
  void mdnum4_log_to(mdnum4_t* num, mdnum4_t* res);
  mdnum4_t mdnum4_exp(mdnum4_t* num);
  void mdnum4_exp_to(mdnum4_t* num, mdnum4_t* res);
  mdnum4_t mdnum4_pow(mdnum4_t* num, double e);
  void mdnum4_pow_to(mdnum4_t* num, coeff_t e, mdnum4_t* res);
  
  
  # From ../../../include/oti/static/mdnum4/scalar/base.h
  
  void mdnum4_set_im_o(mdnum4_t* num, imdir_t idx, ord_t order, mdnum4_t* res);
  void mdnum4_set_deriv_r(coeff_t num, imdir_t idx, ord_t order, mdnum4_t* res);
  void mdnum4_set_deriv_o(mdnum4_t* num, imdir_t idx, ord_t order, mdnum4_t* res);
  void mdnum4_extract_im_to( imdir_t idx, ord_t order, mdnum4_t* num, mdnum4_t* res);
  mdnum4_t mdnum4_extract_im(imdir_t idx, ord_t order, mdnum4_t* num);
  mdnum4_t mdnum4_extract_deriv(imdir_t idx, ord_t order, mdnum4_t* num);
  void mdnum4_extract_deriv_to(imdir_t idx, ord_t order, mdnum4_t* num, mdnum4_t* res);
  void mdnum4_get_im_to_o(imdir_t idx, ord_t order, mdnum4_t* num, mdnum4_t* res);
  mdnum4_t mdnum4_get_im_o(imdir_t idx, ord_t order, mdnum4_t* num);
  void mdnum4_get_im_to_r(imdir_t idx, ord_t order, mdnum4_t* num, coeff_t* res);
  ord_t mdnum4_get_order(mdnum4_t* lhs);
  mdnum4_t mdnum4_get_deriv_o( imdir_t idx, ord_t order, mdnum4_t* num);
  void mdnum4_get_deriv_to( imdir_t idx, ord_t order, mdnum4_t* num, mdnum4_t* res);
  void mdnum4_set_im_r(coeff_t num, imdir_t idx, ord_t order, mdnum4_t* res);
  mdnum4_t mdnum4_init();
  ndir_t mdnum4_get_ndir_order(ord_t order, mdnum4_t* num);
  ndir_t mdnum4_get_ndir_total(mdnum4_t* num);
  coeff_t* mdnum4_get_order_address(ord_t order, mdnum4_t* num);
  mdnum4_t mdnum4_create_r(  coeff_t lhs);
  void mdnum4_set_r(  coeff_t lhs, mdnum4_t* res);
  void mdnum4_set_o(  mdnum4_t* lhs, mdnum4_t* res);
  mdnum4_t mdnum4_get_order_im(ord_t order, mdnum4_t* lhs);
  void mdnum4_get_order_im_to(ord_t order, mdnum4_t* lhs, mdnum4_t* res);
  coeff_t mdnum4_get_item(imdir_t idx, ord_t order, mdnum4_t* lhs);
  coeff_t mdnum4_get_deriv(imdir_t idx, ord_t order, mdnum4_t* lhs);
  void mdnum4_set_item(coeff_t val, imdir_t idx, ord_t order, mdnum4_t* x);
  mdnum4_t mdnum4_copy(  mdnum4_t* lhs);
  void mdnum4_copy_to(  mdnum4_t* lhs, mdnum4_t* res);
  mdnum4_t mdnum4_taylor_integrate(coeff_t* deltas,mdnum4_t* lhs);
  void mdnum4_taylor_integrate_to(coeff_t* deltas,mdnum4_t* lhs, mdnum4_t* res);
  mdnum4_t mdnum4_truncate_im(imdir_t idx, ord_t order, mdnum4_t* lhs);
  void mdnum4_truncate_im_to(imdir_t idx, ord_t order, mdnum4_t* lhs, mdnum4_t* res);
  void mdnum4_print(  mdnum4_t* lhs);
  imdir_t mdnum4_get_indx(imdir_t idx, ord_t order);
  
  
  # From ../../../include/oti/static/mdnum4/scalar/utils.h
  
  void mdnum4_get_active_bases(mdnum4_t* num, imdir_t* list);
  
  
  # From ../../../include/oti/static/mdnum4/scalar/algebra.h
  
  mdnum4_t mdnum4_abs(mdnum4_t* num);
  mdnum4_t mdnum4_div_ro(coeff_t num, mdnum4_t* den);
  mdnum4_t mdnum4_div_oo(mdnum4_t* num, mdnum4_t* den);
  mdnum4_t mdnum4_div_or(mdnum4_t* num, coeff_t val);
  void mdnum4_div_ro_to(coeff_t num, mdnum4_t* den, mdnum4_t* res);
  void mdnum4_div_oo_to(mdnum4_t* num, mdnum4_t* den, mdnum4_t* res);
  void mdnum4_div_or_to(mdnum4_t* num, coeff_t val, mdnum4_t* res);
  void mdnum4_abs_to(mdnum4_t* num, mdnum4_t* res);
  mdnum4_t mdnum4_neg(  mdnum4_t* lhs);
  void mdnum4_neg_to(  mdnum4_t* lhs, mdnum4_t* res);
  mdnum4_t mdnum4_sum_oo(  mdnum4_t* lhs,  mdnum4_t* rhs);
  void mdnum4_sum_oo_to(  mdnum4_t* lhs,  mdnum4_t* rhs, mdnum4_t* res);
  mdnum4_t mdnum4_sum_ro(  coeff_t lhs,  mdnum4_t* rhs);
  void mdnum4_sum_ro_to(  coeff_t lhs,  mdnum4_t* rhs, mdnum4_t* res);
  mdnum4_t mdnum4_sub_oo(  mdnum4_t* lhs,  mdnum4_t* rhs);
  void mdnum4_sub_oo_to(  mdnum4_t* lhs,  mdnum4_t* rhs, mdnum4_t* res);
  mdnum4_t mdnum4_sub_ro(  coeff_t lhs,  mdnum4_t* rhs);
  void mdnum4_sub_ro_to(  coeff_t lhs,  mdnum4_t* rhs, mdnum4_t* res);
  mdnum4_t mdnum4_sub_or(  mdnum4_t* lhs,  coeff_t rhs);
  void mdnum4_sub_or_to(  mdnum4_t* lhs,  coeff_t rhs, mdnum4_t* res);
  mdnum4_t mdnum4_mul_oo(  mdnum4_t* lhs,  mdnum4_t* rhs);
  void mdnum4_mul_oo_to(  mdnum4_t* lhs,  mdnum4_t* rhs, mdnum4_t* res);
  mdnum4_t mdnum4_mul_ro(  coeff_t lhs,  mdnum4_t* rhs);
  void mdnum4_mul_ro_to(  coeff_t lhs,  mdnum4_t* rhs, mdnum4_t* res);
  mdnum4_t mdnum4_trunc_mul_oo(  mdnum4_t* lhs,  mdnum4_t* rhs);
  void mdnum4_trunc_mul_oo_to(  mdnum4_t* lhs,  mdnum4_t* rhs, mdnum4_t* res);
  mdnum4_t mdnum4_gem_oo(  mdnum4_t* a,  mdnum4_t* b,  mdnum4_t* c);
  void mdnum4_gem_oo_to(  mdnum4_t* a,  mdnum4_t* b,  mdnum4_t* c, mdnum4_t* res);
  mdnum4_t mdnum4_gem_ro(  coeff_t a,  mdnum4_t* b,  mdnum4_t* c);
  void mdnum4_gem_ro_to(  coeff_t a,  mdnum4_t* b,  mdnum4_t* c, mdnum4_t* res);
  void mdnum4_trunc_gem_oo_to( ord_t ord_lhs,  mdnum4_t* a,  ord_t ord_rhs,  mdnum4_t* b,  mdnum4_t* c, mdnum4_t* res);
  mdnum4_t mdnum4_feval(coeff_t* feval_re, mdnum4_t* x);
  void mdnum4_feval_to(coeff_t* feval_re, mdnum4_t* x, mdnum4_t* res);
  
  
  # From ../../../include/oti/static/mdnum4/scalar/gauss.h
  
  
  
  # From ../../../include/oti/static/mdnum4/scalar/gauss/functions.h
  
  femdnum4_t femdnum4_atanh(    femdnum4_t* num);
  void     femdnum4_atanh_to( femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_asinh(    femdnum4_t* num);
  void     femdnum4_asinh_to( femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_acosh(    femdnum4_t* num);
  void     femdnum4_acosh_to( femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_tanh(     femdnum4_t* num);
  void     femdnum4_tanh_to(  femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_cosh(     femdnum4_t* num);
  void     femdnum4_cosh_to(  femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_sinh(     femdnum4_t* num);
  void     femdnum4_sinh_to(  femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_asin(     femdnum4_t* num);
  void     femdnum4_asin_to(  femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_acos(     femdnum4_t* num);
  void     femdnum4_acos_to(  femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_atan(     femdnum4_t* num);
  void     femdnum4_atan_to(  femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_tan(      femdnum4_t* num);
  void     femdnum4_tan_to(   femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_cos(      femdnum4_t* num);
  void     femdnum4_cos_to(   femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_sin(      femdnum4_t* num);
  void     femdnum4_sin_to(   femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_logb(     femdnum4_t* num, double base);
  void     femdnum4_logb_to(  femdnum4_t* num, double base, femdnum4_t* res);
  femdnum4_t femdnum4_log10(    femdnum4_t* num);
  void     femdnum4_log10_to( femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_log(      femdnum4_t* num);
  void     femdnum4_log_to(   femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_exp(      femdnum4_t* num);
  void     femdnum4_exp_to(   femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_cbrt(     femdnum4_t* num);
  void     femdnum4_cbrt_to(  femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_sqrt(     femdnum4_t* num);
  void     femdnum4_sqrt_to(  femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_pow(      femdnum4_t* num, double e);
  void     femdnum4_pow_to(   femdnum4_t* num, double e, femdnum4_t* res);
  mdnum4_t femdnum4_integrate(       femdnum4_t* num, femdnum4_t* w);
  void      femdnum4_integrate_to(    femdnum4_t* num, femdnum4_t* w, mdnum4_t* res);
  mdnum4_t femdnum4_integrate_f(     femdnum4_t* num, femdnum4_t* w);
  void      femdnum4_integrate_f_to(  femdnum4_t* num, femdnum4_t* w, mdnum4_t* res);
  mdnum4_t femdnum4_integrate_r(       coeff_t num, femdnum4_t* w);
  void      femdnum4_integrate_r_to(    coeff_t num, femdnum4_t* w, mdnum4_t* res);
  mdnum4_t femdnum4_integrate_o(    mdnum4_t* num, femdnum4_t* w);
  void      femdnum4_integrate_o_to( mdnum4_t* num, femdnum4_t* w, mdnum4_t* res);
  
  
  # From ../../../include/oti/static/mdnum4/scalar/gauss/base.h
  
  void     femdnum4_get_order_im_to( ord_t order, femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_get_order_im(    ord_t order, femdnum4_t* num);
  femdnum4_t femdnum4_get_im(    imdir_t idx, ord_t order, femdnum4_t* num);
  void     femdnum4_get_im_to( imdir_t idx, ord_t order, femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_get_deriv(    imdir_t idx, ord_t order, femdnum4_t* num);
  void     femdnum4_get_deriv_to( imdir_t idx, ord_t order, femdnum4_t* num, femdnum4_t* res);
  void femdnum4_set_im_r(   coeff_t  val, imdir_t idx, ord_t order, femdnum4_t* num);
  void femdnum4_set_im_o( mdnum4_t* val, imdir_t idx, ord_t order, femdnum4_t* num);
  void femdnum4_set_im_f(  femdnum4_t* val, imdir_t idx, ord_t order, femdnum4_t* num);
  void femdnum4_set_deriv_r(   coeff_t  val, imdir_t idx, ord_t order, femdnum4_t* num);
  void femdnum4_set_deriv_o( mdnum4_t* val, imdir_t idx, ord_t order, femdnum4_t* num);
  void femdnum4_set_deriv_f(  femdnum4_t* val, imdir_t idx, ord_t order, femdnum4_t* num);
  femdnum4_t femdnum4_extract_im(    imdir_t idx, ord_t order, femdnum4_t* num);
  void     femdnum4_extract_im_to( imdir_t idx, ord_t order, femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_extract_deriv(    imdir_t idx, ord_t order, femdnum4_t* num);
  void     femdnum4_extract_deriv_to( imdir_t idx, ord_t order, femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_truncate_im(    imdir_t idx, ord_t order, femdnum4_t* num);
  void     femdnum4_truncate_im_to( imdir_t idx, ord_t order, femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_copy(    femdnum4_t* src);
  void     femdnum4_copy_to( femdnum4_t* src, femdnum4_t* dst);
  void femdnum4_set_r(    coeff_t num, femdnum4_t* res);
  void femdnum4_set_o( mdnum4_t* num, femdnum4_t* res);
  void femdnum4_set_f(  femdnum4_t* num, femdnum4_t* res);
  void femdnum4_set_item_k_r(   coeff_t  num, uint64_t k, femdnum4_t* res);
  void femdnum4_set_item_k_o( mdnum4_t* num, uint64_t k, femdnum4_t* res);
  mdnum4_t femdnum4_get_item_k(   femdnum4_t* num, uint64_t k);
  void      femdnum4_get_item_k_to(femdnum4_t* num, uint64_t k, mdnum4_t* res);
  femdnum4_t femdnum4_zeros(uint64_t nIntPts);
  femdnum4_t femdnum4_createEmpty(uint64_t nIntPts);
  femdnum4_t femdnum4_empty_like(femdnum4_t* arr);
  void femdnum4_free(femdnum4_t* num);
  ord_t femdnum4_get_order( femdnum4_t* num );
  femdnum4_t femdnum4_init();
  
  
  # From ../../../include/oti/static/mdnum4/scalar/gauss/utils.h
  
  void femdnum4_dimCheck(femdnum4_t* arr1,femdnum4_t* arr2);
  void femdnum4_get_active_bases(femdnum4_t* num, imdir_t* list_vals);
  
  
  # From ../../../include/oti/static/mdnum4/scalar/gauss/algebra.h
  
  femdnum4_t femdnum4_neg(   femdnum4_t* num);
  void     femdnum4_neg_to(femdnum4_t* num, femdnum4_t* res);
  femdnum4_t femdnum4_sum_ff(   femdnum4_t* lhs, femdnum4_t* rhs);
  void     femdnum4_sum_ff_to(femdnum4_t* lhs, femdnum4_t* rhs, femdnum4_t* res);
  femdnum4_t femdnum4_sum_of(   mdnum4_t* lhs, femdnum4_t* rhs);
  void     femdnum4_sum_of_to(mdnum4_t* lhs, femdnum4_t* rhs, femdnum4_t* res);
  femdnum4_t femdnum4_sum_rf(   coeff_t lhs, femdnum4_t* rhs);
  void     femdnum4_sum_rf_to(coeff_t lhs, femdnum4_t* rhs, femdnum4_t* res);
  femdnum4_t femdnum4_sub_ff(     femdnum4_t* lhs,  femdnum4_t* rhs);
  void     femdnum4_sub_ff_to(  femdnum4_t* lhs,  femdnum4_t* rhs, femdnum4_t* res);
  femdnum4_t femdnum4_sub_of(    mdnum4_t* lhs,  femdnum4_t* rhs);
  void     femdnum4_sub_of_to( mdnum4_t* lhs,  femdnum4_t* rhs, femdnum4_t* res);
  femdnum4_t femdnum4_sub_fo(     femdnum4_t* lhs, mdnum4_t* rhs);
  void     femdnum4_sub_fo_to(  femdnum4_t* lhs, mdnum4_t* rhs, femdnum4_t* res);
  femdnum4_t femdnum4_sub_rf(       coeff_t lhs,  femdnum4_t* rhs);
  void     femdnum4_sub_rf_to(    coeff_t lhs,  femdnum4_t* rhs, femdnum4_t* res);
  femdnum4_t femdnum4_sub_fr(     femdnum4_t* lhs,    coeff_t rhs);
  void     femdnum4_sub_fr_to(  femdnum4_t* lhs,    coeff_t rhs, femdnum4_t* res);
  femdnum4_t femdnum4_mul_ff(   femdnum4_t* lhs, femdnum4_t* rhs);
  void     femdnum4_mul_ff_to(femdnum4_t* lhs, femdnum4_t* rhs, femdnum4_t* res);
  femdnum4_t femdnum4_mul_of(   mdnum4_t* lhs, femdnum4_t* rhs);
  void     femdnum4_mul_of_to(mdnum4_t* lhs, femdnum4_t* rhs, femdnum4_t* res);
  femdnum4_t femdnum4_mul_rf(   coeff_t lhs, femdnum4_t* rhs);
  void     femdnum4_mul_rf_to(coeff_t lhs, femdnum4_t* rhs, femdnum4_t* res);
  femdnum4_t femdnum4_div_ff(     femdnum4_t* lhs,  femdnum4_t* rhs);
  void     femdnum4_div_ff_to(  femdnum4_t* lhs,  femdnum4_t* rhs, femdnum4_t* res);
  femdnum4_t femdnum4_div_of(    mdnum4_t* lhs,  femdnum4_t* rhs);
  void     femdnum4_div_of_to( mdnum4_t* lhs,  femdnum4_t* rhs, femdnum4_t* res);
  femdnum4_t femdnum4_div_fo(     femdnum4_t* lhs, mdnum4_t* rhs);
  void     femdnum4_div_fo_to(  femdnum4_t* lhs, mdnum4_t* rhs, femdnum4_t* res);
  femdnum4_t femdnum4_div_rf(       coeff_t lhs,  femdnum4_t* rhs);
  void     femdnum4_div_rf_to(    coeff_t lhs,  femdnum4_t* rhs, femdnum4_t* res);
  femdnum4_t femdnum4_div_fr(     femdnum4_t* lhs,    coeff_t rhs);
  void     femdnum4_div_fr_to(  femdnum4_t* lhs,    coeff_t rhs, femdnum4_t* res);
  
  
  # From ../../../include/oti/static/mdnum4/array/functions.h
  
  mdarr4_t mdarr4_atanh(   mdarr4_t* arr);
  void    mdarr4_atanh_to(mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_asinh(   mdarr4_t* arr);
  void    mdarr4_asinh_to(mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_acosh(   mdarr4_t* arr);
  void    mdarr4_acosh_to(mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_tanh(    mdarr4_t* arr);
  void    mdarr4_tanh_to( mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_cbrt(    mdarr4_t* arr);
  void    mdarr4_cbrt_to( mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_sqrt(    mdarr4_t* arr);
  void    mdarr4_sqrt_to( mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_cosh(    mdarr4_t* arr);
  void    mdarr4_cosh_to( mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_sinh(    mdarr4_t* arr);
  void    mdarr4_sinh_to( mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_asin(    mdarr4_t* arr);
  void    mdarr4_asin_to( mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_acos(    mdarr4_t* arr);
  void    mdarr4_acos_to( mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_atan(    mdarr4_t* arr);
  void    mdarr4_atan_to( mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_tan(     mdarr4_t* arr);
  void    mdarr4_tan_to(  mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_cos(     mdarr4_t* arr);
  void    mdarr4_cos_to(  mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_sin(     mdarr4_t* arr);
  void    mdarr4_sin_to(  mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_logb(    mdarr4_t* arr, double base);
  void    mdarr4_logb_to( mdarr4_t* arr, double base, mdarr4_t* res);
  mdarr4_t mdarr4_log10(   mdarr4_t* arr);
  void    mdarr4_log10_to(mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_log(     mdarr4_t* arr);
  void    mdarr4_log_to(  mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_exp(     mdarr4_t* arr);
  void    mdarr4_exp_to(  mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_pow(     mdarr4_t* arr, double e);
  void    mdarr4_pow_to(  mdarr4_t* arr, double e, mdarr4_t* res);
  
  
  # From ../../../include/oti/static/mdnum4/array/algebra_elementwise.h
  
  mdarr4_t mdarr4_neg(mdarr4_t* arr);
  void mdarr4_neg_to(mdarr4_t* rhs, mdarr4_t* res);
  mdarr4_t mdarr4_sum_OO(mdarr4_t*   lhs, mdarr4_t* rhs);
  mdarr4_t mdarr4_sum_RO(darr_t*    lhs, mdarr4_t* rhs);
  mdarr4_t mdarr4_sum_oO(mdnum4_t* lhs, mdarr4_t* rhs);
  mdarr4_t mdarr4_sum_rO(coeff_t    lhs, mdarr4_t* rhs);
  void mdarr4_sum_OO_to(mdarr4_t*   lhs, mdarr4_t* rhs, mdarr4_t* res);
  void mdarr4_sum_RO_to(darr_t*    lhs, mdarr4_t* rhs, mdarr4_t* res);
  void mdarr4_sum_oO_to(mdnum4_t* lhs, mdarr4_t* rhs, mdarr4_t* res);
  void mdarr4_sum_rO_to(coeff_t    lhs, mdarr4_t* rhs, mdarr4_t* res);
  mdarr4_t mdarr4_sub_OO(mdarr4_t*   lhs, mdarr4_t*   rhs);
  mdarr4_t mdarr4_sub_RO(darr_t*    lhs, mdarr4_t*   rhs);
  mdarr4_t mdarr4_sub_OR(mdarr4_t*   lhs, darr_t*    rhs);
  mdarr4_t mdarr4_sub_oO(mdnum4_t* lhs, mdarr4_t*   rhs);
  mdarr4_t mdarr4_sub_Oo(mdarr4_t*   lhs, mdnum4_t* rhs);
  mdarr4_t mdarr4_sub_rO(coeff_t    lhs, mdarr4_t*   rhs);
  mdarr4_t mdarr4_sub_Or(mdarr4_t*   lhs, coeff_t    rhs);
  void mdarr4_sub_OO_to( mdarr4_t*   lhs, mdarr4_t*   rhs, mdarr4_t* res);
  void mdarr4_sub_RO_to( darr_t*    lhs, mdarr4_t*   rhs, mdarr4_t* res);
  void mdarr4_sub_OR_to( mdarr4_t*   lhs, darr_t*    rhs, mdarr4_t* res);
  void mdarr4_sub_oO_to( mdnum4_t* lhs, mdarr4_t*   rhs, mdarr4_t* res);
  void mdarr4_sub_Oo_to( mdarr4_t*   lhs, mdnum4_t* rhs, mdarr4_t* res);
  void mdarr4_sub_rO_to( coeff_t    lhs, mdarr4_t*   rhs, mdarr4_t* res);
  void mdarr4_sub_Or_to( mdarr4_t*   lhs, coeff_t    rhs, mdarr4_t* res);
  mdarr4_t mdarr4_mul_OO(mdarr4_t*   lhs, mdarr4_t* rhs);
  mdarr4_t mdarr4_mul_RO(darr_t*    lhs, mdarr4_t* rhs);
  mdarr4_t mdarr4_mul_oO(mdnum4_t* lhs, mdarr4_t* rhs);
  mdarr4_t mdarr4_mul_rO(coeff_t    lhs, mdarr4_t* rhs);
  void mdarr4_mul_OO_to(mdarr4_t*   lhs, mdarr4_t* rhs, mdarr4_t* res);
  void mdarr4_mul_RO_to(darr_t*    lhs, mdarr4_t* rhs, mdarr4_t* res);
  void mdarr4_mul_oO_to(mdnum4_t* lhs, mdarr4_t* rhs, mdarr4_t* res);
  void mdarr4_mul_rO_to(coeff_t    lhs, mdarr4_t* rhs, mdarr4_t* res);
  void mdarr4_gem_OO_to(  mdarr4_t* arr1, mdarr4_t* arr2, mdarr4_t* arr3, mdarr4_t* res);
  void mdarr4_gem_oO_to(mdnum4_t* arr1, mdarr4_t* arr2, mdarr4_t* arr3, mdarr4_t* res);
  mdarr4_t mdarr4_div_OO(mdarr4_t*   lhs, mdarr4_t*   rhs);
  mdarr4_t mdarr4_div_OR(mdarr4_t*   lhs, darr_t*    rhs);
  mdarr4_t mdarr4_div_RO(darr_t*    lhs, mdarr4_t*   rhs);
  mdarr4_t mdarr4_div_oO(mdnum4_t* lhs, mdarr4_t*   rhs);
  mdarr4_t mdarr4_div_Oo(mdarr4_t*   lhs, mdnum4_t* rhs);
  mdarr4_t mdarr4_div_rO(coeff_t    lhs, mdarr4_t*   rhs);
  mdarr4_t mdarr4_div_Or(mdarr4_t*   lhs, coeff_t    rhs);
  void mdarr4_div_OO_to(mdarr4_t*   lhs, mdarr4_t*   rhs, mdarr4_t* res);
  void mdarr4_div_RO_to(darr_t*    lhs, mdarr4_t*   rhs, mdarr4_t* res);
  void mdarr4_div_OR_to(mdarr4_t*   lhs, darr_t*    rhs, mdarr4_t* res);
  void mdarr4_div_oO_to(mdnum4_t* lhs, mdarr4_t*   rhs, mdarr4_t* res);
  void mdarr4_div_Oo_to(mdarr4_t*   lhs, mdnum4_t* rhs, mdarr4_t* res);
  void mdarr4_div_rO_to(coeff_t    lhs, mdarr4_t*   rhs, mdarr4_t* res);
  void mdarr4_div_Or_to(mdarr4_t*   lhs, coeff_t    rhs, mdarr4_t* res);
  
  
  # From ../../../include/oti/static/mdnum4/array/base.h
  
  void    mdarr4_taylor_integrate_to( coeff_t* deltas, mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_taylor_integrate(    coeff_t* deltas, mdarr4_t* arr);
  void    mdarr4_get_order_im_to( ord_t order, mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_get_order_im(    ord_t order, mdarr4_t* arr);
  void mdarr4_set_slice_r( coeff_t val,
                          int64_t starti, int64_t stopi, int64_t stepi,
                          int64_t startj, int64_t stopj, int64_t stepj,
                           mdarr4_t* res);
  void mdarr4_set_slice_O( mdarr4_t* val,
                          int64_t starti, int64_t stopi, int64_t stepi,
                          int64_t startj, int64_t stopj, int64_t stepj,
                           mdarr4_t* res);
  void mdarr4_set_slice_o( mdnum4_t* val,
                          int64_t starti, int64_t stopi, int64_t stepi,
                          int64_t startj, int64_t stopj, int64_t stepj,
                           mdarr4_t* res);
  mdarr4_t mdarr4_get_slice( mdarr4_t* arr,
                          int64_t starti, int64_t stopi, int64_t stepi,
                          int64_t startj, int64_t stopj, int64_t stepj);
  void mdarr4_get_slice_to( mdarr4_t* arr,
                          int64_t starti, int64_t stopi, int64_t stepi,
                          int64_t startj, int64_t stopj, int64_t stepj,
                           mdarr4_t* res);
  mdarr4_t mdarr4_truncate_im(    imdir_t idx, ord_t order, mdarr4_t* arr);
  void    mdarr4_truncate_im_to( imdir_t idx, ord_t order, mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_extract_im(   imdir_t idx, ord_t order, mdarr4_t* arr);
  void    mdarr4_extract_im_to(imdir_t idx, ord_t order, mdarr4_t* arr, mdarr4_t* res);
  darr_t  mdarr4_get_deriv(    imdir_t idx, ord_t order, mdarr4_t* arr);
  void    mdarr4_get_deriv_to( imdir_t idx, ord_t order, mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_get_deriv_o(  imdir_t idx, ord_t order, mdarr4_t* arr);
  mdarr4_t mdarr4_extract_deriv(    imdir_t idx, ord_t order, mdarr4_t* arr);
  void    mdarr4_extract_deriv_to( imdir_t idx, ord_t order, mdarr4_t* arr, mdarr4_t* res);
  darr_t  mdarr4_get_im(   imdir_t idx, ord_t order, mdarr4_t* arr);
  mdarr4_t mdarr4_get_im_o( imdir_t idx, ord_t order, mdarr4_t* arr);
  void    mdarr4_get_im_to(imdir_t idx, ord_t order, mdarr4_t* arr, mdarr4_t* res);
  void    mdarr4_copy_to(mdarr4_t* arr, mdarr4_t* res);
  mdarr4_t mdarr4_copy(mdarr4_t* arr);
  void mdarr4_set_all_r( coeff_t num, mdarr4_t* arr);
  void mdarr4_set_item_i_r( coeff_t num, uint64_t i, mdarr4_t* arr);
  void mdarr4_set_item_ij_r( coeff_t num, uint64_t i, uint64_t j, mdarr4_t* arr);
  void mdarr4_set_r(   coeff_t  num,   mdarr4_t* arr);
  void mdarr4_set_o( mdnum4_t* num,   mdarr4_t* arr);
  void mdarr4_set_O(   mdarr4_t* arrin, mdarr4_t* arr);
  void mdarr4_set_all_o( mdnum4_t* src, mdarr4_t* arr);
  void mdarr4_set_item_i_o( mdnum4_t* num, uint64_t i, mdarr4_t* arr);
  void mdarr4_set_item_ij_o( mdnum4_t* num, uint64_t i, uint64_t j, mdarr4_t* arr);
  mdnum4_t mdarr4_get_item_i(    mdarr4_t* arr, uint64_t i);
  void      mdarr4_get_item_i_to( mdarr4_t* arr, uint64_t i,             mdnum4_t* res);
  mdnum4_t mdarr4_get_item_ij(   mdarr4_t* arr, uint64_t i, uint64_t j);
  void      mdarr4_get_item_ij_to(mdarr4_t* arr, uint64_t i, uint64_t j, mdnum4_t* res);
  mdarr4_t mdarr4_init();
  void mdarr4_free(mdarr4_t* arr);
  mdarr4_t mdarr4_empty_like(mdarr4_t* arr);
  mdarr4_t mdarr4_eye(uint64_t nrows);
  mdarr4_t mdarr4_ones(uint64_t nrows, uint64_t ncols);
  mdarr4_t mdarr4_zeros(uint64_t nrows, uint64_t ncols);
  mdarr4_t mdarr4_createEmpty(uint64_t nrows, uint64_t ncols);
  
  
  # From ../../../include/oti/static/mdnum4/array/utils.h
  
  void mdarr4_dimCheck_OO_elementwise(mdarr4_t* arr1, mdarr4_t* arr2, mdarr4_t* res);
  void mdarr4_dimCheck_RO_elementwise(darr_t*  arr1, mdarr4_t* arr2, mdarr4_t* res);
  void mdarr4_dimCheck_OO_matmul(mdarr4_t* arr1, mdarr4_t* arr2, mdarr4_t* res);
  void mdarr4_dimCheck_RO_matmul(darr_t*  arr1, mdarr4_t* arr2, mdarr4_t* res);
  void mdarr4_dimCheck_OR_matmul(mdarr4_t* arr1, darr_t*  arr2, mdarr4_t* res);
  void mdarr4_dimCheck_O_squareness(mdarr4_t* arr1, mdarr4_t* res);
  void mdarr4_dimCheck_OO_samesize(mdarr4_t* arr1, mdarr4_t* res);
  void mdarr4_dimCheck_RO_samesize(darr_t* arr1, mdarr4_t* res);
  ord_t mdarr4_get_order(mdarr4_t* arr);
  void mdarr4_get_active_bases(mdarr4_t* arr, imdir_t* list_vals);
  
  
  # From ../../../include/oti/static/mdnum4/array/algebra_matops.h
  
  mdnum4_t mdarr4_dotproduct_OO(    mdarr4_t* lhs, mdarr4_t* rhs);
  void      mdarr4_dotproduct_OO_to( mdarr4_t* lhs, mdarr4_t* rhs, mdnum4_t* res);
  mdnum4_t mdarr4_dotproduct_RO(     darr_t* lhs, mdarr4_t* rhs);
  void      mdarr4_dotproduct_RO_to(  darr_t* lhs, mdarr4_t* rhs, mdnum4_t* res);
  mdarr4_t mdarr4_matmul_OO(    mdarr4_t* lhs, mdarr4_t* rhs);
  mdarr4_t mdarr4_matmul_OR(    mdarr4_t* lhs,  darr_t* rhs);
  mdarr4_t mdarr4_matmul_RO(     darr_t* lhs, mdarr4_t* rhs);
  void    mdarr4_matmul_OO_to( mdarr4_t* lhs, mdarr4_t* rhs, mdarr4_t* res);
  void    mdarr4_matmul_OR_to( mdarr4_t* lhs,  darr_t* rhs, mdarr4_t* res);
  void    mdarr4_matmul_RO_to(  darr_t* lhs, mdarr4_t* rhs, mdarr4_t* res);
  mdarr4_t mdarr4_transpose(    mdarr4_t* arr1);
  void    mdarr4_transpose_to( mdarr4_t* arr1, mdarr4_t* res);
  mdarr4_t mdarr4_invert(    mdarr4_t* arr1);
  void    mdarr4_invert_to( mdarr4_t* arr1, mdarr4_t* res);
  mdnum4_t mdarr4_det(    mdarr4_t* arr1);
  void      mdarr4_det_to( mdarr4_t* arr1, mdnum4_t* res);
  mdnum4_t mdarr4_norm(    mdarr4_t* arr1);
  void      mdarr4_norm_to( mdarr4_t* arr1,  mdnum4_t* res);
  mdnum4_t mdarr4_pnorm(    mdarr4_t* arr1, coeff_t p);
  void      mdarr4_pnorm_to( mdarr4_t* arr1, coeff_t p, mdnum4_t* res);
  
  
  # From ../../../include/oti/static/mdnum4/array/gauss.h
  
  
  
  # From ../../../include/oti/static/mdnum4/array/gauss/functions.h
  
  femdarr4_t femdarr4_atanh(    femdarr4_t* arr);
  void      femdarr4_atanh_to( femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_asinh(    femdarr4_t* arr);
  void      femdarr4_asinh_to( femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_acosh(    femdarr4_t* arr);
  void      femdarr4_acosh_to( femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_tanh(     femdarr4_t* arr);
  void      femdarr4_tanh_to(  femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_sinh(     femdarr4_t* arr);
  void      femdarr4_sinh_to(  femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_cosh(     femdarr4_t* arr);
  void      femdarr4_cosh_to(  femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_atan(     femdarr4_t* arr);
  void      femdarr4_atan_to(  femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_asin(     femdarr4_t* arr);
  void      femdarr4_asin_to(  femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_acos(     femdarr4_t* arr);
  void      femdarr4_acos_to(  femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_tan(      femdarr4_t* arr);
  void      femdarr4_tan_to(   femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_sin(      femdarr4_t* arr);
  void      femdarr4_sin_to(   femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_cos(      femdarr4_t* arr);
  void      femdarr4_cos_to(   femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_logb(     femdarr4_t* arr, double base);
  void      femdarr4_logb_to(  femdarr4_t* arr, double base, femdarr4_t* res);
  femdarr4_t femdarr4_log10(    femdarr4_t* arr);
  void      femdarr4_log10_to( femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_log(      femdarr4_t* arr);
  void      femdarr4_log_to(   femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_exp(      femdarr4_t* arr);
  void      femdarr4_exp_to(   femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_cbrt(     femdarr4_t* arr);
  void      femdarr4_cbrt_to(  femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_sqrt(     femdarr4_t* arr);
  void      femdarr4_sqrt_to(  femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_pow(      femdarr4_t* arr, double e);
  void      femdarr4_pow_to(   femdarr4_t* arr, double e, femdarr4_t* res);
  
  
  # From ../../../include/oti/static/mdnum4/array/gauss/base.h
  
  void      femdarr4_get_order_im_to( ord_t order, femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_get_order_im(    ord_t order, femdarr4_t* arr);
  femdarr4_t femdarr4_get_deriv(   imdir_t idx, ord_t order, femdarr4_t* arr);
  void      femdarr4_get_deriv_to(imdir_t idx, ord_t order, femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_get_im(      imdir_t idx, ord_t order, femdarr4_t* arr);
  void      femdarr4_get_im_to(   imdir_t idx, ord_t order, femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_truncate_im(   imdir_t idx, ord_t order, femdarr4_t* arr);
  void      femdarr4_truncate_im_to(imdir_t idx, ord_t order, femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_copy(   femdarr4_t* src);
  void      femdarr4_copy_to(femdarr4_t* src, femdarr4_t* res);
  femdarr4_t femdarr4_get_im(    imdir_t idx, ord_t order, femdarr4_t* arr);
  void      femdarr4_get_im_to( imdir_t idx, ord_t order, femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_get_deriv(    imdir_t idx, ord_t order, femdarr4_t* arr);
  void      femdarr4_get_deriv_to( imdir_t idx, ord_t order, femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_extract_im(    imdir_t idx, ord_t order, femdarr4_t* arr);
  void      femdarr4_extract_im_to( imdir_t idx, ord_t order, femdarr4_t* arr,  femdarr4_t* res);
  femdarr4_t femdarr4_extract_deriv(    imdir_t idx, ord_t order, femdarr4_t* arr);
  void      femdarr4_extract_deriv_to( imdir_t idx, ord_t order, femdarr4_t* arr, femdarr4_t* res);
  mdarr4_t   femdarr4_get_item_k(  femdarr4_t* arr, uint64_t k);
  femdnum4_t  femdarr4_get_item_ij( femdarr4_t* arr, uint64_t i, uint64_t j);
  mdnum4_t femdarr4_get_item_ijk(femdarr4_t* arr, uint64_t i, uint64_t j, uint64_t k);
  void femdarr4_get_item_ij_to(  femdarr4_t* arr, uint64_t i, uint64_t j,
                                 femdnum4_t* res);
  void femdarr4_get_item_k_to(   femdarr4_t* arr, uint64_t k,
                                  mdarr4_t* res);
  void femdarr4_get_item_ijk_to( femdarr4_t* arr, uint64_t i, uint64_t j, uint64_t k,
                                mdnum4_t* res);
  femdarr4_t femdarr4_get_slice(femdarr4_t* arr,
                            int64_t starti, int64_t stopi, int64_t stepi,
                            int64_t startj, int64_t stopj, int64_t stepj);
  void      femdarr4_get_slice_to(femdarr4_t* arr,
                            int64_t starti, int64_t stopi, int64_t stepi,
                            int64_t startj, int64_t stopj, int64_t stepj,
                            femdarr4_t* res);
  void femdarr4_set_item_ij_r(   coeff_t  elm, uint64_t i, uint64_t j,
                              femdarr4_t* res);
  void femdarr4_set_item_ij_o(  mdnum4_t* elm, uint64_t i, uint64_t j,
                               femdarr4_t* res);
  void femdarr4_set_item_ij_f(  femdnum4_t* elm, uint64_t i, uint64_t j,
                              femdarr4_t* res);
  void femdarr4_set_item_k_r(    coeff_t  elm, uint64_t k,
                              femdarr4_t* res);
  void femdarr4_set_item_k_o(  mdnum4_t* elm, uint64_t k,
                              femdarr4_t* res);
  void femdarr4_set_item_k_R(    mdarr4_t* elm, uint64_t k,
                            femdarr4_t* res);
  void femdarr4_set_item_k_O(    mdarr4_t* elm, uint64_t k,
                            femdarr4_t* res);
  void femdarr4_set_item_ijk_r(   coeff_t  elm, uint64_t i, uint64_t j, uint64_t k,
                               femdarr4_t* res);
  void femdarr4_set_item_ijk_o( mdnum4_t* elm, uint64_t i, uint64_t j, uint64_t k,
                               femdarr4_t* res);
  void femdarr4_set_slice_r( coeff_t val,
                           int64_t starti, int64_t stopi, int64_t stepi,
                           int64_t startj, int64_t stopj, int64_t stepj,
                            femdarr4_t* res);
  void femdarr4_set_slice_o( mdnum4_t* val,
                           int64_t starti, int64_t stopi, int64_t stepi,
                           int64_t startj, int64_t stopj, int64_t stepj,
                            femdarr4_t* res);
  void femdarr4_set_slice_f( femdnum4_t* val,
                           int64_t starti, int64_t stopi, int64_t stepi,
                           int64_t startj, int64_t stopj, int64_t stepj,
                            femdarr4_t* res);
  void femdarr4_set_slice_O( mdarr4_t* val,
                           int64_t starti, int64_t stopi, int64_t stepi,
                           int64_t startj, int64_t stopj, int64_t stepj,
                            femdarr4_t* res);
  void femdarr4_set_slice_F( femdarr4_t* val,
                           int64_t starti, int64_t stopi, int64_t stepi,
                           int64_t startj, int64_t stopj, int64_t stepj,
                            femdarr4_t* res);
  void femdarr4_set_all_o( mdnum4_t* num, femdarr4_t* arr );
  void femdarr4_set_all_r(   coeff_t  num, femdarr4_t* arr );
  void femdarr4_set_all_f(  femdnum4_t* num, femdarr4_t* arr );
  void femdarr4_set_r(    coeff_t src, femdarr4_t* res );
  void femdarr4_set_o( mdnum4_t* src, femdarr4_t* res );
  void femdarr4_set_f(  femdnum4_t* src, femdarr4_t* res );
  void femdarr4_set_R(    darr_t* src, femdarr4_t* res );
  void femdarr4_set_O(   mdarr4_t* src, femdarr4_t* res );
  void femdarr4_set_F( femdarr4_t* src, femdarr4_t* res );
  femdarr4_t femdarr4_eye( uint64_t size,  uint64_t nip);
  femdarr4_t femdarr4_zeros(  uint64_t nrows,   uint64_t ncols, uint64_t nip    );
  femdarr4_t femdarr4_ones( uint64_t nrows,   uint64_t ncols, uint64_t nip     );
  femdarr4_t femdarr4_createEmpty( uint64_t nrows,   uint64_t ncols, uint64_t nIntPts);
  void femdarr4_free(femdarr4_t* arr);
  femdarr4_t femdarr4_init();
  ord_t femdarr4_get_order(femdarr4_t* arr);
  
  
  # From ../../../include/oti/static/mdnum4/array/gauss/utils.h
  
  void femdarr4_dimCheck_FF_samesize(femdarr4_t* arr1, femdarr4_t* arr2, femdnum4_t* res);
  void femdarr4_dimCheck_OF_samesize(  mdarr4_t* arr1, femdarr4_t* arr2, femdnum4_t* res);
  void femdarr4_dimCheck_RF_samesize(   darr_t* arr1, femdarr4_t* arr2, femdnum4_t* res);
  void femdarr4_dimCheck_FF_elementwise(femdarr4_t* arr1, femdarr4_t* arr2, femdarr4_t* res);
  void femdarr4_dimCheck_OF_elementwise(  mdarr4_t* arr1, femdarr4_t* arr2, femdarr4_t* res);
  void femdarr4_dimCheck_RF_elementwise(   darr_t* arr1, femdarr4_t* arr2, femdarr4_t* res);
  void femdarr4_dimCheck_fF_elementwise( femdnum4_t* num1, femdarr4_t* arr2, femdarr4_t* res);
  void femdarr4_dimCheck_Ff_elementwise(femdarr4_t* arr1,  femdnum4_t* num2, femdarr4_t* res);
  void femdarr4_dimCheck_FF_matmul( femdarr4_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  void femdarr4_dimCheck_OF_matmul(   mdarr4_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  void femdarr4_dimCheck_RF_matmul(    darr_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  void femdarr4_dimCheck_FO_matmul( femdarr4_t* lhs,   mdarr4_t* rhs, femdarr4_t* res);
  void femdarr4_dimCheck_FR_matmul( femdarr4_t* lhs,    darr_t* rhs, femdarr4_t* res);
  void femdarr4_dimCheck_F_squareness( femdarr4_t* arr1, femdarr4_t* res);
  void femdarr4_dimCheck_F_transpose( femdarr4_t* arr1, femdarr4_t* res);
  void femdarr4_dimCheck_FfO_integrate(femdarr4_t* arr, femdnum4_t* num,mdarr4_t* res);
  void femdarr4_get_active_bases(femdarr4_t* arr, imdir_t* list_vals);
  
  
  # From ../../../include/oti/static/mdnum4/array/gauss/algebra.h
  
  femdarr4_t femdarr4_neg(    femdarr4_t* arr);
  void      femdarr4_neg_to( femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t femdarr4_sum_FF(   femdarr4_t* lhs, femdarr4_t* rhs);
  void      femdarr4_sum_FF_to(femdarr4_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_sum_fF(    femdnum4_t* lhs, femdarr4_t* rhs);
  void      femdarr4_sum_fF_to( femdnum4_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_sum_OF(     mdarr4_t* lhs, femdarr4_t* rhs);
  void      femdarr4_sum_OF_to(  mdarr4_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_sum_RF(      darr_t* lhs, femdarr4_t* rhs);
  void      femdarr4_sum_RF_to(   darr_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_sum_oF(   mdnum4_t* lhs, femdarr4_t* rhs);
  void      femdarr4_sum_oF_to(mdnum4_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_sum_rF(     coeff_t  lhs, femdarr4_t* rhs);
  void      femdarr4_sum_rF_to(  coeff_t  lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_sub_FF(    femdarr4_t* lhs, femdarr4_t* rhs);
  void      femdarr4_sub_FF_to( femdarr4_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_sub_fF(    femdnum4_t* lhs, femdarr4_t* rhs);
  void      femdarr4_sub_fF_to( femdnum4_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_sub_Ff(    femdarr4_t* lhs, femdnum4_t* rhs);
  void      femdarr4_sub_Ff_to( femdarr4_t* lhs, femdnum4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_sub_OF(      mdarr4_t* lhs, femdarr4_t* rhs);
  void      femdarr4_sub_OF_to(   mdarr4_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_sub_FO(    femdarr4_t* lhs,   mdarr4_t* rhs);
  void      femdarr4_sub_FO_to( femdarr4_t* lhs,   mdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_sub_RF(       darr_t* lhs, femdarr4_t* rhs);
  void      femdarr4_sub_RF_to(    darr_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_sub_FR(    femdarr4_t* lhs,    darr_t* rhs);
  void      femdarr4_sub_FR_to( femdarr4_t* lhs,    darr_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_sub_oF(    mdnum4_t* lhs, femdarr4_t* rhs);
  void      femdarr4_sub_oF_to( mdnum4_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_sub_Fo(    femdarr4_t* lhs, mdnum4_t* rhs);
  void      femdarr4_sub_Fo_to( femdarr4_t* lhs, mdnum4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_sub_rF(      coeff_t  lhs, femdarr4_t* rhs);
  void      femdarr4_sub_rF_to(    coeff_t lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_sub_Fr(    femdarr4_t* lhs,   coeff_t  rhs);
  void      femdarr4_sub_Fr_to( femdarr4_t* lhs,   coeff_t  rhs, femdarr4_t* res);
  femdarr4_t femdarr4_mul_FF(   femdarr4_t* lhs, femdarr4_t* rhs);
  void      femdarr4_mul_FF_to(femdarr4_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_mul_fF(    femdnum4_t* lhs, femdarr4_t* rhs);
  void      femdarr4_mul_fF_to( femdnum4_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_mul_OF(     mdarr4_t* lhs, femdarr4_t* rhs);
  void      femdarr4_mul_OF_to(  mdarr4_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_mul_RF(      darr_t* lhs, femdarr4_t* rhs);
  void      femdarr4_mul_RF_to(   darr_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_mul_oF(   mdnum4_t* lhs, femdarr4_t* rhs);
  void      femdarr4_mul_oF_to(mdnum4_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_mul_rF(     coeff_t  lhs, femdarr4_t* rhs);
  void      femdarr4_mul_rF_to(  coeff_t  lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_div_FF(    femdarr4_t* lhs, femdarr4_t* rhs);
  void      femdarr4_div_FF_to( femdarr4_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_div_fF(     femdnum4_t* lhs, femdarr4_t* rhs);
  void      femdarr4_div_fF_to(  femdnum4_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_div_Ff(    femdarr4_t* lhs,  femdnum4_t* rhs);
  void      femdarr4_div_Ff_to( femdarr4_t* lhs,  femdnum4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_div_OF(      mdarr4_t* lhs, femdarr4_t* rhs);
  void      femdarr4_div_OF_to(   mdarr4_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_div_FO(    femdarr4_t* lhs,   mdarr4_t* rhs);
  void      femdarr4_div_FO_to( femdarr4_t* lhs,   mdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_div_RF(       darr_t* lhs, femdarr4_t* rhs);
  void      femdarr4_div_RF_to(    darr_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_div_FR(    femdarr4_t* lhs,    darr_t* rhs);
  void      femdarr4_div_FR_to( femdarr4_t* lhs,    darr_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_div_oF(    mdnum4_t* lhs, femdarr4_t* rhs);
  void      femdarr4_div_oF_to( mdnum4_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_div_Fo(    femdarr4_t* lhs, mdnum4_t* rhs);
  void      femdarr4_div_Fo_to( femdarr4_t* lhs, mdnum4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_div_rF(      coeff_t  lhs, femdarr4_t* rhs);
  void      femdarr4_div_rF_to(    coeff_t lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_div_Fr(    femdarr4_t* lhs,   coeff_t  rhs);
  void      femdarr4_div_Fr_to( femdarr4_t* lhs,   coeff_t  rhs, femdarr4_t* res);
  mdarr4_t femdarr4_integrate(    femdarr4_t* arr, femdnum4_t* w);
  void    femdarr4_integrate_to( femdarr4_t* arr, femdnum4_t* w, mdarr4_t* res);
  femdnum4_t femdarr4_dotproduct_FF(    femdarr4_t* lhs, femdarr4_t* rhs);
  void     femdarr4_dotproduct_FF_to( femdarr4_t* lhs, femdarr4_t* rhs, femdnum4_t* res);
  femdnum4_t femdarr4_dotproduct_OF(      mdarr4_t* lhs, femdarr4_t* rhs);
  void     femdarr4_dotproduct_OF_to(   mdarr4_t* lhs, femdarr4_t* rhs, femdnum4_t* res);
  femdnum4_t femdarr4_dotproduct_RF(       darr_t* lhs, femdarr4_t* rhs);
  void     femdarr4_dotproduct_RF_to(    darr_t* lhs, femdarr4_t* rhs, femdnum4_t* res);
  femdarr4_t femdarr4_matmul_FF(    femdarr4_t* lhs, femdarr4_t* rhs);
  void      femdarr4_matmul_FF_to( femdarr4_t* lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_matmul_OF(    mdarr4_t*   lhs, femdarr4_t* rhs);
  void      femdarr4_matmul_OF_to( mdarr4_t*   lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_matmul_FO(    femdarr4_t* lhs, mdarr4_t*   rhs);
  void      femdarr4_matmul_FO_to( femdarr4_t* lhs, mdarr4_t*   rhs, femdarr4_t* res);
  femdarr4_t femdarr4_matmul_RF(    darr_t*    lhs, femdarr4_t* rhs);
  void      femdarr4_matmul_RF_to( darr_t*    lhs, femdarr4_t* rhs, femdarr4_t* res);
  femdarr4_t femdarr4_matmul_FR(    femdarr4_t* lhs, darr_t*    rhs);
  void      femdarr4_matmul_FR_to( femdarr4_t* lhs, darr_t*    rhs, femdarr4_t* res);
  femdnum4_t femdarr4_det(   femdarr4_t* arr);
  void     femdarr4_det_to(femdarr4_t* arr, femdnum4_t* res);
  femdnum4_t femdarr4_norm(     femdarr4_t* arr);
  void     femdarr4_norm_to(  femdarr4_t* arr, femdnum4_t* res);
  femdnum4_t femdarr4_pnorm(    femdarr4_t* arr, coeff_t p);
  void     femdarr4_pnorm_to( femdarr4_t* arr, coeff_t p, femdnum4_t* res);
  femdarr4_t   femdarr4_invert(    femdarr4_t* arr);
  void        femdarr4_invert_to( femdarr4_t* arr, femdarr4_t* res);
  femdarr4_t   femdarr4_transpose(   femdarr4_t* arr);
  void        femdarr4_transpose_to(femdarr4_t* arr, femdarr4_t* res);
  
  