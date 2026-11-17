*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------

;-----------------Drawing Related Data-------------------


DRAWLST      	DC.L    .LLIT                	; 0
            	DC.L    .BLOCK2                 ; 1

            	

.BLOCK2            
					DC.W 2
					DC.L BLOCK2FILL
				 	DC.W 8,100,250,190,180
          			DC.W 8,185,270,330,200
            		DC.W 8,280,220,310,180
					DC.W 0 

.LLIT              	DC.W 2
					DC.L LLITFILL1
					DC.W 8,350,430,355,410
              		DC.W 8,350,420,440,410
              		DC.W 8,440,430,445,410
              		DC.W 8,440,410,445,390
              		DC.W 2
					DC.L LLITFILL2
              		DC.W 8,350,410,415,390
              		DC.W 2
					DC.L LLITFILL3
              		DC.W 8,415,410,445,390
					DC.W 0
					
					
FLOORDATA			DC.W 1
					DC.L BLOCK1PEN
					DC.W 2
					DC.L BLOCK1FILL
            		DC.W 8,0,478,50,430
                    DC.W 5,0,450,50,450
                    DC.W 5,0,470,50,470
                    DC.W 5,0,420,50,450
                    DC.W 5,25,470,25,450
                    DC.W 0				

*~Font name~Courier New~
*~Font size~12~
*~Tab type~1~
*~Tab size~4~
