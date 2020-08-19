

// ****************************************************************************************************
{num_type} {num_func}_atanh({num_type}* num){{

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atanh(num->{real_str}, {oti_order}, derivs);

    return {num_func}_feval(derivs, num);

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{num_type} {num_func}_asinh({num_type}* num){{

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asinh(num->{real_str}, {oti_order}, derivs);

    return {num_func}_feval(derivs, num);

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{num_type} {num_func}_acosh({num_type}* num){{

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acosh(num->{real_str}, {oti_order}, derivs);

    return {num_func}_feval(derivs, num);

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{num_type} {num_func}_tanh({num_type}* num){{

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tanh(num->{real_str}, {oti_order}, derivs);

    return {num_func}_feval(derivs, num);

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{num_type} {num_func}_cbrt({num_type}* num){{

    return {num_func}_pow(num,1./3.);

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{num_type} {num_func}_sqrt({num_type}* num){{

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sqrt(num->{real_str}, {oti_order}, derivs);

    return {num_func}_feval(derivs, num);

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{num_type} {num_func}_cosh({num_type}* num){{

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cosh(num->{real_str}, {oti_order}, derivs);

    return {num_func}_feval(derivs, num);

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{num_type} {num_func}_sinh({num_type}* num){{

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sinh(num->{real_str}, {oti_order}, derivs);

    return {num_func}_feval(derivs, num);

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{num_type} {num_func}_asin({num_type}* num){{

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_asin(num->{real_str}, {oti_order}, derivs);

    return {num_func}_feval(derivs, num);

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{num_type} {num_func}_acos({num_type}* num){{

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_acos(num->{real_str}, {oti_order}, derivs);

    return {num_func}_feval(derivs, num);

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{num_type} {num_func}_atan({num_type}* num){{

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_atan(num->{real_str}, {oti_order}, derivs);

    return {num_func}_feval(derivs, num);

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{num_type} {num_func}_tan({num_type}* num){{

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_tan(num->{real_str}, {oti_order}, derivs);

    return {num_func}_feval(derivs, num);

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{num_type} {num_func}_cos({num_type}* num){{

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_cos(num->{real_str}, {oti_order}, derivs);

    return {num_func}_feval(derivs, num);

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{num_type} {num_func}_sin({num_type}* num){{

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_sin(num->{real_str}, {oti_order}, derivs);

    return {num_func}_feval(derivs, num);

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{num_type} {num_func}_logb({num_type}* num, double base){{

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_logb(num->{real_str}, base, {oti_order}, derivs);

    return {num_func}_feval(derivs, num);

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{num_type} {num_func}_log10({num_type}* num){{

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log10(num->{real_str}, {oti_order}, derivs);

    return {num_func}_feval(derivs, num);

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{num_type} {num_func}_log({num_type}* num){{

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_log(num->{real_str}, {oti_order}, derivs);

    return {num_func}_feval(derivs, num);

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{num_type} {num_func}_exp({num_type}* num){{

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_exp(num->{real_str}, {oti_order}, derivs);

    return {num_func}_feval(derivs, num);

}}
// ----------------------------------------------------------------------------------------------------

// ****************************************************************************************************
{num_type} {num_func}_pow({num_type}* num, double e){{

    coeff_t derivs[_MAXORDER_OTI+1];

    der_r_pow(num->{real_str}, e, {oti_order}, derivs);

    return {num_func}_feval(derivs, num);

}}
// ----------------------------------------------------------------------------------------------------

