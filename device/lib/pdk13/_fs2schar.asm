;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _fs2schar
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2slong
	.globl ___fs2schar_PARM_1
	.globl ___fs2schar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
___fs2schar_PARM_1:
	.ds 4
___fs2schar_sloc0_1_0:
	.ds 4
___fs2schar_sloc1_1_0:
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
;	../_fs2schar.c: 87: signed char __fs2schar (float f)
;	-----------------------------------------
;	 function __fs2schar
;	-----------------------------------------
___fs2schar:
;	../_fs2schar.c: 89: signed long sl=__fs2slong(f);
	mov	a, ___fs2schar_PARM_1+0
	mov	___fs2slong_PARM_1+0, a
	mov	a, ___fs2schar_PARM_1+1
	mov	___fs2slong_PARM_1+1, a
	mov	a, ___fs2schar_PARM_1+2
	mov	___fs2slong_PARM_1+2, a
	mov	a, ___fs2schar_PARM_1+3
	mov	___fs2slong_PARM_1+3, a
	mov	a, #___fs2schar_sloc0_1_0
	push	af
	call	___fs2slong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, ___fs2schar_sloc0_1_0+0
	mov	___fs2schar_sloc1_1_0+0, a
	mov	a, ___fs2schar_sloc0_1_0+1
	mov	___fs2schar_sloc1_1_0+1, a
	mov	a, ___fs2schar_sloc0_1_0+2
	mov	___fs2schar_sloc1_1_0+2, a
	mov	a, ___fs2schar_sloc0_1_0+3
	mov	___fs2schar_sloc1_1_0+3, a
;	../_fs2schar.c: 90: if (sl>=SCHAR_MAX)
	mov	a, ___fs2schar_sloc1_1_0+0
	sub	a, #0x7f
	mov	a, ___fs2schar_sloc1_1_0+1
	subc	a
	mov	a, ___fs2schar_sloc1_1_0+2
	subc	a
	mov	a, ___fs2schar_sloc1_1_0+3
	subc	a
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t0sn	f, c
	goto	00102$
;	../_fs2schar.c: 91: return SCHAR_MAX;
	ret	#0x7f
00102$:
;	../_fs2schar.c: 92: if (sl<=SCHAR_MIN)
	mov	a, #0x80
	sub	a, ___fs2schar_sloc1_1_0+0
	mov	a, #0xff
	subc	a, ___fs2schar_sloc1_1_0+1
	mov	a, #0xff
	subc	a, ___fs2schar_sloc1_1_0+2
	mov	a, #0xff
	subc	a, ___fs2schar_sloc1_1_0+3
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t0sn	f, c
	goto	00104$
;	../_fs2schar.c: 93: return -SCHAR_MIN;
	ret	#0x80
00104$:
;	../_fs2schar.c: 94: return sl;
	mov	a, ___fs2schar_sloc1_1_0+0
;	../_fs2schar.c: 95: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
