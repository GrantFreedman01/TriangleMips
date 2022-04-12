# Program: Pythagorean Theorem Validator
# General Process: 
#   - evaluate:  X = a^2 + b^2 
#   - evaluate:  Y = c^2
#   - compare X & Y
#   - based upon the  
#
# This program has 5 distinct versions, defined by their git hub tags
#
#  tag == is_right:  
#    Input:  three unsigned 8-bit integers: a, b, c
#    Outputs: "True!" or "False!" based upon the value of X == Y
#  tag == angle_type
#    Input:  three unsigned 8-bit integers: a, b, c
#    Outputs: "Acute!", "Right!", or "Obtuse!"
#  tag == approximated_hypotenuse
#    Input:  two unsigned 8-bit integers: a, b
#    Outputs: "Nearest right-triangle is where the hypotenuse is: ", d
#  tag == computed_hypotenuse
#    Input:  two unsigned 8-bit integers: a, b
#    Outputs: "The computed value of c is: " c
#  tag == series
#    Inputs: reads a serics of a, b, and for each pair generates an output
#    Outputs: "a ^2 + b ^2 \~= c^2" 

		# .include "include/syscall_macros.s"
		# .include "include/isqrt.s"

		.data
	              # Insert any global varaibles here

		.text

		# define any macros here
		# E.g., here is the definition of the "inc" macro
		# Usage:  inc($t0)
		.macro inc(%reg)
			addi %reg, %reg, 1		# increment the value of in register "%reg"
		.end_macro


main: nop

	  # insert your starter code here



	  # terminate($zero)