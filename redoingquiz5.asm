	#include<p18f4550.inc>
	
n	equ		D'7' ; n has the value of 7
i	set		0x04 ;assign file register 0x04 to i

start	clrf TRISD,A
		clrf PORTD,A
		movlw b'0000001'
		movwf PORTD,A
		movlw D'7'
		movwf i,A
		
loop 	rlncf PORTD,f,A
		decfsz i,f,A
		bra loop

		end
		

