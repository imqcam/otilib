
# Append directives
include "common/directives.pxi"

# Append included libraries
include "fem/include.pxi"

# Utils
include "fem/utils.pxi"

# Append Element functions.
include "fem/elbase.pxi"

# Append Real FEM array.
include "fem/gauss_array.pxi"

# Include Mesh.
include "fem/mesh.pxi"


# # Append Gauss capabilities.
# include "fem/gauss.pxi"

# # FE functions.
# include "fem/fefunction.pxi"

# include "fem/fespace.pxi"

# include "fem/feproblem.pxi"

# include "fem/.pxi"