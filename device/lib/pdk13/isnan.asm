;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module isnan
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isnan_PARM_1
	.globl _isnan
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_isnan_PARM_1:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_isnan_sloc0_1_0:
	.ds 4
_isnan_sloc1_1_0:
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
;	../isnan.c: 33: int isnan (float f)
;	-----------------------------------------
;	 function isnan
;	-----------------------------------------
_isnan:
;	../isnan.c: 35: unsigned long *pl = (unsigned long *) &f;
;	../isnan.c: 37: return (*pl & 0x7fffffff) > 0x7f800000;
	mov	a, _isnan_PARM_1+0
	mov	_isnan_sloc0_1_0+0, a
	mov	a, _isnan_PARM_1+1
	mov	_isnan_sloc0_1_0+1, a
	mov	a, _isnan_PARM_1+2
	mov	_isnan_sloc0_1_0+2, a
	mov	a, _isnan_PARM_1+3
	mov	_isnan_sloc0_1_0+3, a
	mov	a, _isnan_sloc0_1_0+0
	mov	_isnan_sloc1_1_0+0, a
	mov	a, _isnan_sloc0_1_0+1
	mov	_isnan_sloc1_1_0+1, a
	mov	a, _isnan_sloc0_1_0+2
	mov	_isnan_sloc1_1_0+2, a
	mov	a, _isnan_sloc0_1_0+3
	and	a, #0x7f
	mov	_isnan_sloc1_1_0+3, a
	mov	a, #0x00
	sub	a, _isnan_sloc1_1_0+0
	mov	a, #0x00
	subc	a, _isnan_sloc1_1_0+1
	mov	a, #0x80
	subc	a, _isnan_sloc1_1_0+2
	mov	a, #0x7f
	subc	a, _isnan_sloc1_1_0+3
	mov	a, #0x00
	slc	a
	clear	p
;	../isnan.c: 38: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
