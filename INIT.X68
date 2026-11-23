; ==========================================================
; INITIALIZATION MANAGEMENT
; ==========================================================

; ----------------------------------------------------------
INIT
; INITIALIZES SYSTEM AND SETS USER MODE
; INPUT    - NONE
; OUTPUT   - NONE
; MODIFIES - NONE
; -----------------------------------------------------------
        
		JSR SCRINIT
        JSR FILEINIT
        
        
       	MOVE.W SR,-(A7)  				; SAVE SR IN STACK
       	ANDI.W #$DFFF,(A7)              ; SET USER MODE
       	RTE
   
; ----------------------------------------------------------
SCRINIT
; INITIALIZES THE SCREEN
; INPUT    - NONE
; OUTPUT   - NONE
; MODIFIES - D0,D1
; -----------------------------------------------------------

			MOVEM.L D0-D1,-(A7)
			
            MOVE.B  #33,D0					  ; SET SCREEN RESOLUTION
            MOVE.L  #SCRWIDTH<<16|SCRHEIGH,D1 ; WIDTH (HIGH) | HEIGHT (LOW)
            TRAP    #15
            
            MOVE.L  #1,D1                     ; SET WINDOWED MODE
            TRAP    #15
            
            MOVE.B #11, D0				      ; CLEAR SCREEN
            MOVE.W #$FF00, D1
            TRAP #15
            
            MOVEM.L (A7)+,D0-D1
            
            RTS
                  
   
; ----------------------------------------------------------
FILEINIT
; CLOSES ALL THE OPENED FILE
; INPUT    - NONE
; OUTPUT   - NONE
; MODIFIES - D0
; -----------------------------------------------------------

		MOVEM.L D0,-(A7)

        MOVE.B #50,D0
        TRAP    #15
        
        MOVEM.L (A7)+,D0
        
        RTS









*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
