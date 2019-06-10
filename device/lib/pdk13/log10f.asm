;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module log10f
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _logf
	.globl _log10f
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
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
;	../log10f.c: 34: float log10f(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function log10f
;	-----------------------------------------
_log10f:
	mov	a, sp
	add	a, #8
	mov	sp, a
;	../log10f.c: 36: return logf(x)*0.4342944819;
	push	af
	push	af
	mov	a, sp
	add	a, #0xef
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #16
	xch	a, p
	idxm	p, a
	mov	a, #-17
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #16
	xch	a, p
	idxm	p, a
	mov	a, #-17
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #16
	xch	a, p
	idxm	p, a
	mov	a, #-17
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #16
	xch	a, p
	idxm	p, a
	mov	a, sp
	add	a, #0xf4
	push	af
	call	_logf
	mov	a, sp
	add	a, #-6
	mov	sp, a
	mov	a, #0xd9
	mov	___fsmul_PARM_1+0, a
	mov	a, #0x5b
	mov	___fsmul_PARM_1+1, a
	mov	a, #0xde
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x3e
	mov	___fsmul_PARM_1+3, a
	mov	a, sp
	add	a, #0xf8
	mov	p, a
	idxm	a, p
	mov	___fsmul_PARM_2+0, a
	inc	p
	idxm	a, p
	mov	___fsmul_PARM_2+1, a
	inc	p
	idxm	a, p
	mov	___fsmul_PARM_2+2, a
	inc	p
	idxm	a, p
	mov	___fsmul_PARM_2+3, a
	mov	a, sp
	add	a, #0xfc
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-8
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	idxm	p, a
	mov	a, sp
	add	a, #0xfd
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-9
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xfe
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-10
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xff
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-11
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	inc	p
	idxm	p, a
;	../log10f.c: 37: }
	mov	a, sp
	add	a, #-8
	mov	sp, a
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
