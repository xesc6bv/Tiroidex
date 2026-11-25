; ===========================================================
; TITLE    : TIROIDEX
; AUTHOR 1 : FRANCESC BRUQUETAS VERA
; AUTHOR 2 : ALEJANDRO CASTILLA CUÉLLAR
; ===========================================================

    ORG    $1000
    
; - CONSTANTS INCLUDES -------------------------------------  
	
	INCLUDE "SYSCONSTS.X68"				; SYSTEM CONSTANTS
    INCLUDE "CONSTANTS.X68"             ; GENERAL CONSTANTS
    
; - DATA INCLUDES ------------------------------------------   

    INCLUDE "DATA/DRAWINGDATA.X68"		; DATA ABOUT DRAW
    INCLUDE "DATA/TEXTDATA.X68"			; DATA ABOUT TXT
    
; - CODE INCLUDES -------------------------------------------    

    INCLUDE "FILE.X68"                  ; FILE MANAGEMENT
    INCLUDE "INIT.X68"                  ; INITIALIZATION MANAGEMENT
    INCLUDE "DRAW.X68"					; DRAWING MANAGEMENT
    INCLUDE "SPRITE.X68"				; SPRITES MANAGEMENT
    INCLUDE "PILL.X68"					; PILL MANAGEMENT
    INCLUDE "TITLESCREEN.X68"           ; TITLESCR MANAGEMENT
    INCLUDE "MAP.X68"					; MAP MANAGEMENT
    INCLUDE "PLAYER.X68"                ; PLAYER MANAGEMENT
    INCLUDE "SLEEPBAR.X68"				; SLEEPBAR MANAGEMENT
    
START

; - INITIALIZATION -----------------------------------------

	JSR     INIT
	JSR		TITLESCRINIT
	JSR		MAPINIT
	JSR		PLAYERINIT
	JSR		SLPBARINIT
	
	;JSR		FILE
	;JSR		SPRITEDRAWINGDEF
	
	
.LOOP
	
; - UPDATE -------------------------------------------------	
    
    ; READ INPUT DEVICES - NO DRAWING
    ; UPDATE GAME LOGIC - NO DRAWING
    
; - SYNC ---------------------------------------------------
    
    ; AVOID INCOMPATIBILITIES BETWEEN DRAWING SPEED AND INPUT READING SPEED
    
; - PLOT ---------------------------------------------------

	; DRAWING ALL THE GAME - NO UPDATE  

	BRA .LOOP   
    
    SIMHALT
    
; - VARIABLES INCLUDES -------------------------------------
    
    INCLUDE "VARS.X68"                   ; GENERAL VARIABLES
    INCLUDE "SYSVARS.X68"                 ; SYSTEM VARIABLES
    
    END    START       
































*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~
