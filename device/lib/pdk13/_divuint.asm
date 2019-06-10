;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _divuint
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divuint_PARM_2
	.globl __divuint_PARM_1
	.globl __divuint
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__divuint_PARM_1:
	.ds 2
__divuint_PARM_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
__divuint_sloc0_1_0:
	.ds 2
__divuint_sloc1_1_0:
	.ds 1
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
;	../_divuint.c: 155: _divuint (unsigned int x, unsigned int y)
;	-----------------------------------------
;	 function _divuint
;	-----------------------------------------
__divuint:
;	../_divuint.c: 157: unsigned int reste = 0;
	clear	__divuint_sloc0_1_0+0
	clear	__divuint_sloc0_1_0+1
;	../_divuint.c: 158: unsigned char count = 16;
	mov	a, #0x10
	mov	__divuint_sloc1_1_0+0, a
;	../_divuint.c: 161: do
00105$:
;	../_divuint.c: 164: c = MSB_SET(x);
	clear	p
	mov	a, __divuint_PARM_1+1
	sl	a
	mov	a, #0x00
	slc	a
;	../_divuint.c: 165: x <<= 1;
	sl	__divuint_PARM_1+0
	slc	__divuint_PARM_1+1
;	../_divuint.c: 166: reste <<= 1;
	sl	__divuint_sloc0_1_0+0
	slc	__divuint_sloc0_1_0+1
;	../_divuint.c: 167: if (c)
	cneqsn	a, #0x00
	goto	00102$
;	../_divuint.c: 168: reste |= 1;
	mov	a, #0x01
	or	__divuint_sloc0_1_0+0, a
00102$:
;	../_divuint.c: 170: if (reste >= y)
	mov	a, __divuint_sloc0_1_0+0
	sub	a, __divuint_PARM_2+0
	mov	a, __divuint_sloc0_1_0+1
	subc	a, __divuint_PARM_2+1
	t0sn	f, c
	goto	00106$
;	../_divuint.c: 172: reste -= y;
	mov	a, __divuint_PARM_2+0
	sub	__divuint_sloc0_1_0+0, a
	mov	a, __divuint_PARM_2+1
	subc	__divuint_sloc0_1_0+1, a
;	../_divuint.c: 174: x |= 1;
	mov	a, #0x01
	or	__divuint_PARM_1+0, a
00106$:
;	../_divuint.c: 177: while (--count);
	mov	a, __divuint_sloc1_1_0+0
	sub	a, #0x01
	mov	__divuint_sloc1_1_0+0, a
	ceqsn	a, #0x00
	goto	00105$
;	../_divuint.c: 178: return x;
	mov	a, __divuint_PARM_1+1
	mov	p, a
	mov	a, __divuint_PARM_1+0
;	../_divuint.c: 179: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
