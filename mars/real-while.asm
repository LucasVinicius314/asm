.text

.globl main

main:

ori	$s0, $zero, 100000	# s0 := 100000
ori 	$s1, $zero, 0		# s1 := 0

loop:
slt	$t0, $s0, $s1		# t0 := s0 > s1

bne	$t0, $zero, skip	# if t0 != 0 goto skip
addi	$s1, $s1, 1		# s1 += 1
j loop

skip:

.data
