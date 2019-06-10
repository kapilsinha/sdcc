;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module labs
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _labs_PARM_1
	.globl _labs
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_labs_PARM_1:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_labs_sloc0_1_0:
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
;	../labs.c: 63: long int labs(long int j)
;	-----------------------------------------
;	 function labs
;	-----------------------------------------
_labs:
;	../labs.c: 65: return (j < 0) ? -j : j;
	mov	a, _labs_PARM_1+3
	sub	a, #0x80
	t0sn	f, c
	goto	00103$
	mov	a, #0x00
	sub	a, _labs_PARM_1+0
	mov	_labs_sloc0_1_0+0, a
	mov	a, #0x00
	subc	a, _labs_PARM_1+1
	mov	_labs_sloc0_1_0+1, a
	mov	a, #0x00
	subc	a, _labs_PARM_1+2
	mov	_labs_sloc0_1_0+2, a
	mov	a, #0x00
	subc	a, _labs_PARM_1+3
	mov	_labs_sloc0_1_0+3, a
	goto	00104$
00103$:
	mov	a, _labs_PARM_1+0
	mov	_labs_sloc0_1_0+0, a
	mov	a, _labs_PARM_1+1
	mov	_labs_sloc0_1_0+1, a
	mov	a, _labs_PARM_1+2
	mov	_labs_sloc0_1_0+2, a
	mov	a, _labs_PARM_1+3
	mov	_labs_sloc0_1_0+3, a
00104$:
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _labs_sloc0_1_0+0
	idxm	p, a
	inc	p
	mov	a, _labs_sloc0_1_0+1
	idxm	p, a
	inc	p
	mov	a, _labs_sloc0_1_0+2
	idxm	p, a
	inc	p
	mov	a, _labs_sloc0_1_0+3
	idxm	p, a
;	../labs.c: 66: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
