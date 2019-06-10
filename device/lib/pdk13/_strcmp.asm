;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _strcmp
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcmp_PARM_2
	.globl _strcmp_PARM_1
	.globl _strcmp
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_strcmp_PARM_1:
	.ds 2
_strcmp_PARM_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_strcmp_sloc0_1_0:
	.ds 2
_strcmp_sloc1_1_0:
	.ds 2
_strcmp_sloc2_1_0:
	.ds 2
_strcmp_sloc3_1_0:
	.ds 1
_strcmp_sloc4_1_0:
	.ds 2
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
;	../_strcmp.c: 34: int strcmp ( const char * asrc, const char * adst )
;	-----------------------------------------
;	 function strcmp
;	-----------------------------------------
_strcmp:
;	../_strcmp.c: 50: while( ! (ret = *(unsigned char *)asrc - *(unsigned char *)adst) && *adst)
	mov	a, _strcmp_PARM_1+0
	mov	_strcmp_sloc0_1_0+0, a
	mov	a, _strcmp_PARM_1+1
	mov	_strcmp_sloc0_1_0+1, a
	mov	a, _strcmp_PARM_2+0
	mov	_strcmp_sloc1_1_0+0, a
	mov	a, _strcmp_PARM_2+1
	mov	_strcmp_sloc1_1_0+1, a
00102$:
	mov	a, _strcmp_sloc0_1_0+0
	mov	p, a
	mov	a, _strcmp_sloc0_1_0+1
	call	__gptrget
	mov	_strcmp_sloc2_1_0+0, a
	clear	_strcmp_sloc2_1_0+1
	mov	a, _strcmp_sloc1_1_0+0
	mov	p, a
	mov	a, _strcmp_sloc1_1_0+1
	call	__gptrget
	mov	_strcmp_sloc3_1_0+0, a
	mov	a, _strcmp_sloc2_1_0+0
	sub	a, _strcmp_sloc3_1_0+0
	mov	p, a
	mov	a, _strcmp_sloc2_1_0+1
	subc	a
	mov	_strcmp_sloc4_1_0+1, a
	xch	a, p
	mov	_strcmp_sloc4_1_0+0, a
	xch	a, p
	or	a, p
	ceqsn	a, #0x00
	goto	00104$
	mov	a, _strcmp_sloc3_1_0+0
	cneqsn	a, #0x00
	goto	00104$
;	../_strcmp.c: 51: ++asrc, ++adst;
	inc	_strcmp_sloc0_1_0+0
	addc	_strcmp_sloc0_1_0+1
	inc	_strcmp_sloc1_1_0+0
	addc	_strcmp_sloc1_1_0+1
	goto	00102$
00104$:
;	../_strcmp.c: 53: return( ret );
	mov	a, _strcmp_sloc4_1_0+1
	mov	p, a
	mov	a, _strcmp_sloc4_1_0+0
;	../_strcmp.c: 55: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
