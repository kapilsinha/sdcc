;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module logf
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _frexpf
	.globl _logf
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
;	../logf.c: 216: float logf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function logf
;	-----------------------------------------
_logf:
	mov	a, sp
	add	a, #106
	mov	sp, a
;	../logf.c: 226: if (x<=0.0)
	clear	___fslt_PARM_1+0
	clear	___fslt_PARM_1+1
	clear	___fslt_PARM_1+2
	clear	___fslt_PARM_1+3
	mov	a, sp
	add	a, #0x8e
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
	ceqsn	a, #0x00
	goto	00102$
;	../logf.c: 228: errno=EDOM;
	mov	a, #0x21
	mov	_errno+0, a
	clear	_errno+1
;	../logf.c: 229: return 0.0;
	mov	a, sp
	add	a, #0x92
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
	goto	00106$
00102$:
;	../logf.c: 231: f=frexpf(x, &n);
	mov	a, sp
	add	a, #0xfe
	mov	_frexpf_PARM_2+0, a
	clear	_frexpf_PARM_2+1
	mov	a, sp
	add	a, #0x8e
	mov	p, a
	idxm	a, p
	mov	_frexpf_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	_frexpf_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	_frexpf_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	_frexpf_PARM_1+3, a
	mov	a, sp
	add	a, #0x96
	push	af
	call	_frexpf
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0x96
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #76
	xch	a, p
	idxm	p, a
	mov	a, #-75
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #76
	xch	a, p
	idxm	p, a
	mov	a, #-75
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #76
	xch	a, p
	idxm	p, a
	mov	a, #-75
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #76
	xch	a, p
	idxm	p, a
;	../logf.c: 232: znum=f-0.5;
	mov	a, #-3
	add	p, a
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
	clear	___fssub_PARM_2+2
	mov	a, #0x3f
	mov	___fssub_PARM_2+3, a
	mov	a, sp
	add	a, #0x9a
	push	af
	call	___fssub
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0x9a
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #76
	xch	a, p
	idxm	p, a
	mov	a, #-75
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #76
	xch	a, p
	idxm	p, a
	mov	a, #-75
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #76
	xch	a, p
	idxm	p, a
	mov	a, #-75
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #76
	xch	a, p
	idxm	p, a
;	../logf.c: 233: if (f>C0)
	mov	a, #0xf3
	mov	___fslt_PARM_1+0, a
	mov	a, #0x04
	mov	___fslt_PARM_1+1, a
	mov	a, #0x35
	mov	___fslt_PARM_1+2, a
	mov	a, #0x3f
	mov	___fslt_PARM_1+3, a
	mov	a, #-7
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
	goto	00104$
;	../logf.c: 235: znum-=0.5;
	mov	a, sp
	add	a, #0xe6
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
	clear	___fssub_PARM_2+2
	mov	a, #0x3f
	mov	___fssub_PARM_2+3, a
	mov	a, sp
	add	a, #0x9e
	push	af
	call	___fssub
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0x9e
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
;	../logf.c: 236: zden=(f*0.5)+0.5;
	clear	___fsmul_PARM_1+0
	clear	___fsmul_PARM_1+1
	clear	___fsmul_PARM_1+2
	mov	a, #0x3f
	mov	___fsmul_PARM_1+3, a
	mov	a, #-7
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
	add	a, #0xa2
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xa2
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
	clear	___fsadd_PARM_2+2
	mov	a, #0x3f
	mov	___fsadd_PARM_2+3, a
	mov	a, sp
	add	a, #0xa6
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
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
	goto	00105$
00104$:
;	../logf.c: 240: n--;
	mov	a, sp
	add	a, #0xfe
	mov	p, a
	idxm	a, p
	sub	a, #0x01
	idxm	p, a
	push	af
	inc	p
	pop	af
	idxm	a, p
	subc	a
	idxm	p, a
