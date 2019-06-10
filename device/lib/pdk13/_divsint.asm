;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _divsint
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divsint_PARM_2
	.globl __divsint_PARM_1
	.globl __divsint
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__divsint_PARM_1:
	.ds 2
__divsint_PARM_2:
	.ds 2
__divsint_sloc0_1_0:
	.ds 1
__divsint_sloc1_1_0:
	.ds 2
__divsint_sloc2_1_0:
	.ds 1
__divsint_sloc3_1_0:
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
;	../_divsint.c: 207: _divsint (int x, int y)
;	-----------------------------------------
;	 function _divsint
;	-----------------------------------------
__divsint:
;	../_divsint.c: 211: r = (unsigned int)(x < 0 ? -x : x) / (unsigned int)(y < 0 ? -y : y);
	mov	a, __divsint_PARM_1+1
	sl	a
	mov	a, #0x00
	slc	a
	mov	__divsint_sloc0_1_0+0, a
	cneqsn	a, #0x00
	goto	00106$
	mov	a, #0x00
	sub	a, __divsint_PARM_1+0
	mov	p, a
	mov	a, #0x00
	subc	a, __divsint_PARM_1+1
	goto	00107$
00106$:
	mov	a, __divsint_PARM_1+0
	mov	p, a
	mov	a, __divsint_PARM_1+1
00107$:
	mov	__divsint_sloc1_1_0+1, a
	mov	a, p
	mov	__divsint_sloc1_1_0+0, a
	mov	a, __divsint_PARM_2+1
	sl	a
	mov	a, #0x00
	slc	a
	mov	__divsint_sloc2_1_0+0, a
	cneqsn	a, #0x00
	goto	00108$
	mov	a, #0x00
	sub	a, __divsint_PARM_2+0
	mov	p, a
	mov	a, #0x00
	subc	a, __divsint_PARM_2+1
	goto	00109$
00108$:
	mov	a, __divsint_PARM_2+0
	mov	p, a
	mov	a, __divsint_PARM_2+1
00109$:
	mov	__divuint_PARM_2+1, a
	mov	a, p
	mov	__divuint_PARM_2+0, a
	mov	a, __divsint_sloc1_1_0+0
	mov	__divuint_PARM_1+0, a
	mov	a, __divsint_sloc1_1_0+1
	mov	__divuint_PARM_1+1, a
	call	__divuint
	mov	__divsint_sloc3_1_0+0, a
	mov	a, p
	mov	__divsint_sloc3_1_0+1, a
;	../_divsint.c: 212: if ((x < 0) ^ (y < 0))
	mov	a, __divsint_sloc0_1_0+0
	xor	a, __divsint_sloc2_1_0+0
	cneqsn	a, #0x00
	goto	00102$
;	../_divsint.c: 213: return -r;
	mov	a, #0x00
	sub	a, __divsint_sloc3_1_0+0
	mov	p, a
	mov	a, #0x00
	subc	a, __divsint_sloc3_1_0+1
	xch	a, p
	ret
00102$:
;	../_divsint.c: 215: return r;
	mov	a, __divsint_sloc3_1_0+1
	mov	p, a
	mov	a, __divsint_sloc3_1_0+0
;	../_divsint.c: 216: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
