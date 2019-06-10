;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module ldexpf
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf_PARM_2
	.globl _ldexpf_PARM_1
	.globl _ldexpf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_ldexpf_PARM_1:
	.ds 4
_ldexpf_PARM_2:
	.ds 2
_ldexpf_fl_65536_26:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_ldexpf_sloc0_1_0:
	.ds 4
_ldexpf_sloc1_1_0:
	.ds 4
_ldexpf_sloc2_1_0:
	.ds 4
_ldexpf_sloc3_1_0:
	.ds 4
_ldexpf_sloc4_1_0:
	.ds 4
_ldexpf_sloc5_1_0:
	.ds 4
_ldexpf_sloc6_1_0:
	.ds 4
_ldexpf_sloc7_1_0:
	.ds 4
_ldexpf_sloc8_1_0:
	.ds 4
_ldexpf_sloc9_1_0:
	.ds 4
_ldexpf_sloc10_1_0:
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
;	../ldexpf.c: 34: float ldexpf(float x, int pw2)
;	-----------------------------------------
;	 function ldexpf
;	-----------------------------------------
_ldexpf:
;	../ldexpf.c: 39: fl.f = x;
	mov	a, _ldexpf_PARM_1+0
	mov	_ldexpf_fl_65536_26+0, a
	mov	a, _ldexpf_PARM_1+1
	mov	_ldexpf_fl_65536_26+1, a
	mov	a, _ldexpf_PARM_1+2
	mov	_ldexpf_fl_65536_26+2, a
	mov	a, _ldexpf_PARM_1+3
	mov	_ldexpf_fl_65536_26+3, a
;	../ldexpf.c: 41: e=(fl.l >> 23) & 0x000000ff;
	mov	a, _ldexpf_fl_65536_26+0
	mov	_ldexpf_sloc0_1_0+0, a
	mov	a, _ldexpf_fl_65536_26+1
	mov	_ldexpf_sloc0_1_0+1, a
	mov	a, _ldexpf_fl_65536_26+2
	mov	_ldexpf_sloc0_1_0+2, a
	mov	a, _ldexpf_fl_65536_26+3
	mov	_ldexpf_sloc0_1_0+3, a
	mov	a, _ldexpf_sloc0_1_0+0
	mov	_ldexpf_sloc1_1_0+0, a
	mov	a, _ldexpf_sloc0_1_0+1
	mov	_ldexpf_sloc1_1_0+1, a
	mov	a, _ldexpf_sloc0_1_0+2
	mov	_ldexpf_sloc1_1_0+2, a
	mov	a, _ldexpf_sloc0_1_0+3
	mov	_ldexpf_sloc1_1_0+3, a
	mov	a, #23
00103$:
	push	af
	mov	a, _ldexpf_sloc1_1_0+3
	sl	a
	src	_ldexpf_sloc1_1_0+3
	src	_ldexpf_sloc1_1_0+2
	src	_ldexpf_sloc1_1_0+1
	src	_ldexpf_sloc1_1_0+0
	pop	af
	dzsn	a
	goto	00103$
	mov	a, _ldexpf_sloc1_1_0+0
	mov	_ldexpf_sloc2_1_0+0, a
	clear	_ldexpf_sloc2_1_0+1
	clear	_ldexpf_sloc2_1_0+2
	clear	_ldexpf_sloc2_1_0+3
;	../ldexpf.c: 42: e+=pw2;
	mov	a, _ldexpf_PARM_2+0
	mov	_ldexpf_sloc3_1_0+0, a
	mov	a, _ldexpf_PARM_2+1
	mov	_ldexpf_sloc3_1_0+1, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	_ldexpf_sloc3_1_0+2, a
	mov	_ldexpf_sloc3_1_0+3, a
	mov	a, _ldexpf_sloc2_1_0+0
	add	a, _ldexpf_sloc3_1_0+0
	mov	_ldexpf_sloc4_1_0+0, a
	mov	a, _ldexpf_sloc2_1_0+1
	addc	a, _ldexpf_sloc3_1_0+1
	mov	_ldexpf_sloc4_1_0+1, a
	mov	a, _ldexpf_sloc2_1_0+2
	addc	a, _ldexpf_sloc3_1_0+2
	mov	_ldexpf_sloc4_1_0+2, a
	mov	a, _ldexpf_sloc2_1_0+3
	addc	a, _ldexpf_sloc3_1_0+3
	mov	_ldexpf_sloc4_1_0+3, a
