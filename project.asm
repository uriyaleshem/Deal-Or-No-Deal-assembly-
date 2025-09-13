IDEAL
MODEL small
 
;--------------------------------------
;----------- equ section --------------
;--------------------------------------
MOUSE_COLORred equ 127 ; red
MOUSE_COLORgreen equ 255 ; green
MOUSE_COLORblue equ 127 ; blue
FILE_NAME_OUT equ ''

;---------------------------------------
firstscreen  equ 'openscr.bmp'
back  equ 'backgr.bmp'
bankoff  equ 'banker.bmp'
ocase equ 'opencase.bmp'

back1 equ 'backgr1.bmp'
back2 equ 'backgr2.bmp'
back3 equ 'backgr3.bmp'
back4 equ 'backgr4.bmp'
back5 equ 'backgr5.bmp'

backo equ 'backopen.bmp'

ruless equ 'rules.bmp'

;---------------------------------------


casen1  equ 'case1.bmp'
casen2  equ 'case2.bmp'
casen3  equ 'case3.bmp'
casen4  equ 'case4.bmp'

casen5  equ 'case5.bmp'
casen6  equ 'case6.bmp'
casen7  equ 'case7.bmp'
casen8  equ 'case8.bmp'

casen9  equ 'case9.bmp'
casen10 equ 'case10.bmp'
casen11 equ 'case11.bmp'
casen12 equ 'case12.bmp'

casen13 equ 'case13.bmp'
casen14 equ 'case14.bmp'
casen15  equ 'case15.bmp'
casen16 equ 'case16.bmp'

;-------------------------------------------------------
;-------------------------------------------------------
;-------------------------------------------------------

moneyn1 equ '5in.bmp'
moneyn2 equ '10in.bmp'
moneyn3 equ '20in.bmp'
moneyn4 equ '50in.bmp'

moneyn5 equ '100in.bmp'
moneyn6 equ '150in.bmp'
moneyn7 equ '300in.bmp'
moneyn8 equ '500in.bmp'

moneyn9 equ '1000in.bmp'
moneyn10 equ '2500in.bmp'
moneyn11 equ '5000in.bmp'
moneyn12 equ '10000in.bmp'

moneyn13 equ '20000in.bmp'
moneyn14 equ '30000in.bmp'
moneyn15 equ '40000in.bmp'
moneyn16 equ '50000in.bmp'

;-----------------------------------------

moneyo1 equ '5out.bmp'
moneyo2 equ '10out.bmp'
moneyo3 equ '20out.bmp'
moneyo4 equ '50out.bmp'

moneyo5 equ '100out.bmp'
moneyo6 equ '150out.bmp'
moneyo7 equ '300out.bmp'
moneyo8 equ '500out.bmp'

moneyo9 equ '1000out.bmp'
moneyo10 equ '2500out.bmp'
moneyo11 equ '5000out.bmp'
moneyo12 equ '10000out.bmp'

moneyo13 equ '20000out.bmp'
moneyo14 equ '30000out.bmp'
moneyo15 equ '40000out.bmp'
moneyo16 equ '50000out.bmp'

;----------------------------------------------
openedcase1 equ 'openc1.bmp'
openedcase2 equ 'openc2.bmp'
openedcase3 equ 'openc3.bmp'
openedcase4 equ 'openc4.bmp'
openedcase5 equ 'openc5.bmp'
openedcase6 equ 'openc6.bmp'
openedcase7 equ 'openc7.bmp'
openedcase8 equ 'openc8.bmp'
openedcase9 equ 'openc9.bmp'
openedcase10 equ 'openc10.bmp'
openedcase11 equ 'openc11.bmp'
openedcase12 equ 'openc12.bmp'
openedcase13 equ 'openc13.bmp'
openedcase14 equ 'openc14.bmp'
openedcase15 equ 'openc15.bmp'
openedcase16 equ 'openc16.bmp'

openedcase equ 'opened.bmp'
;-------------------------------
gameenddeal equ 'enddeal.bmp'
gameendndeal equ 'endndeal.bmp'
opencasedeal equ 'dcaseo.bmp'
opencasendeal equ 'ndcaseo.bmp'



;--------------------------------------
;---------  end equ section -----------
;--------------------------------------


;--------------------------------------
;----------- macro section ------------
;--------------------------------------
macro SHOW_MOUSE
	mov ax, 1
	int 33h
endm


macro HIDE_MOUSE
	mov ax, 2
	int 33h
endm

MACRO PUT_CHAR   MY_CHAR
	mov dl,MY_CHAR
	mov ah,2
	int 21h
ENDM 

;--------------------------------------
;--------- end macro section ----------
;--------------------------------------

STACK 0f500h



;--------------------------------------
;----------- constant section ---------
;--------------------------------------
SCREEN_WIDTH = 320
BMP_MAX_WIDTH = SCREEN_WIDTH
BMP_MAX_HEIGHT = 200
SMALL_BMP_HEIGHT = 48
SMALL_BMP_WIDTH = 78
;--------------------------------------
;---------end constant section --------
;--------------------------------------

DATASEG
;--------------------------------------------
;--------------------------------------------
;--------------- bmp DATASEG ----------------
;--------------------------------------------
;--------------------------------------------
    ScrLine 	db BMP_MAX_WIDTH dup (0)  ; One Color line read buffer
	
	open1 	db firstscreen ,0
	background 	db back ,0
	banker db bankoff, 0
	
;-------------------------------------------------------------
	background1 db back1, 0
	background2 db back2, 0
	background3 db back3, 0
	background4 db back4, 0
	background5 db back5, 0
	
	openback db backo, 0
	rulesscr db ruless , 0
;---------------------------------------------------------------------------
	
	cn1 	db casen1 ,0
	cn2		db casen2 ,0
	cn3 	db casen3 ,0
	cn4		db casen4 ,0
	cn5 	db casen5 ,0
	cn6		db casen6 ,0
	cn7 	db casen7 ,0
	cn8		db casen8 ,0
	cn9 	db casen9 ,0
	cn10	db casen10 ,0
	cn11 	db casen11 ,0
	cn12 	db casen12 ,0
	cn13	db casen13 ,0
	cn14	db casen14 ,0
	cn15	db casen15 ,0
	cn16	db casen16 ,0
	
;-----------------------------------------------------
	
	m5in 	db moneyn1 , 0
	m10in 	db moneyn2 , 0
	m20in 	db moneyn3 , 0
	m50in 	db moneyn4 , 0
	m100in 	db moneyn5 , 0
	m150in 	db moneyn6 , 0
	m300in 	db moneyn7 , 0
	m500in 	db moneyn8 , 0
	m1000in db moneyn9 , 0
	m2500in 	db moneyn10 , 0
	m5000in 	db moneyn11 , 0
	m10000in 	db moneyn12 , 0
	m20000in 	db moneyn13 , 0
	m30000in 	db moneyn14 , 0
	m40000in 	db moneyn15 , 0
	m50000in 	db moneyn16 , 0
;-------------------------------------------------------
	m5out  db moneyo1, 0
	m10out db moneyo2, 0
	m20out db moneyo3, 0
	m50out db moneyo4, 0
	
	m100out  db moneyo5, 0
	m150out db moneyo6, 0
	m300out db moneyo7, 0
	m500out db moneyo8, 0
	
	m1000out  db moneyo9, 0
	m2500out db moneyo10, 0
	m5000out db moneyo11, 0
	m10000out db moneyo12, 0
	
	m20000out  db moneyo13, 0
	m30000out db moneyo14, 0
	m40000out db moneyo15, 0
	m50000out db moneyo16, 0
	
