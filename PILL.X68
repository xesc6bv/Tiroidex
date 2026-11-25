; ==========================================================
; PILL OF TITLE SCREEN MANAGEMENT
; ==========================================================

; ---------------------------------------------------------
PILLINIT
; INITIALIZES THE PILL
; INPUT    - NONE
; OUTPUT   - NONE
; MODIFIES - NONE
; ---------------------------------------------------------	
	MOVE.W #PILLXINIT,(PILLPOSX)
	MOVE.W #PILLYINIT,(PILLPOSY)
	MOVE.W #PILXINITS,(PILPOSXS)
	MOVE.W #PILYINITS,(PILPOSYS)
	RTS
	

; ---------------------------------------------------------
PILLUPDT
; UPDATE THE PILL
; INPUT    - NONE
; OUTPUT   - NONE
; MODIFIES - NONE
; ---------------------------------------------------------	
	 
	RTS
	

; ---------------------------------------------------------
PILLPLOT
; PLOT THE PILL
; INPUT    -
; OUTPUT   -
; MODIFIES -
; ---------------------------------------------------------	
	
	; dibujar la elipse en función del radio y de la posición dada en updt
	
	RTS
	
		
	




*~Font name~Courier New~
*~Font size~12~
*~Tab type~0~
*~Tab size~12~
