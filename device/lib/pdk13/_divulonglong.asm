;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _divulonglong
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divulonglong_PARM_2
	.globl __divulonglong_PARM_1
	.globl __divulonglong
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__divulonglong_PARM_1:
	.ds 8
__divulonglong_PARM_2:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
__divulonglong_sloc0_1_0:
	.ds 8
__divulonglong_sloc1_1_0:
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
;	../_divulonglong.c: 39: _divulonglong (unsigned long long x, unsigned long long y)
;	-----------------------------------------
;	 function _divulonglong
;	-----------------------------------------
__divulonglong:
;	../_divulonglong.c: 41: unsigned long long reste = 0L;
	clear	__divulonglong_sloc0_1_0+0
	clear	__divulonglong_sloc0_1_0+1
	clear	__divulonglong_sloc0_1_0+2
	clear	__divulonglong_sloc0_1_0+3
	clear	__divulonglong_sloc0_1_0+4
	clear	__divulonglong_sloc0_1_0+5
	clear	__divulonglong_sloc0_1_0+6
	clear	__divulonglong_sloc0_1_0+7
;	../_divulonglong.c: 42: unsigned char count = 64;
	mov	a, #0x40
	mov	p, a
;	../_divulonglong.c: 45: do
00105$:
;	../_divulonglong.c: 48: c = MSB_SET(x);
	mov	a, __divulonglong_PARM_1+7
	mov	__divulonglong_sloc1_1_0+0, a
	clear	__divulonglong_sloc1_1_0+1
	clear	__divulonglong_sloc1_1_0+2
	clear	__divulonglong_sloc1_1_0+3
	clear	__divulonglong_sloc1_1_0+4
	clear	__divulonglong_sloc1_1_0+5
	clear	__divulonglong_sloc1_1_0+6
	clear	__divulonglong_sloc1_1_0+7
	mov	a, #7
00126$:
	sr	__divulonglong_sloc1_1_0+0
	dzsn	a
	goto	00126$
	mov	a, __divulonglong_sloc1_1_0+0
	and	a, #0x01
;	../_divulonglong.c: 49: x <<= 1;
	sl	__divulonglong_PARM_1+0
	slc	__divulonglong_PARM_1+1
	slc	__divulonglong_PARM_1+2
	slc	__divulonglong_PARM_1+3
	slc	__divulonglong_PARM_1+4
	slc	__divulonglong_PARM_1+5
	slc	__divulonglong_PARM_1+6
	slc	__divulonglong_PARM_1+7
;	../_divulonglong.c: 50: reste <<= 1;
	sl	__divulonglong_sloc0_1_0+0
	slc	__divulonglong_sloc0_1_0+1
	slc	__divulonglong_sloc0_1_0+2
	slc	__divulonglong_sloc0_1_0+3
	slc	__divulonglong_sloc0_1_0+4
	slc	__divulonglong_sloc0_1_0+5
	slc	__divulonglong_sloc0_1_0+6
	slc	__divulonglong_sloc0_1_0+7
;	../_divulonglong.c: 51: if (c)
	cneqsn	a, #0x00
	goto	00102$
;	../_divulonglong.c: 52: reste |= 1L;
	mov	a, #0x01
	or	__divulonglong_sloc0_1_0+0, a
00102$:
;	../_divulonglong.c: 54: if (reste >= y)
	mov	a, __divulonglong_sloc0_1_0+0
	sub	a, __divulonglong_PARM_2+0
	mov	a, __divulonglong_sloc0_1_0+1
	subc	a, __divulonglong_PARM_2+1
	mov	a, __divulonglong_sloc0_1_0+2
	subc	a, __divulonglong_PARM_2+2
	mov	a, __divulonglong_sloc0_1_0+3
	subc	a, __divulonglong_PARM_2+3
	mov	a, __divulonglong_sloc0_1_0+4
	subc	a, __divulonglong_PARM_2+4
	mov	a, __divulonglong_sloc0_1_0+5
	subc	a, __divulonglong_PARM_2+5
	mov	a, __divulonglong_sloc0_1_0+6
	subc	a, __divulonglong_PARM_2+6
	mov	a, __divulonglong_sloc0_1_0+7
	subc	a, __divulonglong_PARM_2+7
	t0sn	f, c
	goto	00106$
;	../_divulonglong.c: 56: reste -= y;
	mov	a, __divulonglong_PARM_2+0
	sub	__divulonglong_sloc0_1_0+0, a
	mov	a, __divulonglong_PARM_2+1
	subc	__divulonglong_sloc0_1_0+1, a
	mov	a, __divulonglong_PARM_2+2
	subc	__divulonglong_sloc0_1_0+2, a
	mov	a, __divulonglong_PARM_2+3
	subc	__divulonglong_sloc0_1_0+3, a
	mov	a, __divulonglong_PARM_2+4
	subc	__divulonglong_sloc0_1_0+4, a
	mov	a, __divulonglong_PARM_2+5
	subc	__divulonglong_sloc0_1_0+5, a
	mov	a, __divulonglong_PARM_2+6
	subc	__divulonglong_sloc0_1_0+6, a
	mov	a, __divulonglong_PARM_2+7
	subc	__divulonglong_sloc0_1_0+7, a
;	../_divulonglong.c: 58: x |= 1L;
	mov	a, #0x01
	or	__divulonglong_PARM_1+0, a
00106$:
;	../_divulonglong.c: 61: while (--count);
	mov	a, p
	sub	a, #0x01
	mov	p, a
	ceqsn	a, #0x00
	goto	00105$
;	../_divulonglong.c: 62: return x;
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, __divulonglong_PARM_1+0
	idxm	p, a
	inc	p
	mov	a, __divulonglong_PARM_1+1
	idxm	p, a
	inc	p
	mov	a, __divulonglong_PARM_1+2
	idxm	p, a
	inc	p
	mov	a, __divulonglong_PARM_1+3
	idxm	p, a
	inc	p
	mov	a, __divulonglong_PARM_1+4
	idxm	p, a
	inc	p
	mov	a, __divulonglong_PARM_1+5
	idxm	p, a
	inc	p
	mov	a, __divulonglong_PARM_1+6
	idxm	p, a
	inc	p
	mov	a, __divulonglong_PARM_1+7
	idxm	p, a
;	../_divulonglong.c: 63: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
