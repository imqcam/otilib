

// Not implemented correctly:
void onumm4n5_set_im_o(onumm4n5_t* num, imdir_t idx, ord_t order, onumm4n5_t* res){
    onumm4n5_set_item(num->r,idx,order,res);
}
void onumm4n5_set_deriv_r(coeff_t num, imdir_t idx, ord_t order, onumm4n5_t* res){
    *res=onumm4n5_init();
}
void onumm4n5_set_deriv_o(onumm4n5_t* num, imdir_t idx, ord_t order, onumm4n5_t* res){
    *res=onumm4n5_init();
}
void onumm4n5_extract_im_to( imdir_t idx, ord_t order, onumm4n5_t* num, onumm4n5_t* res){
    *res=onumm4n5_init();
}
onumm4n5_t onumm4n5_extract_im(imdir_t idx, ord_t order, onumm4n5_t* num){
    onumm4n5_t res = onumm4n5_init();
    return res;
}
onumm4n5_t onumm4n5_extract_deriv(imdir_t idx, ord_t order, onumm4n5_t* num){
    onumm4n5_t res = onumm4n5_init();
    return res;
}
void onumm4n5_extract_deriv_to(imdir_t idx, ord_t order, onumm4n5_t* num, onumm4n5_t* res){
	*res = onumm4n5_init();
}
void onumm4n5_get_im_to_o(imdir_t idx, ord_t order, onumm4n5_t* num, onumm4n5_t* res){
    coeff_t rres = onumm4n5_get_item(idx, order, num);
    onumm4n5_set_r(rres,res);
}
onumm4n5_t onumm4n5_get_im_o(imdir_t idx, ord_t order, onumm4n5_t* num){
    coeff_t rres = onumm4n5_get_item(idx, order, num);
    onumm4n5_t res;
    onumm4n5_set_r(rres,&res);
    return res;
}
void onumm4n5_get_im_to_r(imdir_t idx, ord_t order, onumm4n5_t* num, coeff_t* res){
    *res = onumm4n5_get_item(idx, order, num);
}

inline ord_t onumm4n5_get_order(onumm4n5_t* lhs){

	return 5;

}

onumm4n5_t onumm4n5_get_deriv_o( imdir_t idx, ord_t order, onumm4n5_t* num){

    onumm4n5_t res = onumm4n5_init();

    onumm4n5_get_deriv_to( idx, order, num, &res);
    
    return res;

}

void onumm4n5_get_deriv_to( imdir_t idx, ord_t order, onumm4n5_t* num, onumm4n5_t* res){

    coeff_t deriv = onumm4n5_get_deriv(idx,order,num);

    onumm4n5_set_r( deriv, res);

}

void onumm4n5_set_im_r(coeff_t num, imdir_t idx, ord_t order, onumm4n5_t* res){

    onumm4n5_set_item(num, idx,order,res);

}

onumm4n5_t onumm4n5_init(void){

  onumm4n5_t res;

  // Init function
  // Real;
  res.r = 0.0;
  // Order 1;
  res.e1 = 0.0;
  res.e2 = 0.0;
  res.e3 = 0.0;
  res.e4 = 0.0;
  // Order 2;
  res.e11 = 0.0;
  res.e12 = 0.0;
  res.e22 = 0.0;
  res.e13 = 0.0;
  res.e23 = 0.0;
  res.e33 = 0.0;
  res.e14 = 0.0;
  res.e24 = 0.0;
  res.e34 = 0.0;
  res.e44 = 0.0;
  // Order 3;
  res.e111 = 0.0;
  res.e112 = 0.0;
  res.e122 = 0.0;
  res.e222 = 0.0;
  res.e113 = 0.0;
  res.e123 = 0.0;
  res.e223 = 0.0;
  res.e133 = 0.0;
  res.e233 = 0.0;
  res.e333 = 0.0;
  res.e114 = 0.0;
  res.e124 = 0.0;
  res.e224 = 0.0;
  res.e134 = 0.0;
  res.e234 = 0.0;
  res.e334 = 0.0;
  res.e144 = 0.0;
  res.e244 = 0.0;
  res.e344 = 0.0;
  res.e444 = 0.0;
  // Order 4;
  res.e1111 = 0.0;
  res.e1112 = 0.0;
  res.e1122 = 0.0;
  res.e1222 = 0.0;
  res.e2222 = 0.0;
  res.e1113 = 0.0;
  res.e1123 = 0.0;
  res.e1223 = 0.0;
  res.e2223 = 0.0;
  res.e1133 = 0.0;
  res.e1233 = 0.0;
  res.e2233 = 0.0;
  res.e1333 = 0.0;
  res.e2333 = 0.0;
  res.e3333 = 0.0;
  res.e1114 = 0.0;
  res.e1124 = 0.0;
  res.e1224 = 0.0;
  res.e2224 = 0.0;
  res.e1134 = 0.0;
  res.e1234 = 0.0;
  res.e2234 = 0.0;
  res.e1334 = 0.0;
  res.e2334 = 0.0;
  res.e3334 = 0.0;
  res.e1144 = 0.0;
  res.e1244 = 0.0;
  res.e2244 = 0.0;
  res.e1344 = 0.0;
  res.e2344 = 0.0;
  res.e3344 = 0.0;
  res.e1444 = 0.0;
  res.e2444 = 0.0;
  res.e3444 = 0.0;
  res.e4444 = 0.0;
  // Order 5;
  res.e11111 = 0.0;
  res.e11112 = 0.0;
  res.e11122 = 0.0;
  res.e11222 = 0.0;
  res.e12222 = 0.0;
  res.e22222 = 0.0;
  res.e11113 = 0.0;
  res.e11123 = 0.0;
  res.e11223 = 0.0;
  res.e12223 = 0.0;
  res.e22223 = 0.0;
  res.e11133 = 0.0;
  res.e11233 = 0.0;
  res.e12233 = 0.0;
  res.e22233 = 0.0;
  res.e11333 = 0.0;
  res.e12333 = 0.0;
  res.e22333 = 0.0;
  res.e13333 = 0.0;
  res.e23333 = 0.0;
  res.e33333 = 0.0;
  res.e11114 = 0.0;
  res.e11124 = 0.0;
  res.e11224 = 0.0;
  res.e12224 = 0.0;
  res.e22224 = 0.0;
  res.e11134 = 0.0;
  res.e11234 = 0.0;
  res.e12234 = 0.0;
  res.e22234 = 0.0;
  res.e11334 = 0.0;
  res.e12334 = 0.0;
  res.e22334 = 0.0;
  res.e13334 = 0.0;
  res.e23334 = 0.0;
  res.e33334 = 0.0;
  res.e11144 = 0.0;
  res.e11244 = 0.0;
  res.e12244 = 0.0;
  res.e22244 = 0.0;
  res.e11344 = 0.0;
  res.e12344 = 0.0;
  res.e22344 = 0.0;
  res.e13344 = 0.0;
  res.e23344 = 0.0;
  res.e33344 = 0.0;
  res.e11444 = 0.0;
  res.e12444 = 0.0;
  res.e22444 = 0.0;
  res.e13444 = 0.0;
  res.e23444 = 0.0;
  res.e33444 = 0.0;
  res.e14444 = 0.0;
  res.e24444 = 0.0;
  res.e34444 = 0.0;
  res.e44444 = 0.0;

  return res;

}

ndir_t onumm4n5_get_ndir_order(ord_t order, onumm4n5_t* num){

  ndir_t res;

  switch(order){
    case 0:
      res = 1;
      break;
    case 1:
      res = 4;
      break;
    case 2:
      res = 10;
      break;
    case 3:
      res = 20;
      break;
    case 4:
      res = 35;
      break;
    case 5:
      res = 56;
      break;
  }

  return res;

}

ndir_t onumm4n5_get_ndir_total(onumm4n5_t* num){

  ndir_t res;

  res = 70;

  return res;

}

coeff_t* onumm4n5_get_order_address(ord_t order, onumm4n5_t* num){

  coeff_t* res;

  switch(order){
    case 0:
      res = &num->r;
      break;
    case 1:
      res = &num->e1;
      break;
    case 2:
      res = &num->e11;
      break;
    case 3:
      res = &num->e111;
      break;
    case 4:
      res = &num->e1111;
      break;
    case 5:
      res = &num->e11111;
      break;
  }
  return res;

}

onumm4n5_t onumm4n5_create_r(  coeff_t lhs){

  onumm4n5_t res;

  // Assign like function 'lhs'
  // Real;
  res.r = lhs;
  // Order 1;
  res.e1 = 0.0;
  res.e2 = 0.0;
  res.e3 = 0.0;
  res.e4 = 0.0;
  // Order 2;
  res.e11 = 0.0;
  res.e12 = 0.0;
  res.e22 = 0.0;
  res.e13 = 0.0;
  res.e23 = 0.0;
  res.e33 = 0.0;
  res.e14 = 0.0;
  res.e24 = 0.0;
  res.e34 = 0.0;
  res.e44 = 0.0;
  // Order 3;
  res.e111 = 0.0;
  res.e112 = 0.0;
  res.e122 = 0.0;
  res.e222 = 0.0;
  res.e113 = 0.0;
  res.e123 = 0.0;
  res.e223 = 0.0;
  res.e133 = 0.0;
  res.e233 = 0.0;
  res.e333 = 0.0;
  res.e114 = 0.0;
  res.e124 = 0.0;
  res.e224 = 0.0;
  res.e134 = 0.0;
  res.e234 = 0.0;
  res.e334 = 0.0;
  res.e144 = 0.0;
  res.e244 = 0.0;
  res.e344 = 0.0;
  res.e444 = 0.0;
  // Order 4;
  res.e1111 = 0.0;
  res.e1112 = 0.0;
  res.e1122 = 0.0;
  res.e1222 = 0.0;
  res.e2222 = 0.0;
  res.e1113 = 0.0;
  res.e1123 = 0.0;
  res.e1223 = 0.0;
  res.e2223 = 0.0;
  res.e1133 = 0.0;
  res.e1233 = 0.0;
  res.e2233 = 0.0;
  res.e1333 = 0.0;
  res.e2333 = 0.0;
  res.e3333 = 0.0;
  res.e1114 = 0.0;
  res.e1124 = 0.0;
  res.e1224 = 0.0;
  res.e2224 = 0.0;
  res.e1134 = 0.0;
  res.e1234 = 0.0;
  res.e2234 = 0.0;
  res.e1334 = 0.0;
  res.e2334 = 0.0;
  res.e3334 = 0.0;
  res.e1144 = 0.0;
  res.e1244 = 0.0;
  res.e2244 = 0.0;
  res.e1344 = 0.0;
  res.e2344 = 0.0;
  res.e3344 = 0.0;
  res.e1444 = 0.0;
  res.e2444 = 0.0;
  res.e3444 = 0.0;
  res.e4444 = 0.0;
  // Order 5;
  res.e11111 = 0.0;
  res.e11112 = 0.0;
  res.e11122 = 0.0;
  res.e11222 = 0.0;
  res.e12222 = 0.0;
  res.e22222 = 0.0;
  res.e11113 = 0.0;
  res.e11123 = 0.0;
  res.e11223 = 0.0;
  res.e12223 = 0.0;
  res.e22223 = 0.0;
  res.e11133 = 0.0;
  res.e11233 = 0.0;
  res.e12233 = 0.0;
  res.e22233 = 0.0;
  res.e11333 = 0.0;
  res.e12333 = 0.0;
  res.e22333 = 0.0;
  res.e13333 = 0.0;
  res.e23333 = 0.0;
  res.e33333 = 0.0;
  res.e11114 = 0.0;
  res.e11124 = 0.0;
  res.e11224 = 0.0;
  res.e12224 = 0.0;
  res.e22224 = 0.0;
  res.e11134 = 0.0;
  res.e11234 = 0.0;
  res.e12234 = 0.0;
  res.e22234 = 0.0;
  res.e11334 = 0.0;
  res.e12334 = 0.0;
  res.e22334 = 0.0;
  res.e13334 = 0.0;
  res.e23334 = 0.0;
  res.e33334 = 0.0;
  res.e11144 = 0.0;
  res.e11244 = 0.0;
  res.e12244 = 0.0;
  res.e22244 = 0.0;
  res.e11344 = 0.0;
  res.e12344 = 0.0;
  res.e22344 = 0.0;
  res.e13344 = 0.0;
  res.e23344 = 0.0;
  res.e33344 = 0.0;
  res.e11444 = 0.0;
  res.e12444 = 0.0;
  res.e22444 = 0.0;
  res.e13444 = 0.0;
  res.e23444 = 0.0;
  res.e33444 = 0.0;
  res.e14444 = 0.0;
  res.e24444 = 0.0;
  res.e34444 = 0.0;
  res.e44444 = 0.0;

  return res;

}

void onumm4n5_set_r(  coeff_t lhs, onumm4n5_t* res){

  // Assign like function 'lhs'
  // Real;
  res->r = lhs;
  // Order 1;
  res->e1 = 0.0;
  res->e2 = 0.0;
  res->e3 = 0.0;
  res->e4 = 0.0;
  // Order 2;
  res->e11 = 0.0;
  res->e12 = 0.0;
  res->e22 = 0.0;
  res->e13 = 0.0;
  res->e23 = 0.0;
  res->e33 = 0.0;
  res->e14 = 0.0;
  res->e24 = 0.0;
  res->e34 = 0.0;
  res->e44 = 0.0;
  // Order 3;
  res->e111 = 0.0;
  res->e112 = 0.0;
  res->e122 = 0.0;
  res->e222 = 0.0;
  res->e113 = 0.0;
  res->e123 = 0.0;
  res->e223 = 0.0;
  res->e133 = 0.0;
  res->e233 = 0.0;
  res->e333 = 0.0;
  res->e114 = 0.0;
  res->e124 = 0.0;
  res->e224 = 0.0;
  res->e134 = 0.0;
  res->e234 = 0.0;
  res->e334 = 0.0;
  res->e144 = 0.0;
  res->e244 = 0.0;
  res->e344 = 0.0;
  res->e444 = 0.0;
  // Order 4;
  res->e1111 = 0.0;
  res->e1112 = 0.0;
  res->e1122 = 0.0;
  res->e1222 = 0.0;
  res->e2222 = 0.0;
  res->e1113 = 0.0;
  res->e1123 = 0.0;
  res->e1223 = 0.0;
  res->e2223 = 0.0;
  res->e1133 = 0.0;
  res->e1233 = 0.0;
  res->e2233 = 0.0;
  res->e1333 = 0.0;
  res->e2333 = 0.0;
  res->e3333 = 0.0;
  res->e1114 = 0.0;
  res->e1124 = 0.0;
  res->e1224 = 0.0;
  res->e2224 = 0.0;
  res->e1134 = 0.0;
  res->e1234 = 0.0;
  res->e2234 = 0.0;
  res->e1334 = 0.0;
  res->e2334 = 0.0;
  res->e3334 = 0.0;
  res->e1144 = 0.0;
  res->e1244 = 0.0;
  res->e2244 = 0.0;
  res->e1344 = 0.0;
  res->e2344 = 0.0;
  res->e3344 = 0.0;
  res->e1444 = 0.0;
  res->e2444 = 0.0;
  res->e3444 = 0.0;
  res->e4444 = 0.0;
  // Order 5;
  res->e11111 = 0.0;
  res->e11112 = 0.0;
  res->e11122 = 0.0;
  res->e11222 = 0.0;
  res->e12222 = 0.0;
  res->e22222 = 0.0;
  res->e11113 = 0.0;
  res->e11123 = 0.0;
  res->e11223 = 0.0;
  res->e12223 = 0.0;
  res->e22223 = 0.0;
  res->e11133 = 0.0;
  res->e11233 = 0.0;
  res->e12233 = 0.0;
  res->e22233 = 0.0;
  res->e11333 = 0.0;
  res->e12333 = 0.0;
  res->e22333 = 0.0;
  res->e13333 = 0.0;
  res->e23333 = 0.0;
  res->e33333 = 0.0;
  res->e11114 = 0.0;
  res->e11124 = 0.0;
  res->e11224 = 0.0;
  res->e12224 = 0.0;
  res->e22224 = 0.0;
  res->e11134 = 0.0;
  res->e11234 = 0.0;
  res->e12234 = 0.0;
  res->e22234 = 0.0;
  res->e11334 = 0.0;
  res->e12334 = 0.0;
  res->e22334 = 0.0;
  res->e13334 = 0.0;
  res->e23334 = 0.0;
  res->e33334 = 0.0;
  res->e11144 = 0.0;
  res->e11244 = 0.0;
  res->e12244 = 0.0;
  res->e22244 = 0.0;
  res->e11344 = 0.0;
  res->e12344 = 0.0;
  res->e22344 = 0.0;
  res->e13344 = 0.0;
  res->e23344 = 0.0;
  res->e33344 = 0.0;
  res->e11444 = 0.0;
  res->e12444 = 0.0;
  res->e22444 = 0.0;
  res->e13444 = 0.0;
  res->e23444 = 0.0;
  res->e33444 = 0.0;
  res->e14444 = 0.0;
  res->e24444 = 0.0;
  res->e34444 = 0.0;
  res->e44444 = 0.0;

}

void onumm4n5_set_o(  onumm4n5_t* lhs, onumm4n5_t* res){

  // Assign like function 'lhs'
  // Real;
  res->r = lhs->r;
  // Order 1;
  res->e1 = lhs->e1;
  res->e2 = lhs->e2;
  res->e3 = lhs->e3;
  res->e4 = lhs->e4;
  // Order 2;
  res->e11 = lhs->e11;
  res->e12 = lhs->e12;
  res->e22 = lhs->e22;
  res->e13 = lhs->e13;
  res->e23 = lhs->e23;
  res->e33 = lhs->e33;
  res->e14 = lhs->e14;
  res->e24 = lhs->e24;
  res->e34 = lhs->e34;
  res->e44 = lhs->e44;
  // Order 3;
  res->e111 = lhs->e111;
  res->e112 = lhs->e112;
  res->e122 = lhs->e122;
  res->e222 = lhs->e222;
  res->e113 = lhs->e113;
  res->e123 = lhs->e123;
  res->e223 = lhs->e223;
  res->e133 = lhs->e133;
  res->e233 = lhs->e233;
  res->e333 = lhs->e333;
  res->e114 = lhs->e114;
  res->e124 = lhs->e124;
  res->e224 = lhs->e224;
  res->e134 = lhs->e134;
  res->e234 = lhs->e234;
  res->e334 = lhs->e334;
  res->e144 = lhs->e144;
  res->e244 = lhs->e244;
  res->e344 = lhs->e344;
  res->e444 = lhs->e444;
  // Order 4;
  res->e1111 = lhs->e1111;
  res->e1112 = lhs->e1112;
  res->e1122 = lhs->e1122;
  res->e1222 = lhs->e1222;
  res->e2222 = lhs->e2222;
  res->e1113 = lhs->e1113;
  res->e1123 = lhs->e1123;
  res->e1223 = lhs->e1223;
  res->e2223 = lhs->e2223;
  res->e1133 = lhs->e1133;
  res->e1233 = lhs->e1233;
  res->e2233 = lhs->e2233;
  res->e1333 = lhs->e1333;
  res->e2333 = lhs->e2333;
  res->e3333 = lhs->e3333;
  res->e1114 = lhs->e1114;
  res->e1124 = lhs->e1124;
  res->e1224 = lhs->e1224;
  res->e2224 = lhs->e2224;
  res->e1134 = lhs->e1134;
  res->e1234 = lhs->e1234;
  res->e2234 = lhs->e2234;
  res->e1334 = lhs->e1334;
  res->e2334 = lhs->e2334;
  res->e3334 = lhs->e3334;
  res->e1144 = lhs->e1144;
  res->e1244 = lhs->e1244;
  res->e2244 = lhs->e2244;
  res->e1344 = lhs->e1344;
  res->e2344 = lhs->e2344;
  res->e3344 = lhs->e3344;
  res->e1444 = lhs->e1444;
  res->e2444 = lhs->e2444;
  res->e3444 = lhs->e3444;
  res->e4444 = lhs->e4444;
  // Order 5;
  res->e11111 = lhs->e11111;
  res->e11112 = lhs->e11112;
  res->e11122 = lhs->e11122;
  res->e11222 = lhs->e11222;
  res->e12222 = lhs->e12222;
  res->e22222 = lhs->e22222;
  res->e11113 = lhs->e11113;
  res->e11123 = lhs->e11123;
  res->e11223 = lhs->e11223;
  res->e12223 = lhs->e12223;
  res->e22223 = lhs->e22223;
  res->e11133 = lhs->e11133;
  res->e11233 = lhs->e11233;
  res->e12233 = lhs->e12233;
  res->e22233 = lhs->e22233;
  res->e11333 = lhs->e11333;
  res->e12333 = lhs->e12333;
  res->e22333 = lhs->e22333;
  res->e13333 = lhs->e13333;
  res->e23333 = lhs->e23333;
  res->e33333 = lhs->e33333;
  res->e11114 = lhs->e11114;
  res->e11124 = lhs->e11124;
  res->e11224 = lhs->e11224;
  res->e12224 = lhs->e12224;
  res->e22224 = lhs->e22224;
  res->e11134 = lhs->e11134;
  res->e11234 = lhs->e11234;
  res->e12234 = lhs->e12234;
  res->e22234 = lhs->e22234;
  res->e11334 = lhs->e11334;
  res->e12334 = lhs->e12334;
  res->e22334 = lhs->e22334;
  res->e13334 = lhs->e13334;
  res->e23334 = lhs->e23334;
  res->e33334 = lhs->e33334;
  res->e11144 = lhs->e11144;
  res->e11244 = lhs->e11244;
  res->e12244 = lhs->e12244;
  res->e22244 = lhs->e22244;
  res->e11344 = lhs->e11344;
  res->e12344 = lhs->e12344;
  res->e22344 = lhs->e22344;
  res->e13344 = lhs->e13344;
  res->e23344 = lhs->e23344;
  res->e33344 = lhs->e33344;
  res->e11444 = lhs->e11444;
  res->e12444 = lhs->e12444;
  res->e22444 = lhs->e22444;
  res->e13444 = lhs->e13444;
  res->e23444 = lhs->e23444;
  res->e33444 = lhs->e33444;
  res->e14444 = lhs->e14444;
  res->e24444 = lhs->e24444;
  res->e34444 = lhs->e34444;
  res->e44444 = lhs->e44444;

}

onumm4n5_t onumm4n5_get_order_im(ord_t order, onumm4n5_t* lhs){

  onumm4n5_t res;

  res = onumm4n5_init();
  switch( order ){
    case 0:
      // Assign like function 'lhs'
      // Real;
      res.r = lhs->r;
      break;
    case 1:
      // Order 1;
      res.e1 = lhs->e1;
      res.e2 = lhs->e2;
      res.e3 = lhs->e3;
      res.e4 = lhs->e4;
      break;
    case 2:
      // Order 2;
      res.e11 = lhs->e11;
      res.e12 = lhs->e12;
      res.e22 = lhs->e22;
      res.e13 = lhs->e13;
      res.e23 = lhs->e23;
      res.e33 = lhs->e33;
      res.e14 = lhs->e14;
      res.e24 = lhs->e24;
      res.e34 = lhs->e34;
      res.e44 = lhs->e44;
      break;
    case 3:
      // Order 3;
      res.e111 = lhs->e111;
      res.e112 = lhs->e112;
      res.e122 = lhs->e122;
      res.e222 = lhs->e222;
      res.e113 = lhs->e113;
      res.e123 = lhs->e123;
      res.e223 = lhs->e223;
      res.e133 = lhs->e133;
      res.e233 = lhs->e233;
      res.e333 = lhs->e333;
      res.e114 = lhs->e114;
      res.e124 = lhs->e124;
      res.e224 = lhs->e224;
      res.e134 = lhs->e134;
      res.e234 = lhs->e234;
      res.e334 = lhs->e334;
      res.e144 = lhs->e144;
      res.e244 = lhs->e244;
      res.e344 = lhs->e344;
      res.e444 = lhs->e444;
      break;
    case 4:
      // Order 4;
      res.e1111 = lhs->e1111;
      res.e1112 = lhs->e1112;
      res.e1122 = lhs->e1122;
      res.e1222 = lhs->e1222;
      res.e2222 = lhs->e2222;
      res.e1113 = lhs->e1113;
      res.e1123 = lhs->e1123;
      res.e1223 = lhs->e1223;
      res.e2223 = lhs->e2223;
      res.e1133 = lhs->e1133;
      res.e1233 = lhs->e1233;
      res.e2233 = lhs->e2233;
      res.e1333 = lhs->e1333;
      res.e2333 = lhs->e2333;
      res.e3333 = lhs->e3333;
      res.e1114 = lhs->e1114;
      res.e1124 = lhs->e1124;
      res.e1224 = lhs->e1224;
      res.e2224 = lhs->e2224;
      res.e1134 = lhs->e1134;
      res.e1234 = lhs->e1234;
      res.e2234 = lhs->e2234;
      res.e1334 = lhs->e1334;
      res.e2334 = lhs->e2334;
      res.e3334 = lhs->e3334;
      res.e1144 = lhs->e1144;
      res.e1244 = lhs->e1244;
      res.e2244 = lhs->e2244;
      res.e1344 = lhs->e1344;
      res.e2344 = lhs->e2344;
      res.e3344 = lhs->e3344;
      res.e1444 = lhs->e1444;
      res.e2444 = lhs->e2444;
      res.e3444 = lhs->e3444;
      res.e4444 = lhs->e4444;
      break;
    case 5:
      // Order 5;
      res.e11111 = lhs->e11111;
      res.e11112 = lhs->e11112;
      res.e11122 = lhs->e11122;
      res.e11222 = lhs->e11222;
      res.e12222 = lhs->e12222;
      res.e22222 = lhs->e22222;
      res.e11113 = lhs->e11113;
      res.e11123 = lhs->e11123;
      res.e11223 = lhs->e11223;
      res.e12223 = lhs->e12223;
      res.e22223 = lhs->e22223;
      res.e11133 = lhs->e11133;
      res.e11233 = lhs->e11233;
      res.e12233 = lhs->e12233;
      res.e22233 = lhs->e22233;
      res.e11333 = lhs->e11333;
      res.e12333 = lhs->e12333;
      res.e22333 = lhs->e22333;
      res.e13333 = lhs->e13333;
      res.e23333 = lhs->e23333;
      res.e33333 = lhs->e33333;
      res.e11114 = lhs->e11114;
      res.e11124 = lhs->e11124;
      res.e11224 = lhs->e11224;
      res.e12224 = lhs->e12224;
      res.e22224 = lhs->e22224;
      res.e11134 = lhs->e11134;
      res.e11234 = lhs->e11234;
      res.e12234 = lhs->e12234;
      res.e22234 = lhs->e22234;
      res.e11334 = lhs->e11334;
      res.e12334 = lhs->e12334;
      res.e22334 = lhs->e22334;
      res.e13334 = lhs->e13334;
      res.e23334 = lhs->e23334;
      res.e33334 = lhs->e33334;
      res.e11144 = lhs->e11144;
      res.e11244 = lhs->e11244;
      res.e12244 = lhs->e12244;
      res.e22244 = lhs->e22244;
      res.e11344 = lhs->e11344;
      res.e12344 = lhs->e12344;
      res.e22344 = lhs->e22344;
      res.e13344 = lhs->e13344;
      res.e23344 = lhs->e23344;
      res.e33344 = lhs->e33344;
      res.e11444 = lhs->e11444;
      res.e12444 = lhs->e12444;
      res.e22444 = lhs->e22444;
      res.e13444 = lhs->e13444;
      res.e23444 = lhs->e23444;
      res.e33444 = lhs->e33444;
      res.e14444 = lhs->e14444;
      res.e24444 = lhs->e24444;
      res.e34444 = lhs->e34444;
      res.e44444 = lhs->e44444;
      break;
  }

  return res;

}

