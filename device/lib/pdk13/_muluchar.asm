;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _muluchar
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __muluchar_PARM_2
	.globl __muluchar_PARM_1
	.globl __muluchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__muluchar_PARM_1:
	.ds 1
__muluchar_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
__muluchar_sloc0_1_0:
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
;	../_muluchar.c: 30: _muluchar (unsigned char x, unsigned char y)
;	-----------------------------------------
;	 function _muluchar
;	-----------------------------------------
__muluchar:
;	../_muluchar.c: 32: unsigned int result = 0;
	clear	__muluchar_sloc0_1_0+0
	clear	__muluchar_sloc0_1_0+1
;	../_muluchar.c: 34: for (unsigned char i = 0; i < 8; i++)
	clear	p
00105$:
	mov	a, p
	sub	a, #0x08
	t1sn	f, c
	goto	00103$
;	../_muluchar.c: 36: result <<= 1;
	sl	__muluchar_sloc0_1_0+0
	slc	__muluchar_sloc0_1_0+1
;	../_muluchar.c: 37: if (x & 0x80)
	mov	a, __muluchar_PARM_1+0
	and	a, #0x80
	cneqsn	a, #0x00
	goto	00102$
;	../_muluchar.c: 38: result += y;
	mov	a, __muluchar_PARM_2+0
	add	__muluchar_sloc0_1_0+0, a
	addc	__muluchar_sloc0_1_0+1
00102$:
;	../_muluchar.c: 39: x <<= 1;
	sl	__muluchar_PARM_1+0
;	../_muluchar.c: 34: for (unsigned char i = 0; i < 8; i++)
	inc	p
	goto	00105$
00103$:
;	../_muluchar.c: 42: return result;
	mov	a, __muluchar_sloc0_1_0+1
	mov	p, a
	mov	a, __muluchar_sloc0_1_0+0
;	../_muluchar.c: 43: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
