;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module frexpf
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _frexpf_PARM_2
	.globl _frexpf_PARM_1
	.globl _frexpf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_frexpf_PARM_1:
	.ds 4
_frexpf_PARM_2:
	.ds 2
_frexpf_fl_65536_26:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_frexpf_sloc0_1_0:
	.ds 4
_frexpf_sloc1_1_0:
	.ds 4
_frexpf_sloc2_1_0:
	.ds 4
_frexpf_sloc3_1_0:
	.ds 4
_frexpf_sloc4_1_0:
	.ds 2
_frexpf_sloc5_1_0:
	.ds 2
_frexpf_sloc6_1_0:
	.ds 4
_frexpf_sloc7_1_0:
	.ds 4
_frexpf_sloc8_1_0:
	.ds 4
_frexpf_sloc9_1_0:
	.ds 4
_frexpf_sloc10_1_0:
	.ds 4
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
;	../frexpf.c: 34: float frexpf(float x, int *pw2)
;	-----------------------------------------
;	 function frexpf
;	-----------------------------------------
_frexpf:
;	../frexpf.c: 39: fl.f=x;
	mov	a, _frexpf_PARM_1+0
	mov	_frexpf_fl_65536_26+0, a
	mov	a, _frexpf_PARM_1+1
	mov	_frexpf_fl_65536_26+1, a
	mov	a, _frexpf_PARM_1+2
	mov	_frexpf_fl_65536_26+2, a
	mov	a, _frexpf_PARM_1+3
	mov	_frexpf_fl_65536_26+3, a
;	../frexpf.c: 41: i  = ( fl.l >> 23) & 0x000000ff;
	mov	a, _frexpf_fl_65536_26+0
	mov	_frexpf_sloc0_1_0+0, a
	mov	a, _frexpf_fl_65536_26+1
	mov	_frexpf_sloc0_1_0+1, a
	mov	a, _frexpf_fl_65536_26+2
	mov	_frexpf_sloc0_1_0+2, a
	mov	a, _frexpf_fl_65536_26+3
	mov	_frexpf_sloc0_1_0+3, a
	mov	a, _frexpf_sloc0_1_0+0
	mov	_frexpf_sloc1_1_0+0, a
	mov	a, _frexpf_sloc0_1_0+1
	mov	_frexpf_sloc1_1_0+1, a
	mov	a, _frexpf_sloc0_1_0+2
	mov	_frexpf_sloc1_1_0+2, a
	mov	a, _frexpf_sloc0_1_0+3
	mov	_frexpf_sloc1_1_0+3, a
	mov	a, #23
00103$:
	push	af
	mov	a, _frexpf_sloc1_1_0+3
	sl	a
	src	_frexpf_sloc1_1_0+3
	src	_frexpf_sloc1_1_0+2
	src	_frexpf_sloc1_1_0+1
	src	_frexpf_sloc1_1_0+0
	pop	af
	dzsn	a
	goto	00103$
	mov	a, _frexpf_sloc1_1_0+0
	mov	_frexpf_sloc2_1_0+0, a
	clear	_frexpf_sloc2_1_0+1
	clear	_frexpf_sloc2_1_0+2
	clear	_frexpf_sloc2_1_0+3
;	../frexpf.c: 42: i -= 0x7e;
	mov	a, _frexpf_sloc2_1_0+0
	sub	a, #0x7e
	mov	_frexpf_sloc3_1_0+0, a
	mov	a, _frexpf_sloc2_1_0+1
	subc	a
	mov	_frexpf_sloc3_1_0+1, a
	mov	a, _frexpf_sloc2_1_0+2
	subc	a
	mov	_frexpf_sloc3_1_0+2, a
	mov	a, _frexpf_sloc2_1_0+3
	subc	a
	mov	_frexpf_sloc3_1_0+3, a
;	../frexpf.c: 43: *pw2 = i;
	mov	a, _frexpf_PARM_2+0
	mov	_frexpf_sloc4_1_0+0, a
	mov	a, _frexpf_PARM_2+1
	mov	_frexpf_sloc4_1_0+1, a
	mov	a, _frexpf_sloc3_1_0+0
	mov	_frexpf_sloc5_1_0+0, a
	mov	a, _frexpf_sloc3_1_0+1
	mov	_frexpf_sloc5_1_0+1, a
	mov	a, _frexpf_sloc4_1_0+0
	mov	p, a
	mov	a, _frexpf_sloc5_1_0+0
	idxm	p, a
	inc	p
	mov	a, _frexpf_sloc5_1_0+1
	idxm	p, a
