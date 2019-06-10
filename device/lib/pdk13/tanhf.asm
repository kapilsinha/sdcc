;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module tanhf
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _expf
	.globl _tanhf
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
;	../tanhf.c: 50: float tanhf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function tanhf
;	-----------------------------------------
_tanhf:
	mov	a, sp
	add	a, #78
	mov	sp, a
;	../tanhf.c: 54: f=fabsf(x);
	push	af
	push	af
	mov	a, sp
	add	a, #0xa9
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #86
	xch	a, p
	idxm	p, a
	mov	a, #-87
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #86
	xch	a, p
	idxm	p, a
	mov	a, #-87
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #86
	xch	a, p
	idxm	p, a
	mov	a, #-87
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #86
	xch	a, p
	idxm	p, a
	mov	a, sp
	add	a, #0xae
	push	af
	call	_fabsf
	mov	a, sp
	add	a, #-6
	mov	sp, a
	add	a, #0xb2
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #72
	xch	a, p
	idxm	p, a
	mov	a, #-71
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #72
	xch	a, p
	idxm	p, a
	mov	a, #-71
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #72
	xch	a, p
	idxm	p, a
	mov	a, #-71
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #72
	xch	a, p
	idxm	p, a
;	../tanhf.c: 55: if(f>SBIG) r=1.0;
	mov	a, #0xb0
	mov	___fslt_PARM_1+0, a
	mov	a, #0x2c
	mov	___fslt_PARM_1+1, a
	mov	a, #0x10
	mov	___fslt_PARM_1+2, a
	mov	a, #0x41
	mov	___fslt_PARM_1+3, a
	mov	a, #-3
	add	p, a
	idxm	a, p
	mov	___fslt_PARM_2+0, a
	inc	p
	idxm	a, p
	mov	___fslt_PARM_2+1, a
	inc	p
	idxm	a, p
	mov	___fslt_PARM_2+2, a
	inc	p
	idxm	a, p
	mov	___fslt_PARM_2+3, a
	call	___fslt
	xch	a, p
	mov	a, sp
	add	a, #0xfe
	xch	a, p
	idxm	p, a
	idxm	a, p
	cneqsn	a, #0x00
	goto	00108$
	mov	a, #0x00
	xch	a, p
	add	a, #-12
	xch	a, p
	idxm	p, a
	mov	a, #0x00
	inc	p
	idxm	p, a
	mov	a, #0x80
	inc	p
	idxm	p, a
	mov	a, #0x3f
	inc	p
	idxm	p, a
	goto	00109$
00108$:
;	../tanhf.c: 56: else if(f>K1)
	mov	a, #0x54
	mov	___fslt_PARM_1+0, a
	mov	a, #0x9f
	mov	___fslt_PARM_1+1, a
	mov	a, #0x0c
	mov	___fslt_PARM_1+2, a
	mov	a, #0x3f
	mov	___fslt_PARM_1+3, a
	mov	a, sp
	add	a, #0xfa
	mov	p, a
	idxm	a, p
	mov	___fslt_PARM_2+0, a
	inc	p
	idxm	a, p
	mov	___fslt_PARM_2+1, a
	inc	p
	idxm	a, p
	mov	___fslt_PARM_2+2, a
	inc	p
	idxm	a, p
	mov	___fslt_PARM_2+3, a
	call	___fslt
	cneqsn	a, #0x00
	goto	00105$