;---------------------------------------------------------
	
	openc1 db openedcase1, 0
	openc2 db openedcase2, 0
	openc3 db openedcase3, 0
	openc4 db openedcase4, 0
	openc5 db openedcase5, 0
	openc6 db openedcase6, 0
	openc7 db openedcase7, 0
	openc8 db openedcase8, 0
	openc9 db openedcase9, 0
	openc10 db openedcase10, 0
	openc11 db openedcase11, 0
	openc12 db openedcase12, 0
	openc13 db openedcase13, 0
	openc14 db openedcase14, 0
	openc15 db openedcase15, 0
	openc16 db openedcase16, 0
	
	openedcaseblack db openedcase, 0
	
	gamescrdeal db gameenddeal, 0
	gamescrndeal db gameendndeal, 0
	caseopendeal db opencasedeal, 0
	caseopenndeal db opencasendeal, 0

;----------------------------------------------------------
	
	FileNameOut	db FILE_NAME_OUT ,0
	FileHandle	dw ?
	Header 	    db 54 dup(0)
	Palette 	db 400h dup (0)
	SmallPicName db 'Pic48X78.bmp',0
	ErrorFile           db 0
	Color db ?
	Xclick dw ?
	Yclick dw ?
	Xp dw ?
	Yp dw ?
	GotClick db ?
	BmpLeft dw ?
	BmpTop dw ?
	BmpWidth dw ?
	BmpHeight dw ?
;--------------------------------------------
;--------------------------------------------
;---------- end bmp DATASEG -----------------
;--------------------------------------------
;--------------------------------------------





;--------------------------------------------
;------------- rnd DATASEG-------------------
;--------------------------------------------
RndCurrentPos dw start
shufflemax db 16
shuffletmp db 0
shuffleindex dw 0

;--------------------------------------------
;------------- end rnd DATASEG---------------
;--------------------------------------------




;--------------------------------------------
;------------- game DATASEG------------------
;--------------------------------------------
	CursorPositionX db 0
	CursorPositionY db 0
	tmpword dw 0
	moneyoffer dw 0
	moneyoffercnt dw 0
	didrules db 0
	dealornodeal db 0
	casesneedopen dw 5
	gameend db 0
;----------------------------------------------------------
	openornot dw 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
	
	moneytmp dw 5,10,20,50,100,150,300,500,1000,2500,5000,10000,20000,30000,40000,50000
	
	moneydraw dw 5,10,20,50,100,150,300,500,1000,2500,5000,10000,20000,30000,40000,50000
	
	moneyleft dw 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;-------------------------------------------------------------
	gamebegin db 0 
	openornot_index dw 0
	tmpkeepnum dw 0
	
	caseneedopen dw 0
	yourcase dw 0
	lastoffer dw 0
;--------------------------------------------
;---------- end game DATASEG-----------------
;--------------------------------------------
CODESEG
    
start: 
	mov ax, @data
	mov ds,ax
	
	mov ax,00h
    int 33h
	
	; open settings and open screen
	;----------------------------------------
	
	call SetGraphic
	call Showopenscreen
	call setbutton
	SHOW_MOUSE
	call shuffle
	;------------------------------------
	
	;infinate loop until start button pressd
	;-----------------------------------
didntbegin:
	cmp [gamebegin], 1
	je begingame
	jmp didntbegin	
begingame:
	HIDE_MOUSE
	;-------------------------------
	
	
	
	;game main draw and first case pick
	;----------------------------------
	call drawbackopen
    call showcasesopen
	call printmoney
	
	call firstcase
	;----------------------------------
	
	
	;game main rounds 
	;-----------------------------------------
	
	call round ;round 1 open 5 cases
	
	cmp [gameend], 1 ;check if deal or not deal
	je dealexit
	
	call round ;round 2 open 4 cases
	
	cmp [gameend], 1
	je dealexit
	
	call round ;round 3 open 3 cases
	
	cmp [gameend], 1
	je dealexit
	
	call round ;round 4 open 2 cases
	
	cmp [gameend], 1
	je dealexit
	
	;-----------------------------------------------
	
	;if no deal was picked 4 times open last case
	;-----------------------------
	call endgamenodeal
	jmp exit
	;-----------------------------
	
	; if picked deal game ends 
	;-----------------------------
dealexit:
	call endgamedeal
	;-----------------------------
	
	
exit:
	mov ah,0
	int 16h
	
	mov ax,2
	int 10h
	
	mov ax, 4c00h
	int 21h
	

;----------------------------------------------------------
;----------------------------------------------------------
;----------------------------------------------------------

;----------------------------------------------------------------
; void proc shows game end screen if choosen deal at any point of the game

; yourcase = personal case value
; lastoffer = last banker offer

; call -- ShowAxDecimal -- set_cursor_position -- _200MiliSecDelay --
;----------------------------------------------------------------
	proc endgamedeal
	
	mov dx, offset gamescrdeal
	mov [BmpLeft], 0
	mov [BmpTop], 0
	mov [BmpWidth], 320	
	mov [BmpHeight] ,200
	call OpenShowBmp
	
	mov [CursorPositionX], 17
	mov [CursorPositiony], 15
	call set_cursor_position
	
	mov ax, [lastoffer]
	call ShowAxDecimal
	
	mov cx, 25
loopdealy3:
	call _200MiliSecDelay
	loop loopdealy3
	
	mov dx, offset caseopendeal
	mov [BmpLeft], 0
	mov [BmpTop], 0
	mov [BmpWidth], 320	
	mov [BmpHeight] ,200
	call OpenShowBmp
	
	mov [CursorPositionX], 24
	mov [CursorPositiony], 1
	call set_cursor_position
	
	mov ax, [lastoffer]
	call ShowAxDecimal
	
	mov [CursorPositionX], 19
	mov [CursorPositiony], 13
	call set_cursor_position
	
	mov ax, [yourcase]
	call ShowAxDecimal
	
	ret
	endp endgamedeal
	
	
	
;----------------------------------------------------------------
; void proc that shows game end screen if 
; no deal was choosen in all 4 rounds

;  yourcase = personal case value

; call -- ShowAxDecimal -- set_cursor_position -- _200MiliSecDelay --
;----------------------------------------------------------------
	proc endgamenodeal
	
	mov dx, offset gamescrndeal
	mov [BmpLeft], 0
	mov [BmpTop], 0
	mov [BmpWidth], 320	
	mov [BmpHeight] ,200
	call OpenShowBmp
	
	mov cx, 25
loopdealy4:
	call _200MiliSecDelay
	loop loopdealy4
	
	mov dx, offset caseopenndeal
	mov [BmpLeft], 0
	mov [BmpTop], 0
	mov [BmpWidth], 320	
	mov [BmpHeight] ,200
	call OpenShowBmp
	
	mov [CursorPositionX], 19
	mov [CursorPositiony], 13
	call set_cursor_position
	
	mov ax, [yourcase]
	call ShowAxDecimal
	
	ret
	endp endgamenodeal
	
	
;----------------------------------------------------------------
; main proc that runs each round in the game

;  caseneedopen = cases to open this round
;  dealornodeal = 1 if deal was choosen 2 if no deal was chosen by moush proc dealpick
;  gameend = main decide if to end game 1 = end 0 = Continue


; call -- drawbacknum -- showcases -- printmoney --
; getcase -- printbanker -- printmoney -- offer -- _200MiliSecDelay
;----------------------------------------------------------------
	proc round
	
	mov cx, [casesneedopen]
	inc cx
	call drawbacknum
	dec cx
    call showcases
	call printmoney
	
	
againcasepick:
	call getcase
	loop againcasepick
	
	call printbanker
	call printmoney
	call offer
	SHOW_MOUSE
	
	mov cx, 5
