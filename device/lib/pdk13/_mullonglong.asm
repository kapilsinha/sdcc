;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _mullonglong
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullonglong_PARM_2
	.globl __mullonglong_PARM_1
	.globl __mullonglong
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__mullonglong_PARM_1:
	.ds 8
__mullonglong_PARM_2:
	.ds 8
__mullonglong_sloc0_1_0:
	.ds 8
__mullonglong_sloc1_1_0:
	.ds 1
__mullonglong_sloc2_1_0:
	.ds 8
__mullonglong_sloc3_1_0:
	.ds 1
__mullonglong_sloc4_1_0:
	.ds 1
__mullonglong_sloc5_1_0:
	.ds 8
__mullonglong_sloc6_1_0:
	.ds 8
__mullonglong_sloc7_1_0:
	.ds 1
__mullonglong_sloc8_1_0:
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
;	../_mullonglong.c: 35: long long _mullonglong(long long ll, long long lr)
;	-----------------------------------------
;	 function _mullonglong
;	-----------------------------------------
__mullonglong:
;	../_mullonglong.c: 37: unsigned long long ret = 0ull;
	clear	__mullonglong_sloc0_1_0+0
	clear	__mullonglong_sloc0_1_0+1
	clear	__mullonglong_sloc0_1_0+2
	clear	__mullonglong_sloc0_1_0+3
	clear	__mullonglong_sloc0_1_0+4
	clear	__mullonglong_sloc0_1_0+5
	clear	__mullonglong_sloc0_1_0+6
	clear	__mullonglong_sloc0_1_0+7
;	../_mullonglong.c: 40: for (i = 0; i < sizeof (long long); i++)
	clear	__mullonglong_sloc1_1_0+0
00106$:
;	../_mullonglong.c: 42: unsigned char l = ll >> (i * 8);
	mov	a, __mullonglong_sloc1_1_0+0
	mov	p, a
	sl	p
	sl	p
	sl	p
	mov	a, __mullonglong_PARM_1+0
	mov	__mullonglong_sloc2_1_0+0, a
	mov	a, __mullonglong_PARM_1+1
	mov	__mullonglong_sloc2_1_0+1, a
	mov	a, __mullonglong_PARM_1+2
	mov	__mullonglong_sloc2_1_0+2, a
	mov	a, __mullonglong_PARM_1+3
	mov	__mullonglong_sloc2_1_0+3, a
	mov	a, __mullonglong_PARM_1+4
	mov	__mullonglong_sloc2_1_0+4, a
	mov	a, __mullonglong_PARM_1+5
	mov	__mullonglong_sloc2_1_0+5, a
	mov	a, __mullonglong_PARM_1+6
	mov	__mullonglong_sloc2_1_0+6, a
	mov	a, __mullonglong_PARM_1+7
	mov	__mullonglong_sloc2_1_0+7, a
	mov	a, p
00128$:
	sub	a, #1
	t0sn	f, c
	goto	00129$
	push	af
	mov	a, #0x01
	sl	__mullonglong_sloc2_1_0+7
	t0sn	f, c
	or	__mullonglong_sloc2_1_0+7, a
	src	__mullonglong_sloc2_1_0+7
	src	__mullonglong_sloc2_1_0+7
	src	__mullonglong_sloc2_1_0+6
	src	__mullonglong_sloc2_1_0+5
	src	__mullonglong_sloc2_1_0+4
	src	__mullonglong_sloc2_1_0+3
	src	__mullonglong_sloc2_1_0+2
	src	__mullonglong_sloc2_1_0+1
	src	__mullonglong_sloc2_1_0+0
	pop	af
	goto	00128$
00129$:
	mov	a, __mullonglong_sloc2_1_0+0
	mov	__mullonglong_sloc3_1_0+0, a
;	../_mullonglong.c: 43: for(j = 0; (i + j) < sizeof (long long); j++)
	clear	__mullonglong_sloc4_1_0+0
00104$:
	clear	p
	mov	a, __mullonglong_sloc1_1_0+0
	add	a, __mullonglong_sloc4_1_0+0
	push	af
	addc	p
	pop	af
	sub	a, #0x08
	mov	a, p
	subc	a
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t1sn	f, c
	goto	00107$
;	../_mullonglong.c: 45: unsigned char r = lr >> (j * 8);
	mov	a, __mullonglong_sloc4_1_0+0
	mov	p, a
	sl	p
	sl	p
	sl	p
	mov	a, __mullonglong_PARM_2+0
	mov	__mullonglong_sloc5_1_0+0, a
	mov	a, __mullonglong_PARM_2+1
	mov	__mullonglong_sloc5_1_0+1, a
	mov	a, __mullonglong_PARM_2+2
	mov	__mullonglong_sloc5_1_0+2, a
	mov	a, __mullonglong_PARM_2+3
	mov	__mullonglong_sloc5_1_0+3, a
	mov	a, __mullonglong_PARM_2+4
	mov	__mullonglong_sloc5_1_0+4, a
	mov	a, __mullonglong_PARM_2+5
	mov	__mullonglong_sloc5_1_0+5, a
	mov	a, __mullonglong_PARM_2+6
	mov	__mullonglong_sloc5_1_0+6, a
	mov	a, __mullonglong_PARM_2+7
	mov	__mullonglong_sloc5_1_0+7, a
	mov	a, p
