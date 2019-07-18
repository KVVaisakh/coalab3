.data
char:	.byte 'b'
vowels:	.asciiz	"asdfvcbnmk"
.text
.globl main
main:	la $t1,vowels	#list address
	lb $t3,char
	li $t2,0	#loop counter
while:	lb $t0,($t1)
	beq $t0,0,end
	seq $t4,$t0,$t3
	beq $t4,1,print
	addi $t1,$t1,1
	addi $t2,$t2,1
	b while
print:	move $a0,$t2
	li $v0,1
	syscall
end:	beq $t0,0,print2
	li $v0,10
	syscall
print2:	li $t0,-1
	move $a0,$t0
	li $v0,1
	syscall
	b end