loopdealy:
	call _200MiliSecDelay
	loop loopdealy
	mov [dealornodeal],0
	
checkdeal:
	cmp [dealornodeal], 1
	je deal
	
	cmp [dealornodeal], 2
	je nodeal	
	jmp checkdeal
	
deal:
	mov [gameend], 1
	jmp endround
	
nodeal:
	mov [gameend], 0
	jmp endround
	
endround:

	
	HIDE_MOUSE
	dec [casesneedopen]
	ret
	endp round
	


;----------------------------------------------------------------
; draws background with how many cases needs to be picked decide by cx cmp
 
;----------------------------------------------------------------
	proc drawbacknum
	
	mov [BmpLeft],0
	mov [BmpTop],0
	mov [BmpWidth], 320
	mov [BmpHeight] ,200
	
	cmp cx, 6
	jne checkif4
	
	mov dx, offset background5
	call OpenShowBmp
	jmp endback
	
checkif4:
	
	cmp cx, 5
	jne checkif3
	
	mov dx, offset background4
	call OpenShowBmp
	jmp endback
	
checkif3:

	cmp cx, 4
	jne checkif2
	
	mov dx, offset background3
	call OpenShowBmp
	jmp endback
	
checkif2:

	cmp cx, 3
	jne checkif1
	
	mov dx, offset background2
	call OpenShowBmp
	jmp endback
	
checkif1:
	
	cmp cx, 2
	jne endback
	
	mov dx, offset background1
	call OpenShowBmp
	jmp endback

endback:
	
	ret
	endp drawbacknum
	
	
	
;----------------------------------------------------------------
; mouse proc that gets mouse status anytime and calls all mouse procs

; call -- didbegin -- dealpick --
;----------------------------------------------------------------
	proc figure far
	shr cx,1
	
	
	cmp [gamebegin], 1
	je dpick
	call didbegin

	call rules
dpick:
	call dealpick
	
	retf
	endp figure
	
	
	
;----------------------------------------------------------------
; sets the cursor to the offer location and then calcs the bank offer and prints it

; call -- set_cursor_position -- calcoffer -- ShowAxDecimal --
;----------------------------------------------------------------
	proc offer
	
	
	mov [CursorPositionX], 17
	mov [CursorPositiony], 20
	
	call set_cursor_position
	call calcoffer
	
	call ShowAxDecimal
	
	ret
	endp offer
	
	
	
;----------------------------------------------------------------
; prints banker screen

;----------------------------------------------------------------
	proc printbanker
	
	mov dx, offset banker
	mov [BmpLeft], 0
	mov [BmpTop], 0
	mov [BmpWidth], 320	
	mov [BmpHeight] ,200
	call OpenShowBmp
	ret
	endp printbanker
	
	
	
;----------------------------------------------------------------
; main proc like round but only being called for the first case to pick personal case
; moves to yourcase the case value and marks it by 2 in openornot

;  yourcase = personal case value
;  tmpkeepnum = personal case num
;  openornot = aaray that shows what case is open (0) and what not (1)

;----------------------------------------------------------------
	proc firstcase
	
	jmp startcasee
getcaseagainn:
mov [tmpkeepnum], 0
startcasee:
	mov al, 0
	mov	ah, 1h
	int	21h
	
	sub al, '0'
	mov ah, 0
	
	cmp ax, 0
	je dontaddd
	add ax, 9
	
dontaddd:

	mov [tmpkeepnum], ax
	
	mov al, 0
	mov	ah, 1h
	int	21h
	
	
	sub al, '0'
	mov ah, 0
	add [tmpkeepnum], ax
	
	cmp [tmpkeepnum], 16
	ja getcaseagainn
	
	mov bx, [tmpkeepnum]
	add bx, bx
	sub bx, 2
	
	cmp [openornot + bx], 0
	je getcaseagainn
	
	
	mov [openornot + bx], 2
	mov ax, [moneyleft + bx]
	mov [yourcase] , ax

	ret
	endp firstcase
	
	
	
;----------------------------------------------------------------
; calcs offer by avarge of all amounts thats still in the game

;  moneyoffer = all remaning values together divided by 5
;  moneyoffercnt = remaning values counter 
;  moneyleft = aaray that shows all remaning values
;  lastoffer = current offer
;----------------------------------------------------------------
	proc calcoffer
	push bx
	push cx
	push dx 
	
	mov bx, -2
	
	mov [moneyoffer], 0
	mov [moneyoffercnt], 0
nextavg:
	cmp bx, 30
	je nextavgcalc
	
	add bx, 2
	mov ax, [moneyleft + bx]
	
	cmp ax, 0
	je nextavg
	
	inc [moneyoffercnt]
	mov cx, 5
	div cx
	add [moneyoffer], ax
	
	cmp bx, 30
	jne nextavg

nextavgcalc:
	
	mov ax, [moneyoffer]
	mov cx, [moneyoffercnt]
	div cx
	
	mov cx, 5
	mul cx
	
	mov [lastoffer], ax
	
	pop dx
	pop cx
	pop bx
	ret
	endp calcoffer
	
 
;----------------------------------------------------------------
; sets the cursor in the right positionj

;----------------------------------------------------------------
	proc set_cursor_position
	push ax
	push dx
	push bx
	
    mov ah, 02h
    ; Set DL to column (0-based)
    mov dl,  [CursorPositionX]
    ; Set DH to row (0-based)	
    mov dh, [CursorPositionY]
    mov bh, 0h
    int 10h

	pop bx
	pop dx
	pop ax
	ret
endp set_cursor_position
	
	
;----------------------------------------------------------------
; prints right background, remaining cases and money

;call -- drawbacknum -- showcases -- printmoney --
;----------------------------------------------------------------
	proc refrsh
	
	
	call drawbacknum
    call showcases
	call printmoney
	
	ret
	endp refrsh
	
	
;----------------------------------------------------------------
; lets player pick case he wants to be opend

;  tmpkeepnum = case needs to open 
;  openornot = aaray that shows what case is open (0) and what not (1)

; call -- bx_removecase -- drawbackground -- printmoney -- showopendnow
;----------------------------------------------------------------	
	proc getcase
	push cx
	
	mov [CursorPositionX], 3
	mov [CursorPositiony], 0
	call set_cursor_position
	mov ah, 0Ch
	mov al,6
	int 21h
	
	jmp startcase
getcaseagain:
mov [tmpkeepnum], 0
startcase:
	mov al, 0
	mov	ah, 07h
	int	21h
	
	sub al, '0'
	mov ah, 0
	
	cmp ax, 1
	jne dontadd
	add ax, 9
	
dontadd:

	mov [tmpkeepnum], ax
	
	mov al, 0
	mov	ah, 07h
	int	21h
	
	
	sub al, '0'
	mov ah, 0
	add [tmpkeepnum], ax
	
	cmp [tmpkeepnum], 16
	ja getcaseagain
	
	mov bx, [tmpkeepnum]
	add bx, bx
	sub bx, 2
	
	cmp [openornot + bx], 1
	jne getcaseagain
	
	
	mov bx, [tmpkeepnum]
	add bx, bx
	sub bx, 2
	mov ax, [moneyleft + bx]
	mov [tmpword], ax
	
	
	mov bx, [tmpkeepnum]
	
	push bx
	call drawbackground
	call printmoney
	pop bx
	
	call bx_removecase
	call showopendnow
	call printmoney
	
	
	
	
	
	
	pop cx
	call refrsh
	ret
	endp getcase
	
	
;----------------------------------------------------------------
; shows the case thats been opend

;  tmpkeepnum = case needs to show 
;  tmpword =  case opend value

