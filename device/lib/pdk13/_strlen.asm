;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _strlen
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen_PARM_1
	.globl _strlen
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_strlen_PARM_1:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_strlen_sloc0_1_0:
	.ds 2
_strlen_sloc1_1_0:
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
;	../_strlen.c: 35: size_t strlen ( const char * str )
;	-----------------------------------------
;	 function strlen
;	-----------------------------------------
_strlen:
;	../_strlen.c: 39: while (*str++)
	clear	_strlen_sloc0_1_0+0
	clear	_strlen_sloc0_1_0+1
	mov	a, _strlen_PARM_1+0
	mov	_strlen_sloc1_1_0+0, a
	mov	a, _strlen_PARM_1+1
	mov	_strlen_sloc1_1_0+1, a
00101$:
	mov	a, _strlen_sloc1_1_0+0
	mov	p, a
	mov	a, _strlen_sloc1_1_0+1
	call	__gptrget
	inc	_strlen_sloc1_1_0+0
	addc	_strlen_sloc1_1_0+1
	cneqsn	a, #0x00
	goto	00103$
;	../_strlen.c: 40: i++ ;
	inc	_strlen_sloc0_1_0+0
	addc	_strlen_sloc0_1_0+1
	goto	00101$
00103$:
;	../_strlen.c: 42: return i;
	mov	a, _strlen_sloc0_1_0+1
	mov	p, a
	mov	a, _strlen_sloc0_1_0+0
;	../_strlen.c: 43: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
