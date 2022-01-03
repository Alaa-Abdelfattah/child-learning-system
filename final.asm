.MODEL SMALL
.STACK 
.DATA  
        
MSG db "                      ALAA ABD ELFATTAH", 0dh,0ah 
    db "               ==== Children Learning App ====", 0dh,0ah
	db "                   =====================", 0dh,0ah
	db "                   Press any key to start...", 0dh,0ah
	db "                                              $", 0dh,0ah



SELECT DB "                      1.STUDY OR *.Exit","$" 
STUDY DB "                          STUDY",0dh,0ah
       DB "                   Input Alphabet or Digit$",0dh,0ah
DASH DB " - ", "$"



N1 DB "ZERO","$"    
N2 DB "ONE","$"
N3 DB "TWO","$"
N4 DB "THREE","$"
N5 DB "FOUR","$"
N6 DB "FIVE","$"
N7 DB "SIX","$"
N8 DB "SEVEN","$"
N9 DB "EIGHT","$"
N10 DB "NINE","$"


	     
a    db "Apple","$"
b    db "BOOK","$" 
c    db "Cat","$"
d    db "Dog","$" 
e    db "Egg","$" 
f    db "Fish","$" 
g    db "Goat","$"
h    db "Hat","$"
i    db "Ice cream","$" 
j    db "Jelly","$" 
k    db "Key","$" 
l    db "Lion","$" 
m    db "Monkey","$" 
n    db "Numbers","$" 
o    db "Orange","$"
p    db "Pen","$"
q    db "Queen","$" 
r    db "Rice","$" 
s    db "Sun","$" 
t    db "Tree","$"
u    db "Umbrella","$" 
v    db "Violin","$" 
w    db "Window","$"
x    db "Xylophone","$"  
y    db "Yo-yo","$" 
z    db "Zoo","$"

TNX DB "                   ===o THANK YOU o===$"
INV DB "                         INVALID INPUT.$"  
SPACE DB "                        $"

.CODE