;	../frexpf.c: 44: fl.l &= 0x807fffff; /* strip all exponent bits */
	mov	a, _frexpf_fl_65536_26+0
	mov	_frexpf_sloc6_1_0+0, a
	mov	a, _frexpf_fl_65536_26+1
	mov	_frexpf_sloc6_1_0+1, a
	mov	a, _frexpf_fl_65536_26+2
	mov	_frexpf_sloc6_1_0+2, a
	mov	a, _frexpf_fl_65536_26+3
	mov	_frexpf_sloc6_1_0+3, a
	mov	a, _frexpf_sloc6_1_0+0
	mov	_frexpf_sloc7_1_0+0, a
	mov	a, _frexpf_sloc6_1_0+1
	mov	_frexpf_sloc7_1_0+1, a
	mov	a, _frexpf_sloc6_1_0+2
	and	a, #0x7f
	mov	_frexpf_sloc7_1_0+2, a
	mov	a, _frexpf_sloc6_1_0+3
	and	a, #0x80
	mov	_frexpf_sloc7_1_0+3, a
	mov	a, _frexpf_sloc7_1_0+0
	mov	_frexpf_fl_65536_26+0, a
	mov	a, _frexpf_sloc7_1_0+1
	mov	_frexpf_fl_65536_26+1, a
	mov	a, _frexpf_sloc7_1_0+2
	mov	_frexpf_fl_65536_26+2, a
	mov	a, _frexpf_sloc7_1_0+3
	mov	_frexpf_fl_65536_26+3, a
;	../frexpf.c: 45: fl.l |= 0x3f000000; /* mantissa between 0.5 and 1 */
	mov	a, _frexpf_fl_65536_26+0
	mov	_frexpf_sloc10_1_0+0, a
	mov	a, _frexpf_fl_65536_26+1
	mov	_frexpf_sloc10_1_0+1, a
	mov	a, _frexpf_fl_65536_26+2
	mov	_frexpf_sloc10_1_0+2, a
	mov	a, _frexpf_fl_65536_26+3
	mov	_frexpf_sloc10_1_0+3, a
	mov	a, _frexpf_sloc7_1_0+0
	mov	_frexpf_sloc8_1_0+0, a
	mov	a, _frexpf_sloc7_1_0+1
	mov	_frexpf_sloc8_1_0+1, a
	mov	a, _frexpf_sloc7_1_0+2
	mov	_frexpf_sloc8_1_0+2, a
	mov	a, _frexpf_sloc7_1_0+3
	or	a, #0x3f
	mov	_frexpf_sloc8_1_0+3, a
	mov	a, _frexpf_sloc8_1_0+0
	mov	_frexpf_fl_65536_26+0, a
	mov	a, _frexpf_sloc8_1_0+1
	mov	_frexpf_fl_65536_26+1, a
	mov	a, _frexpf_sloc8_1_0+2
	mov	_frexpf_fl_65536_26+2, a
	mov	a, _frexpf_sloc8_1_0+3
	mov	_frexpf_fl_65536_26+3, a
;	../frexpf.c: 46: return(fl.f);
	mov	a, _frexpf_fl_65536_26+0
	mov	_frexpf_sloc9_1_0+0, a
	mov	a, _frexpf_fl_65536_26+1
	mov	_frexpf_sloc9_1_0+1, a
	mov	a, _frexpf_fl_65536_26+2
	mov	_frexpf_sloc9_1_0+2, a
	mov	a, _frexpf_fl_65536_26+3
	mov	_frexpf_sloc9_1_0+3, a
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _frexpf_sloc9_1_0+0
	idxm	p, a
	inc	p
	mov	a, _frexpf_sloc9_1_0+1
	idxm	p, a
	inc	p
	mov	a, _frexpf_sloc9_1_0+2
	idxm	p, a
	inc	p
	mov	a, _frexpf_sloc9_1_0+3
	idxm	p, a
;	../frexpf.c: 47: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
