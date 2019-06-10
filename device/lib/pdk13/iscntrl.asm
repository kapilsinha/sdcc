;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module iscntrl
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _iscntrl_PARM_1
	.globl _iscntrl
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_iscntrl_PARM_1:
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
;	../iscntrl.c: 33: int iscntrl (int c)
;	-----------------------------------------
;	 function iscntrl
;	-----------------------------------------
_iscntrl:
;	../iscntrl.c: 35: return (c < ' ' || c == 0x7f);
	mov	a, _iscntrl_PARM_1+0
	sub	a, #0x20
	mov	a, _iscntrl_PARM_1+1
	subc	a
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t0sn	f, c
	goto	00104$
	mov	a, _iscntrl_PARM_1+0
	ceqsn	a, #0x7f
	goto	00114$
	mov	a, _iscntrl_PARM_1+1
	cneqsn	a, #0x00
	goto	00104$
00114$:
	clear	p
	goto	00105$
00104$:
	mov	a, #0x01
	mov	p, a
00105$:
	mov	a, #0x00
	xch	a, p
;	../iscntrl.c: 36: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
