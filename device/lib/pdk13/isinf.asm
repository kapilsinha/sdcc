;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module isinf
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isinf_PARM_1
	.globl _isinf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_isinf_PARM_1:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_isinf_sloc0_1_0:
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
;	../isinf.c: 33: int isinf (float f)
;	-----------------------------------------
;	 function isinf
;	-----------------------------------------
_isinf:
;	../isinf.c: 35: unsigned long *pl = (unsigned long *) &f;
;	../isinf.c: 36: return *pl == 0x7f800000 || *pl == 0xff800000;
	mov	a, _isinf_PARM_1+0
	mov	_isinf_sloc0_1_0+0, a
	mov	a, _isinf_PARM_1+1
	mov	_isinf_sloc0_1_0+1, a
	mov	a, _isinf_PARM_1+2
	mov	_isinf_sloc0_1_0+2, a
	mov	a, _isinf_PARM_1+3
	mov	_isinf_sloc0_1_0+3, a
	mov	a, _isinf_sloc0_1_0+0
	ceqsn	a, #0x00
	goto	00114$
	mov	a, _isinf_sloc0_1_0+1
	ceqsn	a, #0x00
	goto	00114$
	mov	a, _isinf_sloc0_1_0+2
	ceqsn	a, #0x80
	goto	00114$
	mov	a, _isinf_sloc0_1_0+3
	cneqsn	a, #0x7f
	goto	00104$
00114$:
	mov	a, _isinf_sloc0_1_0+0
	ceqsn	a, #0x00
	goto	00115$
	mov	a, _isinf_sloc0_1_0+1
	ceqsn	a, #0x00
	goto	00115$
	mov	a, _isinf_sloc0_1_0+2
	ceqsn	a, #0x80
	goto	00115$
	mov	a, _isinf_sloc0_1_0+3
	cneqsn	a, #0xff
	goto	00104$
00115$:
	clear	p
	goto	00105$
00104$:
	mov	a, #0x01
	mov	p, a
00105$:
	mov	a, #0x00
	xch	a, p
;	../isinf.c: 37: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
