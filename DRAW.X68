; =========================================================
; DRAWING MANAGEMENT
; =========================================================

; ---------------------------------------------------------
DRAWFIRST

; DRAWS ALL FIRST STAGE
; INPUT    - A0 POINTER TO THE PICTURE
;            D5.W X OFFSET
;            D6.W Y OFFSET
; OUTPUT   - NONE
; MODIFIES - NONE
; ----------------------------------------------------------

			MOVEM.L A2,-(A7)
			LEA	DRAWLST1,A2
			MOVE.W #0,D7
			
.LOOP_DRW			
			MULU.W #4,D7
			MOVE.L  (A2,D7.W),A0	; POINTER TO ACTUAL ADRESS
			DIVU.W #4,D7
			MOVEM.L A0,-(A7)
			JSR DRAWSR
			MOVEM.L (A7)+,A0
			
			ADDQ.W  #1,D7
            CMP.W   #LENGTH1,D7          
            BLT    .LOOP_DRW        ; LOWER THAN LENGTH1 KEEP
									; ITERATING
			MOVE.L (A7)+,A2			
			RTS

; ----------------------------------------------------------
DRAWFLOOR

; DRAWS THE FLOOR
; INPUT    - 
; OUTPUT   - NONE
; MODIFIES - NONE
; ----------------------------------------------------------

			
			LEA	FLOORDATA,A0
			MOVE.W #0,D7
.LOOP_DRW2	
					
			MOVEM.L A0,-(A7)
			JSR DRAWSR
			MOVEM.L (A7)+,A0
			
			ADDQ.W  #1,D7
			ADD.W	#50,D5
            CMP.W   #LENGTH2,D7          
            BLT    .LOOP_DRW2      ; LOWER THAN LENGTH1 KEEP
								   ; ITERATING
			RTS




; ----------------------------------------------------------
DRAWSR

; DRAWS A OBJECT
; INPUT    - A0 POINTER TO THE OBJECT
;            D5.W X OFFSET
;            D6.W Y OFFSET
; OUTPUT   - NONE
; MODIFIES - NONE
; ----------------------------------------------------------
		
			MOVEM.L D0-D4/A0-A1,-(A7)
			
.LOOP		MOVE.W  (A0)+,D0   		; COMMAND ID
			BEQ 	.END
			LEA     .TBL,A1
			MULU.W 	#4,D0			; TIMES 4 TO ACCES CORRECT LONG						
			MOVE.L  (A1,D0.W),A1	; GET THE CORRECT JUMP ADDRESS		 
           	DIVU.W  #4,D0           ; RESTORE D0
			ADD.W   #79,D0          ; CREATE THE TRAP CODE
            JMP     (A1)            ; JUMP TO ADDRESS
            

.TBL     	DC.L    .LOOP           ; 00 UNUSED
            DC.L    .D1L            ; 01 SET PEN
            DC.L    .D1L            ; 02 SET FILL
            DC.L    .PAF            ; 03 DRAW PIXEL
            DC.L    .PAF            ; 04 SET PEN AND FILL
            DC.L    .D1D4W          ; 05 DRAW LINE FULL SPECS
            DC.L    .D1D2W          ; 06 DRAW LINE POLYLINE VERSION
            DC.L    .D1D2W          ; 07 MOVE TO
            DC.L    .D1D4W          ; 08 DRAW FILLED RECTANGLE
            DC.L    .D1D4W          ; 09 DRAW FILLED ELLIPSE
            DC.L    .D1D2W          ; 10 FLOOD FILL
            DC.L    .D1D4W          ; 11 DRAW UNFILLED RECTANGLE
            DC.L    .D1D4W          ; 12 DRAW UNFILLED ELLIPSE          
            
.D1L		MOVE.L  (A0)+,D1        ; GET LONG
            TRAP    #15
            JMP     .LOOP
            
.PAF       	MOVE.L  (A0)+,D1        ; GET LONG AND DO SET PEN AND FILL
            MOVE.B  #80,D0
            TRAP    #15
            ADDQ.B  #1,D0
            TRAP    #15
            JMP     .LOOP
            
.D1D2W      MOVE.L  (A0)+,D1        ; GET LONG AND DO SET PEN AND FILL
            MOVE.B  #80,D0
            TRAP    #15
            ADDQ.B  #1,D0
            TRAP    #15
            JMP     .LOOP

            
.D1D4W      MOVEM.W (A0)+,D1-D4     ; GET 4 WORDS
            ADD.W   D5,D1
            ADD.W   D6,D2
            ADD.W   D5,D3
            ADD.W   D6,D4
            TRAP    #15
            JMP     .LOOP					
			
.END        MOVEM.L (A7)+,D0-D4/A0-A1

            RTS












*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~
