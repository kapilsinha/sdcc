;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _memchr
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memchr_PARM_3
	.globl _memchr_PARM_2
	.globl _memchr_PARM_1
	.globl _memchr
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_memchr_PARM_1:
	.ds 2
_memchr_PARM_2:
	.ds 2
_memchr_PARM_3:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_memchr_sloc0_1_0:
	.ds 2
_memchr_sloc1_1_0:
	.ds 2
_memchr_sloc2_1_0:
	.ds 2
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
;	../_memchr.c: 31: void *memchr(const void *s, int c, size_t n)
;	-----------------------------------------
;	 function memchr
;	-----------------------------------------
_memchr:
;	../_memchr.c: 33: unsigned char *p = (unsigned char *)s;
	mov	a, _memchr_PARM_1+0
	mov	_memchr_sloc0_1_0+0, a
	mov	a, _memchr_PARM_1+1
	mov	_memchr_sloc0_1_0+1, a
;	../_memchr.c: 34: unsigned char *end = p + n;
	mov	a, _memchr_sloc0_1_0+0
	add	a, _memchr_PARM_3+0
	mov	_memchr_sloc1_1_0+0, a
	mov	a, _memchr_sloc0_1_0+1
	addc	a, _memchr_PARM_3+1
	mov	_memchr_sloc1_1_0+1, a
;	../_memchr.c: 38: return(0);
	mov	a, _memchr_sloc0_1_0+0
	mov	_memchr_sloc2_1_0+0, a
	mov	a, _memchr_sloc0_1_0+1
	mov	_memchr_sloc2_1_0+1, a
00105$:
;	../_memchr.c: 35: for(; p != end; p++)
	mov	a, _memchr_sloc2_1_0+0
	ceqsn	a, _memchr_sloc1_1_0+0
	goto	00121$
	mov	a, _memchr_sloc2_1_0+1
	cneqsn	a, _memchr_sloc1_1_0+1
	goto	00103$
00121$:
;	../_memchr.c: 36: if(*p == (unsigned char)c)
	mov	a, _memchr_sloc2_1_0+0
	mov	p, a
	mov	a, _memchr_sloc2_1_0+1
	call	__gptrget
	mov	p, a
	mov	a, _memchr_PARM_2+0
	ceqsn	a, p
	goto	00106$
;	../_memchr.c: 37: return((void *)p);
	mov	a, _memchr_sloc0_1_0+1
	mov	p, a
	mov	a, _memchr_sloc0_1_0+0
	ret
00106$:
;	../_memchr.c: 35: for(; p != end; p++)
	inc	_memchr_sloc2_1_0+0
	addc	_memchr_sloc2_1_0+1
	mov	a, _memchr_sloc2_1_0+0
	mov	_memchr_sloc0_1_0+0, a
	mov	a, _memchr_sloc2_1_0+1
	mov	_memchr_sloc0_1_0+1, a
	goto	00105$
00103$:
;	../_memchr.c: 38: return(0);
	clear	p
	ret	#0x00
;	../_memchr.c: 39: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
