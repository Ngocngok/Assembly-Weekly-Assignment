.data		
		x: .space 20
		y: .space 20
		

.text
		li $t7, 0			#t7 is to count the number of the char entered
		addi $t1, $0, 0x0000000a 	#character enter =)))
		la $s0, x			#load address of the memory space
		
getchar:
		li $v0, 12
		syscall
		beq $v0, $t1, process 		#if get char enter
		sb $v0, 0($s0)
		add $s0, $s0, 1		#get address for next char
		addi $t7,$t7,1
		
		beq $t7, 20, process
		j getchar
process:
		div $t0, $t7, 2		#number of loop
		
reverse:	li $t6, 0		#counter
		mul $a0, $t6, -1	#-counter
		addi $t5, $a0, 20	#counter of revered char in the array
		
		lw $t4, x($t0)		#get the char
		lw $t3, x($t5)		#get the inversed char
		sw $t4, x($t5)
		sw $t5, x($t0)
				
		