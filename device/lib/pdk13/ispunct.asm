;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module ispunct
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isalnum
	.globl _isspace
	.globl _isprint
	.globl _ispunct_PARM_1
	.globl _ispunct
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_ispunct_PARM_1:
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
;	../ispunct.c: 33: int ispunct (int c)
;	-----------------------------------------
;	 function ispunct
;	-----------------------------------------
_ispunct:
;	../ispunct.c: 35: return (isprint (c) && !isspace (c) && !isalnum (c));
	mov	a, _ispunct_PARM_1+0
	mov	_isprint_PARM_1+0, a
	mov	a, _ispunct_PARM_1+1
	mov	_isprint_PARM_1+1, a
	call	_isprint
	or	a, p
	cneqsn	a, #0x00
	goto	00103$
	mov	a, _ispunct_PARM_1+0
	mov	_isspace_PARM_1+0, a
	mov	a, _ispunct_PARM_1+1
	mov	_isspace_PARM_1+1, a
	call	_isspace
	or	a, p
	ceqsn	a, #0x00
	goto	00103$
	mov	a, _ispunct_PARM_1+0
	mov	_isalnum_PARM_1+0, a
	mov	a, _ispunct_PARM_1+1
	mov	_isalnum_PARM_1+1, a
	call	_isalnum
	or	a, p
	cneqsn	a, #0x00
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
;	../ispunct.c: 36: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