void onumm4n5_get_order_im_to(ord_t order, onumm4n5_t* lhs, onumm4n5_t* res){


  *res = onumm4n5_init();
  switch( order ){
    case 0:
      // Assign like function 'lhs'
      // Real;
      res->r = lhs->r;
      break;
    case 1:
      // Order 1;
      res->e1 = lhs->e1;
      res->e2 = lhs->e2;
      res->e3 = lhs->e3;
      res->e4 = lhs->e4;
      break;
    case 2:
      // Order 2;
      res->e11 = lhs->e11;
      res->e12 = lhs->e12;
      res->e22 = lhs->e22;
      res->e13 = lhs->e13;
      res->e23 = lhs->e23;
      res->e33 = lhs->e33;
      res->e14 = lhs->e14;
      res->e24 = lhs->e24;
      res->e34 = lhs->e34;
      res->e44 = lhs->e44;
      break;
    case 3:
      // Order 3;
      res->e111 = lhs->e111;
      res->e112 = lhs->e112;
      res->e122 = lhs->e122;
      res->e222 = lhs->e222;
      res->e113 = lhs->e113;
      res->e123 = lhs->e123;
      res->e223 = lhs->e223;
      res->e133 = lhs->e133;
      res->e233 = lhs->e233;
      res->e333 = lhs->e333;
      res->e114 = lhs->e114;
      res->e124 = lhs->e124;
      res->e224 = lhs->e224;
      res->e134 = lhs->e134;
      res->e234 = lhs->e234;
      res->e334 = lhs->e334;
      res->e144 = lhs->e144;
      res->e244 = lhs->e244;
      res->e344 = lhs->e344;
      res->e444 = lhs->e444;
      break;
    case 4:
      // Order 4;
      res->e1111 = lhs->e1111;
      res->e1112 = lhs->e1112;
      res->e1122 = lhs->e1122;
      res->e1222 = lhs->e1222;
      res->e2222 = lhs->e2222;
      res->e1113 = lhs->e1113;
      res->e1123 = lhs->e1123;
      res->e1223 = lhs->e1223;
      res->e2223 = lhs->e2223;
      res->e1133 = lhs->e1133;
      res->e1233 = lhs->e1233;
      res->e2233 = lhs->e2233;
      res->e1333 = lhs->e1333;
      res->e2333 = lhs->e2333;
      res->e3333 = lhs->e3333;
      res->e1114 = lhs->e1114;
      res->e1124 = lhs->e1124;
      res->e1224 = lhs->e1224;
      res->e2224 = lhs->e2224;
      res->e1134 = lhs->e1134;
      res->e1234 = lhs->e1234;
      res->e2234 = lhs->e2234;
      res->e1334 = lhs->e1334;
      res->e2334 = lhs->e2334;
      res->e3334 = lhs->e3334;
      res->e1144 = lhs->e1144;
      res->e1244 = lhs->e1244;
      res->e2244 = lhs->e2244;
      res->e1344 = lhs->e1344;
      res->e2344 = lhs->e2344;
      res->e3344 = lhs->e3344;
      res->e1444 = lhs->e1444;
      res->e2444 = lhs->e2444;
      res->e3444 = lhs->e3444;
      res->e4444 = lhs->e4444;
      break;
    case 5:
      // Order 5;
      res->e11111 = lhs->e11111;
      res->e11112 = lhs->e11112;
      res->e11122 = lhs->e11122;
      res->e11222 = lhs->e11222;
      res->e12222 = lhs->e12222;
      res->e22222 = lhs->e22222;
      res->e11113 = lhs->e11113;
      res->e11123 = lhs->e11123;
      res->e11223 = lhs->e11223;
      res->e12223 = lhs->e12223;
      res->e22223 = lhs->e22223;
      res->e11133 = lhs->e11133;
      res->e11233 = lhs->e11233;
      res->e12233 = lhs->e12233;
      res->e22233 = lhs->e22233;
      res->e11333 = lhs->e11333;
      res->e12333 = lhs->e12333;
      res->e22333 = lhs->e22333;
      res->e13333 = lhs->e13333;
      res->e23333 = lhs->e23333;
      res->e33333 = lhs->e33333;
      res->e11114 = lhs->e11114;
      res->e11124 = lhs->e11124;
      res->e11224 = lhs->e11224;
      res->e12224 = lhs->e12224;
      res->e22224 = lhs->e22224;
      res->e11134 = lhs->e11134;
      res->e11234 = lhs->e11234;
      res->e12234 = lhs->e12234;
      res->e22234 = lhs->e22234;
      res->e11334 = lhs->e11334;
      res->e12334 = lhs->e12334;
      res->e22334 = lhs->e22334;
      res->e13334 = lhs->e13334;
      res->e23334 = lhs->e23334;
      res->e33334 = lhs->e33334;
      res->e11144 = lhs->e11144;
      res->e11244 = lhs->e11244;
      res->e12244 = lhs->e12244;
      res->e22244 = lhs->e22244;
      res->e11344 = lhs->e11344;
      res->e12344 = lhs->e12344;
      res->e22344 = lhs->e22344;
      res->e13344 = lhs->e13344;
      res->e23344 = lhs->e23344;
      res->e33344 = lhs->e33344;
      res->e11444 = lhs->e11444;
      res->e12444 = lhs->e12444;
      res->e22444 = lhs->e22444;
      res->e13444 = lhs->e13444;
      res->e23444 = lhs->e23444;
      res->e33444 = lhs->e33444;
      res->e14444 = lhs->e14444;
      res->e24444 = lhs->e24444;
      res->e34444 = lhs->e34444;
      res->e44444 = lhs->e44444;
      break;
  }

}

coeff_t onumm4n5_get_item(imdir_t idx, ord_t order, onumm4n5_t* lhs){

  coeff_t res;

  // Get Imaginary coefficient.
  res = 0.0;
  // Real;
  switch (order){
    case 0:
      res = lhs->r;
      break;
    case 1:
      switch (idx){
        case 0:
          res = lhs->e1;
          break;
        case 1:
          res = lhs->e2;
          break;
        case 2:
          res = lhs->e3;
          break;
        case 3:
          res = lhs->e4;
          break;
      }
      break;
    case 2:
      switch (idx){
        case 0:
          res = lhs->e11;
          break;
        case 1:
          res = lhs->e12;
          break;
        case 2:
          res = lhs->e22;
          break;
        case 3:
          res = lhs->e13;
          break;
        case 4:
          res = lhs->e23;
          break;
        case 5:
          res = lhs->e33;
          break;
        case 6:
          res = lhs->e14;
          break;
        case 7:
          res = lhs->e24;
          break;
        case 8:
          res = lhs->e34;
          break;
        case 9:
          res = lhs->e44;
          break;
      }
      break;
    case 3:
      switch (idx){
        case 0:
          res = lhs->e111;
          break;
        case 1:
          res = lhs->e112;
          break;
        case 2:
          res = lhs->e122;
          break;
        case 3:
          res = lhs->e222;
          break;
        case 4:
          res = lhs->e113;
          break;
        case 5:
          res = lhs->e123;
          break;
        case 6:
          res = lhs->e223;
          break;
        case 7:
          res = lhs->e133;
          break;
        case 8:
          res = lhs->e233;
          break;
        case 9:
          res = lhs->e333;
          break;
        case 10:
          res = lhs->e114;
          break;
        case 11:
          res = lhs->e124;
          break;
        case 12:
          res = lhs->e224;
          break;
        case 13:
          res = lhs->e134;
          break;
        case 14:
          res = lhs->e234;
          break;
        case 15:
          res = lhs->e334;
          break;
        case 16:
          res = lhs->e144;
          break;
        case 17:
          res = lhs->e244;
          break;
        case 18:
          res = lhs->e344;
          break;
        case 19:
          res = lhs->e444;
          break;
      }
      break;
    case 4:
      switch (idx){
        case 0:
          res = lhs->e1111;
          break;
        case 1:
          res = lhs->e1112;
          break;
        case 2:
          res = lhs->e1122;
          break;
        case 3:
          res = lhs->e1222;
          break;
        case 4:
          res = lhs->e2222;
          break;
        case 5:
          res = lhs->e1113;
          break;
        case 6:
          res = lhs->e1123;
          break;
        case 7:
          res = lhs->e1223;
          break;
        case 8:
          res = lhs->e2223;
          break;
        case 9:
          res = lhs->e1133;
          break;
        case 10:
          res = lhs->e1233;
          break;
        case 11:
          res = lhs->e2233;
          break;
        case 12:
          res = lhs->e1333;
          break;
        case 13:
          res = lhs->e2333;
          break;
        case 14:
          res = lhs->e3333;
          break;
        case 15:
          res = lhs->e1114;
          break;
        case 16:
          res = lhs->e1124;
          break;
        case 17:
          res = lhs->e1224;
          break;
        case 18:
          res = lhs->e2224;
          break;
        case 19:
          res = lhs->e1134;
          break;
        case 20:
          res = lhs->e1234;
          break;
        case 21:
          res = lhs->e2234;
          break;
        case 22:
          res = lhs->e1334;
          break;
        case 23:
          res = lhs->e2334;
          break;
        case 24:
          res = lhs->e3334;
          break;
        case 25:
          res = lhs->e1144;
          break;
        case 26:
          res = lhs->e1244;
          break;
        case 27:
          res = lhs->e2244;
          break;
        case 28:
          res = lhs->e1344;
          break;
        case 29:
          res = lhs->e2344;
          break;
        case 30:
          res = lhs->e3344;
          break;
        case 31:
          res = lhs->e1444;
          break;
        case 32:
          res = lhs->e2444;
          break;
        case 33:
          res = lhs->e3444;
          break;
        case 34:
          res = lhs->e4444;
          break;
      }
      break;
    case 5:
      switch (idx){
        case 0:
          res = lhs->e11111;
          break;
        case 1:
          res = lhs->e11112;
          break;
        case 2:
          res = lhs->e11122;
          break;
        case 3:
          res = lhs->e11222;
          break;
        case 4:
          res = lhs->e12222;
          break;
        case 5:
          res = lhs->e22222;
          break;
        case 6:
          res = lhs->e11113;
          break;
        case 7:
          res = lhs->e11123;
          break;
        case 8:
          res = lhs->e11223;
          break;
        case 9:
          res = lhs->e12223;
          break;
        case 10:
          res = lhs->e22223;
          break;
        case 11:
          res = lhs->e11133;
          break;
        case 12:
          res = lhs->e11233;
          break;
        case 13:
          res = lhs->e12233;
          break;
        case 14:
          res = lhs->e22233;
          break;
        case 15:
          res = lhs->e11333;
          break;
        case 16:
          res = lhs->e12333;
          break;
        case 17:
          res = lhs->e22333;
          break;
        case 18:
          res = lhs->e13333;
          break;
        case 19:
          res = lhs->e23333;
          break;
        case 20:
          res = lhs->e33333;
          break;
        case 21:
          res = lhs->e11114;
          break;
        case 22:
          res = lhs->e11124;
          break;
        case 23:
          res = lhs->e11224;
          break;
        case 24:
          res = lhs->e12224;
          break;
        case 25:
          res = lhs->e22224;
          break;
        case 26:
          res = lhs->e11134;
          break;
        case 27:
          res = lhs->e11234;
          break;
        case 28:
          res = lhs->e12234;
          break;
        case 29:
          res = lhs->e22234;
          break;
        case 30:
          res = lhs->e11334;
          break;
        case 31:
          res = lhs->e12334;
          break;
        case 32:
          res = lhs->e22334;
          break;
        case 33:
          res = lhs->e13334;
          break;
        case 34:
          res = lhs->e23334;
          break;
        case 35:
          res = lhs->e33334;
          break;
        case 36:
          res = lhs->e11144;
          break;
        case 37:
          res = lhs->e11244;
          break;
        case 38:
          res = lhs->e12244;
          break;
        case 39:
          res = lhs->e22244;
          break;
        case 40:
          res = lhs->e11344;
          break;
        case 41:
          res = lhs->e12344;
          break;
        case 42:
          res = lhs->e22344;
          break;
        case 43:
          res = lhs->e13344;
          break;
        case 44:
          res = lhs->e23344;
          break;
        case 45:
          res = lhs->e33344;
          break;
        case 46:
          res = lhs->e11444;
          break;
        case 47:
          res = lhs->e12444;
          break;
        case 48:
          res = lhs->e22444;
          break;
        case 49:
          res = lhs->e13444;
          break;
        case 50:
          res = lhs->e23444;
          break;
        case 51:
          res = lhs->e33444;
          break;
        case 52:
          res = lhs->e14444;
          break;
        case 53:
          res = lhs->e24444;
          break;
        case 54:
          res = lhs->e34444;
          break;
        case 55:
          res = lhs->e44444;
          break;
      }
      break;
  }
  return res;

}

coeff_t onumm4n5_get_deriv(imdir_t idx, ord_t order, onumm4n5_t* lhs){

  coeff_t res;

  coeff_t factor;
  // Get Imaginary coefficient.
  res = 0.0;
  // Real;
  switch (order){
    case 0:
      res = lhs->r;
      break;
    case 1:
      switch (idx){
        case 0:
          factor = 1.0000000000000000e+00;
          res = lhs->e1*factor;
          break;
        case 1:
          factor = 1.0000000000000000e+00;
          res = lhs->e2*factor;
          break;
        case 2:
          factor = 1.0000000000000000e+00;
          res = lhs->e3*factor;
          break;
        case 3:
          factor = 1.0000000000000000e+00;
          res = lhs->e4*factor;
          break;
      }
      break;
    case 2:
      switch (idx){
        case 0:
          factor = 2.0000000000000000e+00;
          res = lhs->e11*factor;
          break;
        case 1:
          factor = 1.0000000000000000e+00;
          res = lhs->e12*factor;
          break;
        case 2:
          factor = 2.0000000000000000e+00;
          res = lhs->e22*factor;
          break;
        case 3:
          factor = 1.0000000000000000e+00;
          res = lhs->e13*factor;
          break;
        case 4:
          factor = 1.0000000000000000e+00;
          res = lhs->e23*factor;
          break;
        case 5:
          factor = 2.0000000000000000e+00;
          res = lhs->e33*factor;
          break;
        case 6:
          factor = 1.0000000000000000e+00;
          res = lhs->e14*factor;
          break;
        case 7:
          factor = 1.0000000000000000e+00;
          res = lhs->e24*factor;
          break;
        case 8:
          factor = 1.0000000000000000e+00;
          res = lhs->e34*factor;
          break;
        case 9:
          factor = 2.0000000000000000e+00;
          res = lhs->e44*factor;
          break;
      }
      break;
    case 3:
      switch (idx){
        case 0:
          factor = 6.0000000000000000e+00;
          res = lhs->e111*factor;
          break;
        case 1:
          factor = 2.0000000000000000e+00;
          res = lhs->e112*factor;
          break;
        case 2:
          factor = 2.0000000000000000e+00;
          res = lhs->e122*factor;
          break;
        case 3:
          factor = 6.0000000000000000e+00;
          res = lhs->e222*factor;
          break;
        case 4:
          factor = 2.0000000000000000e+00;
          res = lhs->e113*factor;
          break;
        case 5:
          factor = 1.0000000000000000e+00;
          res = lhs->e123*factor;
          break;
        case 6:
          factor = 2.0000000000000000e+00;
          res = lhs->e223*factor;
          break;
        case 7:
          factor = 2.0000000000000000e+00;
          res = lhs->e133*factor;
          break;
        case 8:
          factor = 2.0000000000000000e+00;
          res = lhs->e233*factor;
          break;
        case 9:
          factor = 6.0000000000000000e+00;
          res = lhs->e333*factor;
          break;
        case 10:
          factor = 2.0000000000000000e+00;
          res = lhs->e114*factor;
          break;
        case 11:
          factor = 1.0000000000000000e+00;
          res = lhs->e124*factor;
          break;
        case 12:
          factor = 2.0000000000000000e+00;
          res = lhs->e224*factor;
          break;
        case 13:
          factor = 1.0000000000000000e+00;
          res = lhs->e134*factor;
          break;
        case 14:
          factor = 1.0000000000000000e+00;
          res = lhs->e234*factor;
          break;
        case 15:
          factor = 2.0000000000000000e+00;
          res = lhs->e334*factor;
          break;
        case 16:
          factor = 2.0000000000000000e+00;
          res = lhs->e144*factor;
          break;
        case 17:
          factor = 2.0000000000000000e+00;
          res = lhs->e244*factor;
          break;
        case 18:
          factor = 2.0000000000000000e+00;
          res = lhs->e344*factor;
          break;
        case 19:
          factor = 6.0000000000000000e+00;
          res = lhs->e444*factor;
          break;
      }
      break;
    case 4:
      switch (idx){
        case 0:
          factor = 2.4000000000000000e+01;
          res = lhs->e1111*factor;
          break;
        case 1:
          factor = 6.0000000000000000e+00;
          res = lhs->e1112*factor;
          break;
        case 2:
          factor = 4.0000000000000000e+00;
          res = lhs->e1122*factor;
          break;
        case 3:
          factor = 6.0000000000000000e+00;
          res = lhs->e1222*factor;
          break;
        case 4:
          factor = 2.4000000000000000e+01;
          res = lhs->e2222*factor;
          break;
        case 5:
          factor = 6.0000000000000000e+00;
          res = lhs->e1113*factor;
          break;
        case 6:
          factor = 2.0000000000000000e+00;
          res = lhs->e1123*factor;
          break;
        case 7:
          factor = 2.0000000000000000e+00;
          res = lhs->e1223*factor;
          break;
        case 8:
          factor = 6.0000000000000000e+00;
          res = lhs->e2223*factor;
          break;
        case 9:
          factor = 4.0000000000000000e+00;
          res = lhs->e1133*factor;
          break;
        case 10:
          factor = 2.0000000000000000e+00;
          res = lhs->e1233*factor;
          break;
        case 11:
          factor = 4.0000000000000000e+00;
          res = lhs->e2233*factor;
          break;
        case 12:
          factor = 6.0000000000000000e+00;
          res = lhs->e1333*factor;
          break;
        case 13:
          factor = 6.0000000000000000e+00;
          res = lhs->e2333*factor;
          break;
        case 14:
          factor = 2.4000000000000000e+01;
          res = lhs->e3333*factor;
          break;
        case 15:
          factor = 6.0000000000000000e+00;
          res = lhs->e1114*factor;
          break;
        case 16:
          factor = 2.0000000000000000e+00;
          res = lhs->e1124*factor;
          break;
        case 17:
          factor = 2.0000000000000000e+00;
          res = lhs->e1224*factor;
          break;
        case 18:
          factor = 6.0000000000000000e+00;
          res = lhs->e2224*factor;
          break;
        case 19:
          factor = 2.0000000000000000e+00;
          res = lhs->e1134*factor;
          break;
        case 20:
          factor = 1.0000000000000000e+00;
          res = lhs->e1234*factor;
          break;
        case 21:
          factor = 2.0000000000000000e+00;
          res = lhs->e2234*factor;
          break;
        case 22:
          factor = 2.0000000000000000e+00;
          res = lhs->e1334*factor;
          break;
        case 23:
          factor = 2.0000000000000000e+00;
          res = lhs->e2334*factor;
          break;
        case 24:
          factor = 6.0000000000000000e+00;
          res = lhs->e3334*factor;
          break;
        case 25:
          factor = 4.0000000000000000e+00;
          res = lhs->e1144*factor;
          break;
        case 26:
          factor = 2.0000000000000000e+00;
          res = lhs->e1244*factor;
          break;
        case 27:
          factor = 4.0000000000000000e+00;
          res = lhs->e2244*factor;
          break;
        case 28:
          factor = 2.0000000000000000e+00;
          res = lhs->e1344*factor;
          break;
        case 29:
          factor = 2.0000000000000000e+00;
          res = lhs->e2344*factor;
          break;
        case 30:
          factor = 4.0000000000000000e+00;
          res = lhs->e3344*factor;
          break;
        case 31:
          factor = 6.0000000000000000e+00;
          res = lhs->e1444*factor;
          break;
        case 32:
          factor = 6.0000000000000000e+00;
          res = lhs->e2444*factor;
          break;
        case 33:
          factor = 6.0000000000000000e+00;
          res = lhs->e3444*factor;
          break;
        case 34:
          factor = 2.4000000000000000e+01;
          res = lhs->e4444*factor;
          break;
      }
      break;
    case 5:
      switch (idx){
        case 0:
          factor = 1.2000000000000000e+02;
          res = lhs->e11111*factor;
          break;
        case 1:
          factor = 2.4000000000000000e+01;
          res = lhs->e11112*factor;
          break;
        case 2:
          factor = 1.2000000000000000e+01;
          res = lhs->e11122*factor;
          break;
        case 3:
          factor = 1.2000000000000000e+01;
          res = lhs->e11222*factor;
          break;
        case 4:
          factor = 2.4000000000000000e+01;
          res = lhs->e12222*factor;
          break;
        case 5:
          factor = 1.2000000000000000e+02;
          res = lhs->e22222*factor;
          break;
        case 6:
          factor = 2.4000000000000000e+01;
          res = lhs->e11113*factor;
          break;
        case 7:
          factor = 6.0000000000000000e+00;
          res = lhs->e11123*factor;
          break;
        case 8:
          factor = 4.0000000000000000e+00;
          res = lhs->e11223*factor;
          break;
        case 9:
          factor = 6.0000000000000000e+00;
          res = lhs->e12223*factor;
          break;
        case 10:
          factor = 2.4000000000000000e+01;
          res = lhs->e22223*factor;
          break;
        case 11:
          factor = 1.2000000000000000e+01;
          res = lhs->e11133*factor;
          break;
        case 12:
          factor = 4.0000000000000000e+00;
          res = lhs->e11233*factor;
          break;
        case 13:
          factor = 4.0000000000000000e+00;
          res = lhs->e12233*factor;
          break;
        case 14:
          factor = 1.2000000000000000e+01;
          res = lhs->e22233*factor;
          break;
        case 15:
          factor = 1.2000000000000000e+01;
          res = lhs->e11333*factor;
          break;
        case 16:
          factor = 6.0000000000000000e+00;
          res = lhs->e12333*factor;
          break;
        case 17:
          factor = 1.2000000000000000e+01;
          res = lhs->e22333*factor;
          break;
        case 18:
          factor = 2.4000000000000000e+01;
          res = lhs->e13333*factor;
          break;
        case 19:
          factor = 2.4000000000000000e+01;
          res = lhs->e23333*factor;
          break;
        case 20:
          factor = 1.2000000000000000e+02;
          res = lhs->e33333*factor;
          break;
        case 21:
          factor = 2.4000000000000000e+01;
          res = lhs->e11114*factor;
          break;
        case 22:
          factor = 6.0000000000000000e+00;
          res = lhs->e11124*factor;
          break;
        case 23:
          factor = 4.0000000000000000e+00;
          res = lhs->e11224*factor;
          break;
        case 24:
          factor = 6.0000000000000000e+00;
          res = lhs->e12224*factor;
          break;
        case 25:
          factor = 2.4000000000000000e+01;
          res = lhs->e22224*factor;
          break;
        case 26:
          factor = 6.0000000000000000e+00;
          res = lhs->e11134*factor;
          break;
        case 27:
          factor = 2.0000000000000000e+00;
          res = lhs->e11234*factor;
          break;
        case 28:
          factor = 2.0000000000000000e+00;
          res = lhs->e12234*factor;
          break;
        case 29:
          factor = 6.0000000000000000e+00;
          res = lhs->e22234*factor;
          break;
        case 30:
          factor = 4.0000000000000000e+00;
          res = lhs->e11334*factor;
          break;
        case 31:
          factor = 2.0000000000000000e+00;
          res = lhs->e12334*factor;
          break;
        case 32:
          factor = 4.0000000000000000e+00;
          res = lhs->e22334*factor;
          break;
        case 33:
          factor = 6.0000000000000000e+00;
          res = lhs->e13334*factor;
          break;
        case 34:
          factor = 6.0000000000000000e+00;
          res = lhs->e23334*factor;
          break;
        case 35:
          factor = 2.4000000000000000e+01;
          res = lhs->e33334*factor;
          break;
        case 36:
          factor = 1.2000000000000000e+01;
          res = lhs->e11144*factor;
          break;
        case 37:
          factor = 4.0000000000000000e+00;
          res = lhs->e11244*factor;
          break;
        case 38:
          factor = 4.0000000000000000e+00;
          res = lhs->e12244*factor;
          break;
        case 39:
          factor = 1.2000000000000000e+01;
          res = lhs->e22244*factor;
          break;
        case 40:
          factor = 4.0000000000000000e+00;
          res = lhs->e11344*factor;
          break;
        case 41:
          factor = 2.0000000000000000e+00;
          res = lhs->e12344*factor;
          break;
        case 42:
          factor = 4.0000000000000000e+00;
          res = lhs->e22344*factor;
          break;
        case 43:
          factor = 4.0000000000000000e+00;
          res = lhs->e13344*factor;
          break;
        case 44:
          factor = 4.0000000000000000e+00;
          res = lhs->e23344*factor;
          break;
        case 45:
          factor = 1.2000000000000000e+01;
          res = lhs->e33344*factor;
          break;
        case 46:
          factor = 1.2000000000000000e+01;
          res = lhs->e11444*factor;
          break;
        case 47:
          factor = 6.0000000000000000e+00;
          res = lhs->e12444*factor;
          break;
        case 48:
          factor = 1.2000000000000000e+01;
          res = lhs->e22444*factor;
          break;
        case 49:
          factor = 6.0000000000000000e+00;
          res = lhs->e13444*factor;
          break;
        case 50:
          factor = 6.0000000000000000e+00;
          res = lhs->e23444*factor;
          break;
        case 51:
          factor = 1.2000000000000000e+01;
          res = lhs->e33444*factor;
          break;
        case 52:
          factor = 2.4000000000000000e+01;
          res = lhs->e14444*factor;
          break;
        case 53:
          factor = 2.4000000000000000e+01;
          res = lhs->e24444*factor;
          break;
        case 54:
          factor = 2.4000000000000000e+01;
          res = lhs->e34444*factor;
          break;
        case 55:
          factor = 1.2000000000000000e+02;
          res = lhs->e44444*factor;
          break;
      }
      break;
  }
  return res;

}

