;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _rlslonglong
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rlslonglong_PARM_2
	.globl __rlslonglong_PARM_1
	.globl __rlslonglong
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__rlslonglong_PARM_1:
	.ds 8
__rlslonglong_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
__rlslonglong_sloc0_1_0:
	.ds 8
__rlslonglong_sloc1_1_0:
	.ds 1
__rlslonglong_sloc2_1_0:
	.ds 8
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
;	../_rlslonglong.c: 35: long long _rlslonglong(long long l, char s)
;	-----------------------------------------
;	 function _rlslonglong
;	-----------------------------------------
__rlslonglong:
;	../_rlslonglong.c: 37: return((unsigned long long)(l) << s);
	mov	a, __rlslonglong_PARM_1+0
	mov	__rlslonglong_sloc0_1_0+0, a
	mov	a, __rlslonglong_PARM_1+1
	mov	__rlslonglong_sloc0_1_0+1, a
	mov	a, __rlslonglong_PARM_1+2
	mov	__rlslonglong_sloc0_1_0+2, a
	mov	a, __rlslonglong_PARM_1+3
	mov	__rlslonglong_sloc0_1_0+3, a
	mov	a, __rlslonglong_PARM_1+4
	mov	__rlslonglong_sloc0_1_0+4, a
	mov	a, __rlslonglong_PARM_1+5
	mov	__rlslonglong_sloc0_1_0+5, a
	mov	a, __rlslonglong_PARM_1+6
	mov	__rlslonglong_sloc0_1_0+6, a
	mov	a, __rlslonglong_PARM_1+7
	mov	__rlslonglong_sloc0_1_0+7, a
	mov	a, __rlslonglong_PARM_2+0
	mov	__rlslonglong_sloc1_1_0+0, a
	mov	a, __rlslonglong_sloc0_1_0+0
	mov	__rlslonglong_sloc2_1_0+0, a
	mov	a, __rlslonglong_sloc0_1_0+1
	mov	__rlslonglong_sloc2_1_0+1, a
	mov	a, __rlslonglong_sloc0_1_0+2
	mov	__rlslonglong_sloc2_1_0+2, a
	mov	a, __rlslonglong_sloc0_1_0+3
	mov	__rlslonglong_sloc2_1_0+3, a
	mov	a, __rlslonglong_sloc0_1_0+4
	mov	__rlslonglong_sloc2_1_0+4, a
	mov	a, __rlslonglong_sloc0_1_0+5
	mov	__rlslonglong_sloc2_1_0+5, a
	mov	a, __rlslonglong_sloc0_1_0+6
	mov	__rlslonglong_sloc2_1_0+6, a
	mov	a, __rlslonglong_sloc0_1_0+7
	mov	__rlslonglong_sloc2_1_0+7, a
	mov	a, __rlslonglong_sloc1_1_0+0
00103$:
	sub	a, #1
	t0sn	f, c
	goto	00104$
	sl	__rlslonglong_sloc2_1_0+0
	slc	__rlslonglong_sloc2_1_0+1
	slc	__rlslonglong_sloc2_1_0+2
	slc	__rlslonglong_sloc2_1_0+3
	slc	__rlslonglong_sloc2_1_0+4
	slc	__rlslonglong_sloc2_1_0+5
	slc	__rlslonglong_sloc2_1_0+6
	slc	__rlslonglong_sloc2_1_0+7
	goto	00103$
00104$:
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, __rlslonglong_sloc2_1_0+0
	idxm	p, a
	inc	p
	mov	a, __rlslonglong_sloc2_1_0+1
	idxm	p, a
	inc	p
	mov	a, __rlslonglong_sloc2_1_0+2
	idxm	p, a
	inc	p
	mov	a, __rlslonglong_sloc2_1_0+3
	idxm	p, a
	inc	p
	mov	a, __rlslonglong_sloc2_1_0+4
	idxm	p, a
	inc	p
	mov	a, __rlslonglong_sloc2_1_0+5
	idxm	p, a
	inc	p
	mov	a, __rlslonglong_sloc2_1_0+6
	idxm	p, a
	inc	p
	mov	a, __rlslonglong_sloc2_1_0+7
	idxm	p, a
;	../_rlslonglong.c: 38: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
