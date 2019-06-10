;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _modulonglong
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modulonglong_PARM_2
	.globl __modulonglong_PARM_1
	.globl __modulonglong
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__modulonglong_PARM_1:
	.ds 8
__modulonglong_PARM_2:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
__modulonglong_sloc0_1_0:
	.ds 1
__modulonglong_sloc1_1_0:
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
;	../_modulonglong.c: 38: _modulonglong (unsigned long long a, unsigned long long b)
;	-----------------------------------------
;	 function _modulonglong
;	-----------------------------------------
__modulonglong:
;	../_modulonglong.c: 40: unsigned char count = 0;
	clear	p
;	../_modulonglong.c: 42: while (!MSB_SET(b))
	clear	__modulonglong_sloc0_1_0+0
00103$:
	mov	a, __modulonglong_PARM_2+7
	mov	__modulonglong_sloc1_1_0+0, a
	clear	__modulonglong_sloc1_1_0+1
	clear	__modulonglong_sloc1_1_0+2
	clear	__modulonglong_sloc1_1_0+3
	clear	__modulonglong_sloc1_1_0+4
	clear	__modulonglong_sloc1_1_0+5
	clear	__modulonglong_sloc1_1_0+6
	clear	__modulonglong_sloc1_1_0+7
	mov	a, #7
00138$:
	sr	__modulonglong_sloc1_1_0+0
	dzsn	a
	goto	00138$
	mov	a, __modulonglong_sloc1_1_0+0
	and	a, #0x01
	ceqsn	a, #0x00
	goto	00117$
;	../_modulonglong.c: 44: b <<= 1;
	sl	__modulonglong_PARM_2+0
	slc	__modulonglong_PARM_2+1
	slc	__modulonglong_PARM_2+2
	slc	__modulonglong_PARM_2+3
	slc	__modulonglong_PARM_2+4
	slc	__modulonglong_PARM_2+5
	slc	__modulonglong_PARM_2+6
	slc	__modulonglong_PARM_2+7
;	../_modulonglong.c: 45: if (b > a)
	mov	a, __modulonglong_PARM_1+0
	sub	a, __modulonglong_PARM_2+0
	mov	a, __modulonglong_PARM_1+1
	subc	a, __modulonglong_PARM_2+1
	mov	a, __modulonglong_PARM_1+2
	subc	a, __modulonglong_PARM_2+2
	mov	a, __modulonglong_PARM_1+3
	subc	a, __modulonglong_PARM_2+3
	mov	a, __modulonglong_PARM_1+4
	subc	a, __modulonglong_PARM_2+4
	mov	a, __modulonglong_PARM_1+5
	subc	a, __modulonglong_PARM_2+5
	mov	a, __modulonglong_PARM_1+6
	subc	a, __modulonglong_PARM_2+6
	mov	a, __modulonglong_PARM_1+7
	subc	a, __modulonglong_PARM_2+7
	t1sn	f, c
	goto	00102$
;	../_modulonglong.c: 47: b >>=1;
	sr	__modulonglong_PARM_2+7
	src	__modulonglong_PARM_2+6
	src	__modulonglong_PARM_2+5
	src	__modulonglong_PARM_2+4
	src	__modulonglong_PARM_2+3
	src	__modulonglong_PARM_2+2
	src	__modulonglong_PARM_2+1
	src	__modulonglong_PARM_2+0
;	../_modulonglong.c: 48: break;
	goto	00117$
00102$:
;	../_modulonglong.c: 50: count++;
	inc	__modulonglong_sloc0_1_0+0
	mov	a, __modulonglong_sloc0_1_0+0
	mov	p, a
	goto	00103$
;	../_modulonglong.c: 52: do
00117$:
00108$:
;	../_modulonglong.c: 54: if (a >= b)
	mov	a, __modulonglong_PARM_1+0
	sub	a, __modulonglong_PARM_2+0
	mov	a, __modulonglong_PARM_1+1
	subc	a, __modulonglong_PARM_2+1
	mov	a, __modulonglong_PARM_1+2
	subc	a, __modulonglong_PARM_2+2
	mov	a, __modulonglong_PARM_1+3
	subc	a, __modulonglong_PARM_2+3
	mov	a, __modulonglong_PARM_1+4
	subc	a, __modulonglong_PARM_2+4
	mov	a, __modulonglong_PARM_1+5
	subc	a, __modulonglong_PARM_2+5
	mov	a, __modulonglong_PARM_1+6
	subc	a, __modulonglong_PARM_2+6
	mov	a, __modulonglong_PARM_1+7
	subc	a, __modulonglong_PARM_2+7
	t0sn	f, c
	goto	00107$
;	../_modulonglong.c: 55: a -= b;
	mov	a, __modulonglong_PARM_2+0
	sub	__modulonglong_PARM_1+0, a
	mov	a, __modulonglong_PARM_2+1
	subc	__modulonglong_PARM_1+1, a
	mov	a, __modulonglong_PARM_2+2
	subc	__modulonglong_PARM_1+2, a
	mov	a, __modulonglong_PARM_2+3
	subc	__modulonglong_PARM_1+3, a
	mov	a, __modulonglong_PARM_2+4
	subc	__modulonglong_PARM_1+4, a
	mov	a, __modulonglong_PARM_2+5
	subc	__modulonglong_PARM_1+5, a
	mov	a, __modulonglong_PARM_2+6
	subc	__modulonglong_PARM_1+6, a
	mov	a, __modulonglong_PARM_2+7
	subc	__modulonglong_PARM_1+7, a
00107$:
;	../_modulonglong.c: 56: b >>= 1;
	sr	__modulonglong_PARM_2+7
	src	__modulonglong_PARM_2+6
	src	__modulonglong_PARM_2+5
	src	__modulonglong_PARM_2+4
	src	__modulonglong_PARM_2+3
	src	__modulonglong_PARM_2+2
	src	__modulonglong_PARM_2+1
	src	__modulonglong_PARM_2+0
;	../_modulonglong.c: 58: while (count--);
	mov	a, p
	dec	p
	ceqsn	a, #0x00
	goto	00108$
;	../_modulonglong.c: 60: return a;
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, __modulonglong_PARM_1+0
	idxm	p, a
	inc	p
	mov	a, __modulonglong_PARM_1+1
	idxm	p, a
	inc	p
	mov	a, __modulonglong_PARM_1+2
	idxm	p, a
	inc	p
	mov	a, __modulonglong_PARM_1+3
	idxm	p, a
	inc	p
	mov	a, __modulonglong_PARM_1+4
	idxm	p, a
	inc	p
	mov	a, __modulonglong_PARM_1+5
	idxm	p, a
	inc	p
	mov	a, __modulonglong_PARM_1+6
	idxm	p, a
	inc	p
	mov	a, __modulonglong_PARM_1+7
	idxm	p, a
;	../_modulonglong.c: 61: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
