.text

.globl main

main:

addi 	$a0, $zero, 1
addi 	$a1, $zero, 2

jal 	death

add 	$s0, $zero, $v0

j 	end

death:

add 	$v0, $a0, $a1
jr 	$ra

end:

.data