; call -- set_cursor_position -- ShowAxDecimal -- _200MiliSecDelay -- showopendnow
;----------------------------------------------------------------		
	proc showopendnow
	
	mov [BmpLeft],80
	mov [BmpTop], 20
	mov [BmpWidth], 150	
	mov [BmpHeight] ,150
	
	cmp [tmpkeepnum], 1
	jne checkopen2
	
	mov dx, offset openc1
	call OpenShowBmp
	jmp endshowopen
checkopen2:		

	cmp [tmpkeepnum], 2
	jne checkopen3
	
	mov dx, offset openc2
	call OpenShowBmp
	jmp endshowopen
checkopen3:
	
	cmp [tmpkeepnum], 3
	jne checkopen4
	
	mov dx, offset openc3
	call OpenShowBmp
	jmp endshowopen
checkopen4:		

	cmp [tmpkeepnum], 4
	jne checkopen5
	
	mov dx, offset openc4
	call OpenShowBmp
	jmp endshowopen
checkopen5:		

	cmp [tmpkeepnum], 5
	jne checkopen6
	
	mov dx, offset openc5
	call OpenShowBmp
	jmp endshowopen
checkopen6:		

	cmp [tmpkeepnum], 6
	jne checkopen7
	
	mov dx, offset openc6
	call OpenShowBmp
	jmp endshowopen
checkopen7:		

	cmp [tmpkeepnum], 7
	jne checkopen8
	
	mov dx, offset openc7
	call OpenShowBmp
	jmp endshowopen
checkopen8:		

	cmp [tmpkeepnum], 8
	jne checkopen9
	
	mov dx, offset openc8
	call OpenShowBmp
	jmp endshowopen
checkopen9:	

cmp [tmpkeepnum], 9
	jne checkopen10
	
	mov dx, offset openc9
	call OpenShowBmp
	jmp endshowopen
checkopen10:		

cmp [tmpkeepnum], 10
	jne checkopen11
	
	mov dx, offset openc10
	call OpenShowBmp
	jmp endshowopen
checkopen11:		

cmp [tmpkeepnum], 11
	jne checkopen12
	
	mov dx, offset openc11
	call OpenShowBmp
	jmp endshowopen
checkopen12:		

cmp [tmpkeepnum], 12
	jne checkopen13
	
	mov dx, offset openc12
	call OpenShowBmp
	jmp endshowopen
checkopen13:		

cmp [tmpkeepnum], 13
	jne checkopen14
	
	mov dx, offset openc13
	call OpenShowBmp
	jmp endshowopen
checkopen14:		

cmp [tmpkeepnum], 14
	jne checkopen15
	
	mov dx, offset openc14
	call OpenShowBmp
	jmp endshowopen
checkopen15:		

cmp [tmpkeepnum], 15
	jne checkopen16
	
	mov dx, offset openc15
	call OpenShowBmp
	jmp endshowopen
checkopen16:			
	mov dx, offset openc16
	call OpenShowBmp
	
endshowopen:

	mov cx, 7
delayopen:
	call _200MiliSecDelay
	loop delayopen
	
	mov dx, offset openedcaseblack
	call OpenShowBmp
	
	mov [CursorPositionX], 18
	mov [CursorPositionY], 12
	mov ax, [tmpword]
	call set_cursor_position
	call ShowAxDecimal
	
	mov cx, 12
delayopen2:
	call _200MiliSecDelay
	loop delayopen2
	


	ret
	endp showopendnow
	
	
	
;----------------------------------------------------------------
; void proc prints the money value s thats still left

; moneydraw = array that shows which money has been choosen already 
;----------------------------------------------------------------		
	proc printmoney
	
	mov bx, 0
	
	cmp [moneydraw + bx], 0
	je d5out
	
	mov dx, offset m5in
	mov [BmpLeft],10
	mov [BmpTop],5
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp	
	jmp d10
	
d5out:

	mov dx, offset m5out
	mov [BmpLeft],10
	mov [BmpTop],5
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp	
	
;-------------------------------
;-------------------------------

d10:

	mov bx, 2
	cmp [moneydraw + bx], 0
	je d10out
	
	mov dx, offset m10in
	mov [BmpLeft],10
	mov [BmpTop],30
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp	
	jmp d20
	
d10out:

	mov dx, offset m10out
	mov [BmpLeft],10
	mov [BmpTop],30
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp

;-------------------------------
;-------------------------------	
	
d20:

	mov bx, 4
	cmp [moneydraw + bx], 0
	je d20out
	
	mov dx, offset m20in
	mov [BmpLeft],10
	mov [BmpTop],55
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp	
	jmp d50
	
d20out:

	mov dx, offset m20out
	mov [BmpLeft],10
	mov [BmpTop],55
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp

;-------------------------------
;-------------------------------	
	
d50:

	mov bx, 6
	cmp [moneydraw + bx], 0
	je d50out
	
	mov dx, offset m50in
	mov [BmpLeft],10
	mov [BmpTop],80
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp	
	jmp d100
	
d50out:

	mov dx, offset m50out
	mov [BmpLeft],10
	mov [BmpTop],80
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp

;-------------------------------
;-------------------------------	
	
d100:

	mov bx, 8
	cmp [moneydraw + bx], 0
	je d100out
	
	mov dx, offset m100in
	mov [BmpLeft],10
	mov [BmpTop],105
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp	
	jmp d150
	
d100out:

	mov dx, offset m100out
	mov [BmpLeft],10
	mov [BmpTop],105
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp

;-------------------------------
;-------------------------------	
	
d150:

	mov bx, 10
	cmp [moneydraw + bx], 0
	je d150out
	
	mov dx, offset m150in
	mov [BmpLeft],10
	mov [BmpTop],130
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp	
	jmp d300
	
d150out:

	mov dx, offset m150out
	mov [BmpLeft],10
	mov [BmpTop],130
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp

;-------------------------------
;-------------------------------	
	
d300:

	mov bx, 12
	cmp [moneydraw + bx], 0
	je d300out
	
	mov dx, offset m300in
	mov [BmpLeft],10
	mov [BmpTop],155
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp	
	jmp d500
	
d300out:

	mov dx, offset m300out
	mov [BmpLeft],10
	mov [BmpTop],155
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp

;-------------------------------
;-------------------------------	
	
d500:

	mov bx, 14
	cmp [moneydraw + bx], 0
	je d500out
	
	mov dx, offset m500in
	mov [BmpLeft],10
	mov [BmpTop],178
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp	
	jmp d1000
	
d500out:

	mov dx, offset m500out
	mov [BmpLeft],10
	mov [BmpTop],178
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp

;-------------------------------
;-------------------------------	
	
d1000:

	mov bx, 16
	cmp [moneydraw + bx], 0
	je d1000out
	
	mov dx, offset m1000in
	mov [BmpLeft],260
	mov [BmpTop],5
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp	
	jmp d2500
	
d1000out:

	mov dx, offset m1000out
	mov [BmpLeft],260
	mov [BmpTop],5
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp

;-------------------------------
;-------------------------------	
	
d2500:

	mov bx, 18
	cmp [moneydraw + bx], 0
	je d2500out
	
	mov dx, offset m2500in
	mov [BmpLeft],260
	mov [BmpTop],30
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp	
	jmp d5000
	
d2500out:

	mov dx, offset m2500out
	mov [BmpLeft],260
	mov [BmpTop],30
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp

;-------------------------------
;-------------------------------	
	
d5000:

	mov bx, 20
	cmp [moneydraw + bx], 0
	je d5000out
	
	mov dx, offset m5000in
	mov [BmpLeft],260
	mov [BmpTop],55
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp	
	jmp d10000
	
d5000out:

	mov dx, offset m5000out
	mov [BmpLeft],260
	mov [BmpTop],55
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp

;-------------------------------
;-------------------------------	
	
