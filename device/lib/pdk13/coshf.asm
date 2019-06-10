;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module coshf
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincoshf
	.globl _coshf
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
;	../coshf.c: 36: float coshf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function coshf
;	-----------------------------------------
_coshf:
	push	af
	push	af
;	../coshf.c: 38: return sincoshf(x, 1);
	mov	a, sp
	add	a, #0xf4
	mov	p, a
	idxm	a, p
	mov	_sincoshf_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	_sincoshf_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	_sincoshf_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	_sincoshf_PARM_1+3, a
	mov	a, #0x01
	mov	_sincoshf_PARM_2+0, a
	mov	a, sp
	add	a, #0xfc
	push	af
	call	_sincoshf
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-4
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
	mov	a, #-5
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
	mov	a, #-6
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
	mov	a, #-7
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	inc	p
	idxm	p, a
;	../coshf.c: 39: }
	mov	a, sp
	add	a, #-4
	mov	sp, a
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
