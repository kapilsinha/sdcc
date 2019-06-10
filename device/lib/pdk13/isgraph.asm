;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module isgraph
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isgraph_PARM_1
	.globl _isgraph
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_isgraph_PARM_1:
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
;	../isgraph.c: 33: int isgraph (int c)
;	-----------------------------------------
;	 function isgraph
;	-----------------------------------------
_isgraph:
;	../isgraph.c: 35: return (c > ' ' && c <= '~');
	mov	a, #0x20
	sub	a, _isgraph_PARM_1+0
	mov	a, #0x00
	subc	a, _isgraph_PARM_1+1
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t1sn	f, c
	goto	00103$
	mov	a, #0x7e
	sub	a, _isgraph_PARM_1+0
	mov	a, #0x00
	subc	a, _isgraph_PARM_1+1
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t1sn	f, c
	goto	00104$
00103$:
	clear	p
	goto	00105$
00104$:
	mov	a, #0x01
	mov	p, a
00105$:
	mov	a, #0x00
	xch	a, p
;	../isgraph.c: 36: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
