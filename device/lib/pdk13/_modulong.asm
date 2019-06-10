;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _modulong
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modulong_PARM_2
	.globl __modulong_PARM_1
	.globl __modulong
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__modulong_PARM_1:
	.ds 4
__modulong_PARM_2:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
__modulong_sloc0_1_0:
	.ds 1
__modulong_sloc1_1_0:
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
;	../_modulong.c: 340: _modulong (unsigned long a, unsigned long b)
;	-----------------------------------------
;	 function _modulong
;	-----------------------------------------
__modulong:
;	../_modulong.c: 342: unsigned char count = 0;
	clear	p
;	../_modulong.c: 344: while (!MSB_SET(b))
	clear	__modulong_sloc0_1_0+0
00103$:
	mov	a, __modulong_PARM_2+3
	mov	__modulong_sloc1_1_0+0, a
	clear	__modulong_sloc1_1_0+1
	clear	__modulong_sloc1_1_0+2
	clear	__modulong_sloc1_1_0+3
	mov	a, #7
00138$:
	sr	__modulong_sloc1_1_0+0
	dzsn	a
	goto	00138$
	mov	a, __modulong_sloc1_1_0+0
	and	a, #0x01
	ceqsn	a, #0x00
	goto	00117$
;	../_modulong.c: 346: b <<= 1;
	sl	__modulong_PARM_2+0
	slc	__modulong_PARM_2+1
	slc	__modulong_PARM_2+2
	slc	__modulong_PARM_2+3
;	../_modulong.c: 347: if (b > a)
	mov	a, __modulong_PARM_1+0
	sub	a, __modulong_PARM_2+0
	mov	a, __modulong_PARM_1+1
	subc	a, __modulong_PARM_2+1
	mov	a, __modulong_PARM_1+2
	subc	a, __modulong_PARM_2+2
	mov	a, __modulong_PARM_1+3
	subc	a, __modulong_PARM_2+3
	t1sn	f, c
	goto	00102$
;	../_modulong.c: 349: b >>=1;
	sr	__modulong_PARM_2+3
	src	__modulong_PARM_2+2
	src	__modulong_PARM_2+1
	src	__modulong_PARM_2+0
;	../_modulong.c: 350: break;
	goto	00117$
00102$:
;	../_modulong.c: 352: count++;
	inc	__modulong_sloc0_1_0+0
	mov	a, __modulong_sloc0_1_0+0
	mov	p, a
	goto	00103$
;	../_modulong.c: 354: do
00117$:
00108$:
;	../_modulong.c: 356: if (a >= b)
	mov	a, __modulong_PARM_1+0
	sub	a, __modulong_PARM_2+0
	mov	a, __modulong_PARM_1+1
	subc	a, __modulong_PARM_2+1
	mov	a, __modulong_PARM_1+2
	subc	a, __modulong_PARM_2+2
	mov	a, __modulong_PARM_1+3
	subc	a, __modulong_PARM_2+3
	t0sn	f, c
	goto	00107$
;	../_modulong.c: 357: a -= b;
	mov	a, __modulong_PARM_2+0
	sub	__modulong_PARM_1+0, a
	mov	a, __modulong_PARM_2+1
	subc	__modulong_PARM_1+1, a
	mov	a, __modulong_PARM_2+2
	subc	__modulong_PARM_1+2, a
	mov	a, __modulong_PARM_2+3
	subc	__modulong_PARM_1+3, a
00107$:
;	../_modulong.c: 358: b >>= 1;
	sr	__modulong_PARM_2+3
	src	__modulong_PARM_2+2
	src	__modulong_PARM_2+1
	src	__modulong_PARM_2+0
;	../_modulong.c: 360: while (count--);
	mov	a, p
	dec	p
	ceqsn	a, #0x00
	goto	00108$
;	../_modulong.c: 362: return a;
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, __modulong_PARM_1+0
	idxm	p, a
	inc	p
	mov	a, __modulong_PARM_1+1
	idxm	p, a
	inc	p
	mov	a, __modulong_PARM_1+2
	idxm	p, a
	inc	p
	mov	a, __modulong_PARM_1+3
	idxm	p, a
;	../_modulong.c: 363: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
