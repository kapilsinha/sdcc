;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _modslonglong
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modslonglong_PARM_2
	.globl __modslonglong_PARM_1
	.globl __modslonglong
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__modslonglong_PARM_1:
	.ds 8
__modslonglong_PARM_2:
	.ds 8
__modslonglong_sloc0_1_0:
	.ds 8
__modslonglong_sloc1_1_0:
	.ds 1
__modslonglong_sloc2_1_0:
	.ds 8
__modslonglong_sloc3_1_0:
	.ds 8
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
;	../_modslonglong.c: 36: _modslonglong (long long numerator, long long denominator)
;	-----------------------------------------
;	 function _modslonglong
;	-----------------------------------------
__modslonglong:
;	../_modslonglong.c: 38: bool numeratorneg = (numerator < 0);
	mov	a, __modslonglong_PARM_1+7
	sl	a
	mov	a, #0x00
	slc	a
	mov	__modslonglong_sloc1_1_0+0, a
;	../_modslonglong.c: 39: bool denominatorneg = (denominator < 0);
	mov	a, __modslonglong_PARM_2+7
	sl	a
	mov	a, #0x00
	slc	a
	mov	p, a
;	../_modslonglong.c: 42: if (numeratorneg)
	mov	a, __modslonglong_sloc1_1_0+0
	cneqsn	a, #0x00
	goto	00102$
;	../_modslonglong.c: 43: numerator = -numerator;
	mov	a, #0x00
	sub	a, __modslonglong_PARM_1+0
	mov	__modslonglong_PARM_1+0, a
	mov	a, #0x00
	subc	a, __modslonglong_PARM_1+1
	mov	__modslonglong_PARM_1+1, a
	mov	a, #0x00
	subc	a, __modslonglong_PARM_1+2
	mov	__modslonglong_PARM_1+2, a
	mov	a, #0x00
	subc	a, __modslonglong_PARM_1+3
	mov	__modslonglong_PARM_1+3, a
	mov	a, #0x00
	subc	a, __modslonglong_PARM_1+4
	mov	__modslonglong_PARM_1+4, a
	mov	a, #0x00
	subc	a, __modslonglong_PARM_1+5
	mov	__modslonglong_PARM_1+5, a
	mov	a, #0x00
	subc	a, __modslonglong_PARM_1+6
	mov	__modslonglong_PARM_1+6, a
	mov	a, #0x00
	subc	a, __modslonglong_PARM_1+7
	mov	__modslonglong_PARM_1+7, a
00102$:
;	../_modslonglong.c: 44: if (denominatorneg)
	mov	a, p
	cneqsn	a, #0x00
	goto	00104$
;	../_modslonglong.c: 45: denominator = -denominator;
	mov	a, #0x00
	sub	a, __modslonglong_PARM_2+0
	mov	__modslonglong_PARM_2+0, a
	mov	a, #0x00
	subc	a, __modslonglong_PARM_2+1
	mov	__modslonglong_PARM_2+1, a
	mov	a, #0x00
	subc	a, __modslonglong_PARM_2+2
	mov	__modslonglong_PARM_2+2, a
	mov	a, #0x00
	subc	a, __modslonglong_PARM_2+3
	mov	__modslonglong_PARM_2+3, a
	mov	a, #0x00
	subc	a, __modslonglong_PARM_2+4
	mov	__modslonglong_PARM_2+4, a
	mov	a, #0x00
	subc	a, __modslonglong_PARM_2+5
	mov	__modslonglong_PARM_2+5, a
	mov	a, #0x00
	subc	a, __modslonglong_PARM_2+6
	mov	__modslonglong_PARM_2+6, a
	mov	a, #0x00
	subc	a, __modslonglong_PARM_2+7
	mov	__modslonglong_PARM_2+7, a