void onumm4n5_set_item(coeff_t val, imdir_t idx, ord_t order, onumm4n5_t* x){

  // Set Imaginary coefficient.
  // Real;
  switch (order){
    case 0:
      x->r = val;
      break;
    case 1:
      switch (idx){
        case 0:
          x->e1 = val;
          break;
        case 1:
          x->e2 = val;
          break;
        case 2:
          x->e3 = val;
          break;
        case 3:
          x->e4 = val;
          break;
      }
      break;
    case 2:
      switch (idx){
        case 0:
          x->e11 = val;
          break;
        case 1:
          x->e12 = val;
          break;
        case 2:
          x->e22 = val;
          break;
        case 3:
          x->e13 = val;
          break;
        case 4:
          x->e23 = val;
          break;
        case 5:
          x->e33 = val;
          break;
        case 6:
          x->e14 = val;
          break;
        case 7:
          x->e24 = val;
          break;
        case 8:
          x->e34 = val;
          break;
        case 9:
          x->e44 = val;
          break;
      }
      break;
    case 3:
      switch (idx){
        case 0:
          x->e111 = val;
          break;
        case 1:
          x->e112 = val;
          break;
        case 2:
          x->e122 = val;
          break;
        case 3:
          x->e222 = val;
          break;
        case 4:
          x->e113 = val;
          break;
        case 5:
          x->e123 = val;
          break;
        case 6:
          x->e223 = val;
          break;
        case 7:
          x->e133 = val;
          break;
        case 8:
          x->e233 = val;
          break;
        case 9:
          x->e333 = val;
          break;
        case 10:
          x->e114 = val;
          break;
        case 11:
          x->e124 = val;
          break;
        case 12:
          x->e224 = val;
          break;
        case 13:
          x->e134 = val;
          break;
        case 14:
          x->e234 = val;
          break;
        case 15:
          x->e334 = val;
          break;
        case 16:
          x->e144 = val;
          break;
        case 17:
          x->e244 = val;
          break;
        case 18:
          x->e344 = val;
          break;
        case 19:
          x->e444 = val;
          break;
      }
      break;
    case 4:
      switch (idx){
        case 0:
          x->e1111 = val;
          break;
        case 1:
          x->e1112 = val;
          break;
        case 2:
          x->e1122 = val;
          break;
        case 3:
          x->e1222 = val;
          break;
        case 4:
          x->e2222 = val;
          break;
        case 5:
          x->e1113 = val;
          break;
        case 6:
          x->e1123 = val;
          break;
        case 7:
          x->e1223 = val;
          break;
        case 8:
          x->e2223 = val;
          break;
        case 9:
          x->e1133 = val;
          break;
        case 10:
          x->e1233 = val;
          break;
        case 11:
          x->e2233 = val;
          break;
        case 12:
          x->e1333 = val;
          break;
        case 13:
          x->e2333 = val;
          break;
        case 14:
          x->e3333 = val;
          break;
        case 15:
          x->e1114 = val;
          break;
        case 16:
          x->e1124 = val;
          break;
        case 17:
          x->e1224 = val;
          break;
        case 18:
          x->e2224 = val;
          break;
        case 19:
          x->e1134 = val;
          break;
        case 20:
          x->e1234 = val;
          break;
        case 21:
          x->e2234 = val;
          break;
        case 22:
          x->e1334 = val;
          break;
        case 23:
          x->e2334 = val;
          break;
        case 24:
          x->e3334 = val;
          break;
        case 25:
          x->e1144 = val;
          break;
        case 26:
          x->e1244 = val;
          break;
        case 27:
          x->e2244 = val;
          break;
        case 28:
          x->e1344 = val;
          break;
        case 29:
          x->e2344 = val;
          break;
        case 30:
          x->e3344 = val;
          break;
        case 31:
          x->e1444 = val;
          break;
        case 32:
          x->e2444 = val;
          break;
        case 33:
          x->e3444 = val;
          break;
        case 34:
          x->e4444 = val;
          break;
      }
      break;
    case 5:
      switch (idx){
        case 0:
          x->e11111 = val;
          break;
        case 1:
          x->e11112 = val;
          break;
        case 2:
          x->e11122 = val;
          break;
        case 3:
          x->e11222 = val;
          break;
        case 4:
          x->e12222 = val;
          break;
        case 5:
          x->e22222 = val;
          break;
        case 6:
          x->e11113 = val;
          break;
        case 7:
          x->e11123 = val;
          break;
        case 8:
          x->e11223 = val;
          break;
        case 9:
          x->e12223 = val;
          break;
        case 10:
          x->e22223 = val;
          break;
        case 11:
          x->e11133 = val;
          break;
        case 12:
          x->e11233 = val;
          break;
        case 13:
          x->e12233 = val;
          break;
        case 14:
          x->e22233 = val;
          break;
        case 15:
          x->e11333 = val;
          break;
        case 16:
          x->e12333 = val;
          break;
        case 17:
          x->e22333 = val;
          break;
        case 18:
          x->e13333 = val;
          break;
        case 19:
          x->e23333 = val;
          break;
        case 20:
          x->e33333 = val;
          break;
        case 21:
          x->e11114 = val;
          break;
        case 22:
          x->e11124 = val;
          break;
        case 23:
          x->e11224 = val;
          break;
        case 24:
          x->e12224 = val;
          break;
        case 25:
          x->e22224 = val;
          break;
        case 26:
          x->e11134 = val;
          break;
        case 27:
          x->e11234 = val;
          break;
        case 28:
          x->e12234 = val;
          break;
        case 29:
          x->e22234 = val;
          break;
        case 30:
          x->e11334 = val;
          break;
        case 31:
          x->e12334 = val;
          break;
        case 32:
          x->e22334 = val;
          break;
        case 33:
          x->e13334 = val;
          break;
        case 34:
          x->e23334 = val;
          break;
        case 35:
          x->e33334 = val;
          break;
        case 36:
          x->e11144 = val;
          break;
        case 37:
          x->e11244 = val;
          break;
        case 38:
          x->e12244 = val;
          break;
        case 39:
          x->e22244 = val;
          break;
        case 40:
          x->e11344 = val;
          break;
        case 41:
          x->e12344 = val;
          break;
        case 42:
          x->e22344 = val;
          break;
        case 43:
          x->e13344 = val;
          break;
        case 44:
          x->e23344 = val;
          break;
        case 45:
          x->e33344 = val;
          break;
        case 46:
          x->e11444 = val;
          break;
        case 47:
          x->e12444 = val;
          break;
        case 48:
          x->e22444 = val;
          break;
        case 49:
          x->e13444 = val;
          break;
        case 50:
          x->e23444 = val;
          break;
        case 51:
          x->e33444 = val;
          break;
        case 52:
          x->e14444 = val;
          break;
        case 53:
          x->e24444 = val;
          break;
        case 54:
          x->e34444 = val;
          break;
        case 55:
          x->e44444 = val;
          break;
      }
      break;
  }
}

onumm4n5_t onumm4n5_copy(  onumm4n5_t* lhs){

  onumm4n5_t res;

  // Assign like function 'lhs'
  // Real;
  res.r = lhs->r;
  // Order 1;
  res.e1 = lhs->e1;
  res.e2 = lhs->e2;
  res.e3 = lhs->e3;
  res.e4 = lhs->e4;
  // Order 2;
  res.e11 = lhs->e11;
  res.e12 = lhs->e12;
  res.e22 = lhs->e22;
  res.e13 = lhs->e13;
  res.e23 = lhs->e23;
  res.e33 = lhs->e33;
  res.e14 = lhs->e14;
  res.e24 = lhs->e24;
  res.e34 = lhs->e34;
  res.e44 = lhs->e44;
  // Order 3;
  res.e111 = lhs->e111;
  res.e112 = lhs->e112;
  res.e122 = lhs->e122;
  res.e222 = lhs->e222;
  res.e113 = lhs->e113;
  res.e123 = lhs->e123;
  res.e223 = lhs->e223;
  res.e133 = lhs->e133;
  res.e233 = lhs->e233;
  res.e333 = lhs->e333;
  res.e114 = lhs->e114;
  res.e124 = lhs->e124;
  res.e224 = lhs->e224;
  res.e134 = lhs->e134;
  res.e234 = lhs->e234;
  res.e334 = lhs->e334;
  res.e144 = lhs->e144;
  res.e244 = lhs->e244;
  res.e344 = lhs->e344;
  res.e444 = lhs->e444;
  // Order 4;
  res.e1111 = lhs->e1111;
  res.e1112 = lhs->e1112;
  res.e1122 = lhs->e1122;
  res.e1222 = lhs->e1222;
  res.e2222 = lhs->e2222;
  res.e1113 = lhs->e1113;
  res.e1123 = lhs->e1123;
  res.e1223 = lhs->e1223;
  res.e2223 = lhs->e2223;
  res.e1133 = lhs->e1133;
  res.e1233 = lhs->e1233;
  res.e2233 = lhs->e2233;
  res.e1333 = lhs->e1333;
  res.e2333 = lhs->e2333;
  res.e3333 = lhs->e3333;
  res.e1114 = lhs->e1114;
  res.e1124 = lhs->e1124;
  res.e1224 = lhs->e1224;
  res.e2224 = lhs->e2224;
  res.e1134 = lhs->e1134;
  res.e1234 = lhs->e1234;
  res.e2234 = lhs->e2234;
  res.e1334 = lhs->e1334;
  res.e2334 = lhs->e2334;
  res.e3334 = lhs->e3334;
  res.e1144 = lhs->e1144;
  res.e1244 = lhs->e1244;
  res.e2244 = lhs->e2244;
  res.e1344 = lhs->e1344;
  res.e2344 = lhs->e2344;
  res.e3344 = lhs->e3344;
  res.e1444 = lhs->e1444;
  res.e2444 = lhs->e2444;
  res.e3444 = lhs->e3444;
  res.e4444 = lhs->e4444;
  // Order 5;
  res.e11111 = lhs->e11111;
  res.e11112 = lhs->e11112;
  res.e11122 = lhs->e11122;
  res.e11222 = lhs->e11222;
  res.e12222 = lhs->e12222;
  res.e22222 = lhs->e22222;
  res.e11113 = lhs->e11113;
  res.e11123 = lhs->e11123;
  res.e11223 = lhs->e11223;
  res.e12223 = lhs->e12223;
  res.e22223 = lhs->e22223;
  res.e11133 = lhs->e11133;
  res.e11233 = lhs->e11233;
  res.e12233 = lhs->e12233;
  res.e22233 = lhs->e22233;
  res.e11333 = lhs->e11333;
  res.e12333 = lhs->e12333;
  res.e22333 = lhs->e22333;
  res.e13333 = lhs->e13333;
  res.e23333 = lhs->e23333;
  res.e33333 = lhs->e33333;
  res.e11114 = lhs->e11114;
  res.e11124 = lhs->e11124;
  res.e11224 = lhs->e11224;
  res.e12224 = lhs->e12224;
  res.e22224 = lhs->e22224;
  res.e11134 = lhs->e11134;
  res.e11234 = lhs->e11234;
  res.e12234 = lhs->e12234;
  res.e22234 = lhs->e22234;
  res.e11334 = lhs->e11334;
  res.e12334 = lhs->e12334;
  res.e22334 = lhs->e22334;
  res.e13334 = lhs->e13334;
  res.e23334 = lhs->e23334;
  res.e33334 = lhs->e33334;
  res.e11144 = lhs->e11144;
  res.e11244 = lhs->e11244;
  res.e12244 = lhs->e12244;
  res.e22244 = lhs->e22244;
  res.e11344 = lhs->e11344;
  res.e12344 = lhs->e12344;
  res.e22344 = lhs->e22344;
  res.e13344 = lhs->e13344;
  res.e23344 = lhs->e23344;
  res.e33344 = lhs->e33344;
  res.e11444 = lhs->e11444;
  res.e12444 = lhs->e12444;
  res.e22444 = lhs->e22444;
  res.e13444 = lhs->e13444;
  res.e23444 = lhs->e23444;
  res.e33444 = lhs->e33444;
  res.e14444 = lhs->e14444;
  res.e24444 = lhs->e24444;
  res.e34444 = lhs->e34444;
  res.e44444 = lhs->e44444;

  return res;

}

void onumm4n5_copy_to(  onumm4n5_t* lhs, onumm4n5_t* res){

  // Assign like function 'lhs'
  // Real;
  res->r = lhs->r;
  // Order 1;
  res->e1 = lhs->e1;
  res->e2 = lhs->e2;
  res->e3 = lhs->e3;
  res->e4 = lhs->e4;
  // Order 2;
  res->e11 = lhs->e11;
  res->e12 = lhs->e12;
  res->e22 = lhs->e22;
  res->e13 = lhs->e13;
  res->e23 = lhs->e23;
  res->e33 = lhs->e33;
  res->e14 = lhs->e14;
  res->e24 = lhs->e24;
  res->e34 = lhs->e34;
  res->e44 = lhs->e44;
  // Order 3;
  res->e111 = lhs->e111;
  res->e112 = lhs->e112;
  res->e122 = lhs->e122;
  res->e222 = lhs->e222;
  res->e113 = lhs->e113;
  res->e123 = lhs->e123;
  res->e223 = lhs->e223;
  res->e133 = lhs->e133;
  res->e233 = lhs->e233;
  res->e333 = lhs->e333;
  res->e114 = lhs->e114;
  res->e124 = lhs->e124;
  res->e224 = lhs->e224;
  res->e134 = lhs->e134;
  res->e234 = lhs->e234;
  res->e334 = lhs->e334;
  res->e144 = lhs->e144;
  res->e244 = lhs->e244;
  res->e344 = lhs->e344;
  res->e444 = lhs->e444;
  // Order 4;
  res->e1111 = lhs->e1111;
  res->e1112 = lhs->e1112;
  res->e1122 = lhs->e1122;
  res->e1222 = lhs->e1222;
  res->e2222 = lhs->e2222;
  res->e1113 = lhs->e1113;
  res->e1123 = lhs->e1123;
  res->e1223 = lhs->e1223;
  res->e2223 = lhs->e2223;
  res->e1133 = lhs->e1133;
  res->e1233 = lhs->e1233;
  res->e2233 = lhs->e2233;
  res->e1333 = lhs->e1333;
  res->e2333 = lhs->e2333;
  res->e3333 = lhs->e3333;
  res->e1114 = lhs->e1114;
  res->e1124 = lhs->e1124;
  res->e1224 = lhs->e1224;
  res->e2224 = lhs->e2224;
  res->e1134 = lhs->e1134;
  res->e1234 = lhs->e1234;
  res->e2234 = lhs->e2234;
  res->e1334 = lhs->e1334;
  res->e2334 = lhs->e2334;
  res->e3334 = lhs->e3334;
  res->e1144 = lhs->e1144;
  res->e1244 = lhs->e1244;
  res->e2244 = lhs->e2244;
  res->e1344 = lhs->e1344;
  res->e2344 = lhs->e2344;
  res->e3344 = lhs->e3344;
  res->e1444 = lhs->e1444;
  res->e2444 = lhs->e2444;
  res->e3444 = lhs->e3444;
  res->e4444 = lhs->e4444;
  // Order 5;
  res->e11111 = lhs->e11111;
  res->e11112 = lhs->e11112;
  res->e11122 = lhs->e11122;
  res->e11222 = lhs->e11222;
  res->e12222 = lhs->e12222;
  res->e22222 = lhs->e22222;
  res->e11113 = lhs->e11113;
  res->e11123 = lhs->e11123;
  res->e11223 = lhs->e11223;
  res->e12223 = lhs->e12223;
  res->e22223 = lhs->e22223;
  res->e11133 = lhs->e11133;
  res->e11233 = lhs->e11233;
  res->e12233 = lhs->e12233;
  res->e22233 = lhs->e22233;
  res->e11333 = lhs->e11333;
  res->e12333 = lhs->e12333;
  res->e22333 = lhs->e22333;
  res->e13333 = lhs->e13333;
  res->e23333 = lhs->e23333;
  res->e33333 = lhs->e33333;
  res->e11114 = lhs->e11114;
  res->e11124 = lhs->e11124;
  res->e11224 = lhs->e11224;
  res->e12224 = lhs->e12224;
  res->e22224 = lhs->e22224;
  res->e11134 = lhs->e11134;
  res->e11234 = lhs->e11234;
  res->e12234 = lhs->e12234;
  res->e22234 = lhs->e22234;
  res->e11334 = lhs->e11334;
  res->e12334 = lhs->e12334;
  res->e22334 = lhs->e22334;
  res->e13334 = lhs->e13334;
  res->e23334 = lhs->e23334;
  res->e33334 = lhs->e33334;
  res->e11144 = lhs->e11144;
  res->e11244 = lhs->e11244;
  res->e12244 = lhs->e12244;
  res->e22244 = lhs->e22244;
  res->e11344 = lhs->e11344;
  res->e12344 = lhs->e12344;
  res->e22344 = lhs->e22344;
  res->e13344 = lhs->e13344;
  res->e23344 = lhs->e23344;
  res->e33344 = lhs->e33344;
  res->e11444 = lhs->e11444;
  res->e12444 = lhs->e12444;
  res->e22444 = lhs->e22444;
  res->e13444 = lhs->e13444;
  res->e23444 = lhs->e23444;
  res->e33444 = lhs->e33444;
  res->e14444 = lhs->e14444;
  res->e24444 = lhs->e24444;
  res->e34444 = lhs->e34444;
  res->e44444 = lhs->e44444;

}

