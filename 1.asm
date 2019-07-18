.data
list: .word 2, 3, 5, 6, 3, 2, 0
.text
.globl main
main:	la $t1,list	#list address
	li $t2,0	#loop counter
while:	lw $t0,($t1)
	beq $t0,0,end
	addi $t1,$t1,4
	addi $t2,$t2,1
	b while
end:	move $a0,$t2
	li $v0,1
	syscall
li $v0,10
syscall