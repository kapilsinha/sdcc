;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module calloc
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
	.globl _malloc
	.globl _calloc_PARM_2
	.globl _calloc_PARM_1
	.globl _calloc
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_calloc_PARM_1:
	.ds 2
_calloc_PARM_2:
	.ds 2
_calloc_sloc0_1_0:
	.ds 4
_calloc_sloc1_1_0:
	.ds 4
_calloc_sloc2_1_0:
	.ds 2
_calloc_sloc3_1_0:
	.ds 1
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
;	../calloc.c: 44: void *calloc (size_t nmemb, size_t size)
;	-----------------------------------------
;	 function calloc
;	-----------------------------------------
_calloc:
;	../calloc.c: 49: unsigned long msize = (unsigned long)nmemb * (unsigned long)size;
	mov	a, _calloc_PARM_1+0
	mov	__mullong_PARM_1+0, a
	mov	a, _calloc_PARM_1+1
	mov	__mullong_PARM_1+1, a
	clear	__mullong_PARM_1+2
	clear	__mullong_PARM_1+3
	mov	a, _calloc_PARM_2+0
	mov	__mullong_PARM_2+0, a
	mov	a, _calloc_PARM_2+1
	mov	__mullong_PARM_2+1, a
	clear	__mullong_PARM_2+2
	clear	__mullong_PARM_2+3
	mov	a, #_calloc_sloc0_1_0
	push	af
	call	__mullong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _calloc_sloc0_1_0+0
	mov	_calloc_sloc1_1_0+0, a
	mov	a, _calloc_sloc0_1_0+1
	mov	_calloc_sloc1_1_0+1, a
	mov	a, _calloc_sloc0_1_0+2
	mov	_calloc_sloc1_1_0+2, a
	mov	a, _calloc_sloc0_1_0+3
	mov	_calloc_sloc1_1_0+3, a
;	../calloc.c: 54: if (msize > SIZE_MAX)
	mov	a, #0xff
	sub	a, _calloc_sloc1_1_0+0
	mov	a, #0xff
	subc	a, _calloc_sloc1_1_0+1
	mov	a, #0x00
	subc	a, _calloc_sloc1_1_0+2
	mov	a, #0x00
	subc	a, _calloc_sloc1_1_0+3
	t1sn	f, c
	goto	00102$
;	../calloc.c: 55: return(0);
	clear	p
	ret	#0x00
00102$:
;	../calloc.c: 57: if (ptr = malloc(msize))
	mov	a, _calloc_sloc1_1_0+0
	mov	_calloc_sloc2_1_0+0, a
	mov	a, _calloc_sloc1_1_0+1
	mov	_calloc_sloc2_1_0+1, a
	mov	a, _calloc_sloc2_1_0+0
	mov	_malloc_PARM_1+0, a
	mov	a, _calloc_sloc2_1_0+1
	mov	_malloc_PARM_1+1, a
	call	_malloc
	mov	_calloc_sloc3_1_0+0, a
	cneqsn	a, #0x00
	goto	00104$
;	../calloc.c: 58: memset(ptr, 0, msize);
	mov	a, _calloc_sloc3_1_0+0
	mov	_memset_PARM_1+0, a
	clear	_memset_PARM_1+1
	clear	_memset_PARM_2+0
	clear	_memset_PARM_2+1
	mov	a, _calloc_sloc2_1_0+0
	mov	_memset_PARM_3+0, a
	mov	a, _calloc_sloc2_1_0+1
	mov	_memset_PARM_3+1, a
	call	_memset
00104$:
;	../calloc.c: 60: return(ptr);
	mov	a, _calloc_sloc3_1_0+0
	mov	p, a
	mov	a, #0x00
	xch	a, p
;	../calloc.c: 61: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