onumm4n5_t onumm4n5_taylor_integrate(coeff_t* deltas,onumm4n5_t* lhs){

  onumm4n5_t res;

  res = onumm4n5_init();
  coeff_t factor;
  // Taylor integration
  // Real;
  res.r = lhs->r;
  // Order 1;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],0);
  res.r += factor*lhs->e1;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],0);
  res.r += factor*lhs->e2;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],0);
  res.r += factor*lhs->e3;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],1);
  res.r += factor*lhs->e4;
  // Order 2;
  factor = pow(deltas[0],2)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],0);
  res.r += factor*lhs->e11;
  factor = pow(deltas[0],1)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],0);
  res.r += factor*lhs->e12;
  factor = pow(deltas[0],0)*pow(deltas[1],2)*pow(deltas[2],0)*pow(deltas[3],0);
  res.r += factor*lhs->e22;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],0);
  res.r += factor*lhs->e13;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],1)*pow(deltas[3],0);
  res.r += factor*lhs->e23;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],2)*pow(deltas[3],0);
  res.r += factor*lhs->e33;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],1);
  res.r += factor*lhs->e14;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],1);
  res.r += factor*lhs->e24;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],1);
  res.r += factor*lhs->e34;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],2);
  res.r += factor*lhs->e44;
  // Order 3;
  factor = pow(deltas[0],3)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],0);
  res.r += factor*lhs->e111;
  factor = pow(deltas[0],2)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],0);
  res.r += factor*lhs->e112;
  factor = pow(deltas[0],1)*pow(deltas[1],2)*pow(deltas[2],0)*pow(deltas[3],0);
  res.r += factor*lhs->e122;
  factor = pow(deltas[0],0)*pow(deltas[1],3)*pow(deltas[2],0)*pow(deltas[3],0);
  res.r += factor*lhs->e222;
  factor = pow(deltas[0],2)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],0);
  res.r += factor*lhs->e113;
  factor = pow(deltas[0],1)*pow(deltas[1],1)*pow(deltas[2],1)*pow(deltas[3],0);
  res.r += factor*lhs->e123;
  factor = pow(deltas[0],0)*pow(deltas[1],2)*pow(deltas[2],1)*pow(deltas[3],0);
  res.r += factor*lhs->e223;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],2)*pow(deltas[3],0);
  res.r += factor*lhs->e133;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],2)*pow(deltas[3],0);
  res.r += factor*lhs->e233;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],3)*pow(deltas[3],0);
  res.r += factor*lhs->e333;
  factor = pow(deltas[0],2)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],1);
  res.r += factor*lhs->e114;
  factor = pow(deltas[0],1)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],1);
  res.r += factor*lhs->e124;
  factor = pow(deltas[0],0)*pow(deltas[1],2)*pow(deltas[2],0)*pow(deltas[3],1);
  res.r += factor*lhs->e224;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],1);
  res.r += factor*lhs->e134;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],1)*pow(deltas[3],1);
  res.r += factor*lhs->e234;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],2)*pow(deltas[3],1);
  res.r += factor*lhs->e334;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],2);
  res.r += factor*lhs->e144;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],2);
  res.r += factor*lhs->e244;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],2);
  res.r += factor*lhs->e344;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],3);
  res.r += factor*lhs->e444;
  // Order 4;
  factor = pow(deltas[0],4)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],0);
  res.r += factor*lhs->e1111;
  factor = pow(deltas[0],3)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],0);
  res.r += factor*lhs->e1112;
  factor = pow(deltas[0],2)*pow(deltas[1],2)*pow(deltas[2],0)*pow(deltas[3],0);
  res.r += factor*lhs->e1122;
  factor = pow(deltas[0],1)*pow(deltas[1],3)*pow(deltas[2],0)*pow(deltas[3],0);
  res.r += factor*lhs->e1222;
  factor = pow(deltas[0],0)*pow(deltas[1],4)*pow(deltas[2],0)*pow(deltas[3],0);
  res.r += factor*lhs->e2222;
  factor = pow(deltas[0],3)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],0);
  res.r += factor*lhs->e1113;
  factor = pow(deltas[0],2)*pow(deltas[1],1)*pow(deltas[2],1)*pow(deltas[3],0);
  res.r += factor*lhs->e1123;
  factor = pow(deltas[0],1)*pow(deltas[1],2)*pow(deltas[2],1)*pow(deltas[3],0);
  res.r += factor*lhs->e1223;
  factor = pow(deltas[0],0)*pow(deltas[1],3)*pow(deltas[2],1)*pow(deltas[3],0);
  res.r += factor*lhs->e2223;
  factor = pow(deltas[0],2)*pow(deltas[1],0)*pow(deltas[2],2)*pow(deltas[3],0);
  res.r += factor*lhs->e1133;
  factor = pow(deltas[0],1)*pow(deltas[1],1)*pow(deltas[2],2)*pow(deltas[3],0);
  res.r += factor*lhs->e1233;
  factor = pow(deltas[0],0)*pow(deltas[1],2)*pow(deltas[2],2)*pow(deltas[3],0);
  res.r += factor*lhs->e2233;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],3)*pow(deltas[3],0);
  res.r += factor*lhs->e1333;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],3)*pow(deltas[3],0);
  res.r += factor*lhs->e2333;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],4)*pow(deltas[3],0);
  res.r += factor*lhs->e3333;
  factor = pow(deltas[0],3)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],1);
  res.r += factor*lhs->e1114;
  factor = pow(deltas[0],2)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],1);
  res.r += factor*lhs->e1124;
  factor = pow(deltas[0],1)*pow(deltas[1],2)*pow(deltas[2],0)*pow(deltas[3],1);
  res.r += factor*lhs->e1224;
  factor = pow(deltas[0],0)*pow(deltas[1],3)*pow(deltas[2],0)*pow(deltas[3],1);
  res.r += factor*lhs->e2224;
  factor = pow(deltas[0],2)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],1);
  res.r += factor*lhs->e1134;
  factor = pow(deltas[0],1)*pow(deltas[1],1)*pow(deltas[2],1)*pow(deltas[3],1);
  res.r += factor*lhs->e1234;
  factor = pow(deltas[0],0)*pow(deltas[1],2)*pow(deltas[2],1)*pow(deltas[3],1);
  res.r += factor*lhs->e2234;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],2)*pow(deltas[3],1);
  res.r += factor*lhs->e1334;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],2)*pow(deltas[3],1);
  res.r += factor*lhs->e2334;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],3)*pow(deltas[3],1);
  res.r += factor*lhs->e3334;
  factor = pow(deltas[0],2)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],2);
  res.r += factor*lhs->e1144;
  factor = pow(deltas[0],1)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],2);
  res.r += factor*lhs->e1244;
  factor = pow(deltas[0],0)*pow(deltas[1],2)*pow(deltas[2],0)*pow(deltas[3],2);
  res.r += factor*lhs->e2244;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],2);
  res.r += factor*lhs->e1344;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],1)*pow(deltas[3],2);
  res.r += factor*lhs->e2344;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],2)*pow(deltas[3],2);
  res.r += factor*lhs->e3344;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],3);
  res.r += factor*lhs->e1444;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],3);
  res.r += factor*lhs->e2444;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],3);
  res.r += factor*lhs->e3444;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],4);
  res.r += factor*lhs->e4444;
  // Order 5;
  factor = pow(deltas[0],5)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],0);
  res.r += factor*lhs->e11111;
  factor = pow(deltas[0],4)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],0);
  res.r += factor*lhs->e11112;
  factor = pow(deltas[0],3)*pow(deltas[1],2)*pow(deltas[2],0)*pow(deltas[3],0);
  res.r += factor*lhs->e11122;
  factor = pow(deltas[0],2)*pow(deltas[1],3)*pow(deltas[2],0)*pow(deltas[3],0);
  res.r += factor*lhs->e11222;
  factor = pow(deltas[0],1)*pow(deltas[1],4)*pow(deltas[2],0)*pow(deltas[3],0);
  res.r += factor*lhs->e12222;
  factor = pow(deltas[0],0)*pow(deltas[1],5)*pow(deltas[2],0)*pow(deltas[3],0);
  res.r += factor*lhs->e22222;
  factor = pow(deltas[0],4)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],0);
  res.r += factor*lhs->e11113;
  factor = pow(deltas[0],3)*pow(deltas[1],1)*pow(deltas[2],1)*pow(deltas[3],0);
  res.r += factor*lhs->e11123;
  factor = pow(deltas[0],2)*pow(deltas[1],2)*pow(deltas[2],1)*pow(deltas[3],0);
  res.r += factor*lhs->e11223;
  factor = pow(deltas[0],1)*pow(deltas[1],3)*pow(deltas[2],1)*pow(deltas[3],0);
  res.r += factor*lhs->e12223;
  factor = pow(deltas[0],0)*pow(deltas[1],4)*pow(deltas[2],1)*pow(deltas[3],0);
  res.r += factor*lhs->e22223;
  factor = pow(deltas[0],3)*pow(deltas[1],0)*pow(deltas[2],2)*pow(deltas[3],0);
  res.r += factor*lhs->e11133;
  factor = pow(deltas[0],2)*pow(deltas[1],1)*pow(deltas[2],2)*pow(deltas[3],0);
  res.r += factor*lhs->e11233;
  factor = pow(deltas[0],1)*pow(deltas[1],2)*pow(deltas[2],2)*pow(deltas[3],0);
  res.r += factor*lhs->e12233;
  factor = pow(deltas[0],0)*pow(deltas[1],3)*pow(deltas[2],2)*pow(deltas[3],0);
  res.r += factor*lhs->e22233;
  factor = pow(deltas[0],2)*pow(deltas[1],0)*pow(deltas[2],3)*pow(deltas[3],0);
  res.r += factor*lhs->e11333;
  factor = pow(deltas[0],1)*pow(deltas[1],1)*pow(deltas[2],3)*pow(deltas[3],0);
  res.r += factor*lhs->e12333;
  factor = pow(deltas[0],0)*pow(deltas[1],2)*pow(deltas[2],3)*pow(deltas[3],0);
  res.r += factor*lhs->e22333;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],4)*pow(deltas[3],0);
  res.r += factor*lhs->e13333;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],4)*pow(deltas[3],0);
  res.r += factor*lhs->e23333;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],5)*pow(deltas[3],0);
  res.r += factor*lhs->e33333;
  factor = pow(deltas[0],4)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],1);
  res.r += factor*lhs->e11114;
  factor = pow(deltas[0],3)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],1);
  res.r += factor*lhs->e11124;
  factor = pow(deltas[0],2)*pow(deltas[1],2)*pow(deltas[2],0)*pow(deltas[3],1);
  res.r += factor*lhs->e11224;
  factor = pow(deltas[0],1)*pow(deltas[1],3)*pow(deltas[2],0)*pow(deltas[3],1);
  res.r += factor*lhs->e12224;
  factor = pow(deltas[0],0)*pow(deltas[1],4)*pow(deltas[2],0)*pow(deltas[3],1);
  res.r += factor*lhs->e22224;
  factor = pow(deltas[0],3)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],1);
  res.r += factor*lhs->e11134;
  factor = pow(deltas[0],2)*pow(deltas[1],1)*pow(deltas[2],1)*pow(deltas[3],1);
  res.r += factor*lhs->e11234;
  factor = pow(deltas[0],1)*pow(deltas[1],2)*pow(deltas[2],1)*pow(deltas[3],1);
  res.r += factor*lhs->e12234;
  factor = pow(deltas[0],0)*pow(deltas[1],3)*pow(deltas[2],1)*pow(deltas[3],1);
  res.r += factor*lhs->e22234;
  factor = pow(deltas[0],2)*pow(deltas[1],0)*pow(deltas[2],2)*pow(deltas[3],1);
  res.r += factor*lhs->e11334;
  factor = pow(deltas[0],1)*pow(deltas[1],1)*pow(deltas[2],2)*pow(deltas[3],1);
  res.r += factor*lhs->e12334;
  factor = pow(deltas[0],0)*pow(deltas[1],2)*pow(deltas[2],2)*pow(deltas[3],1);
  res.r += factor*lhs->e22334;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],3)*pow(deltas[3],1);
  res.r += factor*lhs->e13334;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],3)*pow(deltas[3],1);
  res.r += factor*lhs->e23334;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],4)*pow(deltas[3],1);
  res.r += factor*lhs->e33334;
  factor = pow(deltas[0],3)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],2);
  res.r += factor*lhs->e11144;
  factor = pow(deltas[0],2)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],2);
  res.r += factor*lhs->e11244;
  factor = pow(deltas[0],1)*pow(deltas[1],2)*pow(deltas[2],0)*pow(deltas[3],2);
  res.r += factor*lhs->e12244;
  factor = pow(deltas[0],0)*pow(deltas[1],3)*pow(deltas[2],0)*pow(deltas[3],2);
  res.r += factor*lhs->e22244;
  factor = pow(deltas[0],2)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],2);
  res.r += factor*lhs->e11344;
  factor = pow(deltas[0],1)*pow(deltas[1],1)*pow(deltas[2],1)*pow(deltas[3],2);
  res.r += factor*lhs->e12344;
  factor = pow(deltas[0],0)*pow(deltas[1],2)*pow(deltas[2],1)*pow(deltas[3],2);
  res.r += factor*lhs->e22344;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],2)*pow(deltas[3],2);
  res.r += factor*lhs->e13344;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],2)*pow(deltas[3],2);
  res.r += factor*lhs->e23344;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],3)*pow(deltas[3],2);
  res.r += factor*lhs->e33344;
  factor = pow(deltas[0],2)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],3);
  res.r += factor*lhs->e11444;
  factor = pow(deltas[0],1)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],3);
  res.r += factor*lhs->e12444;
  factor = pow(deltas[0],0)*pow(deltas[1],2)*pow(deltas[2],0)*pow(deltas[3],3);
  res.r += factor*lhs->e22444;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],3);
  res.r += factor*lhs->e13444;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],1)*pow(deltas[3],3);
  res.r += factor*lhs->e23444;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],2)*pow(deltas[3],3);
  res.r += factor*lhs->e33444;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],4);
  res.r += factor*lhs->e14444;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],4);
  res.r += factor*lhs->e24444;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],4);
  res.r += factor*lhs->e34444;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],5);
  res.r += factor*lhs->e44444;

  return res;

}

void onumm4n5_taylor_integrate_to(coeff_t* deltas,onumm4n5_t* lhs, onumm4n5_t* res){

  *res = onumm4n5_init();
  coeff_t factor;
  // Taylor integration
  // Real;
  res->r = lhs->r;
  // Order 1;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],0);
  res->r += factor*lhs->e1;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],0);
  res->r += factor*lhs->e2;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],0);
  res->r += factor*lhs->e3;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],1);
  res->r += factor*lhs->e4;
  // Order 2;
  factor = pow(deltas[0],2)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],0);
  res->r += factor*lhs->e11;
  factor = pow(deltas[0],1)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],0);
  res->r += factor*lhs->e12;
  factor = pow(deltas[0],0)*pow(deltas[1],2)*pow(deltas[2],0)*pow(deltas[3],0);
  res->r += factor*lhs->e22;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],0);
  res->r += factor*lhs->e13;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],1)*pow(deltas[3],0);
  res->r += factor*lhs->e23;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],2)*pow(deltas[3],0);
  res->r += factor*lhs->e33;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],1);
  res->r += factor*lhs->e14;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],1);
  res->r += factor*lhs->e24;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],1);
  res->r += factor*lhs->e34;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],2);
  res->r += factor*lhs->e44;
  // Order 3;
  factor = pow(deltas[0],3)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],0);
  res->r += factor*lhs->e111;
  factor = pow(deltas[0],2)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],0);
  res->r += factor*lhs->e112;
  factor = pow(deltas[0],1)*pow(deltas[1],2)*pow(deltas[2],0)*pow(deltas[3],0);
  res->r += factor*lhs->e122;
  factor = pow(deltas[0],0)*pow(deltas[1],3)*pow(deltas[2],0)*pow(deltas[3],0);
  res->r += factor*lhs->e222;
  factor = pow(deltas[0],2)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],0);
  res->r += factor*lhs->e113;
  factor = pow(deltas[0],1)*pow(deltas[1],1)*pow(deltas[2],1)*pow(deltas[3],0);
  res->r += factor*lhs->e123;
  factor = pow(deltas[0],0)*pow(deltas[1],2)*pow(deltas[2],1)*pow(deltas[3],0);
  res->r += factor*lhs->e223;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],2)*pow(deltas[3],0);
  res->r += factor*lhs->e133;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],2)*pow(deltas[3],0);
  res->r += factor*lhs->e233;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],3)*pow(deltas[3],0);
  res->r += factor*lhs->e333;
  factor = pow(deltas[0],2)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],1);
  res->r += factor*lhs->e114;
  factor = pow(deltas[0],1)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],1);
  res->r += factor*lhs->e124;
  factor = pow(deltas[0],0)*pow(deltas[1],2)*pow(deltas[2],0)*pow(deltas[3],1);
  res->r += factor*lhs->e224;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],1);
  res->r += factor*lhs->e134;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],1)*pow(deltas[3],1);
  res->r += factor*lhs->e234;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],2)*pow(deltas[3],1);
  res->r += factor*lhs->e334;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],2);
  res->r += factor*lhs->e144;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],2);
  res->r += factor*lhs->e244;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],2);
  res->r += factor*lhs->e344;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],3);
  res->r += factor*lhs->e444;
  // Order 4;
  factor = pow(deltas[0],4)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],0);
  res->r += factor*lhs->e1111;
  factor = pow(deltas[0],3)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],0);
  res->r += factor*lhs->e1112;
  factor = pow(deltas[0],2)*pow(deltas[1],2)*pow(deltas[2],0)*pow(deltas[3],0);
  res->r += factor*lhs->e1122;
  factor = pow(deltas[0],1)*pow(deltas[1],3)*pow(deltas[2],0)*pow(deltas[3],0);
  res->r += factor*lhs->e1222;
  factor = pow(deltas[0],0)*pow(deltas[1],4)*pow(deltas[2],0)*pow(deltas[3],0);
  res->r += factor*lhs->e2222;
  factor = pow(deltas[0],3)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],0);
  res->r += factor*lhs->e1113;
  factor = pow(deltas[0],2)*pow(deltas[1],1)*pow(deltas[2],1)*pow(deltas[3],0);
  res->r += factor*lhs->e1123;
  factor = pow(deltas[0],1)*pow(deltas[1],2)*pow(deltas[2],1)*pow(deltas[3],0);
  res->r += factor*lhs->e1223;
  factor = pow(deltas[0],0)*pow(deltas[1],3)*pow(deltas[2],1)*pow(deltas[3],0);
  res->r += factor*lhs->e2223;
  factor = pow(deltas[0],2)*pow(deltas[1],0)*pow(deltas[2],2)*pow(deltas[3],0);
  res->r += factor*lhs->e1133;
  factor = pow(deltas[0],1)*pow(deltas[1],1)*pow(deltas[2],2)*pow(deltas[3],0);
  res->r += factor*lhs->e1233;
  factor = pow(deltas[0],0)*pow(deltas[1],2)*pow(deltas[2],2)*pow(deltas[3],0);
  res->r += factor*lhs->e2233;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],3)*pow(deltas[3],0);
  res->r += factor*lhs->e1333;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],3)*pow(deltas[3],0);
  res->r += factor*lhs->e2333;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],4)*pow(deltas[3],0);
  res->r += factor*lhs->e3333;
  factor = pow(deltas[0],3)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],1);
  res->r += factor*lhs->e1114;
  factor = pow(deltas[0],2)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],1);
  res->r += factor*lhs->e1124;
  factor = pow(deltas[0],1)*pow(deltas[1],2)*pow(deltas[2],0)*pow(deltas[3],1);
  res->r += factor*lhs->e1224;
  factor = pow(deltas[0],0)*pow(deltas[1],3)*pow(deltas[2],0)*pow(deltas[3],1);
  res->r += factor*lhs->e2224;
  factor = pow(deltas[0],2)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],1);
  res->r += factor*lhs->e1134;
  factor = pow(deltas[0],1)*pow(deltas[1],1)*pow(deltas[2],1)*pow(deltas[3],1);
  res->r += factor*lhs->e1234;
  factor = pow(deltas[0],0)*pow(deltas[1],2)*pow(deltas[2],1)*pow(deltas[3],1);
  res->r += factor*lhs->e2234;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],2)*pow(deltas[3],1);
  res->r += factor*lhs->e1334;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],2)*pow(deltas[3],1);
  res->r += factor*lhs->e2334;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],3)*pow(deltas[3],1);
  res->r += factor*lhs->e3334;
  factor = pow(deltas[0],2)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],2);
  res->r += factor*lhs->e1144;
  factor = pow(deltas[0],1)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],2);
  res->r += factor*lhs->e1244;
  factor = pow(deltas[0],0)*pow(deltas[1],2)*pow(deltas[2],0)*pow(deltas[3],2);
  res->r += factor*lhs->e2244;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],2);
  res->r += factor*lhs->e1344;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],1)*pow(deltas[3],2);
  res->r += factor*lhs->e2344;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],2)*pow(deltas[3],2);
  res->r += factor*lhs->e3344;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],3);
  res->r += factor*lhs->e1444;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],3);
  res->r += factor*lhs->e2444;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],3);
  res->r += factor*lhs->e3444;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],4);
  res->r += factor*lhs->e4444;
  // Order 5;
  factor = pow(deltas[0],5)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],0);
  res->r += factor*lhs->e11111;
  factor = pow(deltas[0],4)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],0);
  res->r += factor*lhs->e11112;
  factor = pow(deltas[0],3)*pow(deltas[1],2)*pow(deltas[2],0)*pow(deltas[3],0);
  res->r += factor*lhs->e11122;
  factor = pow(deltas[0],2)*pow(deltas[1],3)*pow(deltas[2],0)*pow(deltas[3],0);
  res->r += factor*lhs->e11222;
  factor = pow(deltas[0],1)*pow(deltas[1],4)*pow(deltas[2],0)*pow(deltas[3],0);
  res->r += factor*lhs->e12222;
  factor = pow(deltas[0],0)*pow(deltas[1],5)*pow(deltas[2],0)*pow(deltas[3],0);
  res->r += factor*lhs->e22222;
  factor = pow(deltas[0],4)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],0);
  res->r += factor*lhs->e11113;
  factor = pow(deltas[0],3)*pow(deltas[1],1)*pow(deltas[2],1)*pow(deltas[3],0);
  res->r += factor*lhs->e11123;
  factor = pow(deltas[0],2)*pow(deltas[1],2)*pow(deltas[2],1)*pow(deltas[3],0);
  res->r += factor*lhs->e11223;
  factor = pow(deltas[0],1)*pow(deltas[1],3)*pow(deltas[2],1)*pow(deltas[3],0);
  res->r += factor*lhs->e12223;
  factor = pow(deltas[0],0)*pow(deltas[1],4)*pow(deltas[2],1)*pow(deltas[3],0);
  res->r += factor*lhs->e22223;
  factor = pow(deltas[0],3)*pow(deltas[1],0)*pow(deltas[2],2)*pow(deltas[3],0);
  res->r += factor*lhs->e11133;
  factor = pow(deltas[0],2)*pow(deltas[1],1)*pow(deltas[2],2)*pow(deltas[3],0);
  res->r += factor*lhs->e11233;
  factor = pow(deltas[0],1)*pow(deltas[1],2)*pow(deltas[2],2)*pow(deltas[3],0);
  res->r += factor*lhs->e12233;
  factor = pow(deltas[0],0)*pow(deltas[1],3)*pow(deltas[2],2)*pow(deltas[3],0);
  res->r += factor*lhs->e22233;
  factor = pow(deltas[0],2)*pow(deltas[1],0)*pow(deltas[2],3)*pow(deltas[3],0);
  res->r += factor*lhs->e11333;
  factor = pow(deltas[0],1)*pow(deltas[1],1)*pow(deltas[2],3)*pow(deltas[3],0);
  res->r += factor*lhs->e12333;
  factor = pow(deltas[0],0)*pow(deltas[1],2)*pow(deltas[2],3)*pow(deltas[3],0);
  res->r += factor*lhs->e22333;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],4)*pow(deltas[3],0);
  res->r += factor*lhs->e13333;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],4)*pow(deltas[3],0);
  res->r += factor*lhs->e23333;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],5)*pow(deltas[3],0);
  res->r += factor*lhs->e33333;
  factor = pow(deltas[0],4)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],1);
  res->r += factor*lhs->e11114;
  factor = pow(deltas[0],3)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],1);
  res->r += factor*lhs->e11124;
  factor = pow(deltas[0],2)*pow(deltas[1],2)*pow(deltas[2],0)*pow(deltas[3],1);
  res->r += factor*lhs->e11224;
  factor = pow(deltas[0],1)*pow(deltas[1],3)*pow(deltas[2],0)*pow(deltas[3],1);
  res->r += factor*lhs->e12224;
  factor = pow(deltas[0],0)*pow(deltas[1],4)*pow(deltas[2],0)*pow(deltas[3],1);
  res->r += factor*lhs->e22224;
  factor = pow(deltas[0],3)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],1);
  res->r += factor*lhs->e11134;
  factor = pow(deltas[0],2)*pow(deltas[1],1)*pow(deltas[2],1)*pow(deltas[3],1);
  res->r += factor*lhs->e11234;
  factor = pow(deltas[0],1)*pow(deltas[1],2)*pow(deltas[2],1)*pow(deltas[3],1);
  res->r += factor*lhs->e12234;
  factor = pow(deltas[0],0)*pow(deltas[1],3)*pow(deltas[2],1)*pow(deltas[3],1);
  res->r += factor*lhs->e22234;
  factor = pow(deltas[0],2)*pow(deltas[1],0)*pow(deltas[2],2)*pow(deltas[3],1);
  res->r += factor*lhs->e11334;
  factor = pow(deltas[0],1)*pow(deltas[1],1)*pow(deltas[2],2)*pow(deltas[3],1);
  res->r += factor*lhs->e12334;
  factor = pow(deltas[0],0)*pow(deltas[1],2)*pow(deltas[2],2)*pow(deltas[3],1);
  res->r += factor*lhs->e22334;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],3)*pow(deltas[3],1);
  res->r += factor*lhs->e13334;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],3)*pow(deltas[3],1);
  res->r += factor*lhs->e23334;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],4)*pow(deltas[3],1);
  res->r += factor*lhs->e33334;
  factor = pow(deltas[0],3)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],2);
  res->r += factor*lhs->e11144;
  factor = pow(deltas[0],2)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],2);
  res->r += factor*lhs->e11244;
  factor = pow(deltas[0],1)*pow(deltas[1],2)*pow(deltas[2],0)*pow(deltas[3],2);
  res->r += factor*lhs->e12244;
  factor = pow(deltas[0],0)*pow(deltas[1],3)*pow(deltas[2],0)*pow(deltas[3],2);
  res->r += factor*lhs->e22244;
  factor = pow(deltas[0],2)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],2);
  res->r += factor*lhs->e11344;
  factor = pow(deltas[0],1)*pow(deltas[1],1)*pow(deltas[2],1)*pow(deltas[3],2);
  res->r += factor*lhs->e12344;
  factor = pow(deltas[0],0)*pow(deltas[1],2)*pow(deltas[2],1)*pow(deltas[3],2);
  res->r += factor*lhs->e22344;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],2)*pow(deltas[3],2);
  res->r += factor*lhs->e13344;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],2)*pow(deltas[3],2);
  res->r += factor*lhs->e23344;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],3)*pow(deltas[3],2);
  res->r += factor*lhs->e33344;
  factor = pow(deltas[0],2)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],3);
  res->r += factor*lhs->e11444;
  factor = pow(deltas[0],1)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],3);
  res->r += factor*lhs->e12444;
  factor = pow(deltas[0],0)*pow(deltas[1],2)*pow(deltas[2],0)*pow(deltas[3],3);
  res->r += factor*lhs->e22444;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],3);
  res->r += factor*lhs->e13444;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],1)*pow(deltas[3],3);
  res->r += factor*lhs->e23444;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],2)*pow(deltas[3],3);
  res->r += factor*lhs->e33444;
  factor = pow(deltas[0],1)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],4);
  res->r += factor*lhs->e14444;
  factor = pow(deltas[0],0)*pow(deltas[1],1)*pow(deltas[2],0)*pow(deltas[3],4);
  res->r += factor*lhs->e24444;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],1)*pow(deltas[3],4);
  res->r += factor*lhs->e34444;
  factor = pow(deltas[0],0)*pow(deltas[1],0)*pow(deltas[2],0)*pow(deltas[3],5);
  res->r += factor*lhs->e44444;

}

