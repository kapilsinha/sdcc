;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _mulschar
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mulsuchar_PARM_2
	.globl __mulsuchar_PARM_1
	.globl __muluschar_PARM_2
	.globl __muluschar_PARM_1
	.globl __mulschar_PARM_2
	.globl __mulschar_PARM_1
	.globl __mulschar
	.globl __muluschar
	.globl __mulsuchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__mulschar_PARM_1:
	.ds 1
__mulschar_PARM_2:
	.ds 1
__muluschar_PARM_1:
	.ds 1
__muluschar_PARM_2:
	.ds 1
__mulsuchar_PARM_1:
	.ds 1
__mulsuchar_PARM_2:
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
;	../_mulschar.c: 31: _mulschar (signed char x, signed char y)
;	-----------------------------------------
;	 function _mulschar
;	-----------------------------------------
__mulschar:
;	../_mulschar.c: 33: return ((int)x * (int)y);
	mov	a, __mulschar_PARM_1+0
	mov	__mulint_PARM_1+0, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	__mulint_PARM_1+1, a
	mov	a, __mulschar_PARM_2+0
	mov	__mulint_PARM_2+0, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	__mulint_PARM_2+1, a
	call	__mulint
;	../_mulschar.c: 34: }
	ret
;	../_mulschar.c: 37: _muluschar (unsigned char x, unsigned char y)
;	-----------------------------------------
;	 function _muluschar
;	-----------------------------------------
__muluschar:
;	../_mulschar.c: 39: return ((int)((signed char)x) * (int)y);
	mov	a, __muluschar_PARM_1+0
	mov	__mulint_PARM_1+0, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	__mulint_PARM_1+1, a
	mov	a, __muluschar_PARM_2+0
	mov	__mulint_PARM_2+0, a
	clear	__mulint_PARM_2+1
	call	__mulint
;	../_mulschar.c: 40: }
	ret
;	../_mulschar.c: 43: _mulsuchar (signed char x, signed char y)
;	-----------------------------------------
;	 function _mulsuchar
;	-----------------------------------------
__mulsuchar:
;	../_mulschar.c: 45: return ((int)((unsigned char)x) * (int)y);
	mov	a, __mulsuchar_PARM_1+0
	mov	__mulint_PARM_1+0, a
	clear	__mulint_PARM_1+1
	mov	a, __mulsuchar_PARM_2+0
	mov	__mulint_PARM_2+0, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	__mulint_PARM_2+1, a
	call	__mulint
;	../_mulschar.c: 46: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
