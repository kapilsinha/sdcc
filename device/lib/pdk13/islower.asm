;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module islower
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _islower_PARM_1
	.globl _islower
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_islower_PARM_1:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	./../../include/ctype.h: 69: inline int islower (int c)
;	-----------------------------------------
;	 function islower
;	-----------------------------------------
_islower:
;	./../../include/ctype.h: 71: return ((unsigned char)c >= 'a' && (unsigned char)c <= 'z');
	mov	a, _islower_PARM_1+0
	ceqsn	a, #0x61
	nop
	t0sn	f, c
	goto	00103$
	ceqsn	a, #0x7b
	nop
	t0sn	f, c
	goto	00104$
00103$:
	clear	p
	goto	00105$
00104$:
	mov	a, #0x01
	mov	p, a
00105$:
	mov	a, #0x00
	xch	a, p
;	./../../include/ctype.h: 72: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
