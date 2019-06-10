;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module isalnum
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isalpha
	.globl _isalnum_PARM_1
	.globl _isalnum
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_isalnum_PARM_1:
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
;	../isalnum.c: 37: int isalnum (int c)
;	-----------------------------------------
;	 function isalnum
;	-----------------------------------------
_isalnum:
;	../isalnum.c: 39: return (isalpha (c) || isdigit (c));
	mov	a, _isalnum_PARM_1+0
	mov	_isalpha_PARM_1+0, a
	mov	a, _isalnum_PARM_1+1
	mov	_isalpha_PARM_1+1, a
	call	_isalpha
	or	a, p
	ceqsn	a, #0x00
	goto	00105$
	mov	a, _isalnum_PARM_1+1
	mov	p, a
	mov	a, _isalnum_PARM_1+0
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	ceqsn	a, #0x30
	nop
	t0sn	f, c
	goto	00109$
	ceqsn	a, #0x3a
	nop
	t0sn	f, c
	goto	00105$
00109$:
;	../isalnum.c: 39: return (isalpha (c) || isdigit (c));
	clear	p
	goto	00106$
00105$:
	mov	a, #0x01
	mov	p, a
00106$:
	mov	a, #0x00
	xch	a, p
;	../isalnum.c: 40: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
