;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module tolower
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tolower_PARM_1
	.globl _tolower
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_tolower_PARM_1:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_tolower_sloc0_1_0:
	.ds 2
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
;	../tolower.c: 33: int tolower (int c)
;	-----------------------------------------
;	 function tolower
;	-----------------------------------------
_tolower:
;	../tolower.c: 35: return (isupper (c) ? c + ('a' - 'A') : c);
	mov	a, _tolower_PARM_1+0
	mov	_tolower_sloc0_1_0+0, a
	mov	a, _tolower_PARM_1+1
	mov	_tolower_sloc0_1_0+1, a
;	./../../include/ctype.h: 80: return ((unsigned char)c >= 'A' && (unsigned char)c <= 'Z');
	mov	a, _tolower_sloc0_1_0+0
	ceqsn	a, #0x41
	nop
	t0sn	f, c
	goto	00104$
	ceqsn	a, #0x5b
	t1sn	f, c
	goto	00104$
;	../tolower.c: 35: return (isupper (c) ? c + ('a' - 'A') : c);
	mov	a, _tolower_sloc0_1_0+0
	add	a, #0x20
	mov	p, a
	mov	a, _tolower_sloc0_1_0+1
	addc	a
	goto	00105$
00104$:
	mov	a, _tolower_sloc0_1_0+0
	mov	p, a
	mov	a, _tolower_sloc0_1_0+1
00105$:
	xch	a, p
;	../tolower.c: 36: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
