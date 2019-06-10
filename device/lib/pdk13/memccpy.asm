;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module memccpy
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memccpy_PARM_4
	.globl _memccpy_PARM_3
	.globl _memccpy_PARM_2
	.globl _memccpy_PARM_1
	.globl _memccpy
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_memccpy_PARM_1:
	.ds 2
_memccpy_PARM_2:
	.ds 2
_memccpy_PARM_3:
	.ds 2
_memccpy_PARM_4:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_memccpy_sloc0_1_0:
	.ds 2
_memccpy_sloc1_1_0:
	.ds 2
_memccpy_sloc2_1_0:
	.ds 2
_memccpy_sloc3_1_0:
	.ds 1
_memccpy_sloc4_1_0:
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
;	../memccpy.c: 31: void *memccpy (void *restrict dst, const void *restrict src, int c, size_t n)
;	-----------------------------------------
;	 function memccpy
;	-----------------------------------------
_memccpy:
;	../memccpy.c: 33: char *d = dst;
	mov	a, _memccpy_PARM_1+0
	mov	_memccpy_sloc0_1_0+0, a
	mov	a, _memccpy_PARM_1+1
	mov	_memccpy_sloc0_1_0+1, a
;	../memccpy.c: 34: const char *s = src;
	mov	a, _memccpy_PARM_2+0
	mov	_memccpy_sloc1_1_0+0, a
	mov	a, _memccpy_PARM_2+1
	mov	_memccpy_sloc1_1_0+1, a
;	../memccpy.c: 36: while (n--)
	mov	a, _memccpy_PARM_4+0
	mov	_memccpy_sloc2_1_0+0, a
	mov	a, _memccpy_PARM_4+1
	mov	_memccpy_sloc2_1_0+1, a
00103$:
	mov	a, _memccpy_sloc2_1_0+1
	mov	p, a
	mov	a, _memccpy_sloc2_1_0+0
	dec	_memccpy_sloc2_1_0+0
	subc	_memccpy_sloc2_1_0+1
	or	a, p
	cneqsn	a, #0x00
	goto	00105$
;	../memccpy.c: 37: if ((*d++ = *s++) == (unsigned char)c)
	mov	a, _memccpy_sloc1_1_0+0
	mov	p, a
	mov	a, _memccpy_sloc1_1_0+1
	call	__gptrget
	mov	_memccpy_sloc3_1_0+0, a
	inc	_memccpy_sloc1_1_0+0
	addc	_memccpy_sloc1_1_0+1
	mov	a, _memccpy_sloc0_1_0+0
	mov	p, a
	mov	a, _memccpy_sloc3_1_0+0
	idxm	p, a
	inc	_memccpy_sloc0_1_0+0
	addc	_memccpy_sloc0_1_0+1
	mov	a, _memccpy_sloc0_1_0+0
	mov	_memccpy_sloc4_1_0+0, a
	mov	a, _memccpy_sloc0_1_0+1
	mov	_memccpy_sloc4_1_0+1, a
	mov	a, _memccpy_PARM_3+0
	ceqsn	a, _memccpy_sloc3_1_0+0
	goto	00103$
;	../memccpy.c: 38: return (d);
	mov	a, _memccpy_sloc4_1_0+1
	mov	p, a
	mov	a, _memccpy_sloc4_1_0+0
	ret
00105$:
;	../memccpy.c: 40: return (0);
	clear	p
	ret	#0x00
;	../memccpy.c: 41: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
