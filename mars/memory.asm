.text

.globl main

main:

lw 	$t0, x1		# pega oq tem em x1 na memória e taca no t0
lw 	$t1, x2		# pega oq tem em x2 na memória e taca no t1

add 	$t2, $t0, $t1	# soma t0 e t1, taca em t2

sw 	$t2, x3		# escreve oq tem em t2 na memória, em x3

.data

x1: .word 1		# fala q x1 é um endereço e começa com 1
x2: .word 6		# fala q x2 é um endereço e começa com 6
x3: .word 0		# fala q x3 é um endereço e começa com 0
