;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _divslong
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divslong_PARM_2
	.globl __divslong_PARM_1
	.globl __divslong
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__divslong_PARM_1:
	.ds 4
__divslong_PARM_2:
	.ds 4
__divslong_sloc0_1_0:
	.ds 4
__divslong_sloc1_1_0:
	.ds 1
__divslong_sloc2_1_0:
	.ds 4
__divslong_sloc3_1_0:
	.ds 4
__divslong_sloc4_1_0:
	.ds 1
__divslong_sloc5_1_0:
	.ds 4
__divslong_sloc6_1_0:
	.ds 4
__divslong_sloc7_1_0:
	.ds 4
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
;	../_divslong.c: 259: _divslong (long x, long y)
;	-----------------------------------------
;	 function _divslong
;	-----------------------------------------
__divslong:
;	../_divslong.c: 263: r = (unsigned long)(x < 0 ? -x : x) / (unsigned long)(y < 0 ? -y : y);
	mov	a, __divslong_PARM_1+3
	sl	a
	mov	a, #0x00
	slc	a
	mov	__divslong_sloc1_1_0+0, a
	cneqsn	a, #0x00
	goto	00106$
	mov	a, #0x00
	sub	a, __divslong_PARM_1+0
	mov	__divslong_sloc2_1_0+0, a
	mov	a, #0x00
	subc	a, __divslong_PARM_1+1
	mov	__divslong_sloc2_1_0+1, a
	mov	a, #0x00
	subc	a, __divslong_PARM_1+2
	mov	__divslong_sloc2_1_0+2, a
	mov	a, #0x00
	subc	a, __divslong_PARM_1+3
	mov	__divslong_sloc2_1_0+3, a
	goto	00107$
00106$:
	mov	a, __divslong_PARM_1+0
	mov	__divslong_sloc2_1_0+0, a
	mov	a, __divslong_PARM_1+1
	mov	__divslong_sloc2_1_0+1, a
	mov	a, __divslong_PARM_1+2
	mov	__divslong_sloc2_1_0+2, a
	mov	a, __divslong_PARM_1+3
	mov	__divslong_sloc2_1_0+3, a
00107$:
	mov	a, __divslong_sloc2_1_0+0
	mov	__divslong_sloc3_1_0+0, a
	mov	a, __divslong_sloc2_1_0+1
	mov	__divslong_sloc3_1_0+1, a
	mov	a, __divslong_sloc2_1_0+2
	mov	__divslong_sloc3_1_0+2, a
	mov	a, __divslong_sloc2_1_0+3
	mov	__divslong_sloc3_1_0+3, a
	mov	a, __divslong_PARM_2+3
	sl	a
	mov	a, #0x00
	slc	a
	mov	__divslong_sloc4_1_0+0, a
	cneqsn	a, #0x00
	goto	00108$
	mov	a, #0x00
	sub	a, __divslong_PARM_2+0
	mov	__divslong_sloc5_1_0+0, a
	mov	a, #0x00
	subc	a, __divslong_PARM_2+1
	mov	__divslong_sloc5_1_0+1, a
	mov	a, #0x00
	subc	a, __divslong_PARM_2+2
	mov	__divslong_sloc5_1_0+2, a
	mov	a, #0x00
	subc	a, __divslong_PARM_2+3
	mov	__divslong_sloc5_1_0+3, a
	goto	00109$
00108$:
	mov	a, __divslong_PARM_2+0
	mov	__divslong_sloc5_1_0+0, a
	mov	a, __divslong_PARM_2+1
	mov	__divslong_sloc5_1_0+1, a
	mov	a, __divslong_PARM_2+2
	mov	__divslong_sloc5_1_0+2, a
	mov	a, __divslong_PARM_2+3
	mov	__divslong_sloc5_1_0+3, a
00109$:
	mov	a, __divslong_sloc5_1_0+0
	mov	__divulong_PARM_2+0, a
	mov	a, __divslong_sloc5_1_0+1
	mov	__divulong_PARM_2+1, a
	mov	a, __divslong_sloc5_1_0+2
	mov	__divulong_PARM_2+2, a
	mov	a, __divslong_sloc5_1_0+3
	mov	__divulong_PARM_2+3, a
	mov	a, __divslong_sloc3_1_0+0
	mov	__divulong_PARM_1+0, a
	mov	a, __divslong_sloc3_1_0+1
	mov	__divulong_PARM_1+1, a
	mov	a, __divslong_sloc3_1_0+2
	mov	__divulong_PARM_1+2, a
	mov	a, __divslong_sloc3_1_0+3
	mov	__divulong_PARM_1+3, a
	mov	a, #__divslong_sloc0_1_0
	push	af
	call	__divulong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, __divslong_sloc0_1_0+0
	mov	__divslong_sloc6_1_0+0, a
	mov	a, __divslong_sloc0_1_0+1
	mov	__divslong_sloc6_1_0+1, a
	mov	a, __divslong_sloc0_1_0+2
	mov	__divslong_sloc6_1_0+2, a
	mov	a, __divslong_sloc0_1_0+3
	mov	__divslong_sloc6_1_0+3, a
;	../_divslong.c: 264: if ((x < 0) ^ (y < 0))
	mov	a, __divslong_sloc1_1_0+0
	xor	a, __divslong_sloc4_1_0+0
	cneqsn	a, #0x00
	goto	00102$
;	../_divslong.c: 265: return -r;
	mov	a, #0x00
	sub	a, __divslong_sloc6_1_0+0
	mov	__divslong_sloc7_1_0+0, a
	mov	a, #0x00
	subc	a, __divslong_sloc6_1_0+1
	mov	__divslong_sloc7_1_0+1, a
	mov	a, #0x00
	subc	a, __divslong_sloc6_1_0+2
	mov	__divslong_sloc7_1_0+2, a
	mov	a, #0x00
	subc	a, __divslong_sloc6_1_0+3
	mov	__divslong_sloc7_1_0+3, a
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, __divslong_sloc7_1_0+0
	idxm	p, a
	inc	p
	mov	a, __divslong_sloc7_1_0+1
	idxm	p, a
	inc	p
	mov	a, __divslong_sloc7_1_0+2
	idxm	p, a
	inc	p
	mov	a, __divslong_sloc7_1_0+3
	idxm	p, a
	ret
00102$:
;	../_divslong.c: 267: return r;
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, __divslong_sloc6_1_0+0
	idxm	p, a
	inc	p
	mov	a, __divslong_sloc6_1_0+1
	idxm	p, a
	inc	p
	mov	a, __divslong_sloc6_1_0+2
	idxm	p, a
	inc	p
	mov	a, __divslong_sloc6_1_0+3
	idxm	p, a
;	../_divslong.c: 268: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
