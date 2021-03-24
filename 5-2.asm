.data
		x: .word 20			
		y: .word 80		
		message: .asciiz "The sum of " 
		message1: .asciiz " and "
		message2: .asciiz " is "
.text
		lw $s0, x
		lw $s1, y
		
		
		li $v0, 4
		la $a0, message
		syscall
		li $v0, 1
		lw $a0, x
		syscall
		li $v0, 4
		la $a0, message1
		syscall
		li $v0, 1
		lw $a0, y
		syscall
		li $v0, 4
		la $a0, message2
		syscall
		li $v0, 1
		add $a0, $s1, $s0
		syscall
		
		
		