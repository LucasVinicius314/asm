.text

.globl main

main:
jal 	complex
add 	$s0, $zero, $v0
j 	end

complex:
addi	$sp, $sp -4	# offset stack pointer
sw	$ra, 4($sp)	# push to stack

jal 	simple		# jump
addi 	$v0, $v0, 10	# retrieve result

lw	$ra, 4($sp)	# pop from stack
addi	$sp, $sp 4	# offset stack pointer

jr 	$ra

simple:
addi 	$v0, $v0, 1
jr 	$ra

end:

.data
