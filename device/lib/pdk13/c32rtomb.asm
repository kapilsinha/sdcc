;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module c32rtomb
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctomb
	.globl _c32rtomb_PARM_3
	.globl _c32rtomb_PARM_2
	.globl _c32rtomb_PARM_1
	.globl _c32rtomb
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_c32rtomb_PARM_1:
	.ds 2
_c32rtomb_PARM_2:
	.ds 4
_c32rtomb_PARM_3:
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
;	../c32rtomb.c: 33: size_t c32rtomb(char *restrict s, char32_t c32, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function c32rtomb
;	-----------------------------------------
_c32rtomb:
;	../c32rtomb.c: 36: return(wctomb(s, c32));
	mov	a, _c32rtomb_PARM_1+0
	mov	_wctomb_PARM_1+0, a
	mov	a, _c32rtomb_PARM_1+1
	mov	_wctomb_PARM_1+1, a
	mov	a, _c32rtomb_PARM_2+0
	mov	_wctomb_PARM_2+0, a
	mov	a, _c32rtomb_PARM_2+1
	mov	_wctomb_PARM_2+1, a
	mov	a, _c32rtomb_PARM_2+2
	mov	_wctomb_PARM_2+2, a
	mov	a, _c32rtomb_PARM_2+3
	mov	_wctomb_PARM_2+3, a
	call	_wctomb
;	../c32rtomb.c: 37: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
