.text

.globl main

main:
lw 	$s0, k
lw 	$s1, 0($s0)
lw 	$s2, 0($s1)
lw 	$s3, 0($s2)
sll	$s4, $s3, 1
sw	$s4, 0($s2)

.data

ccc: .word 5
bbb: .word ccc
aaa: .word bbb
k:   .word aaa