MAIN PROC   FAR
        
    .STARTUP
      
    INCLUDE 'EMU8086.INC'

    MOV AH,9
    LEA DX,MSG
    INT 21H

    MOV AH,1
    INT 21H
 
    TOP:
    PRINTN ''
  
    MOV AH,9
    LEA DX,SELECT
    INT 21H
 
    PRINTN ''
    MOV AH,9
    LEA DX,SPACE
    INT 21H
        
    MOV AH,1
    INT 21H
    MOV BL,AL



    PRINTN ''
 
    CMP BL,'1'
    JE OPP1
 
    CMP BL,'*'
    JE OP2
 
    JMP TOP 
  
    PRINTN ''
 
 
         
 OPP1:
   
    MOV AH,9
    LEA DX,STUDY
    INT 21h
 
 PRINTN ''
 
 OP1: 
 PRINTN ''
    
 MOV AH,9
 LEA DX,SPACE
 INT 21H 
   
       
 MOV AH,1
 INT 21H
 MOV BL,AL  
 
 
 CMP BL,'*'
 JE OP2
 
 CMP BL,58   
 
 MOV AH,9
 LEA DX,DASH
 INT 21H  
 
 JL NUMBER
 
 
 
  
 CMP  BL,'A'
 JE C1
 CMP BL,'a'
 JE C1  
  
 CMP  BL,'B'
 JE C2
 CMP BL,'b'
 JE C2 
   
 CMP  BL,'C'
 JE C3
 CMP BL,'c'
 JE C3 
  
 CMP  BL,'D'
 JE C4
 CMP BL,'d'
 JE C4
 
 CMP  BL,'E'
 JE C5
 CMP BL,'e'
 JE C5
   
 CMP  BL,'F'
 JE C6
 CMP BL,'f'
 JE C6
  
 CMP  BL,'G'
 JE C7
 CMP BL,'g'
 JE C7
  
 CMP  BL,'H'
 JE C8
 CMP BL,'h'
 JE C8
  
 CMP  BL,'I'
 JE C9
 CMP BL,'i'
 JE C9
  
 CMP  BL,'J'
 JE C10
 CMP BL,'j'
 JE C10
  
 CMP  BL,'K'
 JE C11
 CMP BL,'k'
 JE C11
  
 CMP  BL,'L'
 JE C12
 CMP BL,'l'
 JE C12
 
 CMP  BL,'M'
 JE C13
 CMP BL,'m'
 JE C13     
  
 CMP  BL,'N'
 JE C14
 CMP BL,'n'
 JE C14
  
 CMP  BL,'O'
 JE C15
 CMP BL,'o'
 JE C15
  
 CMP  BL,'P'
 JE C16
 CMP BL,'p'
 JE C16
     
 CMP  BL,'Q'
 JE C17
 CMP BL,'q'
 JE C17
  
 CMP  BL,'R'
 JE C18
 CMP BL,'r'
 JE C18
  
 CMP  BL,'S'
 JE C19
 CMP BL,'s'
 JE C19 
  
 CMP  BL,'T'
 JE C20
 CMP BL,'t'
 JE C20
  
 CMP  BL,'U'
 JE C21
 CMP BL,'u'
 JE C21
 
 CMP  BL,'V'
 JE C22
 CMP BL,'v'
 JE C22
  
 CMP  BL,'W'
 JE C23
 CMP BL,'w'
 JE C23
  
 CMP  BL,'X'
 JE C24
 CMP BL,'x'
 JE C24
  
 CMP  BL,'Y'
 JE C25
 CMP BL,'y'
 JE C25
  
 CMP  BL,'Z'
 JE C26
 CMP BL,'z'
 JE C26
        
  NUMBER: 
  

  
 CMP  BL,'0'
 JE C27
 
 CMP  BL,'1'
 JE C28 
 
 CMP BL,'2'
 JE C29  
 
 CMP  BL,'3'
 JE C30  
 
 CMP BL,'4'
 JE C31     
          
 CMP  BL,'5'
 JE C32 
 
 CMP BL,'6'
 JE C33 
 
 
 CMP  BL,'7'
 JE C34 
 
 CMP BL,'8'
 JE C35   
 
 CMP  BL,'9'
 JE C36 
 JMP OP1
  
 MOV AH,9
 LEA DX,INV
 INT 21H
 JMP OP1
    
 C1:
  MOV AH,9
  LEA DX,a
  INT 21H
  JMP OP1
      
 C2:
  MOV AH,9
  LEA DX,b
  INT 21H
  JMP OP1
      
 C3:
  MOV AH,9
  LEA DX,c
  INT 21H
  JMP OP1
      
 C4:
  MOV AH,9
  LEA DX,d
  INT 21H
  JMP OP1 
      
 C5:
  MOV AH,9
  LEA DX,e
  INT 21H
  JMP OP1
      
 C6:
  MOV AH,9
  LEA DX,f
  INT 21H
  JMP OP1
       
 C7:
  MOV AH,9
  LEA DX,g
  INT 21H
  JMP OP1 
      
 C8:
  MOV AH,9
  LEA DX,h
  INT 21H
  JMP OP1 
      
 C9:
  MOV AH,9
  LEA DX,i
  INT 21H
  JMP OP1 
       
 C10:
  MOV AH,9
  lEA DX,j
  INT 21H
  JMP OP1
       
 C11:
  MOV AH,9
  LEA DX,k
  INT 21H
  JMP OP1
      
 C12:
  MOV AH,9
  LEA DX,l
  INT 21H
  JMP OP1
    
 C13:
  MOV AH,9
  LEA DX,m
  INT 21H
  JMP OP1 
      
 C14:
  MOV AH,9
  LEA DX,n
  INT 21H
  JMP OP1 
       
 C15:
  MOV AH,9
  LEA DX,o
  INT 21H
  JMP OP1 
       
 C16:
  MOV AH,9
  LEA DX,p
  INT 21H
  JMP OP1 
       
 C17:
  MOV AH,9
  LEA DX,q
  INT 21H
  JMP OP1 
       
 C18:
  MOV AH,9
  LEA DX,r
  INT 21H
  JMP OP1 
      
 C19:
  MOV AH,9
  LEA DX,s
  INT 21H
  JMP OP1  
      
 C20:
  MOV AH,9
  LEA DX,t
  INT 21H
  JMP OP1 
       
 C21:
  MOV AH,9
  LEA DX,u
  INT 21H
  JMP OP1 
       
 C22:
  MOV AH,9
  LEA DX,v
  INT 21H
  JMP OP1 
  
 C23:
  MOV AH,9
  LEA DX,w
  INT 21H
  JMP OP1
       
 C24:
  MOV AH,9
  LEA DX,x
  INT 21H
  JMP OP1 
       
 C25:
  MOV AH,9
  LEA DX,y
  INT 21H
  JMP OP1
       
 C26:
  MOV AH,9
  LEA DX,z
  INT 21H
  JMP OP1  
    
 C27:
  MOV AH,9
  LEA DX,N1
  INT 21H
  JMP OP1  
 
 C28:
  MOV AH,9
  LEA DX,N2
  INT 21H
  JMP OP1 
 
 C29:
  MOV AH,9
  LEA DX,N3
  INT 21H
  JMP OP1
  
 C30:
  MOV AH,9
  LEA DX,N4
  INT 21H
  JMP OP1 
 
 C31:
  MOV AH,9
  LEA DX,N5
  INT 21H
  JMP OP1  
  
 C32:
  MOV AH,9
  LEA DX,N6
  INT 21H
  JMP OP1
  
 C33:
  MOV AH,9
  LEA DX,N7
  INT 21H
  JMP OP1 
 
 C34:
  MOV AH,9
  LEA DX,N8
  INT 21H
  JMP OP1  
   
 C35:
  MOV AH,9
  LEA DX,N9
  INT 21H
  JMP OP1
  
 C36:
  MOV AH,9
  LEA DX,N10
  INT 21H
  JMP OP1 

 OP2:     
 
 PRINTN ''
 PRINTN ''
  
  MOV AH,9
  LEA DX,TNX
  INT 21H
 
 .EXIT
  
  MAIN ENDP
END MAIN