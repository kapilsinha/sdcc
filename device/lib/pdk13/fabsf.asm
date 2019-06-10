;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module fabsf
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
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
;	../fabsf.c: 34: float fabsf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function fabsf
;	-----------------------------------------
_fabsf:
	mov	a, sp
	add	a, #18
;	../fabsf.c: 38: fl.f = x;
	mov	sp, a
	add	a, #0xfb
	mov	p, a
	mov	a, sp
	add	a, #0xe6
	mov	p, a
	idxm	a, p
	idxm	p, a
	inc	p
	idxm	a, p
	inc	p
	idxm	p, a
	inc	p
	idxm	a, p
	inc	p
	inc	p
	idxm	p, a
	inc	p
	idxm	a, p
	inc	p
	inc	p
	inc	p
	idxm	p, a
;	../fabsf.c: 39: fl.l &= 0x7fffffff;
	mov	a, sp
	add	a, #0xfb
	xch	a, p
	add	a, #5
	xch	a, p
	idxm	p, a
	idxm	a, p
	mov	p, a
	idxm	a, p
	xch	a, p
	mov	a, sp
	add	a, #0xef
	xch	a, p
	idxm	p, a
	inc	p
	idxm	a, p
	inc	p
	idxm	p, a
	inc	p
	idxm	a, p
	inc	p
	idxm	p, a
	inc	p
	idxm	a, p
	inc	p
	idxm	p, a
	mov	a, #-3
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #4
	xch	a, p
	idxm	p, a
	mov	a, #-3
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #4
	xch	a, p
	idxm	p, a
	mov	a, #-3
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #4
	xch	a, p
	idxm	p, a
	mov	a, #-3
	add	p, a
	idxm	a, p
	and	a, #0x7f
	xch	a, p
	add	a, #4
	xch	a, p
	idxm	p, a
	mov	a, #-3
	add	p, a
	idxm	a, p
	push	af
	mov	a, #-5
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	idxm	p, a
	mov	a, sp
	add	a, #0xf4
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-6
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xf5
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
	idxm	p, a
	mov	a, sp
	add	a, #0xf6
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-8
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	inc	p
	idxm	p, a
;	../fabsf.c: 40: return fl.f;
	mov	a, sp
	add	a, #0xfb
	mov	p, a
	idxm	a, p
	xch	a, p
	mov	a, sp
	add	a, #0xf7
	xch	a, p
	idxm	p, a
	inc	p
	idxm	a, p
	inc	p
	idxm	p, a
	inc	p
	idxm	a, p
	inc	p
	idxm	p, a
	inc	p
	idxm	a, p
	inc	p
	idxm	p, a
	mov	a, #-3
	add	p, a
	idxm	a, p
	push	af
	mov	a, #-13
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	idxm	p, a
	mov	a, sp
	add	a, #0xf8
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-14
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xf9
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-15
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xfa
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-16
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	inc	p
	idxm	p, a
;	../fabsf.c: 41: }
	mov	a, sp
	add	a, #-18
	mov	sp, a
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
