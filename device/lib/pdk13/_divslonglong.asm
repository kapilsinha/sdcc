;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _divslonglong
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divslonglong_PARM_2
	.globl __divslonglong_PARM_1
	.globl __divslonglong
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__divslonglong_PARM_1:
	.ds 8
__divslonglong_PARM_2:
	.ds 8
__divslonglong_sloc0_1_0:
	.ds 8
__divslonglong_sloc1_1_0:
	.ds 1
__divslonglong_sloc2_1_0:
	.ds 1
__divslonglong_sloc3_1_0:
	.ds 8
__divslonglong_sloc4_1_0:
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
;	../_divslonglong.c: 36: _divslonglong (long long numerator, long long denominator)
;	-----------------------------------------
;	 function _divslonglong
;	-----------------------------------------
__divslonglong:
;	../_divslonglong.c: 38: bool numeratorneg = (numerator < 0);
	mov	a, __divslonglong_PARM_1+7
	sl	a
	mov	a, #0x00
	slc	a
	mov	__divslonglong_sloc1_1_0+0, a
;	../_divslonglong.c: 39: bool denominatorneg = (denominator < 0);
	mov	a, __divslonglong_PARM_2+7
	sl	a
	mov	a, #0x00
	slc	a
	mov	__divslonglong_sloc2_1_0+0, a
;	../_divslonglong.c: 42: if (numeratorneg)
	mov	a, __divslonglong_sloc1_1_0+0
	cneqsn	a, #0x00
	goto	00102$
;	../_divslonglong.c: 43: numerator = -numerator;
	mov	a, #0x00
	sub	a, __divslonglong_PARM_1+0
	mov	__divslonglong_PARM_1+0, a
	mov	a, #0x00
	subc	a, __divslonglong_PARM_1+1
	mov	__divslonglong_PARM_1+1, a
	mov	a, #0x00
	subc	a, __divslonglong_PARM_1+2
	mov	__divslonglong_PARM_1+2, a
	mov	a, #0x00
	subc	a, __divslonglong_PARM_1+3
	mov	__divslonglong_PARM_1+3, a
	mov	a, #0x00
	subc	a, __divslonglong_PARM_1+4
	mov	__divslonglong_PARM_1+4, a
	mov	a, #0x00
	subc	a, __divslonglong_PARM_1+5
	mov	__divslonglong_PARM_1+5, a
	mov	a, #0x00
	subc	a, __divslonglong_PARM_1+6
	mov	__divslonglong_PARM_1+6, a
	mov	a, #0x00
	subc	a, __divslonglong_PARM_1+7
	mov	__divslonglong_PARM_1+7, a
00102$:
;	../_divslonglong.c: 44: if (denominatorneg)
	mov	a, __divslonglong_sloc2_1_0+0
	cneqsn	a, #0x00
	goto	00104$
;	../_divslonglong.c: 45: denominator = -denominator;
	mov	a, #0x00
	sub	a, __divslonglong_PARM_2+0
	mov	__divslonglong_PARM_2+0, a
	mov	a, #0x00
	subc	a, __divslonglong_PARM_2+1
	mov	__divslonglong_PARM_2+1, a
	mov	a, #0x00
	subc	a, __divslonglong_PARM_2+2
	mov	__divslonglong_PARM_2+2, a
	mov	a, #0x00
	subc	a, __divslonglong_PARM_2+3
	mov	__divslonglong_PARM_2+3, a
	mov	a, #0x00
	subc	a, __divslonglong_PARM_2+4
	mov	__divslonglong_PARM_2+4, a
	mov	a, #0x00
	subc	a, __divslonglong_PARM_2+5
	mov	__divslonglong_PARM_2+5, a
	mov	a, #0x00
	subc	a, __divslonglong_PARM_2+6
	mov	__divslonglong_PARM_2+6, a
	mov	a, #0x00
	subc	a, __divslonglong_PARM_2+7
	mov	__divslonglong_PARM_2+7, a