;	../logf.c: 241: zden=znum*0.5+0.5;
	clear	___fsmul_PARM_1+0
	clear	___fsmul_PARM_1+1
	clear	___fsmul_PARM_1+2
	mov	a, #0x3f
	mov	___fsmul_PARM_1+3, a
	mov	a, #-25
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
	add	a, #0xaa
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xaa
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
	clear	___fsadd_PARM_2+2
	mov	a, #0x3f
	mov	___fsadd_PARM_2+3, a
	mov	a, sp
	add	a, #0xae
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xae
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #60
	xch	a, p
	idxm	p, a
	mov	a, #-59
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #60
	xch	a, p
	idxm	p, a
	mov	a, #-59
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #60
	xch	a, p
	idxm	p, a
	mov	a, #-59
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #60
	xch	a, p
	idxm	p, a
00105$:
;	../logf.c: 243: z=znum/zden;
	mov	a, sp
	add	a, #0xe6
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
	add	a, #0xb2
	push	af
	call	___fsdiv
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xb2
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #60
	xch	a, p
	idxm	p, a
	mov	a, #-59
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #60
	xch	a, p
	idxm	p, a
	mov	a, #-59
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #60
	xch	a, p
	idxm	p, a
	mov	a, #-59
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #60
	xch	a, p
	idxm	p, a
;	../logf.c: 244: w=z*z;
	mov	a, #-3
	add	p, a
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
	add	a, #0xb6
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xb6
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #60
	xch	a, p
	idxm	p, a
	mov	a, #-59
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #60
	xch	a, p
	idxm	p, a
	mov	a, #-59
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #60
	xch	a, p
	idxm	p, a
	mov	a, #-59
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #60
	xch	a, p
	idxm	p, a
;	../logf.c: 246: Rz=z+z*(w*A(w)/B(w));
	mov	a, #0x3d
	mov	___fsmul_PARM_1+0, a
	mov	a, #0x7e
	mov	___fsmul_PARM_1+1, a
	mov	a, #0x0d
	mov	___fsmul_PARM_1+2, a
	mov	a, #0xbf
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
	add	a, #0xba
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
	mov	a, #0x3a
	mov	___fsadd_PARM_2+0, a
	mov	a, #0x3f
	mov	___fsadd_PARM_2+1, a
	mov	a, #0xd4
	mov	___fsadd_PARM_2+2, a
	mov	a, #0xc0
	mov	___fsadd_PARM_2+3, a
	mov	a, sp
	add	a, #0xbe
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xba
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
	add	a, #0xc2
	push	af
	call	___fsdiv
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xee
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
	mov	a, #-47
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
	mov	a, #-43
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
;	../logf.c: 247: xn=n;
	mov	a, #5
	add	p, a
	idxm	a, p
	mov	___sint2fs_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___sint2fs_PARM_1+1, a
	mov	a, sp
	add	a, #0xce
	push	af
	call	___sint2fs
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xce
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
;	../logf.c: 248: return ((xn*C2+Rz)+xn*C1);
	mov	a, #0x83
	mov	___fsmul_PARM_1+0, a
	mov	a, #0x80
	mov	___fsmul_PARM_1+1, a
	mov	a, #0x5e
	mov	___fsmul_PARM_1+2, a
	mov	a, #0xb9
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
	mov	a, #33
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
	add	a, #0xd6
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	clear	___fsmul_PARM_1+0
	mov	a, #0x80
	mov	___fsmul_PARM_1+1, a
	mov	a, #0x31
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x3f
	mov	___fsmul_PARM_1+3, a
	mov	a, sp
	add	a, #0xfa
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
	add	a, #0xda
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xd6
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
	inc	p
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
	add	a, #0xde
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xde
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-76
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	idxm	p, a
	mov	a, sp
	add	a, #0xdf
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-77
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xe0
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-78
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xe1
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-79
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	inc	p
	idxm	p, a
00106$:
;	../logf.c: 249: }
	mov	a, sp
	add	a, #-106
	mov	sp, a
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
