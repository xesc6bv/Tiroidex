*-----------------------------------------------------------
* Title      : FILE
* Written by : Francesc Bruquetas Vera
* Date       : 03-11-2026
* Description: All constants used in the program are here
*-----------------------------------------------------------

FILE
            MOVEM.L D0-D2/A1,-(A7)
            JSR FILEOPENING
            JSR FILEREADING1
            JSR FILECLOSING
            MOVEM.L (A7)+,D0-D2/A1
            RTS

FILEOPENING
             

             LEA    FILEDIRECTION1,A1
             MOVE.B #51,D0
             TRAP   #15
             RTS

FILEREADING1

            LEA     BUFFER,A1
            MOVE.L  #1996,D2
            MOVE.B  #53,D0
            TRAP    #15        
            RTS


FILECLOSING   

           MOVE.B   #56,D0
           TRAP     #15
           MOVEM.L (A7)+,D0/A0/D2
           RTS
           
         





*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~