;	../tanhf.c: 58: r=0.5-1.0/(expf(f+f)+1.0);
	mov	a, sp
	add	a, #0xfa
	mov	p, a
	idxm	a, p
	mov	___fsadd_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_1+3, a
	mov	a, #-3
	add	p, a
	idxm	a, p
	mov	___fsadd_PARM_2+0, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_2+1, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_2+2, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_2+3, a
	mov	a, sp
	add	a, #0xb6
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	push	af
	push	af
	mov	a, sp
	add	a, #0xb5
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #74
	xch	a, p
	idxm	p, a
	mov	a, #-75
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #74
	xch	a, p
	idxm	p, a
	mov	a, #-75
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #74
	xch	a, p
	idxm	p, a
	mov	a, #-75
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #74
	xch	a, p
	idxm	p, a
	mov	a, sp
	add	a, #0xb6
	push	af
	call	_expf
	mov	a, sp
	add	a, #-6
	mov	sp, a
	add	a, #0xba
	mov	p, a
	idxm	a, p
	mov	___fsadd_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_1+3, a
	clear	___fsadd_PARM_2+0
	clear	___fsadd_PARM_2+1
	mov	a, #0x80
	mov	___fsadd_PARM_2+2, a
	mov	a, #0x3f
	mov	___fsadd_PARM_2+3, a
	mov	a, sp
	add	a, #0xbe
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	clear	___fsdiv_PARM_1+0
	clear	___fsdiv_PARM_1+1
	mov	a, #0x80
	mov	___fsdiv_PARM_1+2, a
	mov	a, #0x3f
	mov	___fsdiv_PARM_1+3, a
	mov	a, sp
	add	a, #0xbe
	mov	p, a
	idxm	a, p
	mov	___fsdiv_PARM_2+0, a
	inc	p
	idxm	a, p
	mov	___fsdiv_PARM_2+1, a
	inc	p
	idxm	a, p
	mov	___fsdiv_PARM_2+2, a
	inc	p
	idxm	a, p
	mov	___fsdiv_PARM_2+3, a
	mov	a, sp
	add	a, #0xc2
	push	af
	call	___fsdiv
	mov	a, sp
	add	a, #-2
	mov	sp, a
	clear	___fssub_PARM_1+0
	clear	___fssub_PARM_1+1
	clear	___fssub_PARM_1+2
	mov	a, #0x3f
	mov	___fssub_PARM_1+3, a
	mov	a, sp
	add	a, #0xc2
	mov	p, a
	idxm	a, p
	mov	___fssub_PARM_2+0, a
	inc	p
	idxm	a, p
	mov	___fssub_PARM_2+1, a
	inc	p
	idxm	a, p
	mov	___fssub_PARM_2+2, a
	inc	p
	idxm	a, p
	mov	___fssub_PARM_2+3, a
	mov	a, sp
	add	a, #0xc6
	push	af
	call	___fssub
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xc6
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #48
	xch	a, p
	idxm	p, a
	mov	a, #-47
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #48
	xch	a, p
	idxm	p, a
	mov	a, #-47
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #48
	xch	a, p
	idxm	p, a
	mov	a, #-47
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #48
	xch	a, p
	idxm	p, a
;	../tanhf.c: 59: r+=r;
	mov	a, #-3
	add	p, a
	idxm	a, p
	mov	___fsadd_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_1+3, a
	mov	a, #-3
	add	p, a
	idxm	a, p
	mov	___fsadd_PARM_2+0, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_2+1, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_2+2, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_2+3, a
	mov	a, sp
	add	a, #0xca
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xca
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #40
	xch	a, p
	idxm	p, a
	mov	a, #-39
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #40
	xch	a, p
	idxm	p, a
	mov	a, #-39
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #40
	xch	a, p
	idxm	p, a
	mov	a, #-39
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #40
	xch	a, p
	idxm	p, a
	goto	00109$
00105$:
;	../tanhf.c: 61: else if(f<EPS) r=f;
	mov	a, sp
	add	a, #0xfa
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
	mov	a, #0x80
	mov	___fslt_PARM_2+2, a
	mov	a, #0x39
	mov	___fslt_PARM_2+3, a
	call	___fslt
	cneqsn	a, #0x00
	goto	00102$
	mov	a, sp
	add	a, #0xfa
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #-8
	xch	a, p
	idxm	p, a
	mov	a, #9
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #-8
	xch	a, p
	idxm	p, a
	mov	a, #9
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #-8
	xch	a, p
	idxm	p, a
	mov	a, #9
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #-8
	xch	a, p
	idxm	p, a
	goto	00109$
00102$:
;	../tanhf.c: 64: g=f*f;
	mov	a, sp
	add	a, #0xfa
	mov	p, a
	idxm	a, p
	mov	___fsmul_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___fsmul_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	___fsmul_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	___fsmul_PARM_1+3, a
	mov	a, #-3
	add	p, a
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
	add	a, #0xce
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xce
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #32
	xch	a, p
	idxm	p, a
	mov	a, #-31
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #32
	xch	a, p
	idxm	p, a
	mov	a, #-31
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #32
	xch	a, p
	idxm	p, a
	mov	a, #-31
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #32
	xch	a, p
	idxm	p, a