00104$:
;	../_modslonglong.c: 47: r = (unsigned long long)numerator % (unsigned long long)denominator;
	mov	a, __modslonglong_PARM_1+0
	mov	__modulonglong_PARM_1+0, a
	mov	a, __modslonglong_PARM_1+1
	mov	__modulonglong_PARM_1+1, a
	mov	a, __modslonglong_PARM_1+2
	mov	__modulonglong_PARM_1+2, a
	mov	a, __modslonglong_PARM_1+3
	mov	__modulonglong_PARM_1+3, a
	mov	a, __modslonglong_PARM_1+4
	mov	__modulonglong_PARM_1+4, a
	mov	a, __modslonglong_PARM_1+5
	mov	__modulonglong_PARM_1+5, a
	mov	a, __modslonglong_PARM_1+6
	mov	__modulonglong_PARM_1+6, a
	mov	a, __modslonglong_PARM_1+7
	mov	__modulonglong_PARM_1+7, a
	mov	a, __modslonglong_PARM_2+0
	mov	__modulonglong_PARM_2+0, a
	mov	a, __modslonglong_PARM_2+1
	mov	__modulonglong_PARM_2+1, a
	mov	a, __modslonglong_PARM_2+2
	mov	__modulonglong_PARM_2+2, a
	mov	a, __modslonglong_PARM_2+3
	mov	__modulonglong_PARM_2+3, a
	mov	a, __modslonglong_PARM_2+4
	mov	__modulonglong_PARM_2+4, a
	mov	a, __modslonglong_PARM_2+5
	mov	__modulonglong_PARM_2+5, a
	mov	a, __modslonglong_PARM_2+6
	mov	__modulonglong_PARM_2+6, a
	mov	a, __modslonglong_PARM_2+7
	mov	__modulonglong_PARM_2+7, a
	mov	a, #__modslonglong_sloc0_1_0
	push	af
	call	__modulonglong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, __modslonglong_sloc0_1_0+0
	mov	__modslonglong_sloc2_1_0+0, a
	mov	a, __modslonglong_sloc0_1_0+1
	mov	__modslonglong_sloc2_1_0+1, a
	mov	a, __modslonglong_sloc0_1_0+2
	mov	__modslonglong_sloc2_1_0+2, a
	mov	a, __modslonglong_sloc0_1_0+3
	mov	__modslonglong_sloc2_1_0+3, a
	mov	a, __modslonglong_sloc0_1_0+4
	mov	__modslonglong_sloc2_1_0+4, a
	mov	a, __modslonglong_sloc0_1_0+5
	mov	__modslonglong_sloc2_1_0+5, a
	mov	a, __modslonglong_sloc0_1_0+6
	mov	__modslonglong_sloc2_1_0+6, a
	mov	a, __modslonglong_sloc0_1_0+7
	mov	__modslonglong_sloc2_1_0+7, a
;	../_modslonglong.c: 49: return (numeratorneg ? -r : r);
	mov	a, __modslonglong_sloc1_1_0+0
	cneqsn	a, #0x00
	goto	00107$
	mov	a, #0x00
	sub	a, __modslonglong_sloc2_1_0+0
	mov	__modslonglong_sloc3_1_0+0, a
	mov	a, #0x00
	subc	a, __modslonglong_sloc2_1_0+1
	mov	__modslonglong_sloc3_1_0+1, a
	mov	a, #0x00
	subc	a, __modslonglong_sloc2_1_0+2
	mov	__modslonglong_sloc3_1_0+2, a
	mov	a, #0x00
	subc	a, __modslonglong_sloc2_1_0+3
	mov	__modslonglong_sloc3_1_0+3, a
	mov	a, #0x00
	subc	a, __modslonglong_sloc2_1_0+4
	mov	__modslonglong_sloc3_1_0+4, a
	mov	a, #0x00
	subc	a, __modslonglong_sloc2_1_0+5
	mov	__modslonglong_sloc3_1_0+5, a
	mov	a, #0x00
	subc	a, __modslonglong_sloc2_1_0+6
	mov	__modslonglong_sloc3_1_0+6, a
	mov	a, #0x00
	subc	a, __modslonglong_sloc2_1_0+7
	mov	__modslonglong_sloc3_1_0+7, a
	goto	00108$
00107$:
	mov	a, __modslonglong_sloc2_1_0+0
	mov	__modslonglong_sloc3_1_0+0, a
	mov	a, __modslonglong_sloc2_1_0+1
	mov	__modslonglong_sloc3_1_0+1, a
	mov	a, __modslonglong_sloc2_1_0+2
	mov	__modslonglong_sloc3_1_0+2, a
	mov	a, __modslonglong_sloc2_1_0+3
	mov	__modslonglong_sloc3_1_0+3, a
	mov	a, __modslonglong_sloc2_1_0+4
	mov	__modslonglong_sloc3_1_0+4, a
	mov	a, __modslonglong_sloc2_1_0+5
	mov	__modslonglong_sloc3_1_0+5, a
	mov	a, __modslonglong_sloc2_1_0+6
	mov	__modslonglong_sloc3_1_0+6, a
	mov	a, __modslonglong_sloc2_1_0+7
	mov	__modslonglong_sloc3_1_0+7, a
00108$:
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, __modslonglong_sloc3_1_0+0
	idxm	p, a
	inc	p
	mov	a, __modslonglong_sloc3_1_0+1
	idxm	p, a
	inc	p
	mov	a, __modslonglong_sloc3_1_0+2
	idxm	p, a
	inc	p
	mov	a, __modslonglong_sloc3_1_0+3
	idxm	p, a
	inc	p
	mov	a, __modslonglong_sloc3_1_0+4
	idxm	p, a
	inc	p
	mov	a, __modslonglong_sloc3_1_0+5
	idxm	p, a
	inc	p
	mov	a, __modslonglong_sloc3_1_0+6
	idxm	p, a
	inc	p
	mov	a, __modslonglong_sloc3_1_0+7
	idxm	p, a
;	../_modslonglong.c: 50: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
