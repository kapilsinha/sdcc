;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _moduchar
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __moduchar_PARM_2
	.globl __moduchar_PARM_1
	.globl __moduchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__moduchar_PARM_1:
	.ds 1
__moduchar_PARM_2:
	.ds 1
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
;	../_moduchar.c: 30: _moduchar (unsigned char x, unsigned char y)
;	-----------------------------------------
;	 function _moduchar
;	-----------------------------------------
__moduchar:
;	../_moduchar.c: 32: return ((unsigned int)x % (unsigned int)y);
	mov	a, __moduchar_PARM_1+0
	mov	__moduint_PARM_1+0, a
	clear	__moduint_PARM_1+1
	mov	a, __moduchar_PARM_2+0
	mov	__moduint_PARM_2+0, a
	clear	__moduint_PARM_2+1
	call	__moduint
;	../_moduchar.c: 33: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
