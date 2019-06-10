;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module btowc
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _btowc_PARM_1
	.globl _btowc
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_btowc_PARM_1:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_btowc_sloc0_1_0:
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
;	../btowc.c: 35: wint_t btowc(int c)
;	-----------------------------------------
;	 function btowc
;	-----------------------------------------
_btowc:
;	../btowc.c: 37: if(c & 0x80)
	mov	a, _btowc_PARM_1+0
	and	a, #0x80
	cneqsn	a, #0x00
	goto	00102$
;	../btowc.c: 38: return WEOF;
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, #0xff
	idxm	p, a
	inc	p
	mov	a, #0xff
	idxm	p, a
	inc	p
	mov	a, #0xff
	idxm	p, a
	inc	p
	mov	a, #0xff
	idxm	p, a
	ret
00102$:
;	../btowc.c: 39: return c;
	mov	a, _btowc_PARM_1+0
	mov	_btowc_sloc0_1_0+0, a
	mov	a, _btowc_PARM_1+1
	mov	_btowc_sloc0_1_0+1, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	_btowc_sloc0_1_0+2, a
	mov	_btowc_sloc0_1_0+3, a
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _btowc_sloc0_1_0+0
	idxm	p, a
	inc	p
	mov	a, _btowc_sloc0_1_0+1
	idxm	p, a
	inc	p
	mov	a, _btowc_sloc0_1_0+2
	idxm	p, a
	inc	p
	mov	a, _btowc_sloc0_1_0+3
	idxm	p, a
;	../btowc.c: 40: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)