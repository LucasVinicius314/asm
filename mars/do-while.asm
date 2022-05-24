.text

.globl main

main:

ori 	$s0, $zero, 10	                  # s0 := 10
ori 	$s1, $zero, 00	                  # s1 :=  0

do:
addi	$s0, $s0, -1	                    # s0 -= 1

bne	$s0, $s1, do	                      # if s0 == s1 goto if

.data
