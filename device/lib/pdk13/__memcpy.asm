;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module __memcpy
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___memcpy_PARM_3
	.globl ___memcpy_PARM_2
	.globl ___memcpy_PARM_1
	.globl ___memcpy
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
___memcpy_PARM_1:
	.ds 2
___memcpy_PARM_2:
	.ds 2
___memcpy_PARM_3:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
___memcpy_sloc0_1_0:
	.ds 2
___memcpy_sloc1_1_0:
	.ds 2
___memcpy_sloc2_1_0:
	.ds 2
___memcpy_sloc3_1_0:
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
;	../__memcpy.c: 31: void *__memcpy (void *dst, const void *src, size_t n)
;	-----------------------------------------
;	 function __memcpy
;	-----------------------------------------
___memcpy:
;	../__memcpy.c: 33: void *ret = dst;
	mov	a, ___memcpy_PARM_1+0
	mov	___memcpy_sloc0_1_0+0, a
	mov	a, ___memcpy_PARM_1+1
	mov	___memcpy_sloc0_1_0+1, a
;	../__memcpy.c: 34: char *d = dst;
	mov	a, ___memcpy_PARM_1+0
	mov	___memcpy_sloc1_1_0+0, a
	mov	a, ___memcpy_PARM_1+1
	mov	___memcpy_sloc1_1_0+1, a
;	../__memcpy.c: 35: const char *s = src;
	mov	a, ___memcpy_PARM_2+0
	mov	___memcpy_sloc2_1_0+0, a
	mov	a, ___memcpy_PARM_2+1
	mov	___memcpy_sloc2_1_0+1, a
;	../__memcpy.c: 37: while (n--)
	mov	a, ___memcpy_PARM_3+0
	mov	___memcpy_sloc3_1_0+0, a
	mov	a, ___memcpy_PARM_3+1
	mov	___memcpy_sloc3_1_0+1, a
00101$:
	mov	a, ___memcpy_sloc3_1_0+1
	mov	p, a
	mov	a, ___memcpy_sloc3_1_0+0
	dec	___memcpy_sloc3_1_0+0
	subc	___memcpy_sloc3_1_0+1
	or	a, p
	cneqsn	a, #0x00
	goto	00103$
;	../__memcpy.c: 38: *d++ = *s++;
	mov	a, ___memcpy_sloc2_1_0+0
	mov	p, a
	mov	a, ___memcpy_sloc2_1_0+1
	call	__gptrget
	mov	p, a
	inc	___memcpy_sloc2_1_0+0
	addc	___memcpy_sloc2_1_0+1
	mov	a, ___memcpy_sloc1_1_0+0
	xch	a, p
	idxm	p, a
	inc	___memcpy_sloc1_1_0+0
	addc	___memcpy_sloc1_1_0+1
	goto	00101$
00103$:
;	../__memcpy.c: 40: return(ret);
	mov	a, ___memcpy_sloc0_1_0+1
	mov	p, a
	mov	a, ___memcpy_sloc0_1_0+0
;	../__memcpy.c: 41: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
