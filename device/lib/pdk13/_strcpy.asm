;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _strcpy
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcpy_PARM_2
	.globl _strcpy_PARM_1
	.globl _strcpy
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_strcpy_PARM_1:
	.ds 2
_strcpy_PARM_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_strcpy_sloc0_1_0:
	.ds 2
_strcpy_sloc1_1_0:
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
;	../_strcpy.c: 34: char * strcpy ( char * d, const char * s )
;	-----------------------------------------
;	 function strcpy
;	-----------------------------------------
_strcpy:
;	../_strcpy.c: 44: register char * d1 = d;
	mov	a, _strcpy_PARM_1+0
	mov	_strcpy_sloc0_1_0+0, a
	mov	a, _strcpy_PARM_1+1
	mov	_strcpy_sloc0_1_0+1, a
;	../_strcpy.c: 46: while (*d1++ = *s++) ;
	mov	a, _strcpy_PARM_2+0
	mov	_strcpy_sloc1_1_0+0, a
	mov	a, _strcpy_PARM_2+1
	mov	_strcpy_sloc1_1_0+1, a
00101$:
	mov	a, _strcpy_sloc1_1_0+0
	mov	p, a
	mov	a, _strcpy_sloc1_1_0+1
	call	__gptrget
	inc	_strcpy_sloc1_1_0+0
	addc	_strcpy_sloc1_1_0+1
	push	af
	mov	a, _strcpy_sloc0_1_0+0
	mov	p, a
	pop	af
	idxm	p, a
	inc	_strcpy_sloc0_1_0+0
	addc	_strcpy_sloc0_1_0+1
	ceqsn	a, #0x00
	goto	00101$
;	../_strcpy.c: 48: return d;
	mov	a, _strcpy_PARM_1+1
	mov	p, a
	mov	a, _strcpy_PARM_1+0
;	../_strcpy.c: 50: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
