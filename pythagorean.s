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
	
right_string: .asciiz "Right!\n"
acute_string: .asciiz "Acute!\n"
obtuse_string: .asciiz "Obtuse!\n"


a_var: .byte 3
b_var: .byte 6
c_var: .byte 5 

	.text

main:  nop  # start of my program
	## Mapping
	# t0: a, a^2
	# t1: b, b^2
	# t2: c, c^2
	# s0: X
	# s1: Y


	# load my variables into register
	
	li $v0, 5   # read int: "a"
	syscall
	move $t0, $v0

	li $v0, 5   # read int: "b"
	syscall
	move $t1, $v0
	
	li $v0, 5   # read int: "c"
	syscall
	move $t2, $v0

	# calculate a^2, b^2, and c^2  (t = c * c)
        nop # compute a^2
        mult $t0, $t0
        mflo $t0
        
        nop # compute b^2
        mult $t1, $t1
        mflo $t1
 
        nop # compute c^2
        mult $t2, $t2
        mflo $t2       

	# calculate X = a^2 + b^2
	addu $s0, $t0, $t1
	
	# calculate Y = c^2
	move $s1, $t2


	nop # select Output
	beq $s0, $s1, right_block
	bgt $s0, $s1, acute_block
	blt $s0, $s1, obtuse_block
	
	
	
right_block:	nop # print "Right!"
	li $v0, 4
	la $a0,  right_string
	syscall
	b if_done

acute_block: 	nop # print "Acute!"
	li $v0, 4
	la $a0,  acute_string
	syscall
	b if_done

obtuse_block: 	nop # print "Obtuse!"
	li $v0, 4
	la $a0,  obtuse_string
	syscall
	b if_done

if_done:  nop

	nop # exit()
        li $v0, 10
        syscall
