*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------

INIT
        JSR SCRINIT
        JSR FILEINIT
        RTS
   
; -----------------------------------------------------------------------------
SCRINIT
; INITIALIZES THE SCREEN, SCREEN-RELATED INTERRUPT AND VARS.
; INPUT    - NONE
; OUTPUT   - NONE
; MODIFIES - D0,D1,D2,D3
; -----------------------------------------------------------------------------

              MOVE.B  #33,D0
            MOVE.L  #SCRWIDTH<<16|SCRHEIGH,D1 ; WIDTH (HIGH) | HEIGHT (LOW)
            TRAP    #15
            
            MOVE.L  #1,D1                   ; SET WINDOWED MODE
            TRAP    #15
            RTS
                  

FILEINIT

        MOVE.B #50,D0
        TRAP    #15
        RTS







*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
