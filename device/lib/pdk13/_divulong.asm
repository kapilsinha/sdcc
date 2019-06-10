;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _divulong
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divulong_PARM_2
	.globl __divulong_PARM_1
	.globl __divulong
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__divulong_PARM_1:
	.ds 4
__divulong_PARM_2:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
__divulong_sloc0_1_0:
	.ds 4
__divulong_sloc1_1_0:
	.ds 4
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
;	../_divulong.c: 331: _divulong (unsigned long x, unsigned long y)
;	-----------------------------------------
;	 function _divulong
;	-----------------------------------------
__divulong:
;	../_divulong.c: 333: unsigned long reste = 0L;
	clear	__divulong_sloc0_1_0+0
	clear	__divulong_sloc0_1_0+1
	clear	__divulong_sloc0_1_0+2
	clear	__divulong_sloc0_1_0+3
;	../_divulong.c: 334: unsigned char count = 32;
	mov	a, #0x20
	mov	p, a
;	../_divulong.c: 337: do
00105$:
;	../_divulong.c: 340: c = MSB_SET(x);
	mov	a, __divulong_PARM_1+3
	mov	__divulong_sloc1_1_0+0, a
	clear	__divulong_sloc1_1_0+1
	clear	__divulong_sloc1_1_0+2
	clear	__divulong_sloc1_1_0+3
	mov	a, #7
00126$:
	sr	__divulong_sloc1_1_0+0
	dzsn	a
	goto	00126$
	mov	a, __divulong_sloc1_1_0+0
	and	a, #0x01
;	../_divulong.c: 341: x <<= 1;
	sl	__divulong_PARM_1+0
	slc	__divulong_PARM_1+1
	slc	__divulong_PARM_1+2
	slc	__divulong_PARM_1+3
;	../_divulong.c: 342: reste <<= 1;
	sl	__divulong_sloc0_1_0+0
	slc	__divulong_sloc0_1_0+1
	slc	__divulong_sloc0_1_0+2
	slc	__divulong_sloc0_1_0+3
;	../_divulong.c: 343: if (c)
	cneqsn	a, #0x00
	goto	00102$
;	../_divulong.c: 344: reste |= 1L;
	mov	a, #0x01
	or	__divulong_sloc0_1_0+0, a
00102$:
;	../_divulong.c: 346: if (reste >= y)
	mov	a, __divulong_sloc0_1_0+0
	sub	a, __divulong_PARM_2+0
	mov	a, __divulong_sloc0_1_0+1
	subc	a, __divulong_PARM_2+1
	mov	a, __divulong_sloc0_1_0+2
	subc	a, __divulong_PARM_2+2
	mov	a, __divulong_sloc0_1_0+3
	subc	a, __divulong_PARM_2+3
	t0sn	f, c
	goto	00106$
;	../_divulong.c: 348: reste -= y;
	mov	a, __divulong_PARM_2+0
	sub	__divulong_sloc0_1_0+0, a
	mov	a, __divulong_PARM_2+1
	subc	__divulong_sloc0_1_0+1, a
	mov	a, __divulong_PARM_2+2
	subc	__divulong_sloc0_1_0+2, a
	mov	a, __divulong_PARM_2+3
	subc	__divulong_sloc0_1_0+3, a
;	../_divulong.c: 350: x |= 1L;
	mov	a, #0x01
	or	__divulong_PARM_1+0, a
00106$:
;	../_divulong.c: 353: while (--count);
	mov	a, p
	sub	a, #0x01
	mov	p, a
	ceqsn	a, #0x00
	goto	00105$
;	../_divulong.c: 354: return x;
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, __divulong_PARM_1+0
	idxm	p, a
	inc	p
	mov	a, __divulong_PARM_1+1
	idxm	p, a
	inc	p
	mov	a, __divulong_PARM_1+2
	idxm	p, a
	inc	p
	mov	a, __divulong_PARM_1+3
	idxm	p, a
;	../_divulong.c: 355: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
