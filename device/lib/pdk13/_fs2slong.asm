;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _fs2slong
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
	.globl ___fs2slong_PARM_1
	.globl ___fs2slong
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
___fs2slong_PARM_1:
	.ds 4
___fs2slong_sloc0_1_0:
	.ds 4
___fs2slong_sloc1_1_0:
	.ds 4
___fs2slong_sloc2_1_0:
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
;	../_fs2slong.c: 108: signed long __fs2slong (float f)
;	-----------------------------------------
;	 function __fs2slong
;	-----------------------------------------
___fs2slong:
;	../_fs2slong.c: 111: if (!f)
	mov	a, ___fs2slong_PARM_1+3
	and	a, #0x7f
	or	a, ___fs2slong_PARM_1+0
	or	a, ___fs2slong_PARM_1+1
	or	a, ___fs2slong_PARM_1+2
	ceqsn	a, #0x00
	goto	00102$
;	../_fs2slong.c: 112: return 0;
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
	ret
00102$:
;	../_fs2slong.c: 114: if (f<0) {
	mov	a, ___fs2slong_PARM_1+0
	mov	___fslt_PARM_1+0, a
	mov	a, ___fs2slong_PARM_1+1
	mov	___fslt_PARM_1+1, a
	mov	a, ___fs2slong_PARM_1+2
	mov	___fslt_PARM_1+2, a
	mov	a, ___fs2slong_PARM_1+3
	mov	___fslt_PARM_1+3, a
	clear	___fslt_PARM_2+0
	clear	___fslt_PARM_2+1
	clear	___fslt_PARM_2+2
	clear	___fslt_PARM_2+3
	call	___fslt
	cneqsn	a, #0x00
	goto	00104$
;	../_fs2slong.c: 115: return -__fs2ulong(-f);
	mov	a, ___fs2slong_PARM_1+0
	mov	___fs2ulong_PARM_1+0, a
	mov	a, ___fs2slong_PARM_1+1
	mov	___fs2ulong_PARM_1+1, a
	mov	a, ___fs2slong_PARM_1+2
	mov	___fs2ulong_PARM_1+2, a
	mov	a, ___fs2slong_PARM_1+3
	xor	a, #0x80
	mov	___fs2ulong_PARM_1+3, a
	mov	a, #___fs2slong_sloc0_1_0
	push	af
	call	___fs2ulong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, #0x00
	sub	a, ___fs2slong_sloc0_1_0+0
	mov	___fs2slong_sloc2_1_0+0, a
	mov	a, #0x00
	subc	a, ___fs2slong_sloc0_1_0+1
	mov	___fs2slong_sloc2_1_0+1, a
	mov	a, #0x00
	subc	a, ___fs2slong_sloc0_1_0+2
	mov	___fs2slong_sloc2_1_0+2, a
	mov	a, #0x00
	subc	a, ___fs2slong_sloc0_1_0+3
	mov	___fs2slong_sloc2_1_0+3, a
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, ___fs2slong_sloc2_1_0+0
	idxm	p, a
	inc	p
	mov	a, ___fs2slong_sloc2_1_0+1
	idxm	p, a
	inc	p
	mov	a, ___fs2slong_sloc2_1_0+2
	idxm	p, a
	inc	p
	mov	a, ___fs2slong_sloc2_1_0+3
	idxm	p, a
	ret
00104$:
;	../_fs2slong.c: 117: return __fs2ulong(f);
	mov	a, ___fs2slong_PARM_1+0
	mov	___fs2ulong_PARM_1+0, a
	mov	a, ___fs2slong_PARM_1+1
	mov	___fs2ulong_PARM_1+1, a
	mov	a, ___fs2slong_PARM_1+2
	mov	___fs2ulong_PARM_1+2, a
	mov	a, ___fs2slong_PARM_1+3
	mov	___fs2ulong_PARM_1+3, a
	mov	a, #___fs2slong_sloc1_1_0
	push	af
	call	___fs2ulong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, ___fs2slong_sloc1_1_0+0
	idxm	p, a
	inc	p
	mov	a, ___fs2slong_sloc1_1_0+1
	idxm	p, a
	inc	p
	mov	a, ___fs2slong_sloc1_1_0+2
	idxm	p, a
	inc	p
	mov	a, ___fs2slong_sloc1_1_0+3
	idxm	p, a
;	../_fs2slong.c: 119: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
