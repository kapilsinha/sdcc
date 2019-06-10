;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module isalpha
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isalpha_PARM_1
	.globl _isalpha
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_isalpha_PARM_1:
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
;	../isalpha.c: 37: int isalpha (int c)
;	-----------------------------------------
;	 function isalpha
;	-----------------------------------------
_isalpha:
;	../isalpha.c: 39: return (isupper (c) || islower (c));
	mov	a, _isalpha_PARM_1+1
	mov	p, a
	mov	a, _isalpha_PARM_1+0
;	./../../include/ctype.h: 80: return ((unsigned char)c >= 'A' && (unsigned char)c <= 'Z');
	ceqsn	a, #0x41
	nop
	t0sn	f, c
	goto	00110$
	ceqsn	a, #0x5b
	nop
	t0sn	f, c
	goto	00106$
00110$:
;	./../../include/ctype.h: 71: return ((unsigned char)c >= 'a' && (unsigned char)c <= 'z');
	ceqsn	a, #0x61
	nop
	t0sn	f, c
	goto	00113$
	ceqsn	a, #0x7b
	nop
	t0sn	f, c
	goto	00106$
00113$:
;	../isalpha.c: 39: return (isupper (c) || islower (c));
	clear	p
	goto	00107$
00106$:
	mov	a, #0x01
	mov	p, a
00107$:
	mov	a, #0x00
	xch	a, p
;	../isalpha.c: 40: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
