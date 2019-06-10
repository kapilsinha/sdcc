;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module cotf
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tancotf
	.globl _fabsf
	.globl _cotf
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
;	../cotf.c: 37: float cotf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function cotf
;	-----------------------------------------
_cotf:
	mov	a, sp
	add	a, #8
	mov	sp, a
;	../cotf.c: 41: y=fabsf(x);
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
	call	_fabsf
	mov	a, sp
	add	a, #-6
	mov	sp, a
	add	a, #0xf8
	mov	p, a
	idxm	a, p
	mov	___fslt_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___fslt_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	___fslt_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	___fslt_PARM_1+3, a
;	../cotf.c: 42: if (y<1.0E-30) //This one requires more thinking...
	mov	a, #0x60
	mov	___fslt_PARM_2+0, a
	mov	a, #0x42
	mov	___fslt_PARM_2+1, a
	mov	a, #0xa2
	mov	___fslt_PARM_2+2, a
	mov	a, #0x0d
	mov	___fslt_PARM_2+3, a
	call	___fslt
	cneqsn	a, #0x00
	goto	00105$
;	../cotf.c: 44: errno = ERANGE;
	mov	a, #0x22
	mov	_errno+0, a
	clear	_errno+1
;	../cotf.c: 45: if (x<0.0)
	mov	a, sp
	add	a, #0xf0
	mov	p, a
	idxm	a, p
	mov	___fslt_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___fslt_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	___fslt_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	___fslt_PARM_1+3, a
	clear	___fslt_PARM_2+0
	clear	___fslt_PARM_2+1
	clear	___fslt_PARM_2+2
	clear	___fslt_PARM_2+3
	call	___fslt
	cneqsn	a, #0x00
	goto	00102$
;	../cotf.c: 46: return -HUGE_VALF;
	mov	a, sp
	add	a, #0xf4
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, #0xff
	idxm	p, a
	inc	p
	mov	a, #0xff
	idxm	p, a
	inc	p
	mov	a, #0x7f
	idxm	p, a
	inc	p
	mov	a, #0xff
	idxm	p, a
	goto	00106$
00102$:
;	../cotf.c: 48: return +HUGE_VALF;
	mov	a, sp
	add	a, #0xf4
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, #0xff
	idxm	p, a
	inc	p
	mov	a, #0xff
	idxm	p, a
	inc	p
	mov	a, #0x7f
	idxm	p, a
	inc	p
	mov	a, #0x7f
	idxm	p, a
	goto	00106$
00105$:
;	../cotf.c: 50: return tancotf(x, 1);
	mov	a, sp
	add	a, #0xf0
	mov	p, a
	idxm	a, p
	mov	_tancotf_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	_tancotf_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	_tancotf_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	_tancotf_PARM_1+3, a
	mov	a, #0x01
	mov	_tancotf_PARM_2+0, a
	mov	a, sp
	add	a, #0xfc
	push	af
	call	_tancotf
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
00106$:
;	../cotf.c: 51: }
	mov	a, sp
	add	a, #-8
	mov	sp, a
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