onumm4n5_t onumm4n5_truncate_im(imdir_t idx, ord_t order, onumm4n5_t* lhs){

  onumm4n5_t res;

  // Copy number.
  res = (*lhs);
  // Truncate all other values when necessary.
  // Real;
  switch (order){
    case 0:
      res = onumm4n5_init();
      break;
    case 1:
      switch (idx){
        case 0: //  e1
          res.e1 = 0.0;
          res.e11 = 0.0;
          res.e12 = 0.0;
          res.e13 = 0.0;
          res.e14 = 0.0;
          res.e111 = 0.0;
          res.e112 = 0.0;
          res.e122 = 0.0;
          res.e113 = 0.0;
          res.e123 = 0.0;
          res.e133 = 0.0;
          res.e114 = 0.0;
          res.e124 = 0.0;
          res.e134 = 0.0;
          res.e144 = 0.0;
          res.e1111 = 0.0;
          res.e1112 = 0.0;
          res.e1122 = 0.0;
          res.e1222 = 0.0;
          res.e1113 = 0.0;
          res.e1123 = 0.0;
          res.e1223 = 0.0;
          res.e1133 = 0.0;
          res.e1233 = 0.0;
          res.e1333 = 0.0;
          res.e1114 = 0.0;
          res.e1124 = 0.0;
          res.e1224 = 0.0;
          res.e1134 = 0.0;
          res.e1234 = 0.0;
          res.e1334 = 0.0;
          res.e1144 = 0.0;
          res.e1244 = 0.0;
          res.e1344 = 0.0;
          res.e1444 = 0.0;
          res.e11111 = 0.0;
          res.e11112 = 0.0;
          res.e11122 = 0.0;
          res.e11222 = 0.0;
          res.e12222 = 0.0;
          res.e11113 = 0.0;
          res.e11123 = 0.0;
          res.e11223 = 0.0;
          res.e12223 = 0.0;
          res.e11133 = 0.0;
          res.e11233 = 0.0;
          res.e12233 = 0.0;
          res.e11333 = 0.0;
          res.e12333 = 0.0;
          res.e13333 = 0.0;
          res.e11114 = 0.0;
          res.e11124 = 0.0;
          res.e11224 = 0.0;
          res.e12224 = 0.0;
          res.e11134 = 0.0;
          res.e11234 = 0.0;
          res.e12234 = 0.0;
          res.e11334 = 0.0;
          res.e12334 = 0.0;
          res.e13334 = 0.0;
          res.e11144 = 0.0;
          res.e11244 = 0.0;
          res.e12244 = 0.0;
          res.e11344 = 0.0;
          res.e12344 = 0.0;
          res.e13344 = 0.0;
          res.e11444 = 0.0;
          res.e12444 = 0.0;
          res.e13444 = 0.0;
          res.e14444 = 0.0;
          break;
        case 1: //  e2
          res.e2 = 0.0;
          res.e12 = 0.0;
          res.e22 = 0.0;
          res.e23 = 0.0;
          res.e24 = 0.0;
          res.e112 = 0.0;
          res.e122 = 0.0;
          res.e222 = 0.0;
          res.e123 = 0.0;
          res.e223 = 0.0;
          res.e233 = 0.0;
          res.e124 = 0.0;
          res.e224 = 0.0;
          res.e234 = 0.0;
          res.e244 = 0.0;
          res.e1112 = 0.0;
          res.e1122 = 0.0;
          res.e1222 = 0.0;
          res.e2222 = 0.0;
          res.e1123 = 0.0;
          res.e1223 = 0.0;
          res.e2223 = 0.0;
          res.e1233 = 0.0;
          res.e2233 = 0.0;
          res.e2333 = 0.0;
          res.e1124 = 0.0;
          res.e1224 = 0.0;
          res.e2224 = 0.0;
          res.e1234 = 0.0;
          res.e2234 = 0.0;
          res.e2334 = 0.0;
          res.e1244 = 0.0;
          res.e2244 = 0.0;
          res.e2344 = 0.0;
          res.e2444 = 0.0;
          res.e11112 = 0.0;
          res.e11122 = 0.0;
          res.e11222 = 0.0;
          res.e12222 = 0.0;
          res.e22222 = 0.0;
          res.e11123 = 0.0;
          res.e11223 = 0.0;
          res.e12223 = 0.0;
          res.e22223 = 0.0;
          res.e11233 = 0.0;
          res.e12233 = 0.0;
          res.e22233 = 0.0;
          res.e12333 = 0.0;
          res.e22333 = 0.0;
          res.e23333 = 0.0;
          res.e11124 = 0.0;
          res.e11224 = 0.0;
          res.e12224 = 0.0;
          res.e22224 = 0.0;
          res.e11234 = 0.0;
          res.e12234 = 0.0;
          res.e22234 = 0.0;
          res.e12334 = 0.0;
          res.e22334 = 0.0;
          res.e23334 = 0.0;
          res.e11244 = 0.0;
          res.e12244 = 0.0;
          res.e22244 = 0.0;
          res.e12344 = 0.0;
          res.e22344 = 0.0;
          res.e23344 = 0.0;
          res.e12444 = 0.0;
          res.e22444 = 0.0;
          res.e23444 = 0.0;
          res.e24444 = 0.0;
          break;
        case 2: //  e3
          res.e3 = 0.0;
          res.e13 = 0.0;
          res.e23 = 0.0;
          res.e33 = 0.0;
          res.e34 = 0.0;
          res.e113 = 0.0;
          res.e123 = 0.0;
          res.e223 = 0.0;
          res.e133 = 0.0;
          res.e233 = 0.0;
          res.e333 = 0.0;
          res.e134 = 0.0;
          res.e234 = 0.0;
          res.e334 = 0.0;
          res.e344 = 0.0;
          res.e1113 = 0.0;
          res.e1123 = 0.0;
          res.e1223 = 0.0;
          res.e2223 = 0.0;
          res.e1133 = 0.0;
          res.e1233 = 0.0;
          res.e2233 = 0.0;
          res.e1333 = 0.0;
          res.e2333 = 0.0;
          res.e3333 = 0.0;
          res.e1134 = 0.0;
          res.e1234 = 0.0;
          res.e2234 = 0.0;
          res.e1334 = 0.0;
          res.e2334 = 0.0;
          res.e3334 = 0.0;
          res.e1344 = 0.0;
          res.e2344 = 0.0;
          res.e3344 = 0.0;
          res.e3444 = 0.0;
          res.e11113 = 0.0;
          res.e11123 = 0.0;
          res.e11223 = 0.0;
          res.e12223 = 0.0;
          res.e22223 = 0.0;
          res.e11133 = 0.0;
          res.e11233 = 0.0;
          res.e12233 = 0.0;
          res.e22233 = 0.0;
          res.e11333 = 0.0;
          res.e12333 = 0.0;
          res.e22333 = 0.0;
          res.e13333 = 0.0;
          res.e23333 = 0.0;
          res.e33333 = 0.0;
          res.e11134 = 0.0;
          res.e11234 = 0.0;
          res.e12234 = 0.0;
          res.e22234 = 0.0;
          res.e11334 = 0.0;
          res.e12334 = 0.0;
          res.e22334 = 0.0;
          res.e13334 = 0.0;
          res.e23334 = 0.0;
          res.e33334 = 0.0;
          res.e11344 = 0.0;
          res.e12344 = 0.0;
          res.e22344 = 0.0;
          res.e13344 = 0.0;
          res.e23344 = 0.0;
          res.e33344 = 0.0;
          res.e13444 = 0.0;
          res.e23444 = 0.0;
          res.e33444 = 0.0;
          res.e34444 = 0.0;
          break;
        case 3: //  e4
          res.e4 = 0.0;
          res.e14 = 0.0;
          res.e24 = 0.0;
          res.e34 = 0.0;
          res.e44 = 0.0;
          res.e114 = 0.0;
          res.e124 = 0.0;
          res.e224 = 0.0;
          res.e134 = 0.0;
          res.e234 = 0.0;
          res.e334 = 0.0;
          res.e144 = 0.0;
          res.e244 = 0.0;
          res.e344 = 0.0;
          res.e444 = 0.0;
          res.e1114 = 0.0;
          res.e1124 = 0.0;
          res.e1224 = 0.0;
          res.e2224 = 0.0;
          res.e1134 = 0.0;
          res.e1234 = 0.0;
          res.e2234 = 0.0;
          res.e1334 = 0.0;
          res.e2334 = 0.0;
          res.e3334 = 0.0;
          res.e1144 = 0.0;
          res.e1244 = 0.0;
          res.e2244 = 0.0;
          res.e1344 = 0.0;
          res.e2344 = 0.0;
          res.e3344 = 0.0;
          res.e1444 = 0.0;
          res.e2444 = 0.0;
          res.e3444 = 0.0;
          res.e4444 = 0.0;
          res.e11114 = 0.0;
          res.e11124 = 0.0;
          res.e11224 = 0.0;
          res.e12224 = 0.0;
          res.e22224 = 0.0;
          res.e11134 = 0.0;
          res.e11234 = 0.0;
          res.e12234 = 0.0;
          res.e22234 = 0.0;
          res.e11334 = 0.0;
          res.e12334 = 0.0;
          res.e22334 = 0.0;
          res.e13334 = 0.0;
          res.e23334 = 0.0;
          res.e33334 = 0.0;
          res.e11144 = 0.0;
          res.e11244 = 0.0;
          res.e12244 = 0.0;
          res.e22244 = 0.0;
          res.e11344 = 0.0;
          res.e12344 = 0.0;
          res.e22344 = 0.0;
          res.e13344 = 0.0;
          res.e23344 = 0.0;
          res.e33344 = 0.0;
          res.e11444 = 0.0;
          res.e12444 = 0.0;
          res.e22444 = 0.0;
          res.e13444 = 0.0;
          res.e23444 = 0.0;
          res.e33444 = 0.0;
          res.e14444 = 0.0;
          res.e24444 = 0.0;
          res.e34444 = 0.0;
          res.e44444 = 0.0;
          break;
      }
      break;
    case 2:
      switch (idx){
        case 0: //  e11
          res.e11 = 0.0;
          res.e111 = 0.0;
          res.e112 = 0.0;
          res.e113 = 0.0;
          res.e114 = 0.0;
          res.e1111 = 0.0;
          res.e1112 = 0.0;
          res.e1122 = 0.0;
          res.e1113 = 0.0;
          res.e1123 = 0.0;
          res.e1133 = 0.0;
          res.e1114 = 0.0;
          res.e1124 = 0.0;
          res.e1134 = 0.0;
          res.e1144 = 0.0;
          res.e11111 = 0.0;
          res.e11112 = 0.0;
          res.e11122 = 0.0;
          res.e11222 = 0.0;
          res.e11113 = 0.0;
          res.e11123 = 0.0;
          res.e11223 = 0.0;
          res.e11133 = 0.0;
          res.e11233 = 0.0;
          res.e11333 = 0.0;
          res.e11114 = 0.0;
          res.e11124 = 0.0;
          res.e11224 = 0.0;
          res.e11134 = 0.0;
          res.e11234 = 0.0;
          res.e11334 = 0.0;
          res.e11144 = 0.0;
          res.e11244 = 0.0;
          res.e11344 = 0.0;
          res.e11444 = 0.0;
          break;
        case 1: //  e12
          res.e12 = 0.0;
          res.e112 = 0.0;
          res.e122 = 0.0;
          res.e123 = 0.0;
          res.e124 = 0.0;
          res.e1112 = 0.0;
          res.e1122 = 0.0;
          res.e1222 = 0.0;
          res.e1123 = 0.0;
          res.e1223 = 0.0;
          res.e1233 = 0.0;
          res.e1124 = 0.0;
          res.e1224 = 0.0;
          res.e1234 = 0.0;
          res.e1244 = 0.0;
          res.e11112 = 0.0;
          res.e11122 = 0.0;
          res.e11222 = 0.0;
          res.e12222 = 0.0;
          res.e11123 = 0.0;
          res.e11223 = 0.0;
          res.e12223 = 0.0;
          res.e11233 = 0.0;
          res.e12233 = 0.0;
          res.e12333 = 0.0;
          res.e11124 = 0.0;
          res.e11224 = 0.0;
          res.e12224 = 0.0;
          res.e11234 = 0.0;
          res.e12234 = 0.0;
          res.e12334 = 0.0;
          res.e11244 = 0.0;
          res.e12244 = 0.0;
          res.e12344 = 0.0;
          res.e12444 = 0.0;
          break;
        case 2: //  e22
          res.e22 = 0.0;
          res.e122 = 0.0;
          res.e222 = 0.0;
          res.e223 = 0.0;
          res.e224 = 0.0;
          res.e1122 = 0.0;
          res.e1222 = 0.0;
          res.e2222 = 0.0;
          res.e1223 = 0.0;
          res.e2223 = 0.0;
          res.e2233 = 0.0;
          res.e1224 = 0.0;
          res.e2224 = 0.0;
          res.e2234 = 0.0;
          res.e2244 = 0.0;
          res.e11122 = 0.0;
          res.e11222 = 0.0;
          res.e12222 = 0.0;
          res.e22222 = 0.0;
          res.e11223 = 0.0;
          res.e12223 = 0.0;
          res.e22223 = 0.0;
          res.e12233 = 0.0;
          res.e22233 = 0.0;
          res.e22333 = 0.0;
          res.e11224 = 0.0;
          res.e12224 = 0.0;
          res.e22224 = 0.0;
          res.e12234 = 0.0;
          res.e22234 = 0.0;
          res.e22334 = 0.0;
          res.e12244 = 0.0;
          res.e22244 = 0.0;
          res.e22344 = 0.0;
          res.e22444 = 0.0;
          break;
        case 3: //  e13
          res.e13 = 0.0;
          res.e113 = 0.0;
          res.e123 = 0.0;
          res.e133 = 0.0;
          res.e134 = 0.0;
          res.e1113 = 0.0;
          res.e1123 = 0.0;
          res.e1223 = 0.0;
          res.e1133 = 0.0;
          res.e1233 = 0.0;
          res.e1333 = 0.0;
          res.e1134 = 0.0;
          res.e1234 = 0.0;
          res.e1334 = 0.0;
          res.e1344 = 0.0;
          res.e11113 = 0.0;
          res.e11123 = 0.0;
          res.e11223 = 0.0;
          res.e12223 = 0.0;
          res.e11133 = 0.0;
          res.e11233 = 0.0;
          res.e12233 = 0.0;
          res.e11333 = 0.0;
          res.e12333 = 0.0;
          res.e13333 = 0.0;
          res.e11134 = 0.0;
          res.e11234 = 0.0;
          res.e12234 = 0.0;
          res.e11334 = 0.0;
          res.e12334 = 0.0;
          res.e13334 = 0.0;
          res.e11344 = 0.0;
          res.e12344 = 0.0;
          res.e13344 = 0.0;
          res.e13444 = 0.0;
          break;
        case 4: //  e23
          res.e23 = 0.0;
          res.e123 = 0.0;
          res.e223 = 0.0;
          res.e233 = 0.0;
          res.e234 = 0.0;
          res.e1123 = 0.0;
          res.e1223 = 0.0;
          res.e2223 = 0.0;
          res.e1233 = 0.0;
          res.e2233 = 0.0;
          res.e2333 = 0.0;
          res.e1234 = 0.0;
          res.e2234 = 0.0;
          res.e2334 = 0.0;
          res.e2344 = 0.0;
          res.e11123 = 0.0;
          res.e11223 = 0.0;
          res.e12223 = 0.0;
          res.e22223 = 0.0;
          res.e11233 = 0.0;
          res.e12233 = 0.0;
          res.e22233 = 0.0;
          res.e12333 = 0.0;
          res.e22333 = 0.0;
          res.e23333 = 0.0;
          res.e11234 = 0.0;
          res.e12234 = 0.0;
          res.e22234 = 0.0;
          res.e12334 = 0.0;
          res.e22334 = 0.0;
          res.e23334 = 0.0;
          res.e12344 = 0.0;
          res.e22344 = 0.0;
          res.e23344 = 0.0;
          res.e23444 = 0.0;
          break;
        case 5: //  e33
          res.e33 = 0.0;
          res.e133 = 0.0;
          res.e233 = 0.0;
          res.e333 = 0.0;
          res.e334 = 0.0;
          res.e1133 = 0.0;
          res.e1233 = 0.0;
          res.e2233 = 0.0;
          res.e1333 = 0.0;
          res.e2333 = 0.0;
          res.e3333 = 0.0;
          res.e1334 = 0.0;
          res.e2334 = 0.0;
          res.e3334 = 0.0;
          res.e3344 = 0.0;
          res.e11133 = 0.0;
          res.e11233 = 0.0;
          res.e12233 = 0.0;
          res.e22233 = 0.0;
          res.e11333 = 0.0;
          res.e12333 = 0.0;
          res.e22333 = 0.0;
          res.e13333 = 0.0;
          res.e23333 = 0.0;
          res.e33333 = 0.0;
          res.e11334 = 0.0;
          res.e12334 = 0.0;
          res.e22334 = 0.0;
          res.e13334 = 0.0;
          res.e23334 = 0.0;
          res.e33334 = 0.0;
          res.e13344 = 0.0;
          res.e23344 = 0.0;
          res.e33344 = 0.0;
          res.e33444 = 0.0;
          break;
        case 6: //  e14
          res.e14 = 0.0;
          res.e114 = 0.0;
          res.e124 = 0.0;
          res.e134 = 0.0;
          res.e144 = 0.0;
          res.e1114 = 0.0;
          res.e1124 = 0.0;
          res.e1224 = 0.0;
          res.e1134 = 0.0;
          res.e1234 = 0.0;
          res.e1334 = 0.0;
          res.e1144 = 0.0;
          res.e1244 = 0.0;
          res.e1344 = 0.0;
          res.e1444 = 0.0;
          res.e11114 = 0.0;
          res.e11124 = 0.0;
          res.e11224 = 0.0;
          res.e12224 = 0.0;
          res.e11134 = 0.0;
          res.e11234 = 0.0;
          res.e12234 = 0.0;
          res.e11334 = 0.0;
          res.e12334 = 0.0;
          res.e13334 = 0.0;
          res.e11144 = 0.0;
          res.e11244 = 0.0;
          res.e12244 = 0.0;
          res.e11344 = 0.0;
          res.e12344 = 0.0;
          res.e13344 = 0.0;
          res.e11444 = 0.0;
          res.e12444 = 0.0;
          res.e13444 = 0.0;
          res.e14444 = 0.0;
          break;
        case 7: //  e24
          res.e24 = 0.0;
          res.e124 = 0.0;
          res.e224 = 0.0;
          res.e234 = 0.0;
          res.e244 = 0.0;
          res.e1124 = 0.0;
          res.e1224 = 0.0;
          res.e2224 = 0.0;
          res.e1234 = 0.0;
          res.e2234 = 0.0;
          res.e2334 = 0.0;
          res.e1244 = 0.0;
          res.e2244 = 0.0;
          res.e2344 = 0.0;
          res.e2444 = 0.0;
          res.e11124 = 0.0;
          res.e11224 = 0.0;
          res.e12224 = 0.0;
          res.e22224 = 0.0;
          res.e11234 = 0.0;
          res.e12234 = 0.0;
          res.e22234 = 0.0;
          res.e12334 = 0.0;
          res.e22334 = 0.0;
          res.e23334 = 0.0;
          res.e11244 = 0.0;
          res.e12244 = 0.0;
          res.e22244 = 0.0;
          res.e12344 = 0.0;
          res.e22344 = 0.0;
          res.e23344 = 0.0;
          res.e12444 = 0.0;
          res.e22444 = 0.0;
          res.e23444 = 0.0;
          res.e24444 = 0.0;
          break;
        case 8: //  e34
          res.e34 = 0.0;
          res.e134 = 0.0;
          res.e234 = 0.0;
          res.e334 = 0.0;
          res.e344 = 0.0;
          res.e1134 = 0.0;
          res.e1234 = 0.0;
          res.e2234 = 0.0;
          res.e1334 = 0.0;
          res.e2334 = 0.0;
          res.e3334 = 0.0;
          res.e1344 = 0.0;
          res.e2344 = 0.0;
          res.e3344 = 0.0;
          res.e3444 = 0.0;
          res.e11134 = 0.0;
          res.e11234 = 0.0;
          res.e12234 = 0.0;
          res.e22234 = 0.0;
          res.e11334 = 0.0;
          res.e12334 = 0.0;
          res.e22334 = 0.0;
          res.e13334 = 0.0;
          res.e23334 = 0.0;
          res.e33334 = 0.0;
          res.e11344 = 0.0;
          res.e12344 = 0.0;
          res.e22344 = 0.0;
          res.e13344 = 0.0;
          res.e23344 = 0.0;
          res.e33344 = 0.0;
          res.e13444 = 0.0;
          res.e23444 = 0.0;
          res.e33444 = 0.0;
          res.e34444 = 0.0;
          break;
        case 9: //  e44
          res.e44 = 0.0;
          res.e144 = 0.0;
          res.e244 = 0.0;
          res.e344 = 0.0;
          res.e444 = 0.0;
          res.e1144 = 0.0;
          res.e1244 = 0.0;
          res.e2244 = 0.0;
          res.e1344 = 0.0;
          res.e2344 = 0.0;
          res.e3344 = 0.0;
          res.e1444 = 0.0;
          res.e2444 = 0.0;
          res.e3444 = 0.0;
          res.e4444 = 0.0;
          res.e11144 = 0.0;
          res.e11244 = 0.0;
          res.e12244 = 0.0;
          res.e22244 = 0.0;
          res.e11344 = 0.0;
          res.e12344 = 0.0;
          res.e22344 = 0.0;
          res.e13344 = 0.0;
          res.e23344 = 0.0;
          res.e33344 = 0.0;
          res.e11444 = 0.0;
          res.e12444 = 0.0;
          res.e22444 = 0.0;
          res.e13444 = 0.0;
          res.e23444 = 0.0;
          res.e33444 = 0.0;
          res.e14444 = 0.0;
          res.e24444 = 0.0;
          res.e34444 = 0.0;
          res.e44444 = 0.0;
          break;
      }
      break;
    case 3:
      switch (idx){
        case 0: //  e111
          res.e111 = 0.0;
          res.e1111 = 0.0;
          res.e1112 = 0.0;
          res.e1113 = 0.0;
          res.e1114 = 0.0;
          res.e11111 = 0.0;
          res.e11112 = 0.0;
          res.e11122 = 0.0;
          res.e11113 = 0.0;
          res.e11123 = 0.0;
          res.e11133 = 0.0;
          res.e11114 = 0.0;
          res.e11124 = 0.0;
          res.e11134 = 0.0;
          res.e11144 = 0.0;
          break;
        case 1: //  e112
          res.e112 = 0.0;
          res.e1112 = 0.0;
          res.e1122 = 0.0;
          res.e1123 = 0.0;
          res.e1124 = 0.0;
          res.e11112 = 0.0;
          res.e11122 = 0.0;
          res.e11222 = 0.0;
          res.e11123 = 0.0;
          res.e11223 = 0.0;
          res.e11233 = 0.0;
          res.e11124 = 0.0;
          res.e11224 = 0.0;
          res.e11234 = 0.0;
          res.e11244 = 0.0;
          break;
        case 2: //  e122
          res.e122 = 0.0;
          res.e1122 = 0.0;
          res.e1222 = 0.0;
          res.e1223 = 0.0;
          res.e1224 = 0.0;
          res.e11122 = 0.0;
          res.e11222 = 0.0;
          res.e12222 = 0.0;
          res.e11223 = 0.0;
          res.e12223 = 0.0;
          res.e12233 = 0.0;
          res.e11224 = 0.0;
          res.e12224 = 0.0;
          res.e12234 = 0.0;
          res.e12244 = 0.0;
          break;
        case 3: //  e222
          res.e222 = 0.0;
          res.e1222 = 0.0;
          res.e2222 = 0.0;
          res.e2223 = 0.0;
          res.e2224 = 0.0;
          res.e11222 = 0.0;
          res.e12222 = 0.0;
          res.e22222 = 0.0;
          res.e12223 = 0.0;
          res.e22223 = 0.0;
          res.e22233 = 0.0;
          res.e12224 = 0.0;
          res.e22224 = 0.0;
          res.e22234 = 0.0;
          res.e22244 = 0.0;
          break;
        case 4: //  e113
          res.e113 = 0.0;
          res.e1113 = 0.0;
          res.e1123 = 0.0;
          res.e1133 = 0.0;
          res.e1134 = 0.0;
          res.e11113 = 0.0;
          res.e11123 = 0.0;
          res.e11223 = 0.0;
          res.e11133 = 0.0;
          res.e11233 = 0.0;
          res.e11333 = 0.0;
          res.e11134 = 0.0;
          res.e11234 = 0.0;
          res.e11334 = 0.0;
          res.e11344 = 0.0;
          break;
        case 5: //  e123
          res.e123 = 0.0;
          res.e1123 = 0.0;
          res.e1223 = 0.0;
          res.e1233 = 0.0;
          res.e1234 = 0.0;
          res.e11123 = 0.0;
          res.e11223 = 0.0;
          res.e12223 = 0.0;
          res.e11233 = 0.0;
          res.e12233 = 0.0;
          res.e12333 = 0.0;
          res.e11234 = 0.0;
          res.e12234 = 0.0;
          res.e12334 = 0.0;
          res.e12344 = 0.0;
          break;
        case 6: //  e223
          res.e223 = 0.0;
          res.e1223 = 0.0;
          res.e2223 = 0.0;
          res.e2233 = 0.0;
          res.e2234 = 0.0;
          res.e11223 = 0.0;
          res.e12223 = 0.0;
          res.e22223 = 0.0;
          res.e12233 = 0.0;
          res.e22233 = 0.0;
          res.e22333 = 0.0;
          res.e12234 = 0.0;
          res.e22234 = 0.0;
          res.e22334 = 0.0;
          res.e22344 = 0.0;
          break;
        case 7: //  e133
          res.e133 = 0.0;
          res.e1133 = 0.0;
          res.e1233 = 0.0;
          res.e1333 = 0.0;
          res.e1334 = 0.0;
          res.e11133 = 0.0;
          res.e11233 = 0.0;
          res.e12233 = 0.0;
          res.e11333 = 0.0;
          res.e12333 = 0.0;
          res.e13333 = 0.0;
          res.e11334 = 0.0;
          res.e12334 = 0.0;
          res.e13334 = 0.0;
          res.e13344 = 0.0;
          break;
        case 8: //  e233
          res.e233 = 0.0;
          res.e1233 = 0.0;
          res.e2233 = 0.0;
          res.e2333 = 0.0;
          res.e2334 = 0.0;
          res.e11233 = 0.0;
          res.e12233 = 0.0;
          res.e22233 = 0.0;
          res.e12333 = 0.0;
          res.e22333 = 0.0;
          res.e23333 = 0.0;
          res.e12334 = 0.0;
          res.e22334 = 0.0;
          res.e23334 = 0.0;
          res.e23344 = 0.0;
          break;
        case 9: //  e333
          res.e333 = 0.0;
          res.e1333 = 0.0;
          res.e2333 = 0.0;
          res.e3333 = 0.0;
          res.e3334 = 0.0;
          res.e11333 = 0.0;
          res.e12333 = 0.0;
          res.e22333 = 0.0;
          res.e13333 = 0.0;
          res.e23333 = 0.0;
          res.e33333 = 0.0;
          res.e13334 = 0.0;
          res.e23334 = 0.0;
          res.e33334 = 0.0;
          res.e33344 = 0.0;
          break;
        case 10: //  e114
          res.e114 = 0.0;
          res.e1114 = 0.0;
          res.e1124 = 0.0;
          res.e1134 = 0.0;
          res.e1144 = 0.0;
          res.e11114 = 0.0;
          res.e11124 = 0.0;
          res.e11224 = 0.0;
          res.e11134 = 0.0;
          res.e11234 = 0.0;
          res.e11334 = 0.0;
          res.e11144 = 0.0;
          res.e11244 = 0.0;
          res.e11344 = 0.0;
          res.e11444 = 0.0;
          break;
        case 11: //  e124
          res.e124 = 0.0;
          res.e1124 = 0.0;
          res.e1224 = 0.0;
          res.e1234 = 0.0;
          res.e1244 = 0.0;
          res.e11124 = 0.0;
          res.e11224 = 0.0;
          res.e12224 = 0.0;
          res.e11234 = 0.0;
          res.e12234 = 0.0;
          res.e12334 = 0.0;
          res.e11244 = 0.0;
          res.e12244 = 0.0;
          res.e12344 = 0.0;
          res.e12444 = 0.0;
          break;
        case 12: //  e224
          res.e224 = 0.0;
          res.e1224 = 0.0;
          res.e2224 = 0.0;
          res.e2234 = 0.0;
          res.e2244 = 0.0;
          res.e11224 = 0.0;
          res.e12224 = 0.0;
          res.e22224 = 0.0;
          res.e12234 = 0.0;
          res.e22234 = 0.0;
          res.e22334 = 0.0;
          res.e12244 = 0.0;
          res.e22244 = 0.0;
          res.e22344 = 0.0;
          res.e22444 = 0.0;
          break;
        case 13: //  e134
          res.e134 = 0.0;
          res.e1134 = 0.0;
          res.e1234 = 0.0;
          res.e1334 = 0.0;
          res.e1344 = 0.0;
          res.e11134 = 0.0;
          res.e11234 = 0.0;
          res.e12234 = 0.0;
          res.e11334 = 0.0;
          res.e12334 = 0.0;
          res.e13334 = 0.0;
          res.e11344 = 0.0;
          res.e12344 = 0.0;
          res.e13344 = 0.0;
          res.e13444 = 0.0;
          break;
        case 14: //  e234
          res.e234 = 0.0;
          res.e1234 = 0.0;
          res.e2234 = 0.0;
          res.e2334 = 0.0;
          res.e2344 = 0.0;
          res.e11234 = 0.0;
          res.e12234 = 0.0;
          res.e22234 = 0.0;
          res.e12334 = 0.0;
          res.e22334 = 0.0;
          res.e23334 = 0.0;
          res.e12344 = 0.0;
          res.e22344 = 0.0;
          res.e23344 = 0.0;
          res.e23444 = 0.0;
          break;
        case 15: //  e334
          res.e334 = 0.0;
          res.e1334 = 0.0;
          res.e2334 = 0.0;
          res.e3334 = 0.0;
          res.e3344 = 0.0;
          res.e11334 = 0.0;
          res.e12334 = 0.0;
          res.e22334 = 0.0;
          res.e13334 = 0.0;
          res.e23334 = 0.0;
          res.e33334 = 0.0;
          res.e13344 = 0.0;
          res.e23344 = 0.0;
          res.e33344 = 0.0;
          res.e33444 = 0.0;
          break;
        case 16: //  e144
          res.e144 = 0.0;
          res.e1144 = 0.0;
          res.e1244 = 0.0;
          res.e1344 = 0.0;
          res.e1444 = 0.0;
          res.e11144 = 0.0;
          res.e11244 = 0.0;
          res.e12244 = 0.0;
          res.e11344 = 0.0;
          res.e12344 = 0.0;
          res.e13344 = 0.0;
          res.e11444 = 0.0;
          res.e12444 = 0.0;
          res.e13444 = 0.0;
          res.e14444 = 0.0;
          break;
        case 17: //  e244
          res.e244 = 0.0;
          res.e1244 = 0.0;
          res.e2244 = 0.0;
          res.e2344 = 0.0;
          res.e2444 = 0.0;
          res.e11244 = 0.0;
          res.e12244 = 0.0;
          res.e22244 = 0.0;
          res.e12344 = 0.0;
          res.e22344 = 0.0;
          res.e23344 = 0.0;
          res.e12444 = 0.0;
          res.e22444 = 0.0;
          res.e23444 = 0.0;
          res.e24444 = 0.0;
          break;
        case 18: //  e344
          res.e344 = 0.0;
          res.e1344 = 0.0;
          res.e2344 = 0.0;
          res.e3344 = 0.0;
          res.e3444 = 0.0;
          res.e11344 = 0.0;
          res.e12344 = 0.0;
          res.e22344 = 0.0;
          res.e13344 = 0.0;
          res.e23344 = 0.0;
          res.e33344 = 0.0;
          res.e13444 = 0.0;
          res.e23444 = 0.0;
          res.e33444 = 0.0;
          res.e34444 = 0.0;
          break;
        case 19: //  e444
          res.e444 = 0.0;
          res.e1444 = 0.0;
          res.e2444 = 0.0;
          res.e3444 = 0.0;
          res.e4444 = 0.0;
          res.e11444 = 0.0;
          res.e12444 = 0.0;
          res.e22444 = 0.0;
          res.e13444 = 0.0;
          res.e23444 = 0.0;
          res.e33444 = 0.0;
          res.e14444 = 0.0;
          res.e24444 = 0.0;
          res.e34444 = 0.0;
          res.e44444 = 0.0;
          break;
      }
      break;
    case 4:
      switch (idx){
        case 0: //  e1111
          res.e1111 = 0.0;
          res.e11111 = 0.0;
          res.e11112 = 0.0;
          res.e11113 = 0.0;
          res.e11114 = 0.0;
          break;
        case 1: //  e1112
          res.e1112 = 0.0;
          res.e11112 = 0.0;
          res.e11122 = 0.0;
          res.e11123 = 0.0;
          res.e11124 = 0.0;
          break;
        case 2: //  e1122
          res.e1122 = 0.0;
          res.e11122 = 0.0;
          res.e11222 = 0.0;
          res.e11223 = 0.0;
          res.e11224 = 0.0;
          break;
        case 3: //  e1222
          res.e1222 = 0.0;
          res.e11222 = 0.0;
          res.e12222 = 0.0;
          res.e12223 = 0.0;
          res.e12224 = 0.0;
          break;
        case 4: //  e2222
          res.e2222 = 0.0;
          res.e12222 = 0.0;
          res.e22222 = 0.0;
          res.e22223 = 0.0;
          res.e22224 = 0.0;
          break;
        case 5: //  e1113
          res.e1113 = 0.0;
          res.e11113 = 0.0;
          res.e11123 = 0.0;
          res.e11133 = 0.0;
          res.e11134 = 0.0;
          break;
        case 6: //  e1123
          res.e1123 = 0.0;
          res.e11123 = 0.0;
          res.e11223 = 0.0;
          res.e11233 = 0.0;
          res.e11234 = 0.0;
          break;
        case 7: //  e1223
          res.e1223 = 0.0;
          res.e11223 = 0.0;
          res.e12223 = 0.0;
          res.e12233 = 0.0;
          res.e12234 = 0.0;
          break;
        case 8: //  e2223
          res.e2223 = 0.0;
          res.e12223 = 0.0;
          res.e22223 = 0.0;
          res.e22233 = 0.0;
          res.e22234 = 0.0;
          break;
        case 9: //  e1133
          res.e1133 = 0.0;
          res.e11133 = 0.0;
          res.e11233 = 0.0;
          res.e11333 = 0.0;
          res.e11334 = 0.0;
          break;
        case 10: //  e1233
          res.e1233 = 0.0;
          res.e11233 = 0.0;
          res.e12233 = 0.0;
          res.e12333 = 0.0;
          res.e12334 = 0.0;
          break;
        case 11: //  e2233
          res.e2233 = 0.0;
          res.e12233 = 0.0;
          res.e22233 = 0.0;
          res.e22333 = 0.0;
          res.e22334 = 0.0;
          break;
        case 12: //  e1333
          res.e1333 = 0.0;
          res.e11333 = 0.0;
          res.e12333 = 0.0;
          res.e13333 = 0.0;
          res.e13334 = 0.0;
          break;
        case 13: //  e2333
          res.e2333 = 0.0;
          res.e12333 = 0.0;
          res.e22333 = 0.0;
          res.e23333 = 0.0;
          res.e23334 = 0.0;
          break;
        case 14: //  e3333
          res.e3333 = 0.0;
          res.e13333 = 0.0;
          res.e23333 = 0.0;
          res.e33333 = 0.0;
          res.e33334 = 0.0;
          break;
        case 15: //  e1114
          res.e1114 = 0.0;
          res.e11114 = 0.0;
          res.e11124 = 0.0;
          res.e11134 = 0.0;
          res.e11144 = 0.0;
          break;
        case 16: //  e1124
          res.e1124 = 0.0;
          res.e11124 = 0.0;
          res.e11224 = 0.0;
          res.e11234 = 0.0;
          res.e11244 = 0.0;
          break;
        case 17: //  e1224
          res.e1224 = 0.0;
          res.e11224 = 0.0;
          res.e12224 = 0.0;
          res.e12234 = 0.0;
          res.e12244 = 0.0;
          break;
        case 18: //  e2224
          res.e2224 = 0.0;
          res.e12224 = 0.0;
          res.e22224 = 0.0;
          res.e22234 = 0.0;
          res.e22244 = 0.0;
          break;
        case 19: //  e1134
          res.e1134 = 0.0;
          res.e11134 = 0.0;
          res.e11234 = 0.0;
          res.e11334 = 0.0;
          res.e11344 = 0.0;
          break;
        case 20: //  e1234
          res.e1234 = 0.0;
          res.e11234 = 0.0;
          res.e12234 = 0.0;
          res.e12334 = 0.0;
          res.e12344 = 0.0;
          break;
        case 21: //  e2234
          res.e2234 = 0.0;
          res.e12234 = 0.0;
          res.e22234 = 0.0;
          res.e22334 = 0.0;
          res.e22344 = 0.0;
          break;
        case 22: //  e1334
          res.e1334 = 0.0;
          res.e11334 = 0.0;
          res.e12334 = 0.0;
          res.e13334 = 0.0;
          res.e13344 = 0.0;
          break;
        case 23: //  e2334
          res.e2334 = 0.0;
          res.e12334 = 0.0;
          res.e22334 = 0.0;
          res.e23334 = 0.0;
          res.e23344 = 0.0;
          break;
        case 24: //  e3334
          res.e3334 = 0.0;
          res.e13334 = 0.0;
          res.e23334 = 0.0;
          res.e33334 = 0.0;
          res.e33344 = 0.0;
          break;
        case 25: //  e1144
          res.e1144 = 0.0;
          res.e11144 = 0.0;
          res.e11244 = 0.0;
          res.e11344 = 0.0;
          res.e11444 = 0.0;
          break;
        case 26: //  e1244
          res.e1244 = 0.0;
          res.e11244 = 0.0;
          res.e12244 = 0.0;
          res.e12344 = 0.0;
          res.e12444 = 0.0;
          break;
        case 27: //  e2244
          res.e2244 = 0.0;
          res.e12244 = 0.0;
          res.e22244 = 0.0;
          res.e22344 = 0.0;
          res.e22444 = 0.0;
          break;
        case 28: //  e1344
          res.e1344 = 0.0;
          res.e11344 = 0.0;
          res.e12344 = 0.0;
          res.e13344 = 0.0;
          res.e13444 = 0.0;
          break;
        case 29: //  e2344
          res.e2344 = 0.0;
          res.e12344 = 0.0;
          res.e22344 = 0.0;
          res.e23344 = 0.0;
          res.e23444 = 0.0;
          break;
        case 30: //  e3344
          res.e3344 = 0.0;
          res.e13344 = 0.0;
          res.e23344 = 0.0;
          res.e33344 = 0.0;
          res.e33444 = 0.0;
          break;
        case 31: //  e1444
          res.e1444 = 0.0;
          res.e11444 = 0.0;
          res.e12444 = 0.0;
          res.e13444 = 0.0;
          res.e14444 = 0.0;
          break;
        case 32: //  e2444
          res.e2444 = 0.0;
          res.e12444 = 0.0;
          res.e22444 = 0.0;
          res.e23444 = 0.0;
          res.e24444 = 0.0;
          break;
        case 33: //  e3444
          res.e3444 = 0.0;
          res.e13444 = 0.0;
          res.e23444 = 0.0;
          res.e33444 = 0.0;
          res.e34444 = 0.0;
          break;
        case 34: //  e4444
          res.e4444 = 0.0;
          res.e14444 = 0.0;
          res.e24444 = 0.0;
          res.e34444 = 0.0;
          res.e44444 = 0.0;
          break;
      }
      break;
    case 5:
      switch (idx){
        case 0: //  e11111
          res.e11111 = 0.0;
          break;
        case 1: //  e11112
          res.e11112 = 0.0;
          break;
        case 2: //  e11122
          res.e11122 = 0.0;
          break;
        case 3: //  e11222
          res.e11222 = 0.0;
          break;
        case 4: //  e12222
          res.e12222 = 0.0;
          break;
        case 5: //  e22222
          res.e22222 = 0.0;
          break;
        case 6: //  e11113
          res.e11113 = 0.0;
          break;
        case 7: //  e11123
          res.e11123 = 0.0;
          break;
        case 8: //  e11223
          res.e11223 = 0.0;
          break;
        case 9: //  e12223
          res.e12223 = 0.0;
          break;
        case 10: //  e22223
          res.e22223 = 0.0;
          break;
        case 11: //  e11133
          res.e11133 = 0.0;
          break;
        case 12: //  e11233
          res.e11233 = 0.0;
          break;
        case 13: //  e12233
          res.e12233 = 0.0;
          break;
        case 14: //  e22233
          res.e22233 = 0.0;
          break;
        case 15: //  e11333
          res.e11333 = 0.0;
          break;
        case 16: //  e12333
          res.e12333 = 0.0;
          break;
        case 17: //  e22333
          res.e22333 = 0.0;
          break;
        case 18: //  e13333
          res.e13333 = 0.0;
          break;
        case 19: //  e23333
          res.e23333 = 0.0;
          break;
        case 20: //  e33333
          res.e33333 = 0.0;
          break;
        case 21: //  e11114
          res.e11114 = 0.0;
          break;
        case 22: //  e11124
          res.e11124 = 0.0;
          break;
        case 23: //  e11224
          res.e11224 = 0.0;
          break;
        case 24: //  e12224
          res.e12224 = 0.0;
          break;
        case 25: //  e22224
          res.e22224 = 0.0;
          break;
        case 26: //  e11134
          res.e11134 = 0.0;
          break;
        case 27: //  e11234
          res.e11234 = 0.0;
          break;
        case 28: //  e12234
          res.e12234 = 0.0;
          break;
        case 29: //  e22234
          res.e22234 = 0.0;
          break;
        case 30: //  e11334
          res.e11334 = 0.0;
          break;
        case 31: //  e12334
          res.e12334 = 0.0;
          break;
        case 32: //  e22334
          res.e22334 = 0.0;
          break;
        case 33: //  e13334
          res.e13334 = 0.0;
          break;
        case 34: //  e23334
          res.e23334 = 0.0;
          break;
        case 35: //  e33334
          res.e33334 = 0.0;
          break;
        case 36: //  e11144
          res.e11144 = 0.0;
          break;
        case 37: //  e11244
          res.e11244 = 0.0;
          break;
        case 38: //  e12244
          res.e12244 = 0.0;
          break;
        case 39: //  e22244
          res.e22244 = 0.0;
          break;
        case 40: //  e11344
          res.e11344 = 0.0;
          break;
        case 41: //  e12344
          res.e12344 = 0.0;
          break;
        case 42: //  e22344
          res.e22344 = 0.0;
          break;
        case 43: //  e13344
          res.e13344 = 0.0;
          break;
        case 44: //  e23344
          res.e23344 = 0.0;
          break;
        case 45: //  e33344
          res.e33344 = 0.0;
          break;
        case 46: //  e11444
          res.e11444 = 0.0;
          break;
        case 47: //  e12444
          res.e12444 = 0.0;
          break;
        case 48: //  e22444
          res.e22444 = 0.0;
          break;
        case 49: //  e13444
          res.e13444 = 0.0;
          break;
        case 50: //  e23444
          res.e23444 = 0.0;
          break;
        case 51: //  e33444
          res.e33444 = 0.0;
          break;
        case 52: //  e14444
          res.e14444 = 0.0;
          break;
        case 53: //  e24444
          res.e24444 = 0.0;
          break;
        case 54: //  e34444
          res.e34444 = 0.0;
          break;
        case 55: //  e44444
          res.e44444 = 0.0;
          break;
      }
      break;
  }
  return res;

}

