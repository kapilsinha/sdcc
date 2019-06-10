;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _divschar
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divsuchar_PARM_2
	.globl __divsuchar_PARM_1
	.globl __divuschar_PARM_2
	.globl __divuschar_PARM_1
	.globl __divschar_PARM_2
	.globl __divschar_PARM_1
	.globl __divschar
	.globl __divuschar
	.globl __divsuchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__divschar_PARM_1:
	.ds 1
__divschar_PARM_2:
	.ds 1
__divuschar_PARM_1:
	.ds 1
__divuschar_PARM_2:
	.ds 1
__divsuchar_PARM_1:
	.ds 1
__divsuchar_PARM_2:
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
;	../_divschar.c: 31: _divschar (signed char x, signed char y)
;	-----------------------------------------
;	 function _divschar
;	-----------------------------------------
__divschar:
;	../_divschar.c: 33: return ((int)x / (int)y);
	mov	a, __divschar_PARM_1+0
	mov	__divsint_PARM_1+0, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	__divsint_PARM_1+1, a
	mov	a, __divschar_PARM_2+0
	mov	__divsint_PARM_2+0, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	__divsint_PARM_2+1, a
	call	__divsint
;	../_divschar.c: 34: }
	ret
;	../_divschar.c: 37: _divuschar (unsigned char x, unsigned char y)
;	-----------------------------------------
;	 function _divuschar
;	-----------------------------------------
__divuschar:
;	../_divschar.c: 39: return ((int)((signed char)x) / (int)y);
	mov	a, __divuschar_PARM_1+0
	mov	__divsint_PARM_1+0, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	__divsint_PARM_1+1, a
	mov	a, __divuschar_PARM_2+0
	mov	__divsint_PARM_2+0, a
	clear	__divsint_PARM_2+1
	call	__divsint
;	../_divschar.c: 40: }
	ret
;	../_divschar.c: 43: _divsuchar (signed char x, signed char y)
;	-----------------------------------------
;	 function _divsuchar
;	-----------------------------------------
__divsuchar:
;	../_divschar.c: 45: return ((int)((unsigned char)x) / (int)y);
	mov	a, __divsuchar_PARM_1+0
	mov	__divsint_PARM_1+0, a
	clear	__divsint_PARM_1+1
	mov	a, __divsuchar_PARM_2+0
	mov	__divsint_PARM_2+0, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	__divsint_PARM_2+1, a
	call	__divsint
;	../_divschar.c: 46: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
