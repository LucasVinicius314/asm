.text

.globl main

main:

ori	$s0, $zero, 1		# s0 := 1
ori 	$s1, $zero, 2		# s1 := 2

slt	$t0, $s1, $s0		# t0 := s1 < s2 ? 1 : 0

beq	$t0, $zero, skip	# if t0 == 0 goto skip
addi	$s3, $zero, 1		# s3 := 1

skip:

.data
