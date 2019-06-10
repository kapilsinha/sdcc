;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _mullong
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullong_PARM_2
	.globl __mullong_PARM_1
	.globl __mullong
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__mullong_PARM_1:
	.ds 4
__mullong_PARM_2:
	.ds 4
__mullong_t_65536_2:
	.ds 4
__mullong_sloc0_1_0:
	.ds 1
__mullong_sloc1_1_0:
	.ds 1
__mullong_sloc2_1_0:
	.ds 2
__mullong_sloc3_1_0:
	.ds 2
__mullong_sloc4_1_0:
	.ds 4
__mullong_sloc5_1_0:
	.ds 4
__mullong_sloc6_1_0:
	.ds 4
__mullong_sloc7_1_0:
	.ds 4
__mullong_sloc8_1_0:
	.ds 4
__mullong_sloc9_1_0:
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
;	../_mullong.c: 734: _mullong (long a, long b)
;	-----------------------------------------
;	 function _mullong
;	-----------------------------------------
__mullong:
;	../_mullong.c: 738: t.i.hi = bcast(a)->b.b0 * bcast(b)->b.b2;           // A
	mov	a, __mullong_PARM_1+0
	mov	__muluchar_PARM_1+0, a
	mov	a, __mullong_PARM_2+2
	mov	__muluchar_PARM_2+0, a
	call	__muluchar
	mov	__mullong_t_65536_2+2, a
	mov	a, p
	mov	__mullong_t_65536_2+3, a
;	../_mullong.c: 739: t.i.lo = bcast(a)->b.b0 * bcast(b)->b.b0;           // A
	mov	a, __mullong_PARM_1+0
	mov	__muluchar_PARM_1+0, a
	mov	a, __mullong_PARM_2+0
	mov	__muluchar_PARM_2+0, a
	call	__muluchar
	mov	__mullong_t_65536_2+0, a
	mov	a, p
	mov	__mullong_t_65536_2+1, a
;	../_mullong.c: 740: t.b.b3 += bcast(a)->b.b3 * bcast(b)->b.b0;          // G
	mov	a, __mullong_t_65536_2+3
	mov	__mullong_sloc0_1_0+0, a
	mov	a, __mullong_PARM_1+3
	mov	__muluchar_PARM_1+0, a
	mov	a, __mullong_PARM_2+0
	mov	__muluchar_PARM_2+0, a
	call	__muluchar
	add	a, __mullong_sloc0_1_0+0
	mov	__mullong_sloc1_1_0+0, a
	mov	__mullong_t_65536_2+3, a
;	../_mullong.c: 741: t.b.b3 += bcast(a)->b.b2 * bcast(b)->b.b1;          // F
	mov	a, __mullong_PARM_1+2
	mov	__muluchar_PARM_1+0, a
	mov	a, __mullong_PARM_2+1
	mov	__muluchar_PARM_2+0, a
	call	__muluchar
	add	a, __mullong_sloc1_1_0+0
	mov	__mullong_t_65536_2+3, a
;	../_mullong.c: 742: t.i.hi += bcast(a)->b.b2 * bcast(b)->b.b0;          // E <- b lost in .lst
	mov	a, __mullong_t_65536_2+2
	mov	__mullong_sloc2_1_0+0, a
	mov	a, __mullong_t_65536_2+3
	mov	__mullong_sloc2_1_0+1, a
	mov	a, __mullong_PARM_1+2
	mov	__muluchar_PARM_1+0, a
	mov	a, __mullong_PARM_2+0
	mov	__muluchar_PARM_2+0, a
	call	__muluchar
	add	a, __mullong_sloc2_1_0+0
	mov	__mullong_sloc3_1_0+0, a
	mov	a, __mullong_sloc2_1_0+1
	addc	a, p
	mov	__mullong_sloc3_1_0+1, a
	mov	a, __mullong_sloc3_1_0+0
	mov	__mullong_t_65536_2+2, a
	mov	a, __mullong_sloc3_1_0+1
	mov	__mullong_t_65536_2+3, a
;	../_mullong.c: 744: t.i.hi += bcast(a)->b.b1 * bcast(b)->b.b1;          // D <- b lost in .lst
	mov	a, __mullong_PARM_1+1
	mov	__muluchar_PARM_1+0, a
	mov	a, __mullong_PARM_2+1
	mov	__muluchar_PARM_2+0, a
	call	__muluchar
	add	a, __mullong_sloc3_1_0+0
	xch	a, p
	addc	a, __mullong_sloc3_1_0+1
	mov	__mullong_t_65536_2+3, a
	mov	a, p
	mov	__mullong_t_65536_2+2, a
;	../_mullong.c: 746: bcast(a)->bi.b3 = bcast(a)->b.b1 * bcast(b)->b.b2;  // C
	mov	a, __mullong_PARM_1+1
	mov	__muluchar_PARM_1+0, a
	mov	a, __mullong_PARM_2+2
	mov	__muluchar_PARM_2+0, a
	call	__muluchar
	mov	__mullong_PARM_1+3, a
;	../_mullong.c: 747: bcast(a)->bi.i12 = bcast(a)->b.b1 * bcast(b)->b.b0; // C
	mov	a, __mullong_PARM_1+1
	mov	__muluchar_PARM_1+0, a
	mov	a, __mullong_PARM_2+0
	mov	__muluchar_PARM_2+0, a
	call	__muluchar
	mov	__mullong_PARM_1+1, a
	mov	a, p
	mov	__mullong_PARM_1+2, a
