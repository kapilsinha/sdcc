;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _modsint
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modsint_PARM_2
	.globl __modsint_PARM_1
	.globl __modsint
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__modsint_PARM_1:
	.ds 2
__modsint_PARM_2:
	.ds 2
__modsint_sloc0_1_0:
	.ds 1
__modsint_sloc1_1_0:
	.ds 2
__modsint_sloc2_1_0:
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
;	../_modsint.c: 203: int _modsint (int a, int b)
;	-----------------------------------------
;	 function _modsint
;	-----------------------------------------
__modsint:
;	../_modsint.c: 207: r = (unsigned)(a < 0 ? -a : a) % (unsigned)(b < 0 ? -b : b);
	mov	a, __modsint_PARM_1+1
	sl	a
	mov	a, #0x00
	slc	a
	mov	__modsint_sloc0_1_0+0, a
	cneqsn	a, #0x00
	goto	00106$
	mov	a, #0x00
	sub	a, __modsint_PARM_1+0
	mov	p, a
	mov	a, #0x00
	subc	a, __modsint_PARM_1+1
	goto	00107$
00106$:
	mov	a, __modsint_PARM_1+0
	mov	p, a
	mov	a, __modsint_PARM_1+1
00107$:
	mov	__modsint_sloc1_1_0+1, a
	mov	a, p
	mov	__modsint_sloc1_1_0+0, a
	mov	a, __modsint_PARM_2+1
	sub	a, #0x80
	t0sn	f, c
	goto	00108$
	mov	a, #0x00
	sub	a, __modsint_PARM_2+0
	mov	p, a
	mov	a, #0x00
	subc	a, __modsint_PARM_2+1
	goto	00109$
00108$:
	mov	a, __modsint_PARM_2+0
	mov	p, a
	mov	a, __modsint_PARM_2+1
00109$:
	mov	__moduint_PARM_2+1, a
	mov	a, p
	mov	__moduint_PARM_2+0, a
	mov	a, __modsint_sloc1_1_0+0
	mov	__moduint_PARM_1+0, a
	mov	a, __modsint_sloc1_1_0+1
	mov	__moduint_PARM_1+1, a
	call	__moduint
	mov	__modsint_sloc2_1_0+0, a
	mov	a, p
	mov	__modsint_sloc2_1_0+1, a
;	../_modsint.c: 209: if (a < 0)
	mov	a, __modsint_sloc0_1_0+0
	cneqsn	a, #0x00
	goto	00102$
;	../_modsint.c: 210: return -r;
	mov	a, #0x00
	sub	a, __modsint_sloc2_1_0+0
	mov	p, a
	mov	a, #0x00
	subc	a, __modsint_sloc2_1_0+1
	xch	a, p
	ret
00102$:
;	../_modsint.c: 212: return r;
	mov	a, __modsint_sloc2_1_0+1
	mov	p, a
	mov	a, __modsint_sloc2_1_0+0
;	../_modsint.c: 213: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
