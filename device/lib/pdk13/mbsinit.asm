;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module mbsinit
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbsinit_PARM_1
	.globl _mbsinit
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_mbsinit_PARM_1:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_mbsinit_sloc0_1_0:
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
;	../mbsinit.c: 31: int mbsinit(const mbstate_t *ps)
;	-----------------------------------------
;	 function mbsinit
;	-----------------------------------------
_mbsinit:
;	../mbsinit.c: 33: return(!ps || !ps->c[0] && !ps->c[1] && !ps->c[2]);
	mov	a, _mbsinit_PARM_1+0
	or	a, _mbsinit_PARM_1+1
	cneqsn	a, #0x00
	goto	00104$
	mov	a, _mbsinit_PARM_1+0
	mov	_mbsinit_sloc0_1_0+0, a
	mov	a, _mbsinit_PARM_1+1
	mov	_mbsinit_sloc0_1_0+1, a
	mov	a, _mbsinit_sloc0_1_0+0
	mov	p, a
	mov	a, _mbsinit_sloc0_1_0+1
	call	__gptrget
	ceqsn	a, #0x00
	goto	00103$
	mov	a, _mbsinit_sloc0_1_0+0
	add	a, #0x01
	mov	p, a
	mov	a, _mbsinit_sloc0_1_0+1
	addc	a
	call	__gptrget
	ceqsn	a, #0x00
	goto	00103$
	mov	a, _mbsinit_sloc0_1_0+0
	add	a, #0x02
	mov	p, a
	mov	a, _mbsinit_sloc0_1_0+1
	addc	a
	call	__gptrget
	cneqsn	a, #0x00
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
;	../mbsinit.c: 34: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
