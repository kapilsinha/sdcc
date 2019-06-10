;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module atanf
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _atanf
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
;	../atanf.c: 55: float atanf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function atanf
;	-----------------------------------------
_atanf:
	mov	a, sp
	add	a, #90
	mov	sp, a
;	../atanf.c: 58: int n=0;
	mov	a, #0x00
	xch	a, p
	mov	a, sp
	add	a, #0xfe
	xch	a, p
	idxm	p, a
	mov	a, #0x00
	inc	p
	idxm	p, a
;	../atanf.c: 61: f=fabsf(x);
	push	af
	push	af
	mov	a, #-94
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #98
	xch	a, p
	idxm	p, a
	mov	a, #-99
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #98
	xch	a, p
	idxm	p, a
	mov	a, #-99
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #98
	xch	a, p
	idxm	p, a
	mov	a, #-99
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #98
	xch	a, p
	idxm	p, a
	mov	a, sp
	add	a, #0xa2
	push	af
	call	_fabsf
	mov	a, sp
	add	a, #-6
	mov	sp, a
	add	a, #0xa6
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #68
	xch	a, p
	idxm	p, a
	mov	a, #-67
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #68
	xch	a, p
	idxm	p, a
	mov	a, #-67
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #68
	xch	a, p
	idxm	p, a
	mov	a, #-67
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #68
	xch	a, p
	idxm	p, a
;	../atanf.c: 62: if(f>1.0)
	clear	___fslt_PARM_1+0
	clear	___fslt_PARM_1+1
	mov	a, #0x80
	mov	___fslt_PARM_1+2, a
	mov	a, #0x3f
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
	cneqsn	a, #0x00
	goto	00102$
;	../atanf.c: 64: f=1.0/f;
	clear	___fsdiv_PARM_1+0
	clear	___fsdiv_PARM_1+1
	mov	a, #0x80
	mov	___fsdiv_PARM_1+2, a
	mov	a, #0x3f
	mov	___fsdiv_PARM_1+3, a
	mov	a, sp
	add	a, #0xea
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
	add	a, #0xaa
	push	af
	call	___fsdiv
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xaa
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #64
	xch	a, p
	idxm	p, a
	mov	a, #-63
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #64
	xch	a, p
	idxm	p, a
	mov	a, #-63
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #64
	xch	a, p
	idxm	p, a
	mov	a, #-63
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #64
	xch	a, p
	idxm	p, a
;	../atanf.c: 65: n=2;
	mov	a, #0x02
	xch	a, p
	add	a, #17
	xch	a, p
	idxm	p, a
	mov	a, #0x00
	inc	p
	idxm	p, a
00102$:
;	../atanf.c: 67: if(f>K1)
	mov	a, #0xa3
	mov	___fslt_PARM_1+0, a
	mov	a, #0x30
	mov	___fslt_PARM_1+1, a
	mov	a, #0x89
	mov	___fslt_PARM_1+2, a
	mov	a, #0x3e
	mov	___fslt_PARM_1+3, a
	mov	a, sp
	add	a, #0xea
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
	goto	00104$
