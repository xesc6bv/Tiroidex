*-----------------------------------------------------------
* Title            : Draw
* Written by   :
* Date           :
* Description : 
*-----------------------------------------------------------


DRAWBLOCK 
           MOVE.W #12, D5                   ; LOOP COUNTER
           MOVE.W #0, D6                     ; OFFSET
           

            MOVE.B  #80,D0                  ; SET PEN COLOR
            MOVE.L  #BLOCK1PEN,D1
            TRAP    #15
            MOVE.B  #81,D0                  ; SET FILL COLOR
            MOVE.L  #BLOCK1FILL,D1
            TRAP    #15
            
LOOP          
            LEA BLOCK1,A1                   ; BEGINNING OF ARRAY
            MOVEM.W (A1)+,D1-D4       ; GET COORDINATES FROM ARRAY
            ADD.W D6,D1                       ; ADD OFFSET
            ADD.W D6,D3                       ; ADD OFFSET
            MOVE.B  #87,D0                  ; DRAW SQUARE
            TRAP    #15

            MOVE.W #3, D7                   ; INNER LOOP COUNTER

LINES_LOOP
            
            MOVEM.W (A1)+,D1-D4       ; GET COORDINATES FROM ARRAY
            ADD.W D6,D1                       ; ADD OFFSET
            ADD.W D6,D3                       ; ADD OFFSET
            MOVE.B  #84,D0                  ; DRAW DETAILS
            TRAP    #15 
            DBRA D7, LINES_LOOP
            
            ADD.W #50,D6                     ; UPDATE OFFSET
            DBRA D5, LOOP
            
            
            RTS
            

            
    
DRAWBLOCK2


            MOVE.B  #80,D0                  ; SET PEN COLOR
            MOVE.L  #BLOCK2PEN,D1
            TRAP    #15
            MOVE.B  #81,D0                  ; SET FILL COLOR
            MOVE.L  #BLOCK2FILL,D1
            TRAP    #15
                     
            LEA    .BLOCK2,A1
            MOVEM.W (A1)+,D1-D4             ; GET COORDINATES FROM ARRAY
            MOVE.B  #87,D0                  ; DRAW SQUARE
            TRAP    #15 
            
             LEA    .BLOCK2A,A1
            MOVEM.W (A1)+,D1-D4             ; GET COORDINATES FROM ARRAY
            MOVE.B  #87,D0                   ; DRAW SQUARE
            TRAP    #15 
            
             LEA    .BLOCK2B,A1
            MOVEM.W (A1)+,D1-D4             ; GET COORDINATES FROM ARRAY
             MOVE.B  #87,D0                  ; DRAW SQUARE
            TRAP    #15 



            
            RTS









DRAWLLIT

            MOVE.B  #80,D0                  ; SET PEN COLOR
            MOVE.L  #LLITPEN1,D1
            TRAP    #15
            MOVE.B  #81,D0                  ; SET FILL COLOR
            MOVE.L  #LLITFILL1,D1
            TRAP    #15

            LEA    .LLITA,A1
            MOVEM.W (A1)+,D1-D4             ; GET COORDINATES FROM ARRAY
            MOVE.B  #87,D0                  ; DRAW SQUARE
            TRAP    #15 

            LEA    .LLITB,A1
            MOVEM.W (A1)+,D1-D4             ; GET COORDINATES FROM ARRAY
            MOVE.B  #87,D0                  ; DRAW SQUARE
            TRAP    #15
            
            LEA    .LLITC,A1
            MOVEM.W (A1)+,D1-D4             ; GET COORDINATES FROM ARRAY
            MOVE.B  #87,D0                  ; DRAW SQUARE
            TRAP    #15 
            
             LEA    .LLITD,A1
            MOVEM.W (A1)+,D1-D4             ; GET COORDINATES FROM ARRAY
            MOVE.B  #87,D0                  ; DRAW SQUARE
            TRAP    #15 

            
            MOVE.B  #80,D0                  ; SET PEN COLOR
            MOVE.L  #LLITPEN2,D1
            TRAP    #15
            MOVE.B  #81,D0                  ; SET FILL COLOR
            MOVE.L  #LLITFILL2,D1
            TRAP    #15
            
            LEA    .LLITE,A1
            MOVEM.W (A1)+,D1-D4             ; GET COORDINATES FROM ARRAY
            MOVE.B  #87,D0                  ; DRAW SQUARE
            TRAP    #15 

            LEA    .LLITF,A1
            MOVEM.W (A1)+,D1-D4             ; GET COORDINATES FROM ARRAY
            MOVE.B  #87,D0                  ; DRAW SQUARE
            TRAP    #15
            
            RTS
            

















































*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~
