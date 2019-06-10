;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module expf
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf
	.globl _expf
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
;	../expf.c: 331: float expf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function expf
;	-----------------------------------------
_expf:
	mov	a, sp
	add	a, #112
;	../expf.c: 337: if(x>=0.0)
	mov	sp, a
	add	a, #0x88
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
	ceqsn	a, #0x00
	goto	00102$
;	../expf.c: 338: { y=x;  sign=0; }
	mov	a, sp
	add	a, #0x88
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #84
	xch	a, p
	idxm	p, a
	mov	a, #-83
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #84
	xch	a, p
	idxm	p, a
	mov	a, #-83
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #84
	xch	a, p
	idxm	p, a
	mov	a, #-83
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #84
	xch	a, p
	idxm	p, a
	mov	a, #0x00
	inc	p
	idxm	p, a
	goto	00103$
00102$:
;	../expf.c: 340: { y=-x; sign=1; }
	mov	a, sp
	add	a, #0x88
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #89
	xch	a, p
	idxm	p, a
	mov	a, #-88
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #89
	xch	a, p
	idxm	p, a
	mov	a, #-88
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #89
	xch	a, p
	idxm	p, a
	mov	a, #-88
	add	p, a
	idxm	a, p
	xor	a, #0x80
	xch	a, p
	add	a, #89
	xch	a, p
	idxm	p, a
	mov	a, #-3
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #-5
	xch	a, p
	idxm	p, a
	mov	a, #6
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #-5
	xch	a, p
	idxm	p, a
	mov	a, #6
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #-5
	xch	a, p
	idxm	p, a
	mov	a, #6
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #-5
	xch	a, p
	idxm	p, a
	mov	a, #0x01
	inc	p
	idxm	p, a
00103$:
;	../expf.c: 342: if(y<EXPEPS) return 1.0;
	mov	a, sp
	add	a, #0xdc
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
	mov	a, #0x95
	mov	___fslt_PARM_2+0, a
	mov	a, #0xbf
	mov	___fslt_PARM_2+1, a
	mov	a, #0xd6
	mov	___fslt_PARM_2+2, a
	mov	a, #0x33
	mov	___fslt_PARM_2+3, a
	call	___fslt
	cneqsn	a, #0x00
	goto	00105$
	mov	a, sp
	add	a, #0x8c
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x80
	idxm	p, a
	inc	p
	mov	a, #0x3f
	idxm	p, a
	goto	00118$
00105$:
;	../expf.c: 344: if(y>BIGX)
	mov	a, #0x18
	mov	___fslt_PARM_1+0, a
	mov	a, #0x72
	mov	___fslt_PARM_1+1, a
	mov	a, #0xb1
	mov	___fslt_PARM_1+2, a
	mov	a, #0x42
	mov	___fslt_PARM_1+3, a
	mov	a, sp
	add	a, #0xdc
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
	goto	00110$
;	../expf.c: 346: if(sign)
	mov	a, sp
	add	a, #0xe0
	mov	p, a
	idxm	a, p
	cneqsn	a, #0x00
	goto	00107$
;	../expf.c: 348: errno=ERANGE;
	mov	a, #0x22
	mov	_errno+0, a
	clear	_errno+1
;	../expf.c: 350: ;
	mov	a, #-84
	add	p, a
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
	goto	00118$
00107$:
;	../expf.c: 354: return 0.0;
	mov	a, sp
	add	a, #0x8c
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
	goto	00118$
00110$:
;	../expf.c: 358: z=y*K1;
	mov	a, #0x3b
	mov	___fsmul_PARM_1+0, a
	mov	a, #0xaa
	mov	___fsmul_PARM_1+1, a
	mov	a, #0xb8
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x3f
	mov	___fsmul_PARM_1+3, a
	mov	a, sp
	add	a, #0xdc
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
	add	a, #0x90
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0x90
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #85
	xch	a, p
	idxm	p, a
	mov	a, #-84
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #85
	xch	a, p
	idxm	p, a
	mov	a, #-84
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #85
	xch	a, p
	idxm	p, a
	mov	a, #-84
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #85
	xch	a, p
	idxm	p, a
;	../expf.c: 359: n=z;
	mov	a, #-3
	add	p, a
	idxm	a, p
	mov	___fs2sint_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___fs2sint_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	___fs2sint_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	___fs2sint_PARM_1+3, a
	call	___fs2sint
	xch	a, p
	mov	a, p
	xch	a, p
	mov	a, sp
	add	a, #0xe9
	xch	a, p
	idxm	p, a
	inc	p
	idxm	p, a
;	../expf.c: 361: if(n<0) --n;
	idxm	a, p
	sub	a, #0x80
	t0sn	f, c
	goto	00112$
	dec	p
	idxm	a, p
	sub	a, #0x01
	idxm	p, a
	push	af
	inc	p
	pop	af
	idxm	a, p
	subc	a
	idxm	p, a
00112$:
;	../expf.c: 362: if(z-n>=0.5) ++n;
	mov	a, sp
	add	a, #0xe9
	mov	p, a
	idxm	a, p
	mov	___sint2fs_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___sint2fs_PARM_1+1, a
	mov	a, sp
	add	a, #0x94
	push	af
	call	___sint2fs
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xe5
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
	mov	a, #-84
	add	p, a
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
	add	a, #0x98
	push	af
	call	___fssub
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0x98
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
	mov	a, #0x3f
	mov	___fslt_PARM_2+3, a
	call	___fslt
	ceqsn	a, #0x00
	goto	00114$
	mov	a, sp
	add	a, #0xe9
	mov	p, a
	idxm	a, p
	add	a, #0x01
	idxm	p, a
	push	af
	inc	p
	pop	af
	idxm	a, p
	addc	a
	idxm	p, a
