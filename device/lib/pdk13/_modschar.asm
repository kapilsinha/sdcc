;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _modschar
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modsuchar_PARM_2
	.globl __modsuchar_PARM_1
	.globl __moduschar_PARM_2
	.globl __moduschar_PARM_1
	.globl __modschar_PARM_2
	.globl __modschar_PARM_1
	.globl __modschar
	.globl __moduschar
	.globl __modsuchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__modschar_PARM_1:
	.ds 1
__modschar_PARM_2:
	.ds 1
__moduschar_PARM_1:
	.ds 1
__moduschar_PARM_2:
	.ds 1
__modsuchar_PARM_1:
	.ds 1
__modsuchar_PARM_2:
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
;	../_modschar.c: 31: _modschar (signed char x, signed char y)
;	-----------------------------------------
;	 function _modschar
;	-----------------------------------------
__modschar:
;	../_modschar.c: 33: return ((int)x % (int)y);
	mov	a, __modschar_PARM_1+0
	mov	__modsint_PARM_1+0, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	__modsint_PARM_1+1, a
	mov	a, __modschar_PARM_2+0
	mov	__modsint_PARM_2+0, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	__modsint_PARM_2+1, a
	call	__modsint
;	../_modschar.c: 34: }
	ret
;	../_modschar.c: 37: _moduschar (unsigned char x, unsigned char y)
;	-----------------------------------------
;	 function _moduschar
;	-----------------------------------------
__moduschar:
;	../_modschar.c: 39: return ((int)((signed char)x) % (int)y);
	mov	a, __moduschar_PARM_1+0
	mov	__modsint_PARM_1+0, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	__modsint_PARM_1+1, a
	mov	a, __moduschar_PARM_2+0
	mov	__modsint_PARM_2+0, a
	clear	__modsint_PARM_2+1
	call	__modsint
;	../_modschar.c: 40: }
	ret
;	../_modschar.c: 43: _modsuchar (signed char x, signed char y)
;	-----------------------------------------
;	 function _modsuchar
;	-----------------------------------------
__modsuchar:
;	../_modschar.c: 45: return ((int)((unsigned char)x) % (int)y);
	mov	a, __modsuchar_PARM_1+0
	mov	__modsint_PARM_1+0, a
	clear	__modsint_PARM_1+1
	mov	a, __modsuchar_PARM_2+0
	mov	__modsint_PARM_2+0, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	__modsint_PARM_2+1, a
	call	__modsint
;	../_modschar.c: 46: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
