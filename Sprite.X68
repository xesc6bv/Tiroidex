*-----------------------------------------------------------
* Title      :SPRITE
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
SPRITEDRAWING
			
			LEA BUFFER,A0
			
			MOVE.W	(A0)+,D6	;IMAGE WIDTH
			MOVE.W	(A0)+,D7	;IMAGE HEIGHT
		
			
			MOVE.L	#0,D4		;D4 USED TO CONTROL CURRENT WIDTH
			MOVE.L	#0,D3		;D3 USED TO CONTROL CURRENT HEIGHT
			
HEIGHT		CMP.W D7,D3
			BHS FINAL						
			MOVE.L	#0,D4		;D4 USED TO CONTROL CURRENT WIDTH

NEXT			
			MOVE.L	(A0)+,D0	;COLORS AND NUMBER OF REPETITIONS
			MOVE.L	D0,D1		;D1 GETS COLOR
			LSR.L	#8,D1		;BITS MOVED TO GET CORRECT FORMAT			
			MOVE.L	D0,D5		;D5 GETS REPETITIONS
			AND.L #$FF,D5		;MASK TO GET CORRECT FORMAT

			
			CLR D0
			MOVE.B #80,D0
			TRAP #15
			
PAINT

			MOVE.L D4,D1
			MOVE.L D3,D2 
			MOVE.B #82,D0
			TRAP #15
			ADDQ.L #1,D4
			DBRA D5,PAINT
			CMP.W D4,D6
			BEQ HEIGHT_CHECK
			BNE NEXT
HEIGHT_CHECK
			ADDQ.W #1,D3
			BRA	HEIGHT
			
FINAL  			RTS







*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