d10000:

	mov bx, 22
	cmp [moneydraw + bx], 0
	je d10000out
	
	mov dx, offset m10000in
	mov [BmpLeft],260
	mov [BmpTop],80
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp	
	jmp d20000
	
d10000out:

	mov dx, offset m10000out
	mov [BmpLeft],260
	mov [BmpTop],80
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp

;-------------------------------
;-------------------------------	
	
d20000:

	mov bx, 24
	cmp [moneydraw + bx], 0
	je d20000out
	
	mov dx, offset m20000in
	mov [BmpLeft],260
	mov [BmpTop],105
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp	
	jmp d30000
	
d20000out:

	mov dx, offset m20000out
	mov [BmpLeft],260
	mov [BmpTop],105
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp

;-------------------------------
;-------------------------------	
	
d30000:

	mov bx, 26
	cmp [moneydraw + bx], 0
	je d30000out
	
	mov dx, offset m30000in
	mov [BmpLeft],260
	mov [BmpTop],130
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp	
	jmp d40000
	
d30000out:

	mov dx, offset m30000out
	mov [BmpLeft],260
	mov [BmpTop],130
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp

;-------------------------------
;-------------------------------	
	
d40000:

	mov bx, 28
	cmp [moneydraw + bx], 0
	je d40000out
	
	mov dx, offset m40000in
	mov [BmpLeft],260
	mov [BmpTop],155
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp	
	jmp d50000
	
d40000out:

	mov dx, offset m40000out
	mov [BmpLeft],260
	mov [BmpTop],155
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp

;-------------------------------
;-------------------------------	
	
d50000:

	mov bx, 30
	cmp [moneydraw + bx], 0
	je d50000out
	
	mov dx, offset m50000in
	mov [BmpLeft],260
	mov [BmpTop],178
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp	
	jmp dout
	
d50000out:

	mov dx, offset m50000out
	mov [BmpLeft],260
	mov [BmpTop],178
	mov [BmpWidth], 50	
	mov [BmpHeight] ,20
	call OpenShowBmp
	
	
	
dout:
	ret
	endp printmoney
	
	
;----------------------------------------------------------------
; tmp proc that prints the random array
;----------------------------------------------------------------		
	proc printarr
	mov bx, 0
	
printl:
	mov ax, [moneyleft + bx]
	call ShowAxDecimal
	add bx,2
	cmp bx, 32
	jne printl
	ret
	endp printarr
	
	
	
;----------------------------------------------------------------
; shuffle the moneytmp array into moneyleft

;  shufflemax = start at 16 and then go down until 0 to show how many slots in moneyleft are atill empty
;  shuffleindex = shows what slot at moneyleft needs to be filled now
;  moneytmp = array of all values 
;  moneyleft = the new shuffled array

;----------------------------------------------------------------		
	proc shuffle
	
shuffleagain:
	mov bl, 1
	mov bh, [shufflemax]
	call RandomByCs
	mov ah, 0
	
	mov [shuffletmp], al
	mov bx, 0
	
serchagain:	
	mov ax, [moneytmp + bx]
	cmp ax, 0
	je skip	
	dec [shuffletmp]
skip:
	add bx,2
	cmp [shuffletmp], 0
	jne serchagain
	
	sub bx,2
	mov [moneytmp + bx], 0
	
	
	mov bx, [shuffleindex]
	mov [moneyleft + bx], ax
	dec [shufflemax]
	inc [shuffleindex]
	inc [shuffleindex]
	cmp [shufflemax], 1
	jne shuffleagain
	
	
	mov bx,-2
endfind:
	add bx,2
	mov ax, [moneytmp + bx]
	cmp ax, 0
	je endfind
	mov [moneyleft + 30], ax
	ret
	endp shuffle
	
	
;----------------------------------------------------------------
; gets case num in bx and deletes it

;  openornot = array of cases that opend (0) or not (1)
;  moneyleft = array of remaining values 
;  moneydraw = array of remaining values for drawind all values

;----------------------------------------------------------------		
	proc bx_removecase
	
	
	
	add bx, bx
	sub bx, 2
	mov [openornot + bx], 0
	mov ax, [moneyleft + bx]
	mov [moneyleft + bx], 0
	
	
	mov bx, -2
del:
	add bx, 2
	cmp ax, [moneydraw + bx]
	jne del
	
	mov [moneydraw + bx], 0
	
	ret
	endp bx_removecase
	
	
;----------------------------------------------------------------
;mouse proc returns if picked deal or no deal

;  dealornodeal = if 1 then its deal if 2 then no deal

;----------------------------------------------------------------		
	proc dealpick
	cmp bx, 0000000000000001b
	jne enddealpick
	
	
	cmp dx, 175
	jb enddealpick
	cmp dx, 195
	ja enddealpick
	
	cmp cx, 70
	jb checkno
	cmp cx, 150
	ja checkno
	
	mov [dealornodeal], 1
	jmp enddealpick
	
checkno:
	cmp cx, 165
	jb enddealpick
	cmp cx, 215
	ja enddealpick
	mov [dealornodeal], 2
	
enddealpick:
	ret
	endp dealpick
	
	
;----------------------------------------------------------------
; draws first case pick background

;----------------------------------------------------------------		
	proc drawbackopen
	
	mov dx, offset openback
	mov [BmpLeft],0
	mov [BmpLeft],0
	mov [BmpTop],0
	mov [BmpWidth], 320
	mov [BmpHeight] ,200
	call OpenShowBmp	
	
	
	ret
	endp drawbackopen
	
	
;----------------------------------------------------------------
; mouse proc that checks if start button was pressed

;  gamebegin = 1 if pressd 0 if not
;  didrules = are you int the rules screen
;----------------------------------------------------------------		
	proc didbegin
	cmp bx, 0000000000000001b
	je continuef
	jmp exitdidbegin
	
	
continuef:
	cmp cx, 133
	jb exitdidbegin
	cmp cx, 210
	ja exitdidbegin
	cmp dx, 164
	jb exitdidbegin
	cmp dx, 189
	ja exitdidbegin
	
	mov [gamebegin], 1
	jmp exitbegin
exitdidbegin:
exitbegin:
	ret
	endp didbegin
	
;----------------------------------------------------------------
; mouse proc that checks if rules button was pressd

;  gamebegin = 1 if pressd 0 if not
;  didrules = are you int the rules screen

;----------------------------------------------------------------
	proc rules
	cmp bx, 0000000000000001b
	jne endrules
	
	
	cmp cx, 247
	jb continuer
	cmp cx, 311
	ja continuer
	cmp dx, 162
	jb continuer
	cmp dx, 192
	ja continuer
		
	mov [didrules], 1
	HIDE_MOUSE
	mov dx, offset rulesscr
	mov [BmpLeft],0
	mov [BmpTop],0
	mov [BmpWidth], 320
	mov [BmpHeight] ,200
	call OpenShowBmp
	SHOW_MOUSE
	jmp endrules
	
continuer:

	cmp cx, 38
	jb endrules
	cmp cx, 132
	ja endrules
	cmp dx, 165
	jb endrules
	cmp dx, 190
	ja endrules
	
	mov [didrules], 0
	HIDE_MOUSE
	call Showopenscreen
	SHOW_MOUSE
	jmp endrules
endrules:
	ret
	endp rules
	
;----------------------------------------------------------------
; draws the natural background with no coomand to do for showopendnow

;----------------------------------------------------------------		
	proc drawbackground
	
	mov dx, offset background
	mov [BmpLeft],0
	mov [BmpTop],0
	mov [BmpWidth], 320
	mov [BmpHeight] ,200
	call OpenShowBmp
	
	ret
	endp drawbackground
	
	
