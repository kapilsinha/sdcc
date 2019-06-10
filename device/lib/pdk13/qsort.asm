;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module qsort
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _qsort_PARM_4
	.globl _qsort_PARM_3
	.globl _qsort_PARM_2
	.globl _qsort_PARM_1
	.globl _qsort
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_swap_PARM_1:
	.ds 2
_swap_PARM_2:
	.ds 2
_swap_PARM_3:
	.ds 2
_qsort_PARM_1:
	.ds 2
_qsort_PARM_2:
	.ds 2
_qsort_PARM_3:
	.ds 2
_qsort_PARM_4:
	.ds 2
_qsort_sloc4_1_0:
	.ds 2
_qsort_sloc5_1_0:
	.ds 2
_qsort_sloc6_1_0:
	.ds 2
_qsort_sloc7_1_0:
	.ds 2
_qsort_sloc8_1_0:
	.ds 2
_qsort_sloc9_1_0:
	.ds 2
_qsort_sloc10_1_0:
	.ds 2
_qsort_sloc11_1_0:
	.ds 2
_qsort_sloc12_1_0:
	.ds 2
_qsort_sloc13_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_swap_sloc0_1_0:
	.ds 2
_swap_sloc1_1_0:
	.ds 2
_swap_sloc2_1_0:
	.ds 2
_swap_sloc3_1_0:
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
;	../qsort.c: 33: static void swap(void *restrict dst, void *restrict src, size_t n)
;	-----------------------------------------
;	 function swap
;	-----------------------------------------
_swap:
;	../qsort.c: 35: unsigned char *restrict d = dst;
	mov	a, _swap_PARM_1+0
	mov	_swap_sloc0_1_0+0, a
	mov	a, _swap_PARM_1+1
	mov	_swap_sloc0_1_0+1, a
;	../qsort.c: 36: unsigned char *restrict s = src;
	mov	a, _swap_PARM_2+0
	mov	_swap_sloc1_1_0+0, a
	mov	a, _swap_PARM_2+1
	mov	_swap_sloc1_1_0+1, a
;	../qsort.c: 38: while(n--)
	mov	a, _swap_PARM_3+0
	mov	_swap_sloc2_1_0+0, a
	mov	a, _swap_PARM_3+1
	mov	_swap_sloc2_1_0+1, a
00101$:
	mov	a, _swap_sloc2_1_0+1
	mov	p, a
	mov	a, _swap_sloc2_1_0+0
	dec	_swap_sloc2_1_0+0
	subc	_swap_sloc2_1_0+1
	or	a, p
	cneqsn	a, #0x00
	goto	00104$
;	../qsort.c: 40: unsigned char tmp = *d;
	mov	a, _swap_sloc0_1_0+0
	mov	p, a
	mov	a, _swap_sloc0_1_0+1
	call	__gptrget
	mov	_swap_sloc3_1_0+0, a
;	../qsort.c: 41: *d = *s;
	mov	a, _swap_sloc1_1_0+0
	mov	p, a
	mov	a, _swap_sloc1_1_0+1
	call	__gptrget
	mov	p, a
	mov	a, _swap_sloc0_1_0+0
	xch	a, p
	idxm	p, a
;	../qsort.c: 42: *s = tmp;
	mov	a, _swap_sloc1_1_0+0
	mov	p, a
	mov	a, _swap_sloc3_1_0+0
	idxm	p, a
;	../qsort.c: 43: d++;
	inc	_swap_sloc0_1_0+0
	addc	_swap_sloc0_1_0+1
;	../qsort.c: 44: s++;
	inc	_swap_sloc1_1_0+0
	addc	_swap_sloc1_1_0+1
	goto	00101$
00104$:
;	../qsort.c: 46: }
	ret
;	../qsort.c: 48: void qsort(void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *) __reentrant)
;	-----------------------------------------
;	 function qsort
;	-----------------------------------------
_qsort:
;	../qsort.c: 50: unsigned char *b = base;
	mov	a, _qsort_PARM_1+0
	mov	_qsort_sloc4_1_0+0, a
	mov	a, _qsort_PARM_1+1
	mov	_qsort_sloc4_1_0+1, a
	mov	a, _qsort_sloc4_1_0+0
	mov	_qsort_sloc5_1_0+0, a
	mov	a, _qsort_sloc4_1_0+1
	mov	_qsort_sloc5_1_0+1, a
;	../qsort.c: 52: if(nmemb <= 1)
	mov	a, #0x01
	sub	a, _qsort_PARM_2+0
	mov	a, #0x00
	subc	a, _qsort_PARM_2+1
	t0sn	f, c
	goto	00102$
;	../qsort.c: 53: return;
	ret
