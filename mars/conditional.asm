.text

.globl main

main:

addi 	$s0, $zero, 1                     # s0 := 1
ori 	$s1, $zero, 1                     # s0 := 1

beq	$s0, $s1, if	                      # if s0 == s1 goto if
j	else		                              # else goto else

if:
addi	$s3, $zero, 0xa                   # s3 := 10

j	endif                                 # goto endif

else:
addi	$s3, $zero, 0xb                   # s3 := 11

endif:

.data