;----------------------------------------------------------------
; draws the open screen for the games start

;----------------------------------------------------------------		
	proc Showopenscreen
	mov dx, offset open1
	mov [BmpLeft],0
	mov [BmpTop],0
	mov [BmpWidth], 320
	mov [BmpHeight] ,200
	mov dx, offset open1
	call OpenShowBmp
	ret
	endp Showopenscreen
	
	
;----------------------------------------------------------------
; sets screen to graphic

;----------------------------------------------------------------		
	proc  SetGraphic
	mov ax,13h   ; 320 X 200 
				 ;Mode 13h is an IBM VGA BIOS mode. It is the specific standard 256-color mode 
	int 10h
	ret
	endp 	SetGraphic
	
	
;----------------------------------------------------------------
; sets mouse use in game start

;----------------------------------------------------------------		
	proc  setbutton
	
	
	
        mov ax, seg figure
        mov es, ax
        mov dx, offset figure  
        mov cx,0000000000011110b ;
		mov ax,0Ch
        int 33h                 
       	ret
endp setbutton
	
	
;--------------------------------------------------------------------------	
;--------------------------------------------------------------------------
;------------------------------	OTHER -------------------------------------
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------
; makes 200 milisec delay 
	proc _200MiliSecDelay
	
    push cx
    
    mov cx ,1000 
@@Self1:
    
    push cx
    mov cx,600 

@@Self2:    
    loop @@Self2
    
    pop cx
    loop @@Self1
    
    pop cx
    ret
endp _200MiliSecDelay

; shows the num in ax on the screen
	proc ShowAxDecimal
	
	
       push ax
	   push bx
	   push cx
	   push dx
	   jmp PositiveAx
	   ; check if negative
	   test ax,08000h
	   jz PositiveAx
			
	   ;  put '-' on the screen
	   push ax
	   mov dl,'-'
	   mov ah,2
	   int 21h
	   pop ax

	   neg ax ; make it positive
PositiveAx:
       mov cx,0   ; will count how many time we did push 
       mov bx,10  ; the divider
   
put_mode_to_stack:
       xor dx,dx
       div bx
       add dl,30h
	   ; dl is the current LSB digit 
	   ; we cant push only dl so we push all dx
       push dx    
       inc cx
       cmp ax,9   ; check if it is the last time to div
       jg put_mode_to_stack

	   cmp ax,0
	   jz pop_next  ; jump if ax was totally 0
       add al,30h  
	   mov dl, al    
  	   mov ah, 2h
	   int 21h        ; show first digit MSB
	       
pop_next: 
       pop ax    ; remove all rest LIFO (reverse) (MSB to LSB)
	   mov dl, al
       mov ah, 2h
	   int 21h        ; show all rest digits
       loop pop_next

   
	   pop dx
	   pop cx
	   pop bx
	   pop ax
	   
	   ret
endp ShowAxDecimal

;--------------------------------------------------------------------------	
;--------------------------------------------------------------------------
;------------------------------	END OTHER----------------------------------
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------






;--------------------------------------------------------------------------	
;--------------------------------------------------------------------------
;------------------------------	RANDOM CREATE------------------------------
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------

; creates word size random num
	proc RandomByCs
	
    push es
	push si
	push di
	push cx
	 
	
	
	mov ax, 40h
	mov	es, ax
	
	sub bh,bl  ; we will make rnd number between 0 to the delta between bl and bh
			   ; Now bh holds only the delta
	cmp bh,0
	jz @@ExitP
 
	mov di, [word RndCurrentPos]
	call MakeMask ; will put in si the right mask according the delta (bh) (example for 28 will put 31)
	
RandLoop: ;  generate random number 
	mov ax, [es:06ch] ; read timer counter
	mov ah, [byte cs:di] ; read one byte from memory (from semi random byte at cs)
	
	xor al, ah ; xor memory and counter
	
	; Now inc di in order to get a different number next time
	inc di
	cmp di,(EndOfCsLbl - start - 1)
	jb @@Continue
	mov di, offset start
@@Continue:
	mov [word RndCurrentPos], di
	
	and ax, si ; filter result between 0 and si (the nask)
	cmp al,bh    ;do again if  above the delta
	ja RandLoop
	
	add al,bl  ; add the lower limit to the rnd num
		 
@@ExitP:
	pop cx
	pop di
	pop si
	pop es
	ret
endp RandomByCs

;creates mask for RandomByCs
	Proc MakeMask    
    push bx
	mov si,1
@@again:
	shr bh,1
	cmp bh,0
	jz @@EndProc
	shl si,1 ; add 1 to si at right
	inc si
	jmp @@again
@@EndProc:
    pop bx
	ret
endp  MakeMask

;--------------------------------------------------------------------------	
;--------------------------------------------------------------------------
;--------------------------- END RANDOM CREATE-----------------------------
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------


;--------------------------------------------------------------------------	
;--------------------------------------------------------------------------
;------------------------------ BMP OPEN-----------------------------------
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------
proc OpenShowBmp near
	mov [ErrorFile],0
	 
	call OpenBmpFile
	cmp [ErrorFile],1
	je @@ExitProc
	
	call ReadBmpHeader
	
	call ReadBmpPalette
	
	call CopyBmpPalette
	
	call  ShowBmp
	
	 
	call CloseBmpFile

@@ExitProc:
	ret
endp OpenShowBmp

proc SaveVgaMemToFile near
	
	lea dx, [FileNameOut]
	call CreateBmpFile
	cmp [ErrorFile],1
	je @@ExitProc
	
	call PutBmpHeader
	
	call PutBmpPalette
	
	call PutBmpDataIntoFile
	
	call CloseBmpFile

@@ExitProc:
	ret
endp SaveVgaMemToFile

proc OpenBmpFile	near						 
	mov ah, 3Dh
	xor al, al
	int 21h
	jc @@ErrorAtOpen
	mov [FileHandle], ax
	jmp @@ExitProc
	
@@ErrorAtOpen:
	mov [ErrorFile],1
@@ExitProc:	
	ret
endp OpenBmpFile

proc CreateBmpFile	near						 
	 
	
CreateNewFile:
	mov ah, 3Ch 
	mov cx, 0 
	int 21h
	
	jnc Success
@@ErrorAtOpen:
	mov [ErrorFile],1
	jmp @@ExitProc
	
Success:
	mov [ErrorFile],0
	mov [FileHandle], ax
@@ExitProc:
	ret
endp CreateBmpFile

proc CloseBmpFile near
	mov ah,3Eh
	mov bx, [FileHandle]
	int 21h
	ret
endp CloseBmpFile

proc ReadBmpHeader	near					
	push cx
	push dx
	
	mov ah,3fh
	mov bx, [FileHandle]
	mov cx,54
	mov dx,offset Header
	int 21h
	
	pop dx
	pop cx
	ret
endp ReadBmpHeader

proc ReadBmpPalette near 
						 ; 4 bytes for each color BGR + null)			
	push cx
	push dx
	
	mov ah,3fh
	mov cx,400h
	mov dx,offset Palette
	int 21h
	
	pop dx
	pop cx
	
	ret
endp ReadBmpPalette

proc ColorTheMouse		near					
	mov si,offset Palette
	mov cx,16
	mov dx,3C8h
	mov al,0  ; black first							
	out dx,al ;3C8h
	inc dx	  ;3C9h
	
@@CopyNextColor:
	cmp cx,1  ; the 16 color is the mouse so keep it whiote
	jnz nxt
	mov al,MOUSE_COLORred 		 		
	shr al,2 		 	
	out dx,al 						
	mov al,MOUSE_COLORgreen		 		
	shr al,2            
	out dx,al 							
	mov al,MOUSE_COLORblue	 		
	shr al,2            
	out dx,al 		
	add si,4 
	jmp @@ret

