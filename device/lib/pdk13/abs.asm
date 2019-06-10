;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module abs
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _abs_PARM_1
	.globl _abs
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_abs_PARM_1:
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
;	../abs.c: 54: int abs(int j)
;	-----------------------------------------
;	 function abs
;	-----------------------------------------
_abs:
;	../abs.c: 56: return (j < 0) ? -j : j;
	mov	a, _abs_PARM_1+1
	sub	a, #0x80
	t0sn	f, c
	goto	00103$
	mov	a, #0x00
	sub	a, _abs_PARM_1+0
	mov	p, a
	mov	a, #0x00
	subc	a, _abs_PARM_1+1
	goto	00104$
00103$:
	mov	a, _abs_PARM_1+0
	mov	p, a
	mov	a, _abs_PARM_1+1
00104$:
	xch	a, p
;	../abs.c: 57: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
