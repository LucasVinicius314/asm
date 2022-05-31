.text

.globl main

main:
ori	$a0, $zero, 1
ori	$a1, $zero, 2
jal 	complex
or 	$s0, $zero, $v0
j 	end

complex:
addi	$sp, $sp -4	# offset stack pointer
sw	$ra, 4($sp)	# push to stack

jal 	sumone
or	$t0, $zero, $v0

or	$a0, $zero, $a1
jal 	sumtwo

add	$v0, $t0, $v0

lw	$ra, 4($sp)	# pop from stack
addi	$sp, $sp 4	# offset stack pointer
jr 	$ra

sumone:
addi 	$v0, $a0, 1
jr 	$ra

sumtwo:
addi 	$v0, $a0, 2
jr 	$ra

end:

.data