00102$:
;	../qsort.c: 55: for(unsigned char *i = base; i < b + nmemb * size; i += size)
	mov	a, _qsort_sloc4_1_0+0
	mov	_qsort_sloc6_1_0+0, a
	mov	a, _qsort_sloc4_1_0+1
	mov	_qsort_sloc6_1_0+1, a
	mov	a, _qsort_PARM_3+0
	mov	_qsort_sloc7_1_0+0, a
	mov	a, _qsort_PARM_3+1
	mov	_qsort_sloc7_1_0+1, a
	mov	a, _qsort_PARM_2+0
	mov	__mulint_PARM_1+0, a
	mov	a, _qsort_PARM_2+1
	mov	__mulint_PARM_1+1, a
	mov	a, _qsort_sloc7_1_0+0
	mov	__mulint_PARM_2+0, a
	mov	a, _qsort_sloc7_1_0+1
	mov	__mulint_PARM_2+1, a
	call	__mulint
	add	a, _qsort_sloc5_1_0+0
	mov	_qsort_sloc8_1_0+0, a
	mov	a, _qsort_sloc5_1_0+1
	addc	a, p
	mov	_qsort_sloc8_1_0+1, a
00110$:
	mov	a, _qsort_sloc6_1_0+0
	sub	a, _qsort_sloc8_1_0+0
	mov	a, _qsort_sloc6_1_0+1
	subc	a, _qsort_sloc8_1_0+1
	t1sn	f, c
	goto	00112$
;	../qsort.c: 57: for(unsigned char *j = i; (j > b) && (*compar)(j, j - size) < 0; j -= size)
	mov	a, _qsort_sloc6_1_0+0
	mov	_qsort_sloc9_1_0+0, a
	mov	a, _qsort_sloc6_1_0+1
	mov	_qsort_sloc9_1_0+1, a
00107$:
	mov	a, _qsort_sloc5_1_0+0
	sub	a, _qsort_sloc9_1_0+0
	mov	a, _qsort_sloc5_1_0+1
	subc	a, _qsort_sloc9_1_0+1
	t1sn	f, c
	goto	00111$
	mov	a, _qsort_sloc9_1_0+0
	sub	a, _qsort_sloc7_1_0+0
	mov	_qsort_sloc10_1_0+0, a
	mov	a, _qsort_sloc9_1_0+1
	subc	a, _qsort_sloc7_1_0+1
	mov	_qsort_sloc10_1_0+1, a
	mov	a, _qsort_sloc10_1_0+0
	mov	_qsort_sloc11_1_0+0, a
	mov	a, _qsort_sloc10_1_0+1
	mov	_qsort_sloc11_1_0+1, a
	mov	a, _qsort_sloc9_1_0+0
	mov	_qsort_sloc12_1_0+0, a
	mov	a, _qsort_sloc9_1_0+1
	mov	_qsort_sloc12_1_0+1, a
	mov	a, _qsort_sloc11_1_0+0
	push	af
	mov	a, sp
	add	a, #0xff
	mov	p, a
	mov	a, _qsort_sloc11_1_0+1
	idxm	p, a
	mov	a, _qsort_sloc12_1_0+0
	push	af
	inc	p
	inc	p
	mov	a, _qsort_sloc12_1_0+1
	idxm	p, a
	mov	a, #<(00138$)
	push	af
	mov	a, sp
	mov	p, a
	dec	p
	mov	a, #>(00138$)
	idxm	p, a
	mov	a, _qsort_PARM_4+0
	push	af
	mov	a, sp
	add	a, #0xff
	mov	p, a
	mov	a, _qsort_PARM_4+1
	idxm	p, a
	ret
00138$:
	mov	_qsort_sloc13_1_0+0, a
	mov	a, p
	mov	_qsort_sloc13_1_0+1, a
	mov	a, sp
	add	a, #-4
	mov	sp, a
	mov	a, _qsort_sloc13_1_0+1
	sub	a, #0x80
	t0sn	f, c
	goto	00111$
;	../qsort.c: 58: swap(j, j - size, size);
	mov	a, _qsort_sloc9_1_0+0
	mov	_swap_PARM_1+0, a
	mov	a, _qsort_sloc9_1_0+1
	mov	_swap_PARM_1+1, a
	mov	a, _qsort_sloc10_1_0+1
	mov	p, a
	mov	a, _qsort_sloc10_1_0+0
	mov	_swap_PARM_2+0, a
	mov	a, p
	mov	_swap_PARM_2+1, a
	mov	a, _qsort_sloc7_1_0+0
	mov	_swap_PARM_3+0, a
	mov	a, _qsort_sloc7_1_0+1
	mov	_swap_PARM_3+1, a
	call	_swap
;	../qsort.c: 57: for(unsigned char *j = i; (j > b) && (*compar)(j, j - size) < 0; j -= size)
	mov	a, _qsort_sloc10_1_0+0
	mov	_qsort_sloc9_1_0+0, a
	mov	a, _qsort_sloc10_1_0+1
	mov	_qsort_sloc9_1_0+1, a
	goto	00107$
00111$:
;	../qsort.c: 55: for(unsigned char *i = base; i < b + nmemb * size; i += size)
	mov	a, _qsort_sloc7_1_0+0
	add	_qsort_sloc6_1_0+0, a
	mov	a, _qsort_sloc7_1_0+1
	addc	_qsort_sloc6_1_0+1, a
	goto	00110$
00112$:
;	../qsort.c: 60: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
