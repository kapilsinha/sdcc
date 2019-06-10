;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _fs2uint
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
	.globl ___fs2uint_PARM_1
	.globl ___fs2uint
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
___fs2uint_PARM_1:
	.ds 4
___fs2uint_sloc0_1_0:
	.ds 4
___fs2uint_sloc1_1_0:
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
;	../_fs2uint.c: 54: unsigned int __fs2uint (float f)
;	-----------------------------------------
;	 function __fs2uint
;	-----------------------------------------
___fs2uint:
;	../_fs2uint.c: 56: unsigned long ul=__fs2ulong(f);
	mov	a, ___fs2uint_PARM_1+0
	mov	___fs2ulong_PARM_1+0, a
	mov	a, ___fs2uint_PARM_1+1
	mov	___fs2ulong_PARM_1+1, a
	mov	a, ___fs2uint_PARM_1+2
	mov	___fs2ulong_PARM_1+2, a
	mov	a, ___fs2uint_PARM_1+3
	mov	___fs2ulong_PARM_1+3, a
	mov	a, #___fs2uint_sloc0_1_0
	push	af
	call	___fs2ulong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, ___fs2uint_sloc0_1_0+0
	mov	___fs2uint_sloc1_1_0+0, a
	mov	a, ___fs2uint_sloc0_1_0+1
	mov	___fs2uint_sloc1_1_0+1, a
	mov	a, ___fs2uint_sloc0_1_0+2
	mov	___fs2uint_sloc1_1_0+2, a
	mov	a, ___fs2uint_sloc0_1_0+3
	mov	___fs2uint_sloc1_1_0+3, a
;	../_fs2uint.c: 57: if (ul>=UINT_MAX) return UINT_MAX;
	mov	a, ___fs2uint_sloc1_1_0+0
	sub	a, #0xff
	mov	a, #0xff
	mov	p, a
	mov	a, ___fs2uint_sloc1_1_0+1
	subc	a, p
	mov	a, ___fs2uint_sloc1_1_0+2
	subc	a
	mov	a, ___fs2uint_sloc1_1_0+3
	subc	a
	t0sn	f, c
	goto	00102$
	mov	a, #0xff
	mov	p, a
	ret	#0xff
00102$:
;	../_fs2uint.c: 58: return ul;
	mov	a, ___fs2uint_sloc1_1_0+1
	mov	p, a
	mov	a, ___fs2uint_sloc1_1_0+0
;	../_fs2uint.c: 59: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