void onumm4n5_truncate_im_to(imdir_t idx, ord_t order, onumm4n5_t* lhs, onumm4n5_t* res){

  // Copy number.
  *res = (*lhs);
  // Truncate all other values when necessary.
  // Real;
  switch (order){
    case 0:
      *res = onumm4n5_init();
      break;
    case 1:
      switch (idx){
        case 0: //  e1
          res->e1 = 0.0;
          res->e11 = 0.0;
          res->e12 = 0.0;
          res->e13 = 0.0;
          res->e14 = 0.0;
          res->e111 = 0.0;
          res->e112 = 0.0;
          res->e122 = 0.0;
          res->e113 = 0.0;
          res->e123 = 0.0;
          res->e133 = 0.0;
          res->e114 = 0.0;
          res->e124 = 0.0;
          res->e134 = 0.0;
          res->e144 = 0.0;
          res->e1111 = 0.0;
          res->e1112 = 0.0;
          res->e1122 = 0.0;
          res->e1222 = 0.0;
          res->e1113 = 0.0;
          res->e1123 = 0.0;
          res->e1223 = 0.0;
          res->e1133 = 0.0;
          res->e1233 = 0.0;
          res->e1333 = 0.0;
          res->e1114 = 0.0;
          res->e1124 = 0.0;
          res->e1224 = 0.0;
          res->e1134 = 0.0;
          res->e1234 = 0.0;
          res->e1334 = 0.0;
          res->e1144 = 0.0;
          res->e1244 = 0.0;
          res->e1344 = 0.0;
          res->e1444 = 0.0;
          res->e11111 = 0.0;
          res->e11112 = 0.0;
          res->e11122 = 0.0;
          res->e11222 = 0.0;
          res->e12222 = 0.0;
          res->e11113 = 0.0;
          res->e11123 = 0.0;
          res->e11223 = 0.0;
          res->e12223 = 0.0;
          res->e11133 = 0.0;
          res->e11233 = 0.0;
          res->e12233 = 0.0;
          res->e11333 = 0.0;
          res->e12333 = 0.0;
          res->e13333 = 0.0;
          res->e11114 = 0.0;
          res->e11124 = 0.0;
          res->e11224 = 0.0;
          res->e12224 = 0.0;
          res->e11134 = 0.0;
          res->e11234 = 0.0;
          res->e12234 = 0.0;
          res->e11334 = 0.0;
          res->e12334 = 0.0;
          res->e13334 = 0.0;
          res->e11144 = 0.0;
          res->e11244 = 0.0;
          res->e12244 = 0.0;
          res->e11344 = 0.0;
          res->e12344 = 0.0;
          res->e13344 = 0.0;
          res->e11444 = 0.0;
          res->e12444 = 0.0;
          res->e13444 = 0.0;
          res->e14444 = 0.0;
          break;
        case 1: //  e2
          res->e2 = 0.0;
          res->e12 = 0.0;
          res->e22 = 0.0;
          res->e23 = 0.0;
          res->e24 = 0.0;
          res->e112 = 0.0;
          res->e122 = 0.0;
          res->e222 = 0.0;
          res->e123 = 0.0;
          res->e223 = 0.0;
          res->e233 = 0.0;
          res->e124 = 0.0;
          res->e224 = 0.0;
          res->e234 = 0.0;
          res->e244 = 0.0;
          res->e1112 = 0.0;
          res->e1122 = 0.0;
          res->e1222 = 0.0;
          res->e2222 = 0.0;
          res->e1123 = 0.0;
          res->e1223 = 0.0;
          res->e2223 = 0.0;
          res->e1233 = 0.0;
          res->e2233 = 0.0;
          res->e2333 = 0.0;
          res->e1124 = 0.0;
          res->e1224 = 0.0;
          res->e2224 = 0.0;
          res->e1234 = 0.0;
          res->e2234 = 0.0;
          res->e2334 = 0.0;
          res->e1244 = 0.0;
          res->e2244 = 0.0;
          res->e2344 = 0.0;
          res->e2444 = 0.0;
          res->e11112 = 0.0;
          res->e11122 = 0.0;
          res->e11222 = 0.0;
          res->e12222 = 0.0;
          res->e22222 = 0.0;
          res->e11123 = 0.0;
          res->e11223 = 0.0;
          res->e12223 = 0.0;
          res->e22223 = 0.0;
          res->e11233 = 0.0;
          res->e12233 = 0.0;
          res->e22233 = 0.0;
          res->e12333 = 0.0;
          res->e22333 = 0.0;
          res->e23333 = 0.0;
          res->e11124 = 0.0;
          res->e11224 = 0.0;
          res->e12224 = 0.0;
          res->e22224 = 0.0;
          res->e11234 = 0.0;
          res->e12234 = 0.0;
          res->e22234 = 0.0;
          res->e12334 = 0.0;
          res->e22334 = 0.0;
          res->e23334 = 0.0;
          res->e11244 = 0.0;
          res->e12244 = 0.0;
          res->e22244 = 0.0;
          res->e12344 = 0.0;
          res->e22344 = 0.0;
          res->e23344 = 0.0;
          res->e12444 = 0.0;
          res->e22444 = 0.0;
          res->e23444 = 0.0;
          res->e24444 = 0.0;
          break;
        case 2: //  e3
          res->e3 = 0.0;
          res->e13 = 0.0;
          res->e23 = 0.0;
          res->e33 = 0.0;
          res->e34 = 0.0;
          res->e113 = 0.0;
          res->e123 = 0.0;
          res->e223 = 0.0;
          res->e133 = 0.0;
          res->e233 = 0.0;
          res->e333 = 0.0;
          res->e134 = 0.0;
          res->e234 = 0.0;
          res->e334 = 0.0;
          res->e344 = 0.0;
          res->e1113 = 0.0;
          res->e1123 = 0.0;
          res->e1223 = 0.0;
          res->e2223 = 0.0;
          res->e1133 = 0.0;
          res->e1233 = 0.0;
          res->e2233 = 0.0;
          res->e1333 = 0.0;
          res->e2333 = 0.0;
          res->e3333 = 0.0;
          res->e1134 = 0.0;
          res->e1234 = 0.0;
          res->e2234 = 0.0;
          res->e1334 = 0.0;
          res->e2334 = 0.0;
          res->e3334 = 0.0;
          res->e1344 = 0.0;
          res->e2344 = 0.0;
          res->e3344 = 0.0;
          res->e3444 = 0.0;
          res->e11113 = 0.0;
          res->e11123 = 0.0;
          res->e11223 = 0.0;
          res->e12223 = 0.0;
          res->e22223 = 0.0;
          res->e11133 = 0.0;
          res->e11233 = 0.0;
          res->e12233 = 0.0;
          res->e22233 = 0.0;
          res->e11333 = 0.0;
          res->e12333 = 0.0;
          res->e22333 = 0.0;
          res->e13333 = 0.0;
          res->e23333 = 0.0;
          res->e33333 = 0.0;
          res->e11134 = 0.0;
          res->e11234 = 0.0;
          res->e12234 = 0.0;
          res->e22234 = 0.0;
          res->e11334 = 0.0;
          res->e12334 = 0.0;
          res->e22334 = 0.0;
          res->e13334 = 0.0;
          res->e23334 = 0.0;
          res->e33334 = 0.0;
          res->e11344 = 0.0;
          res->e12344 = 0.0;
          res->e22344 = 0.0;
          res->e13344 = 0.0;
          res->e23344 = 0.0;
          res->e33344 = 0.0;
          res->e13444 = 0.0;
          res->e23444 = 0.0;
          res->e33444 = 0.0;
          res->e34444 = 0.0;
          break;
        case 3: //  e4
          res->e4 = 0.0;
          res->e14 = 0.0;
          res->e24 = 0.0;
          res->e34 = 0.0;
          res->e44 = 0.0;
          res->e114 = 0.0;
          res->e124 = 0.0;
          res->e224 = 0.0;
          res->e134 = 0.0;
          res->e234 = 0.0;
          res->e334 = 0.0;
          res->e144 = 0.0;
          res->e244 = 0.0;
          res->e344 = 0.0;
          res->e444 = 0.0;
          res->e1114 = 0.0;
          res->e1124 = 0.0;
          res->e1224 = 0.0;
          res->e2224 = 0.0;
          res->e1134 = 0.0;
          res->e1234 = 0.0;
          res->e2234 = 0.0;
          res->e1334 = 0.0;
          res->e2334 = 0.0;
          res->e3334 = 0.0;
          res->e1144 = 0.0;
          res->e1244 = 0.0;
          res->e2244 = 0.0;
          res->e1344 = 0.0;
          res->e2344 = 0.0;
          res->e3344 = 0.0;
          res->e1444 = 0.0;
          res->e2444 = 0.0;
          res->e3444 = 0.0;
          res->e4444 = 0.0;
          res->e11114 = 0.0;
          res->e11124 = 0.0;
          res->e11224 = 0.0;
          res->e12224 = 0.0;
          res->e22224 = 0.0;
          res->e11134 = 0.0;
          res->e11234 = 0.0;
          res->e12234 = 0.0;
          res->e22234 = 0.0;
          res->e11334 = 0.0;
          res->e12334 = 0.0;
          res->e22334 = 0.0;
          res->e13334 = 0.0;
          res->e23334 = 0.0;
          res->e33334 = 0.0;
          res->e11144 = 0.0;
          res->e11244 = 0.0;
          res->e12244 = 0.0;
          res->e22244 = 0.0;
          res->e11344 = 0.0;
          res->e12344 = 0.0;
          res->e22344 = 0.0;
          res->e13344 = 0.0;
          res->e23344 = 0.0;
          res->e33344 = 0.0;
          res->e11444 = 0.0;
          res->e12444 = 0.0;
          res->e22444 = 0.0;
          res->e13444 = 0.0;
          res->e23444 = 0.0;
          res->e33444 = 0.0;
          res->e14444 = 0.0;
          res->e24444 = 0.0;
          res->e34444 = 0.0;
          res->e44444 = 0.0;
          break;
      }
      break;
    case 2:
      switch (idx){
        case 0: //  e11
          res->e11 = 0.0;
          res->e111 = 0.0;
          res->e112 = 0.0;
          res->e113 = 0.0;
          res->e114 = 0.0;
          res->e1111 = 0.0;
          res->e1112 = 0.0;
          res->e1122 = 0.0;
          res->e1113 = 0.0;
          res->e1123 = 0.0;
          res->e1133 = 0.0;
          res->e1114 = 0.0;
          res->e1124 = 0.0;
          res->e1134 = 0.0;
          res->e1144 = 0.0;
          res->e11111 = 0.0;
          res->e11112 = 0.0;
          res->e11122 = 0.0;
          res->e11222 = 0.0;
          res->e11113 = 0.0;
          res->e11123 = 0.0;
          res->e11223 = 0.0;
          res->e11133 = 0.0;
          res->e11233 = 0.0;
          res->e11333 = 0.0;
          res->e11114 = 0.0;
          res->e11124 = 0.0;
          res->e11224 = 0.0;
          res->e11134 = 0.0;
          res->e11234 = 0.0;
          res->e11334 = 0.0;
          res->e11144 = 0.0;
          res->e11244 = 0.0;
          res->e11344 = 0.0;
          res->e11444 = 0.0;
          break;
        case 1: //  e12
          res->e12 = 0.0;
          res->e112 = 0.0;
          res->e122 = 0.0;
          res->e123 = 0.0;
          res->e124 = 0.0;
          res->e1112 = 0.0;
          res->e1122 = 0.0;
          res->e1222 = 0.0;
          res->e1123 = 0.0;
          res->e1223 = 0.0;
          res->e1233 = 0.0;
          res->e1124 = 0.0;
          res->e1224 = 0.0;
          res->e1234 = 0.0;
          res->e1244 = 0.0;
          res->e11112 = 0.0;
          res->e11122 = 0.0;
          res->e11222 = 0.0;
          res->e12222 = 0.0;
          res->e11123 = 0.0;
          res->e11223 = 0.0;
          res->e12223 = 0.0;
          res->e11233 = 0.0;
          res->e12233 = 0.0;
          res->e12333 = 0.0;
          res->e11124 = 0.0;
          res->e11224 = 0.0;
          res->e12224 = 0.0;
          res->e11234 = 0.0;
          res->e12234 = 0.0;
          res->e12334 = 0.0;
          res->e11244 = 0.0;
          res->e12244 = 0.0;
          res->e12344 = 0.0;
          res->e12444 = 0.0;
          break;
        case 2: //  e22
          res->e22 = 0.0;
          res->e122 = 0.0;
          res->e222 = 0.0;
          res->e223 = 0.0;
          res->e224 = 0.0;
          res->e1122 = 0.0;
          res->e1222 = 0.0;
          res->e2222 = 0.0;
          res->e1223 = 0.0;
          res->e2223 = 0.0;
          res->e2233 = 0.0;
          res->e1224 = 0.0;
          res->e2224 = 0.0;
          res->e2234 = 0.0;
          res->e2244 = 0.0;
          res->e11122 = 0.0;
          res->e11222 = 0.0;
          res->e12222 = 0.0;
          res->e22222 = 0.0;
          res->e11223 = 0.0;
          res->e12223 = 0.0;
          res->e22223 = 0.0;
          res->e12233 = 0.0;
          res->e22233 = 0.0;
          res->e22333 = 0.0;
          res->e11224 = 0.0;
          res->e12224 = 0.0;
          res->e22224 = 0.0;
          res->e12234 = 0.0;
          res->e22234 = 0.0;
          res->e22334 = 0.0;
          res->e12244 = 0.0;
          res->e22244 = 0.0;
          res->e22344 = 0.0;
          res->e22444 = 0.0;
          break;
        case 3: //  e13
          res->e13 = 0.0;
          res->e113 = 0.0;
          res->e123 = 0.0;
          res->e133 = 0.0;
          res->e134 = 0.0;
          res->e1113 = 0.0;
          res->e1123 = 0.0;
          res->e1223 = 0.0;
          res->e1133 = 0.0;
          res->e1233 = 0.0;
          res->e1333 = 0.0;
          res->e1134 = 0.0;
          res->e1234 = 0.0;
          res->e1334 = 0.0;
          res->e1344 = 0.0;
          res->e11113 = 0.0;
          res->e11123 = 0.0;
          res->e11223 = 0.0;
          res->e12223 = 0.0;
          res->e11133 = 0.0;
          res->e11233 = 0.0;
          res->e12233 = 0.0;
          res->e11333 = 0.0;
          res->e12333 = 0.0;
          res->e13333 = 0.0;
          res->e11134 = 0.0;
          res->e11234 = 0.0;
          res->e12234 = 0.0;
          res->e11334 = 0.0;
          res->e12334 = 0.0;
          res->e13334 = 0.0;
          res->e11344 = 0.0;
          res->e12344 = 0.0;
          res->e13344 = 0.0;
          res->e13444 = 0.0;
          break;
        case 4: //  e23
          res->e23 = 0.0;
          res->e123 = 0.0;
          res->e223 = 0.0;
          res->e233 = 0.0;
          res->e234 = 0.0;
          res->e1123 = 0.0;
          res->e1223 = 0.0;
          res->e2223 = 0.0;
          res->e1233 = 0.0;
          res->e2233 = 0.0;
          res->e2333 = 0.0;
          res->e1234 = 0.0;
          res->e2234 = 0.0;
          res->e2334 = 0.0;
          res->e2344 = 0.0;
          res->e11123 = 0.0;
          res->e11223 = 0.0;
          res->e12223 = 0.0;
          res->e22223 = 0.0;
          res->e11233 = 0.0;
          res->e12233 = 0.0;
          res->e22233 = 0.0;
          res->e12333 = 0.0;
          res->e22333 = 0.0;
          res->e23333 = 0.0;
          res->e11234 = 0.0;
          res->e12234 = 0.0;
          res->e22234 = 0.0;
          res->e12334 = 0.0;
          res->e22334 = 0.0;
          res->e23334 = 0.0;
          res->e12344 = 0.0;
          res->e22344 = 0.0;
          res->e23344 = 0.0;
          res->e23444 = 0.0;
          break;
        case 5: //  e33
          res->e33 = 0.0;
          res->e133 = 0.0;
          res->e233 = 0.0;
          res->e333 = 0.0;
          res->e334 = 0.0;
          res->e1133 = 0.0;
          res->e1233 = 0.0;
          res->e2233 = 0.0;
          res->e1333 = 0.0;
          res->e2333 = 0.0;
          res->e3333 = 0.0;
          res->e1334 = 0.0;
          res->e2334 = 0.0;
          res->e3334 = 0.0;
          res->e3344 = 0.0;
          res->e11133 = 0.0;
          res->e11233 = 0.0;
          res->e12233 = 0.0;
          res->e22233 = 0.0;
          res->e11333 = 0.0;
          res->e12333 = 0.0;
          res->e22333 = 0.0;
          res->e13333 = 0.0;
          res->e23333 = 0.0;
          res->e33333 = 0.0;
          res->e11334 = 0.0;
          res->e12334 = 0.0;
          res->e22334 = 0.0;
          res->e13334 = 0.0;
          res->e23334 = 0.0;
          res->e33334 = 0.0;
          res->e13344 = 0.0;
          res->e23344 = 0.0;
          res->e33344 = 0.0;
          res->e33444 = 0.0;
          break;
        case 6: //  e14
          res->e14 = 0.0;
          res->e114 = 0.0;
          res->e124 = 0.0;
          res->e134 = 0.0;
          res->e144 = 0.0;
          res->e1114 = 0.0;
          res->e1124 = 0.0;
          res->e1224 = 0.0;
          res->e1134 = 0.0;
          res->e1234 = 0.0;
          res->e1334 = 0.0;
          res->e1144 = 0.0;
          res->e1244 = 0.0;
          res->e1344 = 0.0;
          res->e1444 = 0.0;
          res->e11114 = 0.0;
          res->e11124 = 0.0;
          res->e11224 = 0.0;
          res->e12224 = 0.0;
          res->e11134 = 0.0;
          res->e11234 = 0.0;
          res->e12234 = 0.0;
          res->e11334 = 0.0;
          res->e12334 = 0.0;
          res->e13334 = 0.0;
          res->e11144 = 0.0;
          res->e11244 = 0.0;
          res->e12244 = 0.0;
          res->e11344 = 0.0;
          res->e12344 = 0.0;
          res->e13344 = 0.0;
          res->e11444 = 0.0;
          res->e12444 = 0.0;
          res->e13444 = 0.0;
          res->e14444 = 0.0;
          break;
        case 7: //  e24
          res->e24 = 0.0;
          res->e124 = 0.0;
          res->e224 = 0.0;
          res->e234 = 0.0;
          res->e244 = 0.0;
          res->e1124 = 0.0;
          res->e1224 = 0.0;
          res->e2224 = 0.0;
          res->e1234 = 0.0;
          res->e2234 = 0.0;
          res->e2334 = 0.0;
          res->e1244 = 0.0;
          res->e2244 = 0.0;
          res->e2344 = 0.0;
          res->e2444 = 0.0;
          res->e11124 = 0.0;
          res->e11224 = 0.0;
          res->e12224 = 0.0;
          res->e22224 = 0.0;
          res->e11234 = 0.0;
          res->e12234 = 0.0;
          res->e22234 = 0.0;
          res->e12334 = 0.0;
          res->e22334 = 0.0;
          res->e23334 = 0.0;
          res->e11244 = 0.0;
          res->e12244 = 0.0;
          res->e22244 = 0.0;
          res->e12344 = 0.0;
          res->e22344 = 0.0;
          res->e23344 = 0.0;
          res->e12444 = 0.0;
          res->e22444 = 0.0;
          res->e23444 = 0.0;
          res->e24444 = 0.0;
          break;
        case 8: //  e34
          res->e34 = 0.0;
          res->e134 = 0.0;
          res->e234 = 0.0;
          res->e334 = 0.0;
          res->e344 = 0.0;
          res->e1134 = 0.0;
          res->e1234 = 0.0;
          res->e2234 = 0.0;
          res->e1334 = 0.0;
          res->e2334 = 0.0;
          res->e3334 = 0.0;
          res->e1344 = 0.0;
          res->e2344 = 0.0;
          res->e3344 = 0.0;
          res->e3444 = 0.0;
          res->e11134 = 0.0;
          res->e11234 = 0.0;
          res->e12234 = 0.0;
          res->e22234 = 0.0;
          res->e11334 = 0.0;
          res->e12334 = 0.0;
          res->e22334 = 0.0;
          res->e13334 = 0.0;
          res->e23334 = 0.0;
          res->e33334 = 0.0;
          res->e11344 = 0.0;
          res->e12344 = 0.0;
          res->e22344 = 0.0;
          res->e13344 = 0.0;
          res->e23344 = 0.0;
          res->e33344 = 0.0;
          res->e13444 = 0.0;
          res->e23444 = 0.0;
          res->e33444 = 0.0;
          res->e34444 = 0.0;
          break;
        case 9: //  e44
          res->e44 = 0.0;
          res->e144 = 0.0;
          res->e244 = 0.0;
          res->e344 = 0.0;
          res->e444 = 0.0;
          res->e1144 = 0.0;
          res->e1244 = 0.0;
          res->e2244 = 0.0;
          res->e1344 = 0.0;
          res->e2344 = 0.0;
          res->e3344 = 0.0;
          res->e1444 = 0.0;
          res->e2444 = 0.0;
          res->e3444 = 0.0;
          res->e4444 = 0.0;
          res->e11144 = 0.0;
          res->e11244 = 0.0;
          res->e12244 = 0.0;
          res->e22244 = 0.0;
          res->e11344 = 0.0;
          res->e12344 = 0.0;
          res->e22344 = 0.0;
          res->e13344 = 0.0;
          res->e23344 = 0.0;
          res->e33344 = 0.0;
          res->e11444 = 0.0;
          res->e12444 = 0.0;
          res->e22444 = 0.0;
          res->e13444 = 0.0;
          res->e23444 = 0.0;
          res->e33444 = 0.0;
          res->e14444 = 0.0;
          res->e24444 = 0.0;
          res->e34444 = 0.0;
          res->e44444 = 0.0;
          break;
      }
      break;
    case 3:
      switch (idx){
        case 0: //  e111
          res->e111 = 0.0;
          res->e1111 = 0.0;
          res->e1112 = 0.0;
          res->e1113 = 0.0;
          res->e1114 = 0.0;
          res->e11111 = 0.0;
          res->e11112 = 0.0;
          res->e11122 = 0.0;
          res->e11113 = 0.0;
          res->e11123 = 0.0;
          res->e11133 = 0.0;
          res->e11114 = 0.0;
          res->e11124 = 0.0;
          res->e11134 = 0.0;
          res->e11144 = 0.0;
          break;
        case 1: //  e112
          res->e112 = 0.0;
          res->e1112 = 0.0;
          res->e1122 = 0.0;
          res->e1123 = 0.0;
          res->e1124 = 0.0;
          res->e11112 = 0.0;
          res->e11122 = 0.0;
          res->e11222 = 0.0;
          res->e11123 = 0.0;
          res->e11223 = 0.0;
          res->e11233 = 0.0;
          res->e11124 = 0.0;
          res->e11224 = 0.0;
          res->e11234 = 0.0;
          res->e11244 = 0.0;
          break;
        case 2: //  e122
          res->e122 = 0.0;
          res->e1122 = 0.0;
          res->e1222 = 0.0;
          res->e1223 = 0.0;
          res->e1224 = 0.0;
          res->e11122 = 0.0;
          res->e11222 = 0.0;
          res->e12222 = 0.0;
          res->e11223 = 0.0;
          res->e12223 = 0.0;
          res->e12233 = 0.0;
          res->e11224 = 0.0;
          res->e12224 = 0.0;
          res->e12234 = 0.0;
          res->e12244 = 0.0;
          break;
        case 3: //  e222
          res->e222 = 0.0;
          res->e1222 = 0.0;
          res->e2222 = 0.0;
          res->e2223 = 0.0;
          res->e2224 = 0.0;
          res->e11222 = 0.0;
          res->e12222 = 0.0;
          res->e22222 = 0.0;
          res->e12223 = 0.0;
          res->e22223 = 0.0;
          res->e22233 = 0.0;
          res->e12224 = 0.0;
          res->e22224 = 0.0;
          res->e22234 = 0.0;
          res->e22244 = 0.0;
          break;
        case 4: //  e113
          res->e113 = 0.0;
          res->e1113 = 0.0;
          res->e1123 = 0.0;
          res->e1133 = 0.0;
          res->e1134 = 0.0;
          res->e11113 = 0.0;
          res->e11123 = 0.0;
          res->e11223 = 0.0;
          res->e11133 = 0.0;
          res->e11233 = 0.0;
          res->e11333 = 0.0;
          res->e11134 = 0.0;
          res->e11234 = 0.0;
          res->e11334 = 0.0;
          res->e11344 = 0.0;
          break;
        case 5: //  e123
          res->e123 = 0.0;
          res->e1123 = 0.0;
          res->e1223 = 0.0;
          res->e1233 = 0.0;
          res->e1234 = 0.0;
          res->e11123 = 0.0;
          res->e11223 = 0.0;
          res->e12223 = 0.0;
          res->e11233 = 0.0;
          res->e12233 = 0.0;
          res->e12333 = 0.0;
          res->e11234 = 0.0;
          res->e12234 = 0.0;
          res->e12334 = 0.0;
          res->e12344 = 0.0;
          break;
        case 6: //  e223
          res->e223 = 0.0;
          res->e1223 = 0.0;
          res->e2223 = 0.0;
          res->e2233 = 0.0;
          res->e2234 = 0.0;
          res->e11223 = 0.0;
          res->e12223 = 0.0;
          res->e22223 = 0.0;
          res->e12233 = 0.0;
          res->e22233 = 0.0;
          res->e22333 = 0.0;
          res->e12234 = 0.0;
          res->e22234 = 0.0;
          res->e22334 = 0.0;
          res->e22344 = 0.0;
          break;
        case 7: //  e133
          res->e133 = 0.0;
          res->e1133 = 0.0;
          res->e1233 = 0.0;
          res->e1333 = 0.0;
          res->e1334 = 0.0;
          res->e11133 = 0.0;
          res->e11233 = 0.0;
          res->e12233 = 0.0;
          res->e11333 = 0.0;
          res->e12333 = 0.0;
          res->e13333 = 0.0;
          res->e11334 = 0.0;
          res->e12334 = 0.0;
          res->e13334 = 0.0;
          res->e13344 = 0.0;
          break;
        case 8: //  e233
          res->e233 = 0.0;
          res->e1233 = 0.0;
          res->e2233 = 0.0;
          res->e2333 = 0.0;
          res->e2334 = 0.0;
          res->e11233 = 0.0;
          res->e12233 = 0.0;
          res->e22233 = 0.0;
          res->e12333 = 0.0;
          res->e22333 = 0.0;
          res->e23333 = 0.0;
          res->e12334 = 0.0;
          res->e22334 = 0.0;
          res->e23334 = 0.0;
          res->e23344 = 0.0;
          break;
        case 9: //  e333
          res->e333 = 0.0;
          res->e1333 = 0.0;
          res->e2333 = 0.0;
          res->e3333 = 0.0;
          res->e3334 = 0.0;
          res->e11333 = 0.0;
          res->e12333 = 0.0;
          res->e22333 = 0.0;
          res->e13333 = 0.0;
          res->e23333 = 0.0;
          res->e33333 = 0.0;
          res->e13334 = 0.0;
          res->e23334 = 0.0;
          res->e33334 = 0.0;
          res->e33344 = 0.0;
          break;
        case 10: //  e114
          res->e114 = 0.0;
          res->e1114 = 0.0;
          res->e1124 = 0.0;
          res->e1134 = 0.0;
          res->e1144 = 0.0;
          res->e11114 = 0.0;
          res->e11124 = 0.0;
          res->e11224 = 0.0;
          res->e11134 = 0.0;
          res->e11234 = 0.0;
          res->e11334 = 0.0;
          res->e11144 = 0.0;
          res->e11244 = 0.0;
          res->e11344 = 0.0;
          res->e11444 = 0.0;
          break;
        case 11: //  e124
          res->e124 = 0.0;
          res->e1124 = 0.0;
          res->e1224 = 0.0;
          res->e1234 = 0.0;
          res->e1244 = 0.0;
          res->e11124 = 0.0;
          res->e11224 = 0.0;
          res->e12224 = 0.0;
          res->e11234 = 0.0;
          res->e12234 = 0.0;
          res->e12334 = 0.0;
          res->e11244 = 0.0;
          res->e12244 = 0.0;
          res->e12344 = 0.0;
          res->e12444 = 0.0;
          break;
        case 12: //  e224
          res->e224 = 0.0;
          res->e1224 = 0.0;
          res->e2224 = 0.0;
          res->e2234 = 0.0;
          res->e2244 = 0.0;
          res->e11224 = 0.0;
          res->e12224 = 0.0;
          res->e22224 = 0.0;
          res->e12234 = 0.0;
          res->e22234 = 0.0;
          res->e22334 = 0.0;
          res->e12244 = 0.0;
          res->e22244 = 0.0;
          res->e22344 = 0.0;
          res->e22444 = 0.0;
          break;
        case 13: //  e134
          res->e134 = 0.0;
          res->e1134 = 0.0;
          res->e1234 = 0.0;
          res->e1334 = 0.0;
          res->e1344 = 0.0;
          res->e11134 = 0.0;
          res->e11234 = 0.0;
          res->e12234 = 0.0;
          res->e11334 = 0.0;
          res->e12334 = 0.0;
          res->e13334 = 0.0;
          res->e11344 = 0.0;
          res->e12344 = 0.0;
          res->e13344 = 0.0;
          res->e13444 = 0.0;
          break;
        case 14: //  e234
          res->e234 = 0.0;
          res->e1234 = 0.0;
          res->e2234 = 0.0;
          res->e2334 = 0.0;
          res->e2344 = 0.0;
          res->e11234 = 0.0;
          res->e12234 = 0.0;
          res->e22234 = 0.0;
          res->e12334 = 0.0;
          res->e22334 = 0.0;
          res->e23334 = 0.0;
          res->e12344 = 0.0;
          res->e22344 = 0.0;
          res->e23344 = 0.0;
          res->e23444 = 0.0;
          break;
        case 15: //  e334
          res->e334 = 0.0;
          res->e1334 = 0.0;
          res->e2334 = 0.0;
          res->e3334 = 0.0;
          res->e3344 = 0.0;
          res->e11334 = 0.0;
          res->e12334 = 0.0;
          res->e22334 = 0.0;
          res->e13334 = 0.0;
          res->e23334 = 0.0;
          res->e33334 = 0.0;
          res->e13344 = 0.0;
          res->e23344 = 0.0;
          res->e33344 = 0.0;
          res->e33444 = 0.0;
          break;
        case 16: //  e144
          res->e144 = 0.0;
          res->e1144 = 0.0;
          res->e1244 = 0.0;
          res->e1344 = 0.0;
          res->e1444 = 0.0;
          res->e11144 = 0.0;
          res->e11244 = 0.0;
          res->e12244 = 0.0;
          res->e11344 = 0.0;
          res->e12344 = 0.0;
          res->e13344 = 0.0;
          res->e11444 = 0.0;
          res->e12444 = 0.0;
          res->e13444 = 0.0;
          res->e14444 = 0.0;
          break;
        case 17: //  e244
          res->e244 = 0.0;
          res->e1244 = 0.0;
          res->e2244 = 0.0;
          res->e2344 = 0.0;
          res->e2444 = 0.0;
          res->e11244 = 0.0;
          res->e12244 = 0.0;
          res->e22244 = 0.0;
          res->e12344 = 0.0;
          res->e22344 = 0.0;
          res->e23344 = 0.0;
          res->e12444 = 0.0;
          res->e22444 = 0.0;
          res->e23444 = 0.0;
          res->e24444 = 0.0;
          break;
        case 18: //  e344
          res->e344 = 0.0;
          res->e1344 = 0.0;
          res->e2344 = 0.0;
          res->e3344 = 0.0;
          res->e3444 = 0.0;
          res->e11344 = 0.0;
          res->e12344 = 0.0;
          res->e22344 = 0.0;
          res->e13344 = 0.0;
          res->e23344 = 0.0;
          res->e33344 = 0.0;
          res->e13444 = 0.0;
          res->e23444 = 0.0;
          res->e33444 = 0.0;
          res->e34444 = 0.0;
          break;
        case 19: //  e444
          res->e444 = 0.0;
          res->e1444 = 0.0;
          res->e2444 = 0.0;
          res->e3444 = 0.0;
          res->e4444 = 0.0;
          res->e11444 = 0.0;
          res->e12444 = 0.0;
          res->e22444 = 0.0;
          res->e13444 = 0.0;
          res->e23444 = 0.0;
          res->e33444 = 0.0;
          res->e14444 = 0.0;
          res->e24444 = 0.0;
          res->e34444 = 0.0;
          res->e44444 = 0.0;
          break;
      }
      break;
    case 4:
      switch (idx){
        case 0: //  e1111
          res->e1111 = 0.0;
          res->e11111 = 0.0;
          res->e11112 = 0.0;
          res->e11113 = 0.0;
          res->e11114 = 0.0;
          break;
        case 1: //  e1112
          res->e1112 = 0.0;
          res->e11112 = 0.0;
          res->e11122 = 0.0;
          res->e11123 = 0.0;
          res->e11124 = 0.0;
          break;
        case 2: //  e1122
          res->e1122 = 0.0;
          res->e11122 = 0.0;
          res->e11222 = 0.0;
          res->e11223 = 0.0;
          res->e11224 = 0.0;
          break;
        case 3: //  e1222
          res->e1222 = 0.0;
          res->e11222 = 0.0;
          res->e12222 = 0.0;
          res->e12223 = 0.0;
          res->e12224 = 0.0;
          break;
        case 4: //  e2222
          res->e2222 = 0.0;
          res->e12222 = 0.0;
          res->e22222 = 0.0;
          res->e22223 = 0.0;
          res->e22224 = 0.0;
          break;
        case 5: //  e1113
          res->e1113 = 0.0;
          res->e11113 = 0.0;
          res->e11123 = 0.0;
          res->e11133 = 0.0;
          res->e11134 = 0.0;
          break;
        case 6: //  e1123
          res->e1123 = 0.0;
          res->e11123 = 0.0;
          res->e11223 = 0.0;
          res->e11233 = 0.0;
          res->e11234 = 0.0;
          break;
        case 7: //  e1223
          res->e1223 = 0.0;
          res->e11223 = 0.0;
          res->e12223 = 0.0;
          res->e12233 = 0.0;
          res->e12234 = 0.0;
          break;
        case 8: //  e2223
          res->e2223 = 0.0;
          res->e12223 = 0.0;
          res->e22223 = 0.0;
          res->e22233 = 0.0;
          res->e22234 = 0.0;
          break;
        case 9: //  e1133
          res->e1133 = 0.0;
          res->e11133 = 0.0;
          res->e11233 = 0.0;
          res->e11333 = 0.0;
          res->e11334 = 0.0;
          break;
        case 10: //  e1233
          res->e1233 = 0.0;
          res->e11233 = 0.0;
          res->e12233 = 0.0;
          res->e12333 = 0.0;
          res->e12334 = 0.0;
          break;
        case 11: //  e2233
          res->e2233 = 0.0;
          res->e12233 = 0.0;
          res->e22233 = 0.0;
          res->e22333 = 0.0;
          res->e22334 = 0.0;
          break;
        case 12: //  e1333
          res->e1333 = 0.0;
          res->e11333 = 0.0;
          res->e12333 = 0.0;
          res->e13333 = 0.0;
          res->e13334 = 0.0;
          break;
        case 13: //  e2333
          res->e2333 = 0.0;
          res->e12333 = 0.0;
          res->e22333 = 0.0;
          res->e23333 = 0.0;
          res->e23334 = 0.0;
          break;
        case 14: //  e3333
          res->e3333 = 0.0;
          res->e13333 = 0.0;
          res->e23333 = 0.0;
          res->e33333 = 0.0;
          res->e33334 = 0.0;
          break;
        case 15: //  e1114
          res->e1114 = 0.0;
          res->e11114 = 0.0;
          res->e11124 = 0.0;
          res->e11134 = 0.0;
          res->e11144 = 0.0;
          break;
        case 16: //  e1124
          res->e1124 = 0.0;
          res->e11124 = 0.0;
          res->e11224 = 0.0;
          res->e11234 = 0.0;
          res->e11244 = 0.0;
          break;
        case 17: //  e1224
          res->e1224 = 0.0;
          res->e11224 = 0.0;
          res->e12224 = 0.0;
          res->e12234 = 0.0;
          res->e12244 = 0.0;
          break;
        case 18: //  e2224
          res->e2224 = 0.0;
          res->e12224 = 0.0;
          res->e22224 = 0.0;
          res->e22234 = 0.0;
          res->e22244 = 0.0;
          break;
        case 19: //  e1134
          res->e1134 = 0.0;
          res->e11134 = 0.0;
          res->e11234 = 0.0;
          res->e11334 = 0.0;
          res->e11344 = 0.0;
          break;
        case 20: //  e1234
          res->e1234 = 0.0;
          res->e11234 = 0.0;
          res->e12234 = 0.0;
          res->e12334 = 0.0;
          res->e12344 = 0.0;
          break;
        case 21: //  e2234
          res->e2234 = 0.0;
          res->e12234 = 0.0;
          res->e22234 = 0.0;
          res->e22334 = 0.0;
          res->e22344 = 0.0;
          break;
        case 22: //  e1334
          res->e1334 = 0.0;
          res->e11334 = 0.0;
          res->e12334 = 0.0;
          res->e13334 = 0.0;
          res->e13344 = 0.0;
          break;
        case 23: //  e2334
          res->e2334 = 0.0;
          res->e12334 = 0.0;
          res->e22334 = 0.0;
          res->e23334 = 0.0;
          res->e23344 = 0.0;
          break;
        case 24: //  e3334
          res->e3334 = 0.0;
          res->e13334 = 0.0;
          res->e23334 = 0.0;
          res->e33334 = 0.0;
          res->e33344 = 0.0;
          break;
        case 25: //  e1144
          res->e1144 = 0.0;
          res->e11144 = 0.0;
          res->e11244 = 0.0;
          res->e11344 = 0.0;
          res->e11444 = 0.0;
          break;
        case 26: //  e1244
          res->e1244 = 0.0;
          res->e11244 = 0.0;
          res->e12244 = 0.0;
          res->e12344 = 0.0;
          res->e12444 = 0.0;
          break;
        case 27: //  e2244
          res->e2244 = 0.0;
          res->e12244 = 0.0;
          res->e22244 = 0.0;
          res->e22344 = 0.0;
          res->e22444 = 0.0;
          break;
        case 28: //  e1344
          res->e1344 = 0.0;
          res->e11344 = 0.0;
          res->e12344 = 0.0;
          res->e13344 = 0.0;
          res->e13444 = 0.0;
          break;
        case 29: //  e2344
          res->e2344 = 0.0;
          res->e12344 = 0.0;
          res->e22344 = 0.0;
          res->e23344 = 0.0;
          res->e23444 = 0.0;
          break;
        case 30: //  e3344
          res->e3344 = 0.0;
          res->e13344 = 0.0;
          res->e23344 = 0.0;
          res->e33344 = 0.0;
          res->e33444 = 0.0;
          break;
        case 31: //  e1444
          res->e1444 = 0.0;
          res->e11444 = 0.0;
          res->e12444 = 0.0;
          res->e13444 = 0.0;
          res->e14444 = 0.0;
          break;
        case 32: //  e2444
          res->e2444 = 0.0;
          res->e12444 = 0.0;
          res->e22444 = 0.0;
          res->e23444 = 0.0;
          res->e24444 = 0.0;
          break;
        case 33: //  e3444
          res->e3444 = 0.0;
          res->e13444 = 0.0;
          res->e23444 = 0.0;
          res->e33444 = 0.0;
          res->e34444 = 0.0;
          break;
        case 34: //  e4444
          res->e4444 = 0.0;
          res->e14444 = 0.0;
          res->e24444 = 0.0;
          res->e34444 = 0.0;
          res->e44444 = 0.0;
          break;
      }
      break;
    case 5:
      switch (idx){
        case 0: //  e11111
          res->e11111 = 0.0;
          break;
        case 1: //  e11112
          res->e11112 = 0.0;
          break;
        case 2: //  e11122
          res->e11122 = 0.0;
          break;
        case 3: //  e11222
          res->e11222 = 0.0;
          break;
        case 4: //  e12222
          res->e12222 = 0.0;
          break;
        case 5: //  e22222
          res->e22222 = 0.0;
          break;
        case 6: //  e11113
          res->e11113 = 0.0;
          break;
        case 7: //  e11123
          res->e11123 = 0.0;
          break;
        case 8: //  e11223
          res->e11223 = 0.0;
          break;
        case 9: //  e12223
          res->e12223 = 0.0;
          break;
        case 10: //  e22223
          res->e22223 = 0.0;
          break;
        case 11: //  e11133
          res->e11133 = 0.0;
          break;
        case 12: //  e11233
          res->e11233 = 0.0;
          break;
        case 13: //  e12233
          res->e12233 = 0.0;
          break;
        case 14: //  e22233
          res->e22233 = 0.0;
          break;
        case 15: //  e11333
          res->e11333 = 0.0;
          break;
        case 16: //  e12333
          res->e12333 = 0.0;
          break;
        case 17: //  e22333
          res->e22333 = 0.0;
          break;
        case 18: //  e13333
          res->e13333 = 0.0;
          break;
        case 19: //  e23333
          res->e23333 = 0.0;
          break;
        case 20: //  e33333
          res->e33333 = 0.0;
          break;
        case 21: //  e11114
          res->e11114 = 0.0;
          break;
        case 22: //  e11124
          res->e11124 = 0.0;
          break;
        case 23: //  e11224
          res->e11224 = 0.0;
          break;
        case 24: //  e12224
          res->e12224 = 0.0;
          break;
        case 25: //  e22224
          res->e22224 = 0.0;
          break;
        case 26: //  e11134
          res->e11134 = 0.0;
          break;
        case 27: //  e11234
          res->e11234 = 0.0;
          break;
        case 28: //  e12234
          res->e12234 = 0.0;
          break;
        case 29: //  e22234
          res->e22234 = 0.0;
          break;
        case 30: //  e11334
          res->e11334 = 0.0;
          break;
        case 31: //  e12334
          res->e12334 = 0.0;
          break;
        case 32: //  e22334
          res->e22334 = 0.0;
          break;
        case 33: //  e13334
          res->e13334 = 0.0;
          break;
        case 34: //  e23334
          res->e23334 = 0.0;
          break;
        case 35: //  e33334
          res->e33334 = 0.0;
          break;
        case 36: //  e11144
          res->e11144 = 0.0;
          break;
        case 37: //  e11244
          res->e11244 = 0.0;
          break;
        case 38: //  e12244
          res->e12244 = 0.0;
          break;
        case 39: //  e22244
          res->e22244 = 0.0;
          break;
        case 40: //  e11344
          res->e11344 = 0.0;
          break;
        case 41: //  e12344
          res->e12344 = 0.0;
          break;
        case 42: //  e22344
          res->e22344 = 0.0;
          break;
        case 43: //  e13344
          res->e13344 = 0.0;
          break;
        case 44: //  e23344
          res->e23344 = 0.0;
          break;
        case 45: //  e33344
          res->e33344 = 0.0;
          break;
        case 46: //  e11444
          res->e11444 = 0.0;
          break;
        case 47: //  e12444
          res->e12444 = 0.0;
          break;
        case 48: //  e22444
          res->e22444 = 0.0;
          break;
        case 49: //  e13444
          res->e13444 = 0.0;
          break;
        case 50: //  e23444
          res->e23444 = 0.0;
          break;
        case 51: //  e33444
          res->e33444 = 0.0;
          break;
        case 52: //  e14444
          res->e14444 = 0.0;
          break;
        case 53: //  e24444
          res->e24444 = 0.0;
          break;
        case 54: //  e34444
          res->e34444 = 0.0;
          break;
        case 55: //  e44444
          res->e44444 = 0.0;
          break;
      }
      break;
  }
}

