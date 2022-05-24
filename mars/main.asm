.text

.globl main

main:

addi 	$s0, $zero, 1		                  # s0 := 1
ori 	$s1, $zero, 2		                  # s1 := 2
sub 	$s2, $s0, $s1		                  # s2 := s0 - s1

ori	$t0, $zero, 1		                    # t0 |= 1
sll	$t0, $t0, 16		                    # t0 := t0 << 16
ori	$s3, $t0, 0x86a0                    # s3 := t0 | 0x86a0

.data
