*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
    
    
    INCLUDE "Constants.X68"
     INCLUDE "File.X68"
    INCLUDE "init.X68"
    INCLUDE "draw.X68"
    INCLUDE "DATA/Data.X68"
    
START:
    
   
    
    JSR     INIT     ; 1. Primero inicializamos la pantalla
    JSR     FILE
    JSR     DRAWBLOCK   ; 2. Despues dibujamos el bloque
    JSR     DRAWBLOCK2   ; 2. Despues dibujamos el bloque
    JSR     DRAWLLIT
   

    
    
   
    

                             
    SIMHALT  
           
    INCLUDE "Vars.X68"
    
    END    START       














*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~