void onumm4n5_print(  onumm4n5_t* lhs){

  // Print function.
  //  Real;
  printf("%.8g",lhs->r);
  //  Order 1;
  printf(" %+.8g*e1",lhs->e1);
  printf(" %+.8g*e2",lhs->e2);
  printf(" %+.8g*e3",lhs->e3);
  printf(" %+.8g*e4",lhs->e4);
  //  Order 2;
  printf(" %+.8g*e11",lhs->e11);
  printf(" %+.8g*e12",lhs->e12);
  printf(" %+.8g*e22",lhs->e22);
  printf(" %+.8g*e13",lhs->e13);
  printf(" %+.8g*e23",lhs->e23);
  printf(" %+.8g*e33",lhs->e33);
  printf(" %+.8g*e14",lhs->e14);
  printf(" %+.8g*e24",lhs->e24);
  printf(" %+.8g*e34",lhs->e34);
  printf(" %+.8g*e44",lhs->e44);
  //  Order 3;
  printf(" %+.8g*e111",lhs->e111);
  printf(" %+.8g*e112",lhs->e112);
  printf(" %+.8g*e122",lhs->e122);
  printf(" %+.8g*e222",lhs->e222);
  printf(" %+.8g*e113",lhs->e113);
  printf(" %+.8g*e123",lhs->e123);
  printf(" %+.8g*e223",lhs->e223);
  printf(" %+.8g*e133",lhs->e133);
  printf(" %+.8g*e233",lhs->e233);
  printf(" %+.8g*e333",lhs->e333);
  printf(" %+.8g*e114",lhs->e114);
  printf(" %+.8g*e124",lhs->e124);
  printf(" %+.8g*e224",lhs->e224);
  printf(" %+.8g*e134",lhs->e134);
  printf(" %+.8g*e234",lhs->e234);
  printf(" %+.8g*e334",lhs->e334);
  printf(" %+.8g*e144",lhs->e144);
  printf(" %+.8g*e244",lhs->e244);
  printf(" %+.8g*e344",lhs->e344);
  printf(" %+.8g*e444",lhs->e444);
  //  Order 4;
  printf(" %+.8g*e1111",lhs->e1111);
  printf(" %+.8g*e1112",lhs->e1112);
  printf(" %+.8g*e1122",lhs->e1122);
  printf(" %+.8g*e1222",lhs->e1222);
  printf(" %+.8g*e2222",lhs->e2222);
  printf(" %+.8g*e1113",lhs->e1113);
  printf(" %+.8g*e1123",lhs->e1123);
  printf(" %+.8g*e1223",lhs->e1223);
  printf(" %+.8g*e2223",lhs->e2223);
  printf(" %+.8g*e1133",lhs->e1133);
  printf(" %+.8g*e1233",lhs->e1233);
  printf(" %+.8g*e2233",lhs->e2233);
  printf(" %+.8g*e1333",lhs->e1333);
  printf(" %+.8g*e2333",lhs->e2333);
  printf(" %+.8g*e3333",lhs->e3333);
  printf(" %+.8g*e1114",lhs->e1114);
  printf(" %+.8g*e1124",lhs->e1124);
  printf(" %+.8g*e1224",lhs->e1224);
  printf(" %+.8g*e2224",lhs->e2224);
  printf(" %+.8g*e1134",lhs->e1134);
  printf(" %+.8g*e1234",lhs->e1234);
  printf(" %+.8g*e2234",lhs->e2234);
  printf(" %+.8g*e1334",lhs->e1334);
  printf(" %+.8g*e2334",lhs->e2334);
  printf(" %+.8g*e3334",lhs->e3334);
  printf(" %+.8g*e1144",lhs->e1144);
  printf(" %+.8g*e1244",lhs->e1244);
  printf(" %+.8g*e2244",lhs->e2244);
  printf(" %+.8g*e1344",lhs->e1344);
  printf(" %+.8g*e2344",lhs->e2344);
  printf(" %+.8g*e3344",lhs->e3344);
  printf(" %+.8g*e1444",lhs->e1444);
  printf(" %+.8g*e2444",lhs->e2444);
  printf(" %+.8g*e3444",lhs->e3444);
  printf(" %+.8g*e4444",lhs->e4444);
  //  Order 5;
  printf(" %+.8g*e11111",lhs->e11111);
  printf(" %+.8g*e11112",lhs->e11112);
  printf(" %+.8g*e11122",lhs->e11122);
  printf(" %+.8g*e11222",lhs->e11222);
  printf(" %+.8g*e12222",lhs->e12222);
  printf(" %+.8g*e22222",lhs->e22222);
  printf(" %+.8g*e11113",lhs->e11113);
  printf(" %+.8g*e11123",lhs->e11123);
  printf(" %+.8g*e11223",lhs->e11223);
  printf(" %+.8g*e12223",lhs->e12223);
  printf(" %+.8g*e22223",lhs->e22223);
  printf(" %+.8g*e11133",lhs->e11133);
  printf(" %+.8g*e11233",lhs->e11233);
  printf(" %+.8g*e12233",lhs->e12233);
  printf(" %+.8g*e22233",lhs->e22233);
  printf(" %+.8g*e11333",lhs->e11333);
  printf(" %+.8g*e12333",lhs->e12333);
  printf(" %+.8g*e22333",lhs->e22333);
  printf(" %+.8g*e13333",lhs->e13333);
  printf(" %+.8g*e23333",lhs->e23333);
  printf(" %+.8g*e33333",lhs->e33333);
  printf(" %+.8g*e11114",lhs->e11114);
  printf(" %+.8g*e11124",lhs->e11124);
  printf(" %+.8g*e11224",lhs->e11224);
  printf(" %+.8g*e12224",lhs->e12224);
  printf(" %+.8g*e22224",lhs->e22224);
  printf(" %+.8g*e11134",lhs->e11134);
  printf(" %+.8g*e11234",lhs->e11234);
  printf(" %+.8g*e12234",lhs->e12234);
  printf(" %+.8g*e22234",lhs->e22234);
  printf(" %+.8g*e11334",lhs->e11334);
  printf(" %+.8g*e12334",lhs->e12334);
  printf(" %+.8g*e22334",lhs->e22334);
  printf(" %+.8g*e13334",lhs->e13334);
  printf(" %+.8g*e23334",lhs->e23334);
  printf(" %+.8g*e33334",lhs->e33334);
  printf(" %+.8g*e11144",lhs->e11144);
  printf(" %+.8g*e11244",lhs->e11244);
  printf(" %+.8g*e12244",lhs->e12244);
  printf(" %+.8g*e22244",lhs->e22244);
  printf(" %+.8g*e11344",lhs->e11344);
  printf(" %+.8g*e12344",lhs->e12344);
  printf(" %+.8g*e22344",lhs->e22344);
  printf(" %+.8g*e13344",lhs->e13344);
  printf(" %+.8g*e23344",lhs->e23344);
  printf(" %+.8g*e33344",lhs->e33344);
  printf(" %+.8g*e11444",lhs->e11444);
  printf(" %+.8g*e12444",lhs->e12444);
  printf(" %+.8g*e22444",lhs->e22444);
  printf(" %+.8g*e13444",lhs->e13444);
  printf(" %+.8g*e23444",lhs->e23444);
  printf(" %+.8g*e33444",lhs->e33444);
  printf(" %+.8g*e14444",lhs->e14444);
  printf(" %+.8g*e24444",lhs->e24444);
  printf(" %+.8g*e34444",lhs->e34444);
  printf(" %+.8g*e44444",lhs->e44444);
  printf("\n");

}

