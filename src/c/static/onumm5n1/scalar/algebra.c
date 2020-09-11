
// Division.

// ****************************************************************************************************
onumm5n1_t onumm5n1_div_ro(coeff_t num, onumm5n1_t* den){

    
    onumm5n1_t inv = onumm5n1_pow(den,-1);
    onumm5n1_t res = onumm5n1_mul_ro(num,&inv);

    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n1_t onumm5n1_div_oo(onumm5n1_t* num, onumm5n1_t* den){

    
    onumm5n1_t inv = onumm5n1_init();
    onumm5n1_pow_to(den,-1,&inv);
    onumm5n1_t res = onumm5n1_mul_oo(num,&inv);
    
    return res;

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n1_t onumm5n1_div_or(onumm5n1_t* num, coeff_t val){

    return onumm5n1_mul_ro(1.0/val,num);

}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
onumm5n1_t onumm5n1_abs(onumm5n1_t* num){

	onumm5n1_t res;
    onumm5n1_abs_to(num,&res);
    return res;

}
// ----------------------------------------------------------------------------------------------------

onumm5n1_t onumm5n1_neg(  onumm5n1_t* lhs){

  onumm5n1_t res;

  // Negation like function '-lhs'
  // Real;
  res.r = -lhs->r;
  // Order 1;
  res.e1 = -lhs->e1;
  res.e2 = -lhs->e2;
  res.e3 = -lhs->e3;
  res.e4 = -lhs->e4;
  res.e5 = -lhs->e5;

  return res;

}

void onumm5n1_neg_to(  onumm5n1_t* lhs, onumm5n1_t* res){

  // Negation like function '-lhs'
  // Real;
  res->r = -lhs->r;
  // Order 1;
  res->e1 = -lhs->e1;
  res->e2 = -lhs->e2;
  res->e3 = -lhs->e3;
  res->e4 = -lhs->e4;
  res->e5 = -lhs->e5;

}

onumm5n1_t onumm5n1_sum_oo(  onumm5n1_t* lhs,  onumm5n1_t* rhs){
  onumm5n1_t res;

  // Addition like function 'lhs + rhs'
  //  Real
  res.r = lhs->r + rhs->r;
  // Order 1
  res.e1 = lhs->e1 + rhs->e1;
  res.e2 = lhs->e2 + rhs->e2;
  res.e3 = lhs->e3 + rhs->e3;
  res.e4 = lhs->e4 + rhs->e4;
  res.e5 = lhs->e5 + rhs->e5;

  return res;

}

void onumm5n1_sum_oo_to(  onumm5n1_t* lhs,  onumm5n1_t* rhs, onumm5n1_t* res){
  // Addition like function 'lhs + rhs'
  //  Real
  res->r = lhs->r + rhs->r;
  // Order 1
  res->e1 = lhs->e1 + rhs->e1;
  res->e2 = lhs->e2 + rhs->e2;
  res->e3 = lhs->e3 + rhs->e3;
  res->e4 = lhs->e4 + rhs->e4;
  res->e5 = lhs->e5 + rhs->e5;

}

onumm5n1_t onumm5n1_sum_ro(  coeff_t lhs,  onumm5n1_t* rhs){
  onumm5n1_t res;

  // Addition like function 'lhs + rhs'
  // Real;
  res.r = lhs + rhs->r;
  // Order 1;
  res.e1 =  + rhs->e1;
  res.e2 =  + rhs->e2;
  res.e3 =  + rhs->e3;
  res.e4 =  + rhs->e4;
  res.e5 =  + rhs->e5;

  return res;

}

void onumm5n1_sum_ro_to(  coeff_t lhs,  onumm5n1_t* rhs, onumm5n1_t* res){
  // Addition like function 'lhs + rhs'
  // Real;
  res->r = lhs + rhs->r;
  // Order 1;
  res->e1 =  + rhs->e1;
  res->e2 =  + rhs->e2;
  res->e3 =  + rhs->e3;
  res->e4 =  + rhs->e4;
  res->e5 =  + rhs->e5;

}

onumm5n1_t onumm5n1_sub_oo(  onumm5n1_t* lhs,  onumm5n1_t* rhs){
  onumm5n1_t res;

  // Addition like function 'lhs - rhs'
  //  Real
  res.r = lhs->r - rhs->r;
  // Order 1
  res.e1 = lhs->e1 - rhs->e1;
  res.e2 = lhs->e2 - rhs->e2;
  res.e3 = lhs->e3 - rhs->e3;
  res.e4 = lhs->e4 - rhs->e4;
  res.e5 = lhs->e5 - rhs->e5;

  return res;

}

void onumm5n1_sub_oo_to(  onumm5n1_t* lhs,  onumm5n1_t* rhs, onumm5n1_t* res){
  // Addition like function 'lhs - rhs'
  //  Real
  res->r = lhs->r - rhs->r;
  // Order 1
  res->e1 = lhs->e1 - rhs->e1;
  res->e2 = lhs->e2 - rhs->e2;
  res->e3 = lhs->e3 - rhs->e3;
  res->e4 = lhs->e4 - rhs->e4;
  res->e5 = lhs->e5 - rhs->e5;

}

onumm5n1_t onumm5n1_sub_ro(  coeff_t lhs,  onumm5n1_t* rhs){
  onumm5n1_t res;

  // Addition like function 'lhs - rhs'
  // Real;
  res.r = lhs - rhs->r;
  // Order 1;
  res.e1 =  - rhs->e1;
  res.e2 =  - rhs->e2;
  res.e3 =  - rhs->e3;
  res.e4 =  - rhs->e4;
  res.e5 =  - rhs->e5;

  return res;

}

void onumm5n1_sub_ro_to(  coeff_t lhs,  onumm5n1_t* rhs, onumm5n1_t* res){
  // Addition like function 'lhs - rhs'
  // Real;
  res->r = lhs - rhs->r;
  // Order 1;
  res->e1 =  - rhs->e1;
  res->e2 =  - rhs->e2;
  res->e3 =  - rhs->e3;
  res->e4 =  - rhs->e4;
  res->e5 =  - rhs->e5;

}

onumm5n1_t onumm5n1_sub_or(  onumm5n1_t* lhs,  coeff_t rhs){
  onumm5n1_t res;

  // Addition like function 'lhs - rhs'
  // Real;
  res.r = lhs->r - rhs;
  // Order 1;
  res.e1 = lhs->e1;
  res.e2 = lhs->e2;
  res.e3 = lhs->e3;
  res.e4 = lhs->e4;
  res.e5 = lhs->e5;

  return res;

}

void onumm5n1_sub_or_to(  onumm5n1_t* lhs,  coeff_t rhs, onumm5n1_t* res){
  // Addition like function 'lhs - rhs'
  // Real;
  res->r = lhs->r - rhs;
  // Order 1;
  res->e1 = lhs->e1;
  res->e2 = lhs->e2;
  res->e3 = lhs->e3;
  res->e4 = lhs->e4;
  res->e5 = lhs->e5;

}

onumm5n1_t onumm5n1_mul_oo(  onumm5n1_t* lhs,  onumm5n1_t* rhs){
  onumm5n1_t res;

  //  Multiplication like function 'lhs * rhs'
  // Real;
  res.r = lhs->r * rhs->r;
  // Order 1;
  res.e1 = lhs->r * rhs->e1 + lhs->e1 * rhs->r;
  res.e2 = lhs->r * rhs->e2 + lhs->e2 * rhs->r;
  res.e3 = lhs->r * rhs->e3 + lhs->e3 * rhs->r;
  res.e4 = lhs->r * rhs->e4 + lhs->e4 * rhs->r;
  res.e5 = lhs->r * rhs->e5 + lhs->e5 * rhs->r;

  return res;

}

void onumm5n1_mul_oo_to(  onumm5n1_t* lhs,  onumm5n1_t* rhs, onumm5n1_t* res){
  //  Multiplication like function 'lhs * rhs'
  // Real;
  res->r = lhs->r * rhs->r;
  // Order 1;
  res->e1 = lhs->r * rhs->e1 + lhs->e1 * rhs->r;
  res->e2 = lhs->r * rhs->e2 + lhs->e2 * rhs->r;
  res->e3 = lhs->r * rhs->e3 + lhs->e3 * rhs->r;
  res->e4 = lhs->r * rhs->e4 + lhs->e4 * rhs->r;
  res->e5 = lhs->r * rhs->e5 + lhs->e5 * rhs->r;

}

onumm5n1_t onumm5n1_mul_ro(  coeff_t lhs,  onumm5n1_t* rhs){
  onumm5n1_t res;

  // Multiplication like function 'lhs * rhs'
  //  Real;
  res.r = lhs * rhs->r;
  // Order 1;
  res.e1 = lhs * rhs->e1;
  res.e2 = lhs * rhs->e2;
  res.e3 = lhs * rhs->e3;
  res.e4 = lhs * rhs->e4;
  res.e5 = lhs * rhs->e5;

  return res;

}

void onumm5n1_mul_ro_to(  coeff_t lhs,  onumm5n1_t* rhs, onumm5n1_t* res){
  // Multiplication like function 'lhs * rhs'
  //  Real;
  res->r = lhs * rhs->r;
  // Order 1;
  res->e1 = lhs * rhs->e1;
  res->e2 = lhs * rhs->e2;
  res->e3 = lhs * rhs->e3;
  res->e4 = lhs * rhs->e4;
  res->e5 = lhs * rhs->e5;

}

onumm5n1_t onumm5n1_trunc_mul_oo(  onumm5n1_t* lhs,  onumm5n1_t* rhs){
  onumm5n1_t res;

  res = onumm5n1_init();

  //  Truncated multiplication like function 'lhs * rhs'

  return res;

}

void onumm5n1_trunc_mul_oo_to(  onumm5n1_t* lhs,  onumm5n1_t* rhs, onumm5n1_t* res){
   (*res) = onumm5n1_init();

  //  Truncated multiplication like function 'lhs * rhs'

}

onumm5n1_t onumm5n1_gem_oo(  onumm5n1_t* a,  onumm5n1_t* b,  onumm5n1_t* c){
  onumm5n1_t res;

  //  General multiplication like function 'a * b + c'
  // Real;
  res.r = c->r + a->r * b->r;
  // Order 1;
  res.e1 = c->e1 + a->r * b->e1 + a->e1 * b->r;
  res.e2 = c->e2 + a->r * b->e2 + a->e2 * b->r;
  res.e3 = c->e3 + a->r * b->e3 + a->e3 * b->r;
  res.e4 = c->e4 + a->r * b->e4 + a->e4 * b->r;
  res.e5 = c->e5 + a->r * b->e5 + a->e5 * b->r;

  return res;

}

void onumm5n1_gem_oo_to(  onumm5n1_t* a,  onumm5n1_t* b,  onumm5n1_t* c, onumm5n1_t* res){
  //  General multiplication like function 'a * b + c'
  // Real;
  res->r = c->r + a->r * b->r;
  // Order 1;
  res->e1 = c->e1 + a->r * b->e1 + a->e1 * b->r;
  res->e2 = c->e2 + a->r * b->e2 + a->e2 * b->r;
  res->e3 = c->e3 + a->r * b->e3 + a->e3 * b->r;
  res->e4 = c->e4 + a->r * b->e4 + a->e4 * b->r;
  res->e5 = c->e5 + a->r * b->e5 + a->e5 * b->r;

}

onumm5n1_t onumm5n1_gem_ro(  coeff_t a,  onumm5n1_t* b,  onumm5n1_t* c){
  onumm5n1_t res;

  //  General multiplication like function 'a * b + c'
  // Real;
  res.r = c->r + a * b->r;
  // Order 1;
  res.e1 = c->e1 + a * b->e1;
  res.e2 = c->e2 + a * b->e2;
  res.e3 = c->e3 + a * b->e3;
  res.e4 = c->e4 + a * b->e4;
  res.e5 = c->e5 + a * b->e5;

  return res;

}

void onumm5n1_gem_ro_to(  coeff_t a,  onumm5n1_t* b,  onumm5n1_t* c, onumm5n1_t* res){
  //  General multiplication like function 'a * b + c'
  // Real;
  res->r = c->r + a * b->r;
  // Order 1;
  res->e1 = c->e1 + a * b->e1;
  res->e2 = c->e2 + a * b->e2;
  res->e3 = c->e3 + a * b->e3;
  res->e4 = c->e4 + a * b->e4;
  res->e5 = c->e5 + a * b->e5;

}

void onumm5n1_trunc_gem_oo_to( ord_t ord_lhs,  onumm5n1_t* a,  ord_t ord_rhs,  onumm5n1_t* b,  onumm5n1_t* c, onumm5n1_t* res){
  //  General multiplication like function 'a * b + c'
  switch( ord_lhs ){
    case 0:
      switch( ord_rhs ){
        case 0:
          // res order: 0
          res->r = c->r + a->r * b->r;
          break;
        case 1:
          // res order: 1
          res->e1 = c->e1 + a->r * b->e1;
          res->e2 = c->e2 + a->r * b->e2;
          res->e3 = c->e3 + a->r * b->e3;
          res->e4 = c->e4 + a->r * b->e4;
          res->e5 = c->e5 + a->r * b->e5;
          break;
      }
      break;
    case 1:
      switch( ord_rhs ){
        case 0:
          // res order: 1
          res->e1 = c->e1 + a->e1 * b->r;
          res->e2 = c->e2 + a->e2 * b->r;
          res->e3 = c->e3 + a->e3 * b->r;
          res->e4 = c->e4 + a->e4 * b->r;
          res->e5 = c->e5 + a->e5 * b->r;
          break;
      }
      break;
  }

}

void onumm5n1_trunc_sum_oo_to(ord_t order, onumm5n1_t* lhs,onumm5n1_t* rhs, onumm5n1_t* res){
  // Addition like function 'lhs + rhs'
  switch(order){
    case(0):
      //  Real
      res->r = lhs->r + rhs->r;
      break;
    case(1):    // Order 1
      res->e1 = lhs->e1 + rhs->e1;
      res->e2 = lhs->e2 + rhs->e2;
      res->e3 = lhs->e3 + rhs->e3;
      res->e4 = lhs->e4 + rhs->e4;
      res->e5 = lhs->e5 + rhs->e5;
      break;
  }
}

void onumm5n1_trunc_sub_oo_to(ord_t order, onumm5n1_t* lhs,onumm5n1_t* rhs, onumm5n1_t* res){
  // Addition like function 'lhs - rhs'
  switch(order){
    case(0):
      //  Real
      res->r = lhs->r - rhs->r;
      break;
    case(1):    // Order 1
      res->e1 = lhs->e1 - rhs->e1;
      res->e2 = lhs->e2 - rhs->e2;
      res->e3 = lhs->e3 - rhs->e3;
      res->e4 = lhs->e4 - rhs->e4;
      res->e5 = lhs->e5 - rhs->e5;
      break;
  }
}

onumm5n1_t onumm5n1_feval(coeff_t* feval_re, onumm5n1_t* x){

  onumm5n1_t res;

  // feval function
  //  Definitions
  coeff_t factor=1, coef = 0;
  onumm5n1_t deltax = (*x), deltax_power = (*x);
  deltax.r = 0.0;
  deltax_power.r = 0.0;
  onumm5n1_set_r(0.0, &res);
  //  Real
  res.r = feval_re[0];
  // Order 1
  factor *=1;
  coef    = feval_re[1]/ factor;;
  onumm5n1_gem_ro_to( coef, &deltax_power, &res, &res);

  return res;

}

void onumm5n1_feval_to(coeff_t* feval_re, onumm5n1_t* x, onumm5n1_t* res){

  // feval function
  //  Definitions
  coeff_t factor=1, coef = 0;
  onumm5n1_t deltax = (*x), deltax_power = (*x);
  deltax.r = 0.0;
  deltax_power.r = 0.0;
  onumm5n1_set_r(0.0, res);
  //  Real
  res->r = feval_re[0];
  // Order 1
  factor *=1;
  coef    = feval_re[1]/ factor;;
  onumm5n1_gem_ro_to( coef, &deltax_power, res, res);

}