;	../_mullong.c: 749: bcast(b)->bi.b3 = bcast(a)->b.b0 * bcast(b)->b.b3;  // B
	mov	a, __mullong_PARM_1+0
	mov	__muluchar_PARM_1+0, a
	mov	a, __mullong_PARM_2+3
	mov	__muluchar_PARM_2+0, a
	call	__muluchar
	mov	__mullong_PARM_2+3, a
;	../_mullong.c: 750: bcast(b)->bi.i12 = bcast(a)->b.b0 * bcast(b)->b.b1; // B
	mov	a, __mullong_PARM_1+0
	mov	__muluchar_PARM_1+0, a
	mov	a, __mullong_PARM_2+1
	mov	__muluchar_PARM_2+0, a
	call	__muluchar
	mov	__mullong_PARM_2+1, a
	mov	a, p
	mov	__mullong_PARM_2+2, a
;	../_mullong.c: 752: bcast(b)->bi.b0 = 0;                                // B
	clear	__mullong_PARM_2+0
;	../_mullong.c: 753: bcast(a)->bi.b0 = 0;                                // C
	clear	__mullong_PARM_1+0
;	../_mullong.c: 754: t.l += a;
	mov	a, __mullong_t_65536_2+0
	mov	__mullong_sloc4_1_0+0, a
	mov	a, __mullong_t_65536_2+1
	mov	__mullong_sloc4_1_0+1, a
	mov	a, __mullong_t_65536_2+2
	mov	__mullong_sloc4_1_0+2, a
	mov	a, __mullong_t_65536_2+3
	mov	__mullong_sloc4_1_0+3, a
	mov	a, __mullong_PARM_1+0
	mov	__mullong_sloc5_1_0+0, a
	mov	a, __mullong_PARM_1+1
	mov	__mullong_sloc5_1_0+1, a
	mov	a, __mullong_PARM_1+2
	mov	__mullong_sloc5_1_0+2, a
	mov	a, __mullong_PARM_1+3
	mov	__mullong_sloc5_1_0+3, a
	mov	a, __mullong_sloc4_1_0+0
	add	a, __mullong_sloc5_1_0+0
	mov	__mullong_sloc6_1_0+0, a
	mov	a, __mullong_sloc4_1_0+1
	addc	a, __mullong_sloc5_1_0+1
	mov	__mullong_sloc6_1_0+1, a
	mov	a, __mullong_sloc4_1_0+2
	addc	a, __mullong_sloc5_1_0+2
	mov	__mullong_sloc6_1_0+2, a
	mov	a, __mullong_sloc4_1_0+3
	addc	a, __mullong_sloc5_1_0+3
	mov	__mullong_sloc6_1_0+3, a
	mov	a, __mullong_sloc6_1_0+0
	mov	__mullong_t_65536_2+0, a
	mov	a, __mullong_sloc6_1_0+1
	mov	__mullong_t_65536_2+1, a
	mov	a, __mullong_sloc6_1_0+2
	mov	__mullong_t_65536_2+2, a
	mov	a, __mullong_sloc6_1_0+3
	mov	__mullong_t_65536_2+3, a
;	../_mullong.c: 756: return t.l + b;
	mov	a, __mullong_t_65536_2+0
	mov	__mullong_sloc9_1_0+0, a
	mov	a, __mullong_t_65536_2+1
	mov	__mullong_sloc9_1_0+1, a
	mov	a, __mullong_t_65536_2+2
	mov	__mullong_sloc9_1_0+2, a
	mov	a, __mullong_t_65536_2+3
	mov	__mullong_sloc9_1_0+3, a
	mov	a, __mullong_PARM_2+0
	mov	__mullong_sloc7_1_0+0, a
	mov	a, __mullong_PARM_2+1
	mov	__mullong_sloc7_1_0+1, a
	mov	a, __mullong_PARM_2+2
	mov	__mullong_sloc7_1_0+2, a
	mov	a, __mullong_PARM_2+3
	mov	__mullong_sloc7_1_0+3, a
	mov	a, __mullong_sloc6_1_0+0
	add	a, __mullong_sloc7_1_0+0
	mov	__mullong_sloc8_1_0+0, a
	mov	a, __mullong_sloc6_1_0+1
	addc	a, __mullong_sloc7_1_0+1
	mov	__mullong_sloc8_1_0+1, a
	mov	a, __mullong_sloc6_1_0+2
	addc	a, __mullong_sloc7_1_0+2
	mov	__mullong_sloc8_1_0+2, a
	mov	a, __mullong_sloc6_1_0+3
	addc	a, __mullong_sloc7_1_0+3
	mov	__mullong_sloc8_1_0+3, a
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, __mullong_sloc8_1_0+0
	idxm	p, a
	inc	p
	mov	a, __mullong_sloc8_1_0+1
	idxm	p, a
	inc	p
	mov	a, __mullong_sloc8_1_0+2
	idxm	p, a
	inc	p
	mov	a, __mullong_sloc8_1_0+3
	idxm	p, a
;	../_mullong.c: 757: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
