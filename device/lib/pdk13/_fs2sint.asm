;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _fs2sint
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2slong
	.globl ___fs2sint_PARM_1
	.globl ___fs2sint
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
___fs2sint_PARM_1:
	.ds 4
___fs2sint_sloc0_1_0:
	.ds 4
___fs2sint_sloc1_1_0:
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
;	../_fs2sint.c: 81: signed int __fs2sint (float f)
;	-----------------------------------------
;	 function __fs2sint
;	-----------------------------------------
___fs2sint:
;	../_fs2sint.c: 83: signed long sl=__fs2slong(f);
	mov	a, ___fs2sint_PARM_1+0
	mov	___fs2slong_PARM_1+0, a
	mov	a, ___fs2sint_PARM_1+1
	mov	___fs2slong_PARM_1+1, a
	mov	a, ___fs2sint_PARM_1+2
	mov	___fs2slong_PARM_1+2, a
	mov	a, ___fs2sint_PARM_1+3
	mov	___fs2slong_PARM_1+3, a
	mov	a, #___fs2sint_sloc0_1_0
	push	af
	call	___fs2slong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, ___fs2sint_sloc0_1_0+0
	mov	___fs2sint_sloc1_1_0+0, a
	mov	a, ___fs2sint_sloc0_1_0+1
	mov	___fs2sint_sloc1_1_0+1, a
	mov	a, ___fs2sint_sloc0_1_0+2
	mov	___fs2sint_sloc1_1_0+2, a
	mov	a, ___fs2sint_sloc0_1_0+3
	mov	___fs2sint_sloc1_1_0+3, a
;	../_fs2sint.c: 84: if (sl>=INT_MAX)
	mov	a, ___fs2sint_sloc1_1_0+0
	sub	a, #0xff
	mov	a, #0x7f
	mov	p, a
	mov	a, ___fs2sint_sloc1_1_0+1
	subc	a, p
	mov	a, ___fs2sint_sloc1_1_0+2
	subc	a
	mov	a, ___fs2sint_sloc1_1_0+3
	subc	a
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t0sn	f, c
	goto	00102$
;	../_fs2sint.c: 85: return INT_MAX;
	mov	a, #0x7f
	mov	p, a
	ret	#0xff
00102$:
;	../_fs2sint.c: 86: if (sl<=INT_MIN)
	mov	a, #0x00
	sub	a, ___fs2sint_sloc1_1_0+0
	mov	a, #0x80
	subc	a, ___fs2sint_sloc1_1_0+1
	mov	a, #0xff
	subc	a, ___fs2sint_sloc1_1_0+2
	mov	a, #0xff
	subc	a, ___fs2sint_sloc1_1_0+3
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t0sn	f, c
	goto	00104$
;	../_fs2sint.c: 87: return -INT_MIN;
	mov	a, #0x80
	mov	p, a
	ret	#0x00
00104$:
;	../_fs2sint.c: 88: return sl;
	mov	a, ___fs2sint_sloc1_1_0+1
	mov	p, a
	mov	a, ___fs2sint_sloc1_1_0+0
;	../_fs2sint.c: 89: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