00130$:
	sub	a, #1
	t0sn	f, c
	goto	00131$
	push	af
	mov	a, #0x01
	sl	__mullonglong_sloc5_1_0+7
	t0sn	f, c
	or	__mullonglong_sloc5_1_0+7, a
	src	__mullonglong_sloc5_1_0+7
	src	__mullonglong_sloc5_1_0+7
	src	__mullonglong_sloc5_1_0+6
	src	__mullonglong_sloc5_1_0+5
	src	__mullonglong_sloc5_1_0+4
	src	__mullonglong_sloc5_1_0+3
	src	__mullonglong_sloc5_1_0+2
	src	__mullonglong_sloc5_1_0+1
	src	__mullonglong_sloc5_1_0+0
	pop	af
	goto	00130$
00131$:
	mov	a, __mullonglong_sloc5_1_0+0
	mov	__muluchar_PARM_2+0, a
;	../_mullonglong.c: 46: ret += (unsigned long long)((unsigned short)(l * r)) << ((i + j) * 8);
	mov	a, __mullonglong_sloc3_1_0+0
	mov	__muluchar_PARM_1+0, a
	call	__muluchar
	mov	__mullonglong_sloc6_1_0+0, a
	mov	a, p
	mov	__mullonglong_sloc6_1_0+1, a
	clear	__mullonglong_sloc6_1_0+2
	clear	__mullonglong_sloc6_1_0+3
	clear	__mullonglong_sloc6_1_0+4
	clear	__mullonglong_sloc6_1_0+5
	clear	__mullonglong_sloc6_1_0+6
	clear	__mullonglong_sloc6_1_0+7
	mov	a, __mullonglong_sloc1_1_0+0
	add	a, __mullonglong_sloc4_1_0+0
	mov	__mullonglong_sloc7_1_0+0, a
	sl	__mullonglong_sloc7_1_0+0
	sl	__mullonglong_sloc7_1_0+0
	sl	__mullonglong_sloc7_1_0+0
	mov	a, __mullonglong_sloc6_1_0+0
	mov	__mullonglong_sloc8_1_0+0, a
	mov	a, __mullonglong_sloc6_1_0+1
	mov	__mullonglong_sloc8_1_0+1, a
	mov	a, __mullonglong_sloc6_1_0+2
	mov	__mullonglong_sloc8_1_0+2, a
	mov	a, __mullonglong_sloc6_1_0+3
	mov	__mullonglong_sloc8_1_0+3, a
	mov	a, __mullonglong_sloc6_1_0+4
	mov	__mullonglong_sloc8_1_0+4, a
	mov	a, __mullonglong_sloc6_1_0+5
	mov	__mullonglong_sloc8_1_0+5, a
	mov	a, __mullonglong_sloc6_1_0+6
	mov	__mullonglong_sloc8_1_0+6, a
	mov	a, __mullonglong_sloc6_1_0+7
	mov	__mullonglong_sloc8_1_0+7, a
	mov	a, __mullonglong_sloc7_1_0+0
00132$:
	sub	a, #1
	t0sn	f, c
	goto	00133$
	sl	__mullonglong_sloc8_1_0+0
	slc	__mullonglong_sloc8_1_0+1
	slc	__mullonglong_sloc8_1_0+2
	slc	__mullonglong_sloc8_1_0+3
	slc	__mullonglong_sloc8_1_0+4
	slc	__mullonglong_sloc8_1_0+5
	slc	__mullonglong_sloc8_1_0+6
	slc	__mullonglong_sloc8_1_0+7
	goto	00132$
00133$:
	mov	a, __mullonglong_sloc8_1_0+0
	add	__mullonglong_sloc0_1_0+0, a
	mov	a, __mullonglong_sloc8_1_0+1
	addc	__mullonglong_sloc0_1_0+1, a
	mov	a, __mullonglong_sloc8_1_0+2
	addc	__mullonglong_sloc0_1_0+2, a
	mov	a, __mullonglong_sloc8_1_0+3
	addc	__mullonglong_sloc0_1_0+3, a
	mov	a, __mullonglong_sloc8_1_0+4
	addc	__mullonglong_sloc0_1_0+4, a
	mov	a, __mullonglong_sloc8_1_0+5
	addc	__mullonglong_sloc0_1_0+5, a
	mov	a, __mullonglong_sloc8_1_0+6
	addc	__mullonglong_sloc0_1_0+6, a
	mov	a, __mullonglong_sloc8_1_0+7
	addc	__mullonglong_sloc0_1_0+7, a
;	../_mullonglong.c: 43: for(j = 0; (i + j) < sizeof (long long); j++)
	inc	__mullonglong_sloc4_1_0+0
	goto	00104$
00107$:
;	../_mullonglong.c: 40: for (i = 0; i < sizeof (long long); i++)
	inc	__mullonglong_sloc1_1_0+0
	mov	a, __mullonglong_sloc1_1_0+0
	sub	a, #0x08
	t0sn	f, c
	goto	00106$
;	../_mullonglong.c: 50: return(ret);
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, __mullonglong_sloc0_1_0+0
	idxm	p, a
	inc	p
	mov	a, __mullonglong_sloc0_1_0+1
	idxm	p, a
	inc	p
	mov	a, __mullonglong_sloc0_1_0+2
	idxm	p, a
	inc	p
	mov	a, __mullonglong_sloc0_1_0+3
	idxm	p, a
	inc	p
	mov	a, __mullonglong_sloc0_1_0+4
	idxm	p, a
	inc	p
	mov	a, __mullonglong_sloc0_1_0+5
	idxm	p, a
	inc	p
	mov	a, __mullonglong_sloc0_1_0+6
	idxm	p, a
	inc	p
	mov	a, __mullonglong_sloc0_1_0+7
	idxm	p, a
;	../_mullonglong.c: 51: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