nxt:	
	mov al,[si+2] 		; Red				
	shr al,2 			; divide by 4 Max (cos max is 63 and we have here max 255 ) (loosing color resolution).				
	out dx,al 						
	mov al,[si+1] 		; Green.				
	shr al,2            
	out dx,al 							
	mov al,[si] 		; Blue.				
	shr al,2            
	out dx,al 							
	add si,4 			; Point to next color.  (4 bytes for each color BGR + null)				
	loop @@CopyNextColor

@@ret:
	ret
endp ColorTheMouse

proc ShowBMP
; BMP graphics are saved upside-down.
; Read the graphic line by line (BmpHeight lines in VGA format),
; displaying the lines from bottom to top.
	push cx
	
	mov ax, 0A000h
	mov es, ax
	
 
	mov ax,[BmpWidth] ; row size must dived by 4 so if it less we must calculate the extra padding bytes
	mov bp, 0
	and ax, 3
	cmp ax, 0 
	jz @@row_ok
	mov bp,4
	sub bp,ax

@@row_ok:	
	mov cx,[BmpHeight]
    dec cx
	add cx,[BmpTop] ; add the Y on entire screen
	; next 5 lines  di will be  = cx*320 + dx , point to the correct screen line
	mov di,cx
	shl cx,6
	shl di,8
	add di,cx
	add di,[BmpLeft]
	cld ; Clear direction flag, for movsb forward
	
	mov cx, [BmpHeight]
@@NextLine:
	push cx
 
	; small Read one line
	mov ah,3fh
	mov cx,[BmpWidth]  
	add cx,bp  ; extra  bytes to each row must be divided by 4
	mov dx,offset ScrLine
	int 21h
	; Copy one line into video memory es:di
	mov cx,[BmpWidth]  
	mov si,offset ScrLine
	rep movsb ; Copy line to the screen
	sub di,[BmpWidth]            ; return to left bmp
	sub di,SCREEN_WIDTH  ; jump one screen line up
	
	pop cx
	loop @@NextLine
	
	pop cx
	ret
endp ShowBMP

proc PutBmpHeader	near					
	mov ah,40h
	mov bx, [FileHandle]
	mov cx,54
	mov dx,offset Header
	int 21h
	ret
endp PutBmpHeader

proc PutBmpPalette near 
						 ; 4 bytes for each color BGR + null)			
	mov ah,40h
	mov cx,400h
	mov dx,offset Palette
	int 21h
	ret
endp PutBmpPalette

proc PutBmpDataIntoFile near


			
    mov dx,offset ScrLine  ; read 320 bytes (line) from file to buffer
	
	mov ax, 0A000h ; graphic mode address for es
	mov es, ax
	
	mov cx,BMP_MAX_HEIGHT
	
	cld 		; forward direction for movsb
@@GetNextLine:
	push cx
	dec cx
										 
	mov si,cx    ; set si at the end of the cx line (cx * 320) 
	shl cx,6	 ; multiply line number twice by 64 and by 256 and add them (=320) 
	shl si,8
	add si,cx
	
	mov cx,BMP_MAX_WIDTH    ; line size
	mov di,dx
    
	 push ds 
     push es
	 pop ds
	 pop es
	 rep movsb
	 push ds 
     push es
	 pop ds
	 pop es
 
	
	
	 mov ah,40h
	 mov cx,BMP_MAX_WIDTH
	 int 21h
	
	 pop cx ; pop for next line
	 loop @@GetNextLine
	
	
	
	 ret 

endp PutBmpDataIntoFile

proc CopyBmpPalette		near

					
										
	push cx
	push dx
	
	mov si,offset Palette
	mov cx,256
	mov dx,3C8h
	mov al,0  ; black first							
	out dx,al ;3C8h
	inc dx	  ;3C9h
CopyNextColor:
	mov al,[si+2] 		; Red				
	shr al,2 			; divide by 4 Max (cos max is 63 and we have here max 255 ) (loosing color resolution).				
	out dx,al 						
	mov al,[si+1] 		; Green.				
	shr al,2            
	out dx,al 							
	mov al,[si] 		; Blue.				
	shr al,2            
	out dx,al 							
	add si,4 			; Point to next color.  (4 bytes for each color BGR + null)				
								
	loop CopyNextColor
	
	pop dx
	pop cx
	
	ret
endp CopyBmpPalette

;--------------------------------------------------------------------------	
;--------------------------------------------------------------------------
;------------------------------	END BMP OPEN-------------------------------
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------



;--------------------------------------------------------------------------	
;--------------------------------------------------------------------------
;------------------------------CASE SHOW ----------------------------------
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------


; show cases in the begining of the game with delay
proc showcasesopen
	push bx
	push ax
	call _200MiliSecDelay
	
	mov [BmpWidth], 40	
	mov [BmpHeight] ,24
;-------------------------------------------------	
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne next1
;-------------------------------------------------

	mov dx, offset cn1
	mov [BmpLeft],65
	mov [BmpTop],40
	call OpenShowBmp	
	call _200MiliSecDelay
	
;-------------------------------------------------
next1:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne next2
;-------------------------------------------------	

	mov dx, offset cn2
	mov [BmpLeft],115
	mov [BmpTop],40
	call OpenShowBmp	
	call _200MiliSecDelay
	
	;-------------------------------------------------
next2:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne next3
;-------------------------------------------------	
	
	mov dx, offset cn3
	mov [BmpLeft],165
	mov [BmpTop],40
	call OpenShowBmp		
	call _200MiliSecDelay
	
;-------------------------------------------------
next3:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne next4
;-------------------------------------------------	

	mov dx, offset cn4
	mov [BmpLeft],215
	mov [BmpTop],40
	call OpenShowBmp
	call _200MiliSecDelay
	
;-------------------------------------------------
next4:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne next5
;-------------------------------------------------	

	mov dx, offset cn5
	mov [BmpLeft],65
	mov [BmpTop],80
	call OpenShowBmp	
	call _200MiliSecDelay
	
	;-------------------------------------------------
next5:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne next6
;-------------------------------------------------	

	mov dx, offset cn6
	mov [BmpLeft],115
	mov [BmpTop],80
	call OpenShowBmp	
	call _200MiliSecDelay
	
	;-------------------------------------------------
next6:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne next7
;-------------------------------------------------	

	mov dx, offset cn7
	mov [BmpLeft],165
	mov [BmpTop],80
	call OpenShowBmp		
	call _200MiliSecDelay

;-------------------------------------------------
next7:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne next8
;-------------------------------------------------	

	mov dx, offset cn8
	mov [BmpLeft],215
	mov [BmpTop],80
	call OpenShowBmp
	call _200MiliSecDelay
	
	;-------------------------------------------------
next8:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne next9
;-------------------------------------------------	

	mov dx, offset cn9
	mov [BmpLeft],65
	mov [BmpTop],120
	call OpenShowBmp	
	call _200MiliSecDelay
	
	;-------------------------------------------------
next9:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne next10
;-------------------------------------------------	

	mov dx, offset cn10
	mov [BmpLeft],115
	mov [BmpTop],120
	call OpenShowBmp	
	call _200MiliSecDelay
	
	;-------------------------------------------------
next10:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne next11
;-------------------------------------------------	

	mov dx, offset cn11
	mov [BmpLeft],165
	mov [BmpTop],120
	call OpenShowBmp		
	call _200MiliSecDelay
;-------------------------------------------------
next11:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne next12
;-------------------------------------------------	


	mov dx, offset cn12
	mov [BmpLeft],215
	mov [BmpTop],120
	call OpenShowBmp
	call _200MiliSecDelay

