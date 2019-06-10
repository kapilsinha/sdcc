;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module isxdigit
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isxdigit_PARM_1
	.globl _isxdigit
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_isxdigit_PARM_1:
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
;	../isxdigit.c: 33: int isxdigit (int c)
;	-----------------------------------------
;	 function isxdigit
;	-----------------------------------------
_isxdigit:
;	../isxdigit.c: 35: return (c >= '0' && c <= '9' || c >= 'a' && c <= 'f' || c >= 'A' && c <= 'F');
	mov	a, _isxdigit_PARM_1+0
	sub	a, #0x30
	mov	a, _isxdigit_PARM_1+1
	subc	a
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t0sn	f, c
	goto	00111$
	mov	a, #0x39
	sub	a, _isxdigit_PARM_1+0
	mov	a, #0x00
	subc	a, _isxdigit_PARM_1+1
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t1sn	f, c
	goto	00104$
00111$:
	mov	a, _isxdigit_PARM_1+0
	sub	a, #0x61
	mov	a, _isxdigit_PARM_1+1
	subc	a
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t0sn	f, c
	goto	00108$
	mov	a, #0x66
	sub	a, _isxdigit_PARM_1+0
	mov	a, #0x00
	subc	a, _isxdigit_PARM_1+1
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t1sn	f, c
	goto	00104$
00108$:
	mov	a, _isxdigit_PARM_1+0
	sub	a, #0x41
	mov	a, _isxdigit_PARM_1+1
	subc	a
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t0sn	f, c
	goto	00103$
	mov	a, #0x46
	sub	a, _isxdigit_PARM_1+0
	mov	a, #0x00
	subc	a, _isxdigit_PARM_1+1
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
;	../isxdigit.c: 36: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
