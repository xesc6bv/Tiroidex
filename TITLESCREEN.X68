; ==========================================================
; TITLE SCREEN MANAGEMENT
; ==========================================================

; ---------------------------------------------------------
TITLESCRINIT
; INITIALIZES THE TITLESCR
; INPUT    - NONE
; OUTPUT   - NONE
; MODIFIES - A1, A0, D1, D0
; ---------------------------------------------------------	
	MOVEM.L D0-D1, -(A7)
	MOVEM.L A0-A1, -(A7)

	MOVE.B #11,D0           ; SET FIRST SUBHEADING POS
	MOVE.W #S1COORD, D1
	TRAP   #15

	LEA	S1STR,A1         ; PRINT FIRST SUBHEADING
	MOVE.L #42,D1
	MOVE.B #0,D0
	TRAP   #15
	
	MOVE.B #11,D0           ; SET FIRST SUBHEADING POS
	MOVE.W #S2COORD, D1
	TRAP   #15
	
	LEA	S2STR,A1         ; PRINT SECOND SUBHEADING
	MOVE.L #22,D1
	MOVE.B #0,D0
	TRAP   #15
	
	CLR.W 	D5               ; NO OFFSET NEEDED
	CLR.W 	D6               ; NO OFFSET NEEDED
	LEA	DRAWTITLELST,A1  ; TAKE THE LIST DIRECTION
	MOVE.L (A1)+,A0          ; PUT THE FIRST OBJECT IN A0 AND UPDATE
	JSR DRAWSR
	MOVE.L (A1),A0           ; PUT THE SECOND OBJECT IN A0
	JSR DRAWSR
	
	SUBA.L A0,A0
	SUBA.L A0,A0
	
	JSR PILLINIT
	JSR PILLPLOT
	
	MOVEM.L (A7)+, A0-A1
	MOVEM.L (A7)+,D0-D1
	
	RTS

; ---------------------------------------------------------
TITLESCRUPDT
; UPDATE THE TITLESCR
; INPUT    -
; OUTPUT   -
; MODIFIES -
; ---------------------------------------------------------	
	RTS
	

; ---------------------------------------------------------
TITLESCRPLOT
; PLOT THE TITLESCR
; INPUT    -
; OUTPUT   -
; MODIFIES -
; ---------------------------------------------------------	
	RTS
	
		
	






*~Font name~Courier New~
*~Font size~12~
*~Tab type~0~
*~Tab size~12~