;	../ldexpf.c: 43: fl.l= ((e & 0xff) << 23) | (fl.l & 0x807fffff);
	mov	a, _ldexpf_sloc4_1_0+0
	mov	_ldexpf_sloc5_1_0+0, a
	clear	_ldexpf_sloc5_1_0+1
	clear	_ldexpf_sloc5_1_0+2
	clear	_ldexpf_sloc5_1_0+3
	mov	a, _ldexpf_sloc5_1_0+0
	mov	_ldexpf_sloc6_1_0+2, a
	mov	a, _ldexpf_sloc5_1_0+1
	mov	_ldexpf_sloc6_1_0+3, a
	clear	_ldexpf_sloc6_1_0+0
	clear	_ldexpf_sloc6_1_0+1
	mov	a, #7
00104$:
	sl	_ldexpf_sloc6_1_0+2
	slc	_ldexpf_sloc6_1_0+3
	dzsn	a
	goto	00104$
	mov	a, _ldexpf_fl_65536_26+0
	mov	_ldexpf_sloc7_1_0+0, a
	mov	a, _ldexpf_fl_65536_26+1
	mov	_ldexpf_sloc7_1_0+1, a
	mov	a, _ldexpf_fl_65536_26+2
	mov	_ldexpf_sloc7_1_0+2, a
	mov	a, _ldexpf_fl_65536_26+3
	mov	_ldexpf_sloc7_1_0+3, a
	mov	a, _ldexpf_sloc7_1_0+0
	mov	_ldexpf_sloc8_1_0+0, a
	mov	a, _ldexpf_sloc7_1_0+1
	mov	_ldexpf_sloc8_1_0+1, a
	mov	a, _ldexpf_sloc7_1_0+2
	and	a, #0x7f
	mov	_ldexpf_sloc8_1_0+2, a
	mov	a, _ldexpf_sloc7_1_0+3
	and	a, #0x80
	mov	_ldexpf_sloc8_1_0+3, a
	mov	a, _ldexpf_sloc6_1_0+0
	or	a, _ldexpf_sloc8_1_0+0
	mov	_ldexpf_sloc9_1_0+0, a
	mov	a, _ldexpf_sloc6_1_0+1
	or	a, _ldexpf_sloc8_1_0+1
	mov	_ldexpf_sloc9_1_0+1, a
	mov	a, _ldexpf_sloc6_1_0+2
	or	a, _ldexpf_sloc8_1_0+2
	mov	_ldexpf_sloc9_1_0+2, a
	mov	a, _ldexpf_sloc6_1_0+3
	or	a, _ldexpf_sloc8_1_0+3
	mov	_ldexpf_sloc9_1_0+3, a
	mov	a, _ldexpf_sloc9_1_0+0
	mov	_ldexpf_fl_65536_26+0, a
	mov	a, _ldexpf_sloc9_1_0+1
	mov	_ldexpf_fl_65536_26+1, a
	mov	a, _ldexpf_sloc9_1_0+2
	mov	_ldexpf_fl_65536_26+2, a
	mov	a, _ldexpf_sloc9_1_0+3
	mov	_ldexpf_fl_65536_26+3, a
;	../ldexpf.c: 45: return(fl.f);
	mov	a, _ldexpf_fl_65536_26+0
	mov	_ldexpf_sloc10_1_0+0, a
	mov	a, _ldexpf_fl_65536_26+1
	mov	_ldexpf_sloc10_1_0+1, a
	mov	a, _ldexpf_fl_65536_26+2
	mov	_ldexpf_sloc10_1_0+2, a
	mov	a, _ldexpf_fl_65536_26+3
	mov	_ldexpf_sloc10_1_0+3, a
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _ldexpf_sloc10_1_0+0
	idxm	p, a
	inc	p
	mov	a, _ldexpf_sloc10_1_0+1
	idxm	p, a
	inc	p
	mov	a, _ldexpf_sloc10_1_0+2
	idxm	p, a
	inc	p
	mov	a, _ldexpf_sloc10_1_0+3
	idxm	p, a
;	../ldexpf.c: 46: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
