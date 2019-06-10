;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module bsearch
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bsearch_PARM_5
	.globl _bsearch_PARM_4
	.globl _bsearch_PARM_3
	.globl _bsearch_PARM_2
	.globl _bsearch_PARM_1
	.globl _bsearch
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_bsearch_PARM_1:
	.ds 2
_bsearch_PARM_2:
	.ds 2
_bsearch_PARM_3:
	.ds 2
_bsearch_PARM_4:
	.ds 2
_bsearch_PARM_5:
	.ds 2
_bsearch_sloc0_1_0:
	.ds 2
_bsearch_sloc1_1_0:
	.ds 2
_bsearch_sloc2_1_0:
	.ds 2
_bsearch_sloc3_1_0:
	.ds 2
_bsearch_sloc4_1_0:
	.ds 2
_bsearch_sloc5_1_0:
	.ds 2
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
;	../bsearch.c: 31: void *bsearch(const void *key, const void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *) __reentrant)
;	-----------------------------------------
;	 function bsearch
;	-----------------------------------------
_bsearch:
;	../bsearch.c: 33: for(const char *left = base; nmemb;)
	mov	a, _bsearch_PARM_2+0
	mov	_bsearch_sloc0_1_0+0, a
	mov	a, _bsearch_PARM_2+1
	mov	_bsearch_sloc0_1_0+1, a
00109$:
	mov	a, _bsearch_PARM_3+0
	or	a, _bsearch_PARM_3+1
	cneqsn	a, #0x00
	goto	00107$
;	../bsearch.c: 35: const char *middle = left + nmemb / 2 * size;
	mov	a, _bsearch_PARM_3+0
	mov	_bsearch_sloc1_1_0+0, a
	mov	a, _bsearch_PARM_3+1
	mov	_bsearch_sloc1_1_0+1, a
	sr	_bsearch_sloc1_1_0+1
	src	_bsearch_sloc1_1_0+0
	mov	a, _bsearch_sloc1_1_0+0
	mov	__mulint_PARM_1+0, a
	mov	a, _bsearch_sloc1_1_0+1
	mov	__mulint_PARM_1+1, a
	mov	a, _bsearch_PARM_4+0
	mov	__mulint_PARM_2+0, a
	mov	a, _bsearch_PARM_4+1
	mov	__mulint_PARM_2+1, a
	call	__mulint
	add	a, _bsearch_sloc0_1_0+0
	mov	_bsearch_sloc2_1_0+0, a
	mov	a, _bsearch_sloc0_1_0+1
	addc	a, p
	mov	_bsearch_sloc2_1_0+1, a
;	../bsearch.c: 36: int c = (*compar)(key, middle);
	mov	a, _bsearch_sloc2_1_0+0
	mov	_bsearch_sloc3_1_0+0, a
	mov	a, _bsearch_sloc2_1_0+1
	mov	_bsearch_sloc3_1_0+1, a
	mov	a, _bsearch_sloc3_1_0+0
	push	af
	mov	a, sp
	add	a, #0xff
	mov	p, a
	mov	a, _bsearch_sloc3_1_0+1
	idxm	p, a
	mov	a, _bsearch_PARM_1+0
	push	af
	inc	p
	inc	p
	mov	a, _bsearch_PARM_1+1
	idxm	p, a
	mov	a, #<(00129$)
	push	af
	mov	a, sp
	mov	p, a
	dec	p
	mov	a, #>(00129$)
	idxm	p, a
	mov	a, _bsearch_PARM_5+0
	push	af
	mov	a, sp
	add	a, #0xff
	mov	p, a
	mov	a, _bsearch_PARM_5+1
	idxm	p, a
	ret
00129$:
	mov	_bsearch_sloc4_1_0+0, a
	mov	a, p
	mov	_bsearch_sloc4_1_0+1, a
	mov	a, sp
	add	a, #-4
	mov	sp, a
	mov	a, _bsearch_sloc4_1_0+0
	mov	_bsearch_sloc5_1_0+0, a
	mov	a, _bsearch_sloc4_1_0+1
;	../bsearch.c: 38: if(c < 0)
	mov	_bsearch_sloc5_1_0+1, a
	sub	a, #0x80
	t0sn	f, c
	goto	00105$
;	../bsearch.c: 39: nmemb = nmemb / 2;	
	mov	a, _bsearch_sloc1_1_0+0
	mov	_bsearch_PARM_3+0, a
	mov	a, _bsearch_sloc1_1_0+1
	mov	_bsearch_PARM_3+1, a
	goto	00109$
00105$:
;	../bsearch.c: 40: else if(c > 0)
	mov	a, #0x00
	sub	a, _bsearch_sloc5_1_0+0
	mov	a, #0x00
	subc	a, _bsearch_sloc5_1_0+1
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t1sn	f, c
	goto	00102$
;	../bsearch.c: 42: left = middle + size;
	mov	a, _bsearch_sloc2_1_0+0
	add	a, _bsearch_PARM_4+0
	mov	_bsearch_sloc0_1_0+0, a
	mov	a, _bsearch_sloc2_1_0+1
	addc	a, _bsearch_PARM_4+1
	mov	_bsearch_sloc0_1_0+1, a
;	../bsearch.c: 43: nmemb = (nmemb - 1) / 2;
	mov	a, _bsearch_PARM_3+0
	sub	a, #0x01
	mov	p, a
	mov	a, _bsearch_PARM_3+1
	subc	a
	mov	_bsearch_PARM_3+1, a
	mov	a, p
	mov	_bsearch_PARM_3+0, a
	sr	_bsearch_PARM_3+1
	src	_bsearch_PARM_3+0
	goto	00109$
00102$:
;	../bsearch.c: 46: return(middle);
	mov	a, _bsearch_sloc2_1_0+1
	mov	p, a
	mov	a, _bsearch_sloc2_1_0+0
	ret
00107$:
;	../bsearch.c: 49: return(0);
	clear	p
	ret	#0x00
;	../bsearch.c: 50: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