;-------------------------------------------------
next12:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne next13
;-------------------------------------------------	

	mov dx, offset cn13
	mov [BmpLeft],65
	mov [BmpTop],160
	call OpenShowBmp	
	call _200MiliSecDelay
	
;-------------------------------------------------
next13:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne next14
;-------------------------------------------------	

	mov dx, offset cn14
	mov [BmpLeft],115
	mov [BmpTop],160
	call OpenShowBmp	
	call _200MiliSecDelay
	
;-------------------------------------------------
next14:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne next15
;-------------------------------------------------	

	mov dx, offset cn15
	mov [BmpLeft],165
	mov [BmpTop],160
	call OpenShowBmp		
	call _200MiliSecDelay
;-------------------------------------------------
next15:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne next16
;-------------------------------------------------	

	mov dx, offset cn16
	mov [BmpLeft],215
	mov [BmpTop],160
	call OpenShowBmp
	call _200MiliSecDelay
next16:
	
	
	mov [openornot_index], 0
	pop ax
	pop bx
	ret
	endp showcasesopen
	
; show remaning cases 
proc showcases
	push bx
	push ax
	
	
	mov [BmpWidth], 40	
	mov [BmpHeight] ,24
;-------------------------------------------------	
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne nextt1
;-------------------------------------------------

	mov dx, offset cn1
	mov [BmpLeft],65
	mov [BmpTop],40
	call OpenShowBmp	
	
	
;-------------------------------------------------
nextt1:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne nextt2
;-------------------------------------------------	

	mov dx, offset cn2
	mov [BmpLeft],115
	mov [BmpTop],40
	call OpenShowBmp	

	
	;-------------------------------------------------
nextt2:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne nextt3
;-------------------------------------------------	
	
	mov dx, offset cn3
	mov [BmpLeft],165
	mov [BmpTop],40
	call OpenShowBmp		
	
	
;-------------------------------------------------
nextt3:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne nextt4
;-------------------------------------------------	

	mov dx, offset cn4
	mov [BmpLeft],215
	mov [BmpTop],40
	call OpenShowBmp
	
	
;-------------------------------------------------
nextt4:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne nextt5
;-------------------------------------------------	

	mov dx, offset cn5
	mov [BmpLeft],65
	mov [BmpTop],80
	call OpenShowBmp	
	
	
	;-------------------------------------------------
nextt5:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne nextt6
;-------------------------------------------------	

	mov dx, offset cn6
	mov [BmpLeft],115
	mov [BmpTop],80
	call OpenShowBmp	

	
	;-------------------------------------------------
nextt6:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne nextt7
;-------------------------------------------------	

	mov dx, offset cn7
	mov [BmpLeft],165
	mov [BmpTop],80
	call OpenShowBmp		


;-------------------------------------------------
nextt7:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne nextt8
;-------------------------------------------------	

	mov dx, offset cn8
	mov [BmpLeft],215
	mov [BmpTop],80
	call OpenShowBmp
	
	
	;-------------------------------------------------
nextt8:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne nextt9
;-------------------------------------------------	

	mov dx, offset cn9
	mov [BmpLeft],65
	mov [BmpTop],120
	call OpenShowBmp	
	
	
	;-------------------------------------------------
nextt9:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne nextt10
;-------------------------------------------------	

	mov dx, offset cn10
	mov [BmpLeft],115
	mov [BmpTop],120
	call OpenShowBmp	
	
	
	;-------------------------------------------------
nextt10:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne nextt11
;-------------------------------------------------	

	mov dx, offset cn11
	mov [BmpLeft],165
	mov [BmpTop],120
	call OpenShowBmp		
	
;-------------------------------------------------
nextt11:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne nextt12
;-------------------------------------------------	


	mov dx, offset cn12
	mov [BmpLeft],215
	mov [BmpTop],120
	call OpenShowBmp
	

;-------------------------------------------------
nextt12:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne nextt13
;-------------------------------------------------	

	mov dx, offset cn13
	mov [BmpLeft],65
	mov [BmpTop],160
	call OpenShowBmp	

	
;-------------------------------------------------
nextt13:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne nextt14
;-------------------------------------------------	

	mov dx, offset cn14
	mov [BmpLeft],115
	mov [BmpTop],160
	call OpenShowBmp	
	
	
;-------------------------------------------------
nextt14:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne nextt15
;-------------------------------------------------	

	mov dx, offset cn15
	mov [BmpLeft],165
	mov [BmpTop],160
	call OpenShowBmp		

;-------------------------------------------------
nextt15:
	inc [openornot_index]
	inc [openornot_index]
	mov bx, [openornot_index]
	mov ax, [openornot + bx]
	cmp ax, 1
	jne nextt16
;-------------------------------------------------	

	mov dx, offset cn16
	mov [BmpLeft],215
	mov [BmpTop],160
	call OpenShowBmp
	
nextt16:
	
	
	mov [openornot_index], 0
	pop ax
	pop bx
	ret
	endp showcases
;--------------------------------------------------------------------------	
;--------------------------------------------------------------------------
;-------------------------- END CASE SHOW ---------------------------------
;--------------------------------------------------------------------------
;--------------------------------------------------------------------------

SomeRNDData	    db 122	,179	,81	,173	,137
					db 54	,28	,90	,189	,112
					db 58	,63	,82	,247	,255
					db 247	,66	,211	,129	,228
					db 237	,207	,19	,182	,23
					db 53	,54	,229	,142	,60
					db 158	,187	,229	,148	,108
					db 187	,90	,84	,81	,105
					db 224	,4	,243	,28	,64
					db 255	,24	,38	,196	,82
					db 222	,226	,105	,82	,247
					db 217	,18	,43	,158	,150
					db 34	,58	,112	,94	,115
					db 46	,45	,76	,48	,39
					db 201	,205	,34	,15	,14
					db 76	,177	,158	,241	,115
					db 167	,38	,32	,178	,247
					db 216	,252	,170	,157	,207
					db 252	,111	,167	,91	,161
					db 122	,179	,81	,173	,137
					db 54	,28	,90	,189	,112
					db 58	,63	,82	,247	,255
					db 247	,66	,211	,129	,228
					db 237	,207	,19	,182	,23
					db 53	,54	,229	,142	,60
					db 158	,187	,229	,148	,108
					db 187	,90	,84	,81	,105
					db 224	,4	,243	,28	,64
					db 255	,24	,38	,196	,82
					db 222	,226	,105	,82	,247
					db 217	,18	,43	,158	,150
					db 34	,58	,112	,94	,115
					db 46	,45	,76	,48	,39
					db 201	,205	,34	,15	,14
					db 76	,177	,158	,241	,115
					db 167	,38	,32	,178	,247
					db 216	,252	,170	,157	,207
					db 252	,111	,167	,91	,161
					db 122	,179	,81	,173	,137
					db 54	,28	,90	,189	,112
					db 58	,63	,82	,247	,255
					db 247	,66	,211	,129	,228
					db 237	,207	,19	,182	,23
					db 53	,54	,229	,142	,60
					db 158	,187	,229	,148	,108
					db 187	,90	,84	,81	,105
					db 224	,4	,243	,28	,64
					db 255	,24	,38	,196	,82
					db 222	,226	,105	,82	,247
					db 217	,18	,43	,158	,150
					db 34	,58	,112	,94	,115
					db 46	,45	,76	,48	,39
					db 201	,205	,34	,15	,14
					db 76	,177	,158	,241	,115
					db 167	,38	,32	,178	,247
					db 216	,252	,170	,157	,207
					db 252	,111	,167	,91	,161
EndOfCsLbl:
END start


 