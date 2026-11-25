; ==========================================================
; GAME VARIABLE
; ==========================================================

; - FILE RELATED VARIABLES --------------------------------- 

FILEDIRECTION1  DC.B 'IMG\walk1.bin',0   ; CH FILE DIRECTION
                DS.W 0
                
BUFFER1         DS.B 516                 ; CH FILE SIZE

; - PLAYER RELATED VARIABLES --------------------------------

PLAYPOSX 		DS.W 1 					 ; PLAY X COORDINATE
PLAYPOSY		DS.W 1					 ; PLAY Y COORDINATE

; - TITLE SCREEN RELATED VARIABLES --------------------------

PILLPOSX 		DS.W 1 					 ; PILL X COORDINATE
PILLPOSY		DS.W 1					 ; PILL Y COORDINATE
PILPOSXS 		DS.W 1 					 ; PILL SHADOW X COORDINATE
PILPOSYS		DS.W 1					 ; PILL SHADOW Y COORDINATE
PILLVELX		DS.W 1					 ; PILL X VELOCITY
PILLVELY		DS.W 1					 ; PILL Y VELOCITY








*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~
