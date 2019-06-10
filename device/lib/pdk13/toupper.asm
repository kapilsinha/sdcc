;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module toupper
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _toupper_PARM_1
	.globl _toupper
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_toupper_PARM_1:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_toupper_sloc0_1_0:
	.ds 2
_toupper_sloc1_1_0:
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
;	../toupper.c: 33: int toupper (int c)
;	-----------------------------------------
;	 function toupper
;	-----------------------------------------
_toupper:
;	../toupper.c: 35: return (islower (c) ? c + ('A' - 'a') : c);
	mov	a, _toupper_PARM_1+0
	mov	_toupper_sloc0_1_0+0, a
	mov	a, _toupper_PARM_1+1
	mov	_toupper_sloc0_1_0+1, a
;	./../../include/ctype.h: 71: return ((unsigned char)c >= 'a' && (unsigned char)c <= 'z');
	mov	a, _toupper_sloc0_1_0+0
	ceqsn	a, #0x61
	nop
	t0sn	f, c
	goto	00104$
	ceqsn	a, #0x7b
	t1sn	f, c
	goto	00104$
;	../toupper.c: 35: return (islower (c) ? c + ('A' - 'a') : c);
	mov	a, _toupper_sloc0_1_0+0
	add	a, #0xe0
	mov	_toupper_sloc1_1_0+0, a
	mov	a, _toupper_sloc0_1_0+1
	addc	a
	add	a, #0xff
	mov	_toupper_sloc1_1_0+1, a
	goto	00105$
00104$:
	mov	a, _toupper_sloc0_1_0+0
	mov	_toupper_sloc1_1_0+0, a
	mov	a, _toupper_sloc0_1_0+1
	mov	_toupper_sloc1_1_0+1, a
00105$:
	mov	a, _toupper_sloc1_1_0+1
	mov	p, a
	mov	a, _toupper_sloc1_1_0+0
;	../toupper.c: 36: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