00114$:
;	../expf.c: 363: xn=n;
	mov	a, sp
	add	a, #0xe9
	mov	p, a
	idxm	a, p
	mov	___sint2fs_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___sint2fs_PARM_1+1, a
	mov	a, sp
	add	a, #0x9c
	push	af
	call	___sint2fs
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0x9c
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #79
	xch	a, p
	idxm	p, a
	mov	a, #-78
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #79
	xch	a, p
	idxm	p, a
	mov	a, #-78
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #79
	xch	a, p
	idxm	p, a
	mov	a, #-78
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #79
	xch	a, p
	idxm	p, a
;	../expf.c: 364: g=((y-xn*C1))-xn*C2;
	clear	___fsmul_PARM_1+0
	mov	a, #0x80
	mov	___fsmul_PARM_1+1, a
	mov	a, #0x31
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x3f
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
	add	a, #0xa0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xdc
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
	mov	a, #-63
	add	p, a
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
	add	a, #0xa4
	push	af
	call	___fssub
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, #0x83
	mov	___fsmul_PARM_1+0, a
	mov	a, #0x80
	mov	___fsmul_PARM_1+1, a
	mov	a, #0x5e
	mov	___fsmul_PARM_1+2, a
	mov	a, #0xb9
	mov	___fsmul_PARM_1+3, a
	mov	a, sp
	add	a, #0xeb
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
	add	a, #0xa8
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xa4
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
	inc	p
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
	add	a, #0xac
	push	af
	call	___fssub
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xac
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #67
	xch	a, p
	idxm	p, a
	mov	a, #-66
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #67
	xch	a, p
	idxm	p, a
	mov	a, #-66
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #67
	xch	a, p
	idxm	p, a
	mov	a, #-66
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #67
	xch	a, p
	idxm	p, a
;	../expf.c: 365: z=g*g;
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
	add	a, #0xb0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xb0
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #67
	xch	a, p
	idxm	p, a
	mov	a, #-66
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #67
	xch	a, p
	idxm	p, a
	mov	a, #-66
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #67
	xch	a, p
	idxm	p, a
	mov	a, #-66
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #67
	xch	a, p
	idxm	p, a
;	../expf.c: 366: r=P(z)*g;
	mov	a, #0x08
	mov	___fsmul_PARM_1+0, a
	mov	a, #0x53
	mov	___fsmul_PARM_1+1, a
	mov	a, #0x88
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x3b
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
	add	a, #0xb4
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xb4
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
	mov	a, #0x3e
	mov	___fsadd_PARM_2+3, a
	mov	a, sp
	add	a, #0xb8
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xb8
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
	mov	a, #52
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
	add	a, #0xbc
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xbc
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #59
	xch	a, p
	idxm	p, a
	mov	a, #-58
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #59
	xch	a, p
	idxm	p, a
	mov	a, #-58
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #59
	xch	a, p
	idxm	p, a
	mov	a, #-58
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #59
	xch	a, p
	idxm	p, a
;	../expf.c: 367: r=0.5+(r/(Q(z)-r));
	mov	a, #0x5b
	mov	___fsmul_PARM_1+0, a
	mov	a, #0xbf
	mov	___fsmul_PARM_1+1, a
	mov	a, #0x4c
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x3d
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
	add	a, #0xc0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xc0
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
	add	a, #0xc4
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xc4
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
	mov	a, #48
	add	p, a
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
	add	a, #0xc8
	push	af
	call	___fssub
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xf7
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
	mov	a, #-50
	add	p, a
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
	add	a, #0xcc
	push	af
	call	___fsdiv
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xcc
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
	add	a, #0xd0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xd0
	mov	p, a
	idxm	a, p
	mov	_ldexpf_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	_ldexpf_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	_ldexpf_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	_ldexpf_PARM_1+3, a
;	../expf.c: 369: n++;
	mov	a, #22
	add	p, a
	idxm	a, p
	add	a, #0x01
	mov	_ldexpf_PARM_2+0, a
	push	af
	inc	p
	pop	af
	idxm	a, p
	addc	a
	mov	_ldexpf_PARM_2+1, a
;	../expf.c: 370: z=ldexpf(r, n);
	mov	a, sp
	add	a, #0xd4
	push	af
	call	_ldexpf
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xd4
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #39
	xch	a, p
	idxm	p, a
	mov	a, #-38
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #39
	xch	a, p
	idxm	p, a
	mov	a, #-38
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #39
	xch	a, p
	idxm	p, a
	mov	a, #-38
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #39
	xch	a, p
	idxm	p, a
;	../expf.c: 371: if(sign)
	mov	a, #-30
	add	p, a
	idxm	a, p
	cneqsn	a, #0x00
	goto	00116$
;	../expf.c: 372: return 1.0/z;
	clear	___fsdiv_PARM_1+0
	clear	___fsdiv_PARM_1+1
	mov	a, #0x80
	mov	___fsdiv_PARM_1+2, a
	mov	a, #0x3f
	mov	___fsdiv_PARM_1+3, a
	mov	a, #27
	add	p, a
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
	add	a, #0xd8
	push	af
	call	___fsdiv
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xd8
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
	add	a, #0xd9
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
	add	a, #0xda
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
	add	a, #0xdb
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
	goto	00118$
00116$:
;	../expf.c: 374: return z;
	mov	a, sp
	add	a, #0xfb
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-111
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	idxm	p, a
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-112
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xfd
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-113
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xfe
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-114
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	inc	p
	idxm	p, a
00118$:
;	../expf.c: 375: }
	mov	a, sp
	add	a, #-112
	mov	sp, a
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