;	../atanf.c: 69: f=((K2*f-1.0)+f)/(K3+f);
	mov	a, #0xaf
	mov	___fsmul_PARM_1+0, a
	mov	a, #0x67
	mov	___fsmul_PARM_1+1, a
	mov	a, #0x3b
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x3f
	mov	___fsmul_PARM_1+3, a
	mov	a, sp
	add	a, #0xea
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
	add	a, #0xae
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xae
	mov	p, a
	idxm	a, p
	mov	___fssub_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___fssub_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	___fssub_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	___fssub_PARM_1+3, a
	clear	___fssub_PARM_2+0
	clear	___fssub_PARM_2+1
	mov	a, #0x80
	mov	___fssub_PARM_2+2, a
	mov	a, #0x3f
	mov	___fssub_PARM_2+3, a
	mov	a, sp
	add	a, #0xb2
	push	af
	call	___fssub
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xb2
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
	mov	a, #53
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
	add	a, #0xea
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
	mov	a, #0xd7
	mov	___fsadd_PARM_2+0, a
	mov	a, #0xb3
	mov	___fsadd_PARM_2+1, a
	mov	a, #0xdd
	mov	___fsadd_PARM_2+2, a
	mov	a, #0x3f
	mov	___fsadd_PARM_2+3, a
	mov	a, sp
	add	a, #0xba
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xb6
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
	add	a, #0xbe
	push	af
	call	___fsdiv
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xbe
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #44
	xch	a, p
	idxm	p, a
	mov	a, #-43
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #44
	xch	a, p
	idxm	p, a
	mov	a, #-43
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #44
	xch	a, p
	idxm	p, a
	mov	a, #-43
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #44
	xch	a, p
	idxm	p, a
;	../atanf.c: 73: n++;
	mov	a, #17
	add	p, a
	idxm	a, p
	add	a, #0x01
	idxm	p, a
	push	af
	inc	p
	pop	af
	idxm	a, p
	addc	a
	idxm	p, a
00104$:
;	../atanf.c: 75: if(fabsf(f)<EPS) r=f;
	push	af
	push	af
	mov	a, sp
	add	a, #0xe9
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #22
	xch	a, p
	idxm	p, a
	mov	a, #-23
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #22
	xch	a, p
	idxm	p, a
	mov	a, #-23
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #22
	xch	a, p
	idxm	p, a
	mov	a, #-23
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #22
	xch	a, p
	idxm	p, a
	mov	a, sp
	add	a, #0xbe
	push	af
	call	_fabsf
	mov	a, sp
	add	a, #-6
	mov	sp, a
	add	a, #0xc2
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
	goto	00106$
	mov	a, sp
	add	a, #0xea
	mov	p, a
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
	xch	a, p
	add	a, #4
	xch	a, p
	idxm	p, a
	goto	00107$
00106$:
;	../atanf.c: 78: g=f*f;
	mov	a, sp
	add	a, #0xea
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
	add	a, #0xc6
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xc6
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #44
	xch	a, p
	idxm	p, a
	mov	a, #-43
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #44
	xch	a, p
	idxm	p, a
	mov	a, #-43
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #44
	xch	a, p
	idxm	p, a
	mov	a, #-43
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #44
	xch	a, p
	idxm	p, a
;	../atanf.c: 79: r=f+P(g,f)/Q(g);
	mov	a, #0x91
	mov	___fsmul_PARM_1+0, a
	mov	a, #0x86
	mov	___fsmul_PARM_1+1, a
	mov	a, #0x50
	mov	___fsmul_PARM_1+2, a
	mov	a, #0xbd
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
	add	a, #0xca
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xca
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
	mov	a, #0xf6
	mov	___fsadd_PARM_2+0, a
	mov	a, #0x10
	mov	___fsadd_PARM_2+1, a
	mov	a, #0xf1
	mov	___fsadd_PARM_2+2, a
	mov	a, #0xbe
	mov	___fsadd_PARM_2+3, a
	mov	a, sp
	add	a, #0xce
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xce
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
	mov	a, #33
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
	add	a, #0xd6
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xf2
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
	mov	a, #0xd3
	mov	___fsadd_PARM_2+0, a
	mov	a, #0xcc
	mov	___fsadd_PARM_2+1, a
	mov	a, #0xb4
	mov	___fsadd_PARM_2+2, a
	mov	a, #0x3f
	mov	___fsadd_PARM_2+3, a
	mov	a, sp
	add	a, #0xda
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xd6
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
	add	a, #0xde
	push	af
	call	___fsdiv
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xea
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
	mov	a, #-15
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
	add	a, #0xe2
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xe2
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #12
	xch	a, p
	idxm	p, a
	mov	a, #-11
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #12
	xch	a, p
	idxm	p, a
	mov	a, #-11
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #12
	xch	a, p
	idxm	p, a
	mov	a, #-11
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #12
	xch	a, p
	idxm	p, a