00104$:
;	../_divslonglong.c: 47: d = (unsigned long long)numerator / (unsigned long long)denominator;
	mov	a, __divslonglong_PARM_1+0
	mov	__divulonglong_PARM_1+0, a
	mov	a, __divslonglong_PARM_1+1
	mov	__divulonglong_PARM_1+1, a
	mov	a, __divslonglong_PARM_1+2
	mov	__divulonglong_PARM_1+2, a
	mov	a, __divslonglong_PARM_1+3
	mov	__divulonglong_PARM_1+3, a
	mov	a, __divslonglong_PARM_1+4
	mov	__divulonglong_PARM_1+4, a
	mov	a, __divslonglong_PARM_1+5
	mov	__divulonglong_PARM_1+5, a
	mov	a, __divslonglong_PARM_1+6
	mov	__divulonglong_PARM_1+6, a
	mov	a, __divslonglong_PARM_1+7
	mov	__divulonglong_PARM_1+7, a
	mov	a, __divslonglong_PARM_2+0
	mov	__divulonglong_PARM_2+0, a
	mov	a, __divslonglong_PARM_2+1
	mov	__divulonglong_PARM_2+1, a
	mov	a, __divslonglong_PARM_2+2
	mov	__divulonglong_PARM_2+2, a
	mov	a, __divslonglong_PARM_2+3
	mov	__divulonglong_PARM_2+3, a
	mov	a, __divslonglong_PARM_2+4
	mov	__divulonglong_PARM_2+4, a
	mov	a, __divslonglong_PARM_2+5
	mov	__divulonglong_PARM_2+5, a
	mov	a, __divslonglong_PARM_2+6
	mov	__divulonglong_PARM_2+6, a
	mov	a, __divslonglong_PARM_2+7
	mov	__divulonglong_PARM_2+7, a
	mov	a, #__divslonglong_sloc0_1_0
	push	af
	call	__divulonglong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, __divslonglong_sloc0_1_0+0
	mov	__divslonglong_sloc3_1_0+0, a
	mov	a, __divslonglong_sloc0_1_0+1
	mov	__divslonglong_sloc3_1_0+1, a
	mov	a, __divslonglong_sloc0_1_0+2
	mov	__divslonglong_sloc3_1_0+2, a
	mov	a, __divslonglong_sloc0_1_0+3
	mov	__divslonglong_sloc3_1_0+3, a
	mov	a, __divslonglong_sloc0_1_0+4
	mov	__divslonglong_sloc3_1_0+4, a
	mov	a, __divslonglong_sloc0_1_0+5
	mov	__divslonglong_sloc3_1_0+5, a
	mov	a, __divslonglong_sloc0_1_0+6
	mov	__divslonglong_sloc3_1_0+6, a
	mov	a, __divslonglong_sloc0_1_0+7
	mov	__divslonglong_sloc3_1_0+7, a
;	../_divslonglong.c: 49: return ((numeratorneg ^ denominatorneg) ? -d : d);
	mov	a, __divslonglong_sloc1_1_0+0
	xor	a, __divslonglong_sloc2_1_0+0
	cneqsn	a, #0x00
	goto	00107$
	mov	a, #0x00
	sub	a, __divslonglong_sloc3_1_0+0
	mov	__divslonglong_sloc4_1_0+0, a
	mov	a, #0x00
	subc	a, __divslonglong_sloc3_1_0+1
	mov	__divslonglong_sloc4_1_0+1, a
	mov	a, #0x00
	subc	a, __divslonglong_sloc3_1_0+2
	mov	__divslonglong_sloc4_1_0+2, a
	mov	a, #0x00
	subc	a, __divslonglong_sloc3_1_0+3
	mov	__divslonglong_sloc4_1_0+3, a
	mov	a, #0x00
	subc	a, __divslonglong_sloc3_1_0+4
	mov	__divslonglong_sloc4_1_0+4, a
	mov	a, #0x00
	subc	a, __divslonglong_sloc3_1_0+5
	mov	__divslonglong_sloc4_1_0+5, a
	mov	a, #0x00
	subc	a, __divslonglong_sloc3_1_0+6
	mov	__divslonglong_sloc4_1_0+6, a
	mov	a, #0x00
	subc	a, __divslonglong_sloc3_1_0+7
	mov	__divslonglong_sloc4_1_0+7, a
	goto	00108$
00107$:
	mov	a, __divslonglong_sloc3_1_0+0
	mov	__divslonglong_sloc4_1_0+0, a
	mov	a, __divslonglong_sloc3_1_0+1
	mov	__divslonglong_sloc4_1_0+1, a
	mov	a, __divslonglong_sloc3_1_0+2
	mov	__divslonglong_sloc4_1_0+2, a
	mov	a, __divslonglong_sloc3_1_0+3
	mov	__divslonglong_sloc4_1_0+3, a
	mov	a, __divslonglong_sloc3_1_0+4
	mov	__divslonglong_sloc4_1_0+4, a
	mov	a, __divslonglong_sloc3_1_0+5
	mov	__divslonglong_sloc4_1_0+5, a
	mov	a, __divslonglong_sloc3_1_0+6
	mov	__divslonglong_sloc4_1_0+6, a
	mov	a, __divslonglong_sloc3_1_0+7
	mov	__divslonglong_sloc4_1_0+7, a
00108$:
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, __divslonglong_sloc4_1_0+0
	idxm	p, a
	inc	p
	mov	a, __divslonglong_sloc4_1_0+1
	idxm	p, a
	inc	p
	mov	a, __divslonglong_sloc4_1_0+2
	idxm	p, a
	inc	p
	mov	a, __divslonglong_sloc4_1_0+3
	idxm	p, a
	inc	p
	mov	a, __divslonglong_sloc4_1_0+4
	idxm	p, a
	inc	p
	mov	a, __divslonglong_sloc4_1_0+5
	idxm	p, a
	inc	p
	mov	a, __divslonglong_sloc4_1_0+6
	idxm	p, a
	inc	p
	mov	a, __divslonglong_sloc4_1_0+7
	idxm	p, a
;	../_divslonglong.c: 50: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
