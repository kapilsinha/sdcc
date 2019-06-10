;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module wcrtomb
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctomb
	.globl _wcrtomb_PARM_3
	.globl _wcrtomb_PARM_2
	.globl _wcrtomb_PARM_1
	.globl _wcrtomb
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_wcrtomb_PARM_1:
	.ds 2
_wcrtomb_PARM_2:
	.ds 4
_wcrtomb_PARM_3:
	.ds 2
_wcrtomb_sloc0_1_0:
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
;	../wcrtomb.c: 34: size_t wcrtomb(char *restrict s, wchar_t wc, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function wcrtomb
;	-----------------------------------------
_wcrtomb:
;	../wcrtomb.c: 40: ret = wctomb(s, wc);
	mov	a, _wcrtomb_PARM_1+0
	mov	_wctomb_PARM_1+0, a
	mov	a, _wcrtomb_PARM_1+1
	mov	_wctomb_PARM_1+1, a
	mov	a, _wcrtomb_PARM_2+0
	mov	_wctomb_PARM_2+0, a
	mov	a, _wcrtomb_PARM_2+1
	mov	_wctomb_PARM_2+1, a
	mov	a, _wcrtomb_PARM_2+2
	mov	_wctomb_PARM_2+2, a
	mov	a, _wcrtomb_PARM_2+3
	mov	_wctomb_PARM_2+3, a
	call	_wctomb
	mov	_wcrtomb_sloc0_1_0+0, a
	mov	a, p
	mov	_wcrtomb_sloc0_1_0+1, a
;	../wcrtomb.c: 42: if(ret == (size_t)(-1))
	mov	a, _wcrtomb_sloc0_1_0+0
	ceqsn	a, #0xff
	goto	00102$
	mov	a, _wcrtomb_sloc0_1_0+1
	ceqsn	a, #0xff
	goto	00102$
;	../wcrtomb.c: 43: errno = EILSEQ;
	mov	a, #0x54
	mov	_errno+0, a
	clear	_errno+1
00102$:
;	../wcrtomb.c: 45: return(ret);
	mov	a, _wcrtomb_sloc0_1_0+1
	mov	p, a
	mov	a, _wcrtomb_sloc0_1_0+0
;	../wcrtomb.c: 46: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
