;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _memset
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset_PARM_3
	.globl _memset_PARM_2
	.globl _memset_PARM_1
	.globl _memset
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_memset_PARM_1:
	.ds 2
_memset_PARM_2:
	.ds 2
_memset_PARM_3:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_memset_sloc0_1_0:
	.ds 2
_memset_sloc1_1_0:
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
;	../_memset.c: 41: void *memset (void *s, int c, size_t n)
;	-----------------------------------------
;	 function memset
;	-----------------------------------------
_memset:
;	../_memset.c: 44: register unsigned char *ret = s;
	mov	a, _memset_PARM_1+0
	mov	_memset_sloc0_1_0+0, a
	mov	a, _memset_PARM_1+1
	mov	_memset_sloc0_1_0+1, a
;	../_memset.c: 46: while (n--)
	mov	a, _memset_PARM_3+0
	mov	_memset_sloc1_1_0+0, a
	mov	a, _memset_PARM_3+1
	mov	_memset_sloc1_1_0+1, a
00101$:
	mov	a, _memset_sloc1_1_0+1
	mov	p, a
	mov	a, _memset_sloc1_1_0+0
	dec	_memset_sloc1_1_0+0
	subc	_memset_sloc1_1_0+1
	or	a, p
	cneqsn	a, #0x00
	goto	00103$
;	../_memset.c: 48: *(unsigned char *) ret = c;
	mov	a, _memset_PARM_2+0
	mov	p, a
	mov	a, _memset_sloc0_1_0+0
	xch	a, p
	idxm	p, a
;	../_memset.c: 49: ret = ((unsigned char *) ret) + 1;
	inc	_memset_sloc0_1_0+0
	addc	_memset_sloc0_1_0+1
	goto	00101$
00103$:
;	../_memset.c: 52: return s;
	mov	a, _memset_PARM_1+1
	mov	p, a
	mov	a, _memset_PARM_1+0
;	../_memset.c: 53: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
