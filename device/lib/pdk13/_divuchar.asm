;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _divuchar
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divuchar_PARM_2
	.globl __divuchar_PARM_1
	.globl __divuchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__divuchar_PARM_1:
	.ds 1
__divuchar_PARM_2:
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
;	../_divuchar.c: 31: _divuchar (unsigned char x, unsigned char y)
;	-----------------------------------------
;	 function _divuchar
;	-----------------------------------------
__divuchar:
;	../_divuchar.c: 33: return ((unsigned int)x / (unsigned int)y);
	mov	a, __divuchar_PARM_1+0
	mov	__divuint_PARM_1+0, a
	clear	__divuint_PARM_1+1
	mov	a, __divuchar_PARM_2+0
	mov	__divuint_PARM_2+0, a
	clear	__divuint_PARM_2+1
	call	__divuint
;	../_divuchar.c: 34: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
