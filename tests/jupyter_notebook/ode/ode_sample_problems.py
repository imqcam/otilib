# Define Sample Problems:


# =================================================================
def circular_2d_field( t, y):
	"""

	"""
	# -------------------------------------------------------------

	res = oti.zeros((2,1))

	res [0,0] =  y[1,0]
	res [1,0] = -y[0,0]

	return res

# end function
# *****************************************************************
