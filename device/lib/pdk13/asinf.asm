;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module asinf
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asincosf
	.globl _asinf
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
;	../asinf.c: 36: float asinf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function asinf
;	-----------------------------------------
_asinf:
	push	af
	push	af
;	../asinf.c: 38: if (x == 1.0) return  HALF_PI;
	mov	a, sp
	add	a, #0xf4
	mov	p, a
	idxm	a, p
	mov	___fseq_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___fseq_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	___fseq_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	___fseq_PARM_1+3, a
	clear	___fseq_PARM_2+0
	clear	___fseq_PARM_2+1
	mov	a, #0x80
	mov	___fseq_PARM_2+2, a
	mov	a, #0x3f
	mov	___fseq_PARM_2+3, a
	call	___fseq
	cneqsn	a, #0x00
	goto	00108$
	mov	a, sp
	add	a, #0xf8
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, #0xdb
	idxm	p, a
	inc	p
	mov	a, #0x0f
	idxm	p, a
	inc	p
	mov	a, #0xc9
	idxm	p, a
	inc	p
	mov	a, #0x3f
	idxm	p, a
	goto	00110$
00108$:
;	../asinf.c: 39: else if (x ==-1.0) return -HALF_PI;
	mov	a, sp
	add	a, #0xf4
	mov	p, a
	idxm	a, p
	mov	___fseq_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___fseq_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	___fseq_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	___fseq_PARM_1+3, a
	clear	___fseq_PARM_2+0
	clear	___fseq_PARM_2+1
	mov	a, #0x80
	mov	___fseq_PARM_2+2, a
	mov	a, #0xbf
	mov	___fseq_PARM_2+3, a
	call	___fseq
	cneqsn	a, #0x00
	goto	00105$
	mov	a, sp
	add	a, #0xf8
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, #0xdb
	idxm	p, a
	inc	p
	mov	a, #0x0f
	idxm	p, a
	inc	p
	mov	a, #0xc9
	idxm	p, a
	inc	p
	mov	a, #0xbf
	idxm	p, a
	goto	00110$
00105$:
;	../asinf.c: 40: else if (x == 0.0) return 0.0;
	mov	a, sp
	add	a, #0xf7
	mov	p, a
	idxm	a, p
	and	a, #0x7f
	push	af
	mov	a, #-3
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	or	a, p
	push	af
	mov	a, sp
	add	a, #0xf3
	mov	p, a
	idxm	a, p
	mov	p, a
	pop	af
	or	a, p
	push	af
	mov	a, sp
	add	a, #0xf4
	mov	p, a
	idxm	a, p
	mov	p, a
	pop	af
	or	a, p
	ceqsn	a, #0x00
	goto	00102$
	mov	a, sp
	add	a, #0xf8
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
	goto	00110$
00102$:
;	../asinf.c: 41: else               return asincosf(x, false);
	mov	a, sp
	add	a, #0xf4
	mov	p, a
	idxm	a, p
	mov	_asincosf_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	_asincosf_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	_asincosf_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	_asincosf_PARM_1+3, a
	clear	_asincosf_PARM_2+0
	mov	a, sp
	add	a, #0xfc
	push	af
	call	_asincosf
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
00110$:
;	../asinf.c: 42: }
	mov	a, sp
	add	a, #-4
	mov	sp, a
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
