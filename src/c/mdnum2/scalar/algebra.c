
// Division.

// ****************************************************************************************************
mdnum2_t mdnum2_div_ro(coeff_t num, mdnum2_t* den){

    
    mdnum2_t inv = mdnum2_pow(den,-1);
    mdnum2_t res = mdnum2_mul_ro(num,&inv);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum2_t mdnum2_div_oo(mdnum2_t* num, mdnum2_t* den){

    
    mdnum2_t inv = mdnum2_init();
    mdnum2_pow_to(den,-1,&inv);
    mdnum2_t res = mdnum2_mul_oo(num,&inv);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum2_t mdnum2_div_or(mdnum2_t* num, coeff_t val){

    return mdnum2_mul_ro(1.0/val,num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
mdnum2_t mdnum2_abs(mdnum2_t* num){

	mdnum2_t res;
    mdnum2_abs_to(num,&res);
    return res;

}
// ----------------------------------------------------------------------------------------------------

mdnum2_t mdnum2_neg(  mdnum2_t* lhs){

  mdnum2_t res;

  // Negation like function '-lhs'
  // Real;
  res.r = -lhs->r;
  // Order 1;
  res.e1 = -lhs->e1;
  res.e2 = -lhs->e2;
  // Order 2;
  res.e12 = -lhs->e12;

  return res;

}

void mdnum2_neg_to(  mdnum2_t* lhs, mdnum2_t* res){

  // Negation like function '-lhs'
  // Real;
  res->r = -lhs->r;
  // Order 1;
  res->e1 = -lhs->e1;
  res->e2 = -lhs->e2;
  // Order 2;
  res->e12 = -lhs->e12;

}

mdnum2_t mdnum2_sum_oo(  mdnum2_t* lhs,  mdnum2_t* rhs){
  mdnum2_t res;

  // Addition like function 'lhs + rhs'
  //  Real
  res.r = lhs->r + rhs->r;
  // Order 1
  res.e1 = lhs->e1 + rhs->e1;
  res.e2 = lhs->e2 + rhs->e2;
  // Order 2
  res.e12 = lhs->e12 + rhs->e12;

  return res;

}

void mdnum2_sum_oo_to(  mdnum2_t* lhs,  mdnum2_t* rhs, mdnum2_t* res){
  // Addition like function 'lhs + rhs'
  //  Real
  res->r = lhs->r + rhs->r;
  // Order 1
  res->e1 = lhs->e1 + rhs->e1;
  res->e2 = lhs->e2 + rhs->e2;
  // Order 2
  res->e12 = lhs->e12 + rhs->e12;

}

mdnum2_t mdnum2_sum_ro(  coeff_t lhs,  mdnum2_t* rhs){
  mdnum2_t res;

  // Addition like function 'lhs + rhs'
  // Real;
  res.r = lhs + rhs->r;
  // Order 1;
  res.e1 =  + rhs->e1;
  res.e2 =  + rhs->e2;
  // Order 2;
  res.e12 =  + rhs->e12;

  return res;

}

void mdnum2_sum_ro_to(  coeff_t lhs,  mdnum2_t* rhs, mdnum2_t* res){
  // Addition like function 'lhs + rhs'
  // Real;
  res->r = lhs + rhs->r;
  // Order 1;
  res->e1 =  + rhs->e1;
  res->e2 =  + rhs->e2;
  // Order 2;
  res->e12 =  + rhs->e12;

}

mdnum2_t mdnum2_sub_oo(  mdnum2_t* lhs,  mdnum2_t* rhs){
  mdnum2_t res;

  // Addition like function 'lhs - rhs'
  //  Real
  res.r = lhs->r - rhs->r;
  // Order 1
  res.e1 = lhs->e1 - rhs->e1;
  res.e2 = lhs->e2 - rhs->e2;
  // Order 2
  res.e12 = lhs->e12 - rhs->e12;

  return res;

}

void mdnum2_sub_oo_to(  mdnum2_t* lhs,  mdnum2_t* rhs, mdnum2_t* res){
  // Addition like function 'lhs - rhs'
  //  Real
  res->r = lhs->r - rhs->r;
  // Order 1
  res->e1 = lhs->e1 - rhs->e1;
  res->e2 = lhs->e2 - rhs->e2;
  // Order 2
  res->e12 = lhs->e12 - rhs->e12;

}

mdnum2_t mdnum2_sub_ro(  coeff_t lhs,  mdnum2_t* rhs){
  mdnum2_t res;

  // Addition like function 'lhs - rhs'
  // Real;
  res.r = lhs - rhs->r;
  // Order 1;
  res.e1 =  - rhs->e1;
  res.e2 =  - rhs->e2;
  // Order 2;
  res.e12 =  - rhs->e12;

  return res;

}

void mdnum2_sub_ro_to(  coeff_t lhs,  mdnum2_t* rhs, mdnum2_t* res){
  // Addition like function 'lhs - rhs'
  // Real;
  res->r = lhs - rhs->r;
  // Order 1;
  res->e1 =  - rhs->e1;
  res->e2 =  - rhs->e2;
  // Order 2;
  res->e12 =  - rhs->e12;

}

mdnum2_t mdnum2_sub_or(  mdnum2_t* lhs,  coeff_t rhs){
  mdnum2_t res;

  // Addition like function 'lhs - rhs'
  // Real;
  res.r = lhs->r - rhs;
  // Order 1;
  res.e1 = lhs->e1;
  res.e2 = lhs->e2;
  // Order 2;
  res.e12 = lhs->e12;

  return res;

}

void mdnum2_sub_or_to(  mdnum2_t* lhs,  coeff_t rhs, mdnum2_t* res){
  // Addition like function 'lhs - rhs'
  // Real;
  res->r = lhs->r - rhs;
  // Order 1;
  res->e1 = lhs->e1;
  res->e2 = lhs->e2;
  // Order 2;
  res->e12 = lhs->e12;

}

mdnum2_t mdnum2_mul_oo(  mdnum2_t* lhs,  mdnum2_t* rhs){
  mdnum2_t res;

  //  Multiplication like function 'lhs * rhs'
  // Real;
  res.r = lhs->r * rhs->r;
  // Order 1;
  res.e1 = lhs->r * rhs->e1 + lhs->e1 * rhs->r;
  res.e2 = lhs->r * rhs->e2 + lhs->e2 * rhs->r;
  // Order 2;
  res.e12 = lhs->r * rhs->e12 + lhs->e12 * rhs->r + lhs->e1 * rhs->e2 
          + lhs->e2 * rhs->e1;

  return res;

}

void mdnum2_mul_oo_to(  mdnum2_t* lhs,  mdnum2_t* rhs, mdnum2_t* res){
  //  Multiplication like function 'lhs * rhs'
  // Real;
  res->r = lhs->r * rhs->r;
  // Order 1;
  res->e1 = lhs->r * rhs->e1 + lhs->e1 * rhs->r;
  res->e2 = lhs->r * rhs->e2 + lhs->e2 * rhs->r;
  // Order 2;
  res->e12 = lhs->r * rhs->e12 + lhs->e12 * rhs->r + lhs->e1 * rhs->e2 
          + lhs->e2 * rhs->e1;

}

mdnum2_t mdnum2_mul_ro(  coeff_t lhs,  mdnum2_t* rhs){
  mdnum2_t res;

  // Multiplication like function 'lhs * rhs'
  //  Real;
  res.r = lhs * rhs->r;
  // Order 1;
  res.e1 = lhs * rhs->e1;
  res.e2 = lhs * rhs->e2;
  // Order 2;
  res.e12 = lhs * rhs->e12;

  return res;

}

void mdnum2_mul_ro_to(  coeff_t lhs,  mdnum2_t* rhs, mdnum2_t* res){
  // Multiplication like function 'lhs * rhs'
  //  Real;
  res->r = lhs * rhs->r;
  // Order 1;
  res->e1 = lhs * rhs->e1;
  res->e2 = lhs * rhs->e2;
  // Order 2;
  res->e12 = lhs * rhs->e12;

}

mdnum2_t mdnum2_trunc_mul_oo(  mdnum2_t* lhs,  mdnum2_t* rhs){
  mdnum2_t res;

  res = mdnum2_init();

  //  Truncated multiplication like function 'lhs * rhs'
  // Order 2;
  res.e12 =  + lhs->e1 * rhs->e2 + lhs->e2 * rhs->e1;

  return res;

}

void mdnum2_trunc_mul_oo_to(  mdnum2_t* lhs,  mdnum2_t* rhs, mdnum2_t* res){
   (*res) = mdnum2_init();

  //  Truncated multiplication like function 'lhs * rhs'
  // Order 2;
  res->e12 =  + lhs->e1 * rhs->e2 + lhs->e2 * rhs->e1;

}

mdnum2_t mdnum2_gem_oo(  mdnum2_t* a,  mdnum2_t* b,  mdnum2_t* c){
  mdnum2_t res;

  //  General multiplication like function 'a * b + c'
  // Real;
  res.r = c->r + a->r * b->r;
  // Order 1;
  res.e1 = c->e1 + a->r * b->e1 + a->e1 * b->r;
  res.e2 = c->e2 + a->r * b->e2 + a->e2 * b->r;
  // Order 2;
  res.e12 = c->e12 + a->r * b->e12 + a->e12 * b->r + a->e1 * b->e2 
          + a->e2 * b->e1;

  return res;

}

void mdnum2_gem_oo_to(  mdnum2_t* a,  mdnum2_t* b,  mdnum2_t* c, mdnum2_t* res){
  //  General multiplication like function 'a * b + c'
  // Real;
  res->r = c->r + a->r * b->r;
  // Order 1;
  res->e1 = c->e1 + a->r * b->e1 + a->e1 * b->r;
  res->e2 = c->e2 + a->r * b->e2 + a->e2 * b->r;
  // Order 2;
  res->e12 = c->e12 + a->r * b->e12 + a->e12 * b->r + a->e1 * b->e2 
          + a->e2 * b->e1;

}

mdnum2_t mdnum2_gem_ro(  coeff_t a,  mdnum2_t* b,  mdnum2_t* c){
  mdnum2_t res;

  //  General multiplication like function 'a * b + c'
  // Real;
  res.r = c->r + a * b->r;
  // Order 1;
  res.e1 = c->e1 + a * b->e1;
  res.e2 = c->e2 + a * b->e2;
  // Order 2;
  res.e12 = c->e12 + a * b->e12;

  return res;

}

void mdnum2_gem_ro_to(  coeff_t a,  mdnum2_t* b,  mdnum2_t* c, mdnum2_t* res){
  //  General multiplication like function 'a * b + c'
  // Real;
  res->r = c->r + a * b->r;
  // Order 1;
  res->e1 = c->e1 + a * b->e1;
  res->e2 = c->e2 + a * b->e2;
  // Order 2;
  res->e12 = c->e12 + a * b->e12;

}

mdnum2_t mdnum2_feval(coeff_t* feval_re, mdnum2_t* x){

  mdnum2_t res;

  // feval function
  //  Definitions
  coeff_t factor=1, coef = 0;
  mdnum2_t deltax = (*x), deltax_power = (*x);
  deltax.r = 0.0;
  deltax_power.r = 0.0;
  mdnum2_set_r(0.0, &res);
  //  Real
  res.r = feval_re[0];
  // Order 1
  factor *=1;
  coef    = feval_re[1]/ factor;;
  mdnum2_gem_ro_to( coef, &deltax_power, &res, &res);
  deltax_power = mdnum2_mul_oo(&deltax_power,&deltax);
  // Order 2
  factor *=2;
  coef    = feval_re[2]/ factor;;
  mdnum2_gem_ro_to( coef, &deltax_power, &res, &res);

  return res;

}

void mdnum2_feval_to(coeff_t* feval_re, mdnum2_t* x, mdnum2_t* res){

  // feval function
  //  Definitions
  coeff_t factor=1, coef = 0;
  mdnum2_t deltax = (*x), deltax_power = (*x);
  deltax.r = 0.0;
  deltax_power.r = 0.0;
  mdnum2_set_r(0.0, res);
  //  Real
  res->r = feval_re[0];
  // Order 1
  factor *=1;
  coef    = feval_re[1]/ factor;;
  mdnum2_gem_ro_to( coef, &deltax_power, res, res);
  deltax_power = mdnum2_mul_oo(&deltax_power,&deltax);
  // Order 2
  factor *=2;
  coef    = feval_re[2]/ factor;;
  mdnum2_gem_ro_to( coef, &deltax_power, res, res);

}
