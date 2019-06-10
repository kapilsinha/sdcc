;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module wctob
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctob_PARM_1
	.globl _wctob
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_wctob_PARM_1:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_wctob_sloc0_1_0:
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
;	../wctob.c: 35: int wctob(wint_t c)
;	-----------------------------------------
;	 function wctob
;	-----------------------------------------
_wctob:
;	../wctob.c: 37: if(c & 0xffffff80)
	mov	a, _wctob_PARM_1+0
	and	a, #0x80
	mov	_wctob_sloc0_1_0+0, a
	mov	a, _wctob_PARM_1+1
	mov	_wctob_sloc0_1_0+1, a
	mov	a, _wctob_PARM_1+2
	mov	_wctob_sloc0_1_0+2, a
	mov	a, _wctob_PARM_1+3
	mov	_wctob_sloc0_1_0+3, a
	mov	a, _wctob_sloc0_1_0+0
	or	a, _wctob_sloc0_1_0+1
	or	a, _wctob_sloc0_1_0+2
	or	a, _wctob_sloc0_1_0+3
	cneqsn	a, #0x00
	goto	00102$
;	../wctob.c: 38: return WEOF;
	mov	a, #0xff
	mov	p, a
	ret	#0xff
00102$:
;	../wctob.c: 39: return c;
	mov	a, _wctob_PARM_1+1
	mov	p, a
	mov	a, _wctob_PARM_1+0
;	../wctob.c: 40: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
