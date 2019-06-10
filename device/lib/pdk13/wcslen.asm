;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module wcslen
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wcslen_PARM_1
	.globl _wcslen
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_wcslen_PARM_1:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_wcslen_sloc0_1_0:
	.ds 2
_wcslen_sloc1_1_0:
	.ds 2
_wcslen_sloc2_1_0:
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
;	../wcslen.c: 31: size_t wcslen(const wchar_t *s)
;	-----------------------------------------
;	 function wcslen
;	-----------------------------------------
_wcslen:
;	../wcslen.c: 34: while (*s)
	clear	_wcslen_sloc0_1_0+0
	clear	_wcslen_sloc0_1_0+1
	mov	a, _wcslen_PARM_1+0
	mov	_wcslen_sloc1_1_0+0, a
	mov	a, _wcslen_PARM_1+1
	mov	_wcslen_sloc1_1_0+1, a
00101$:
	mov	a, _wcslen_sloc1_1_0+0
	mov	p, a
	mov	a, _wcslen_sloc1_1_0+1
	call	__gptrget
	mov	_wcslen_sloc2_1_0+0, a
	mov	a, _wcslen_sloc1_1_0+0
	mov	p, a
	mov	a, _wcslen_sloc1_1_0+1
	inc	p
	addc	a
	call	__gptrget
	mov	_wcslen_sloc2_1_0+1, a
	mov	a, _wcslen_sloc1_1_0+0
	mov	p, a
	mov	a, _wcslen_sloc1_1_0+1
	inc	p
	addc	a
	inc	p
	addc	a
	call	__gptrget
	mov	_wcslen_sloc2_1_0+2, a
	mov	a, _wcslen_sloc1_1_0+0
	mov	p, a
	mov	a, _wcslen_sloc1_1_0+1
	xch	a, p
	add	a, #3
	xch	a, p
	addc	a
	call	__gptrget
	mov	_wcslen_sloc2_1_0+3, a
	mov	a, _wcslen_sloc2_1_0+0
	or	a, _wcslen_sloc2_1_0+1
	or	a, _wcslen_sloc2_1_0+2
	or	a, _wcslen_sloc2_1_0+3
	cneqsn	a, #0x00
	goto	00103$
;	../wcslen.c: 36: n++;
	inc	_wcslen_sloc0_1_0+0
	addc	_wcslen_sloc0_1_0+1
;	../wcslen.c: 37: s++;
	mov	a, #0x04
	add	_wcslen_sloc1_1_0+0, a
	addc	_wcslen_sloc1_1_0+1
	goto	00101$
00103$:
;	../wcslen.c: 40: return n;
	mov	a, _wcslen_sloc0_1_0+1
	mov	p, a
	mov	a, _wcslen_sloc0_1_0+0
;	../wcslen.c: 41: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
