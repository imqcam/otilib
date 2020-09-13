# Addition operations.

cpdef sum(object lhs, object rhs, object out = *)
cdef object __add__FX__(mdmatfe10 lhs, object rhs, object out = *)
cdef object __add__OX__(  mdmat10 lhs, object rhs, object out = *)
cdef object __add__RX__(   dmat lhs, object rhs, object out = *)
cdef object __add__fX__( mdnumfe10 lhs, object rhs, object out = *)
cdef object __add__oX__(mdnum10 lhs, object rhs, object out = *)
cdef object __add__rX__(coeff_t lhs, object rhs, object out = *)

# Subtraction operations.
cpdef sub(object lhs, object rhs, object out = *)
cdef object __sub__FX__(mdmatfe10 lhs, object rhs, object out = *)
cdef object __sub__OX__(  mdmat10 lhs, object rhs, object out = *)
cdef object __sub__RX__(   dmat lhs, object rhs, object out = *)
cdef object __sub__fX__( mdnumfe10 lhs, object rhs, object out = *)
cdef object __sub__oX__(mdnum10 lhs, object rhs, object out = *)
cdef object __sub__rX__(coeff_t lhs, object rhs, object out = *)

# Multiplication operations.
cpdef mul(object lhs, object rhs, object out = *)
cdef object __mul__FX__(mdmatfe10 lhs, object rhs, object out = *)
cdef object __mul__OX__(  mdmat10 lhs, object rhs, object out = *)
cdef object __mul__RX__(   dmat lhs, object rhs, object out = *)
cdef object __mul__fX__( mdnumfe10 lhs, object rhs, object out = *)
cdef object __mul__oX__(mdnum10 lhs, object rhs, object out = *)
cdef object __mul__rX__(coeff_t lhs, object rhs, object out = *)

# Divition operations.
cpdef div(object lhs, object rhs, object out = *)
cdef object __div__FX__(mdmatfe10 lhs, object rhs, object out = *)
cdef object __div__OX__(  mdmat10 lhs, object rhs, object out = *)
cdef object __div__RX__(   dmat lhs, object rhs, object out = *)
cdef object __div__fX__( mdnumfe10 lhs, object rhs, object out = *)
cdef object __div__oX__(mdnum10 lhs, object rhs, object out = *)
cdef object __div__rX__(coeff_t lhs, object rhs, object out = *)

cpdef dot_product(object lhs,  object rhs,    object out = *)
cpdef dot(        object lhs,  object rhs,    object out = *)
cpdef inv(        object arr,                 object out = *)
cpdef det(        object arr,                 object out = *)
cpdef transpose(  object arr,                 object out = *)
cpdef norm(       object arr, coeff_t p = *,  object out = *)