00107$:
;	../atanf.c: 81: if(n>1) r=-r;
	mov	a, #0x01
	push	af
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	pop	af
	sub	a, p
	mov	a, #0x00
	push	af
	mov	a, sp
	add	a, #0xfd
	mov	p, a
	idxm	a, p
	mov	p, a
	pop	af
	subc	a, p
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t1sn	f, c
	goto	00109$
	mov	a, sp
	add	a, #0xee
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
00109$:
;	../atanf.c: 82: r+=a[n];
	mov	a, sp
	add	a, #0xfe
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
	dec	p
	idxm	a, p
	sl	a
	idxm	p, a
	push	af
	inc	p
	pop	af
	idxm	a, p
	slc	a
	idxm	p, a
	dec	p
	idxm	a, p
	sl	a
	idxm	p, a
	push	af
	inc	p
	pop	af
	idxm	a, p
	slc	a
	idxm	p, a
	dec	p
	idxm	a, p
	add	a, #<(_atanf_a_65536_26 + 0)
	push	af
	inc	p
	inc	p
	pop	af
	idxm	p, a
	dec	p
	idxm	a, p
	addc	a
	add	a, #>(_atanf_a_65536_26 + 0x8000 + 0)
	inc	p
	inc	p
	idxm	p, a
	idxm	a, p
	push	af
	dec	p
	idxm	a, p
	mov	p, a
	pop	af
	call	__gptrget
	mov	___fsadd_PARM_2+0, a
	mov	a, sp
	add	a, #0xf9
	mov	p, a
	idxm	a, p
	push	af
	dec	p
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	addc	a
	call	__gptrget
	mov	___fsadd_PARM_2+1, a
	mov	a, sp
	add	a, #0xf9
	mov	p, a
	idxm	a, p
	push	af
	dec	p
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	addc	a
	inc	p
	addc	a
	call	__gptrget
	mov	___fsadd_PARM_2+2, a
	mov	a, sp
	add	a, #0xf9
	mov	p, a
	idxm	a, p
	push	af
	dec	p
	idxm	a, p
	mov	p, a
	pop	af
	xch	a, p
	add	a, #3
	xch	a, p
	addc	a
	call	__gptrget
	mov	___fsadd_PARM_2+3, a
	mov	a, sp
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
	mov	a, sp
	add	a, #0xe6
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xe6
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #20
	xch	a, p
	idxm	p, a
	mov	a, #-19
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #20
	xch	a, p
	idxm	p, a
	mov	a, #-19
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #20
	xch	a, p
	idxm	p, a
	mov	a, #-19
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #20
	xch	a, p
	idxm	p, a
;	../atanf.c: 83: if(x<0.0) r=-r;
	mov	a, #-95
	add	p, a
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
	add	a, #0xfa
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
;	../atanf.c: 84: return r;
	mov	a, sp
	add	a, #0xfa
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-88
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	idxm	p, a
	mov	a, sp
	add	a, #0xfb
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-89
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-90
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xfd
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-91
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	inc	p
	idxm	p, a
;	../atanf.c: 85: }
	mov	a, sp
	add	a, #-90
	mov	sp, a
	ret
	.area CODE
	.area CONST
_atanf_a_65536_26:
	ret #0x00
	ret #0x00
	ret #0x00
	ret #0x00	;  0.000000e+00
	ret #0x92
	ret #0x0a
	ret #0x06
	ret #0x3f	;  5.235988e-01
	ret #0xdb
	ret #0x0f
	ret #0xc9
	ret #0x3f	;  1.570796e+00
	ret #0x92
	ret #0x0a
	ret #0x86
	ret #0x3f	;  1.047198e+00
	.area CABS (ABS)