imdir_t onumm4n5_get_indx(imdir_t idx, ord_t order){

  // Real;
  switch (order){
    case 0:
      return 0;
      break;
    case 1:
      switch (idx){
        case 0:
          return 0;
          break;
        case 1:
          return 1;
          break;
        case 2:
          return 2;
          break;
        case 3:
          return 3;
          break;
      }
      break;
    case 2:
      switch (idx){
        case 0:
          return 0;
          break;
        case 1:
          return 1;
          break;
        case 2:
          return 2;
          break;
        case 3:
          return 3;
          break;
        case 4:
          return 4;
          break;
        case 5:
          return 5;
          break;
        case 6:
          return 6;
          break;
        case 7:
          return 7;
          break;
        case 8:
          return 8;
          break;
        case 9:
          return 9;
          break;
      }
      break;
    case 3:
      switch (idx){
        case 0:
          return 0;
          break;
        case 1:
          return 1;
          break;
        case 2:
          return 2;
          break;
        case 3:
          return 3;
          break;
        case 4:
          return 4;
          break;
        case 5:
          return 5;
          break;
        case 6:
          return 6;
          break;
        case 7:
          return 7;
          break;
        case 8:
          return 8;
          break;
        case 9:
          return 9;
          break;
        case 10:
          return 10;
          break;
        case 11:
          return 11;
          break;
        case 12:
          return 12;
          break;
        case 13:
          return 13;
          break;
        case 14:
          return 14;
          break;
        case 15:
          return 15;
          break;
        case 16:
          return 16;
          break;
        case 17:
          return 17;
          break;
        case 18:
          return 18;
          break;
        case 19:
          return 19;
          break;
      }
      break;
    case 4:
      switch (idx){
        case 0:
          return 0;
          break;
        case 1:
          return 1;
          break;
        case 2:
          return 2;
          break;
        case 3:
          return 3;
          break;
        case 4:
          return 4;
          break;
        case 5:
          return 5;
          break;
        case 6:
          return 6;
          break;
        case 7:
          return 7;
          break;
        case 8:
          return 8;
          break;
        case 9:
          return 9;
          break;
        case 10:
          return 10;
          break;
        case 11:
          return 11;
          break;
        case 12:
          return 12;
          break;
        case 13:
          return 13;
          break;
        case 14:
          return 14;
          break;
        case 15:
          return 15;
          break;
        case 16:
          return 16;
          break;
        case 17:
          return 17;
          break;
        case 18:
          return 18;
          break;
        case 19:
          return 19;
          break;
        case 20:
          return 20;
          break;
        case 21:
          return 21;
          break;
        case 22:
          return 22;
          break;
        case 23:
          return 23;
          break;
        case 24:
          return 24;
          break;
        case 25:
          return 25;
          break;
        case 26:
          return 26;
          break;
        case 27:
          return 27;
          break;
        case 28:
          return 28;
          break;
        case 29:
          return 29;
          break;
        case 30:
          return 30;
          break;
        case 31:
          return 31;
          break;
        case 32:
          return 32;
          break;
        case 33:
          return 33;
          break;
        case 34:
          return 34;
          break;
      }
      break;
    case 5:
      switch (idx){
        case 0:
          return 0;
          break;
        case 1:
          return 1;
          break;
        case 2:
          return 2;
          break;
        case 3:
          return 3;
          break;
        case 4:
          return 4;
          break;
        case 5:
          return 5;
          break;
        case 6:
          return 6;
          break;
        case 7:
          return 7;
          break;
        case 8:
          return 8;
          break;
        case 9:
          return 9;
          break;
        case 10:
          return 10;
          break;
        case 11:
          return 11;
          break;
        case 12:
          return 12;
          break;
        case 13:
          return 13;
          break;
        case 14:
          return 14;
          break;
        case 15:
          return 15;
          break;
        case 16:
          return 16;
          break;
        case 17:
          return 17;
          break;
        case 18:
          return 18;
          break;
        case 19:
          return 19;
          break;
        case 20:
          return 20;
          break;
        case 21:
          return 21;
          break;
        case 22:
          return 22;
          break;
        case 23:
          return 23;
          break;
        case 24:
          return 24;
          break;
        case 25:
          return 25;
          break;
        case 26:
          return 26;
          break;
        case 27:
          return 27;
          break;
        case 28:
          return 28;
          break;
        case 29:
          return 29;
          break;
        case 30:
          return 30;
          break;
        case 31:
          return 31;
          break;
        case 32:
          return 32;
          break;
        case 33:
          return 33;
          break;
        case 34:
          return 34;
          break;
        case 35:
          return 35;
          break;
        case 36:
          return 36;
          break;
        case 37:
          return 37;
          break;
        case 38:
          return 38;
          break;
        case 39:
          return 39;
          break;
        case 40:
          return 40;
          break;
        case 41:
          return 41;
          break;
        case 42:
          return 42;
          break;
        case 43:
          return 43;
          break;
        case 44:
          return 44;
          break;
        case 45:
          return 45;
          break;
        case 46:
          return 46;
          break;
        case 47:
          return 47;
          break;
        case 48:
          return 48;
          break;
        case 49:
          return 49;
          break;
        case 50:
          return 50;
          break;
        case 51:
          return 51;
          break;
        case 52:
          return 52;
          break;
        case 53:
          return 53;
          break;
        case 54:
          return 54;
          break;
        case 55:
          return 55;
          break;
      }
      break;
      default:
          return 0;
  }
  return 0;
}