;	../tanhf.c: 65: r=f+f*(P(g)/Q(g));
	mov	a, #0xb2
	mov	___fsmul_PARM_1+0, a
	mov	a, #0x11
	mov	___fsmul_PARM_1+1, a
	mov	a, #0x7b
	mov	___fsmul_PARM_1+2, a
	mov	a, #0xbb
	mov	___fsmul_PARM_1+3, a
	mov	a, #-3
	add	p, a
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
	add	a, #0xd2
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xd2
	mov	p, a
	idxm	a, p
	mov	___fsadd_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_1+3, a
	mov	a, #0xc6
	mov	___fsadd_PARM_2+0, a
	mov	a, #0xe2
	mov	___fsadd_PARM_2+1, a
	mov	a, #0x52
	mov	___fsadd_PARM_2+2, a
	mov	a, #0xbf
	mov	___fsadd_PARM_2+3, a
	mov	a, sp
	add	a, #0xd6
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xd6
	mov	p, a
	idxm	a, p
	mov	___fsmul_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___fsmul_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	___fsmul_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	___fsmul_PARM_1+3, a
	mov	a, #21
	add	p, a
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
	add	a, #0xda
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xee
	mov	p, a
	idxm	a, p
	mov	___fsadd_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_1+3, a
	mov	a, #0x1a
	mov	___fsadd_PARM_2+0, a
	mov	a, #0x2a
	mov	___fsadd_PARM_2+1, a
	mov	a, #0x1e
	mov	___fsadd_PARM_2+2, a
	mov	a, #0x40
	mov	___fsadd_PARM_2+3, a
	mov	a, sp
	add	a, #0xde
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xda
	mov	p, a
	idxm	a, p
	mov	___fsdiv_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___fsdiv_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	___fsdiv_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	___fsdiv_PARM_1+3, a
	inc	p
	idxm	a, p
	mov	___fsdiv_PARM_2+0, a
	inc	p
	idxm	a, p
	mov	___fsdiv_PARM_2+1, a
	inc	p
	idxm	a, p
	mov	___fsdiv_PARM_2+2, a
	inc	p
	idxm	a, p
	mov	___fsdiv_PARM_2+3, a
	mov	a, sp
	add	a, #0xe2
	push	af
	call	___fsdiv
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xfa
	mov	p, a
	idxm	a, p
	mov	___fsmul_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___fsmul_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	___fsmul_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	___fsmul_PARM_1+3, a
	mov	a, #-27
	add	p, a
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
	add	a, #0xe6
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xfa
	mov	p, a
	idxm	a, p
	mov	___fsadd_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_1+3, a
	mov	a, #-23
	add	p, a
	idxm	a, p
	mov	___fsadd_PARM_2+0, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_2+1, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_2+2, a
	inc	p
	idxm	a, p
	mov	___fsadd_PARM_2+3, a
	mov	a, sp
	add	a, #0xea
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xea
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #8
	xch	a, p
	idxm	p, a
	mov	a, #-7
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #8
	xch	a, p
	idxm	p, a
	mov	a, #-7
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #8
	xch	a, p
	idxm	p, a
	mov	a, #-7
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #8
	xch	a, p
	idxm	p, a
00109$:
;	../tanhf.c: 67: if(x<0.0) r=-r;
	mov	a, sp
	add	a, #0xaa
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
	goto	00111$
	mov	a, sp
	add	a, #0xf2
	mov	p, a
	idxm	a, p
	idxm	p, a
	inc	p
	idxm	a, p
	idxm	p, a
	inc	p
	idxm	a, p
	idxm	p, a
	inc	p
	idxm	a, p
	xor	a, #0x80
	idxm	p, a
00111$:
;	../tanhf.c: 68: return r;
	mov	a, sp
	add	a, #0xf2
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-68
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	idxm	p, a
	mov	a, sp
	add	a, #0xf3
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-69
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xf4
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-70
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xf5
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-71
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	inc	p
	idxm	p, a
;	../tanhf.c: 69: }
	mov	a, sp
	add	a, #-78
	mov	sp, a
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
