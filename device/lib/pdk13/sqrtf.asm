;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module sqrtf
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf
	.globl _frexpf
	.globl _sqrtf
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
;	../sqrtf.c: 37: float sqrtf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function sqrtf
;	-----------------------------------------
_sqrtf:
	mov	a, sp
	add	a, #60
;	../sqrtf.c: 42: if (x==0.0) return x;
	mov	sp, a
	add	a, #0xbf
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
	add	a, #0xbb
	mov	p, a
	idxm	a, p
	mov	p, a
	pop	af
	or	a, p
	push	af
	mov	a, sp
	add	a, #0xbc
	mov	p, a
	idxm	a, p
	mov	p, a
	pop	af
	or	a, p
	ceqsn	a, #0x00
	goto	00107$
	mov	a, sp
	add	a, #0xbc
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #4
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	idxm	p, a
	mov	a, sp
	add	a, #0xbd
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #3
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xbe
	mov	p, a
	idxm	a, p
	push	af
	inc	p
	inc	p
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xbf
	mov	p, a
	idxm	a, p
	push	af
	inc	p
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	inc	p
	idxm	p, a
	goto	00111$
00107$:
;	../sqrtf.c: 43: else if (x==1.0) return 1.0;
	mov	a, sp
	add	a, #0xbc
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
	goto	00104$
	mov	a, sp
	add	a, #0xc0
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
	goto	00111$
00104$:
;	../sqrtf.c: 44: else if (x<0.0)
	mov	a, sp
	add	a, #0xbc
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
	goto	00108$
;	../sqrtf.c: 46: errno=EDOM;
	mov	a, #0x21
	mov	_errno+0, a
	clear	_errno+1
;	../sqrtf.c: 47: return 0.0;
	mov	a, sp
	add	a, #0xc0
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
	goto	00111$
00108$:
;	../sqrtf.c: 49: f=frexpf(x, &n);
	mov	a, sp
	add	a, #0xfe
	mov	_frexpf_PARM_2+0, a
	clear	_frexpf_PARM_2+1
	mov	a, sp
	add	a, #0xbc
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
	add	a, #0xc4
	push	af
	call	_frexpf
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xc4
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
;	../sqrtf.c: 50: y=0.41731+0.59016*f; /*Educated guess*/
	mov	a, #0xba
	mov	___fsmul_PARM_1+0, a
	mov	a, #0x14
	mov	___fsmul_PARM_1+1, a
	mov	a, #0x17
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
	add	a, #0xc8
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xc8
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
	mov	a, #0xa8
	mov	___fsadd_PARM_2+0, a
	mov	a, #0xa9
	mov	___fsadd_PARM_2+1, a
	mov	a, #0xd5
	mov	___fsadd_PARM_2+2, a
	mov	a, #0x3e
	mov	___fsadd_PARM_2+3, a
	mov	a, sp
	add	a, #0xcc
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xcc
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #36
	xch	a, p
	idxm	p, a
	mov	a, #-35
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #36
	xch	a, p
	idxm	p, a
	mov	a, #-35
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #36
	xch	a, p
	idxm	p, a
	mov	a, #-35
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #36
	xch	a, p
	idxm	p, a
;	../sqrtf.c: 52: y+=f/y;
	mov	a, #-7
	add	p, a
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
	add	a, #0xd0
	push	af
	call	___fsdiv
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xf0
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
	mov	a, #-35
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
	add	a, #0xd4
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xd4
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
;	../sqrtf.c: 53: y=ldexpf(y, -2) + f/y; /*Faster version of 0.25 * y + f/y*/
	mov	a, #-3
	add	p, a
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
	mov	a, #0xfe
	mov	_ldexpf_PARM_2+0, a
	mov	a, #0xff
	mov	_ldexpf_PARM_2+1, a
	mov	a, sp
	add	a, #0xd8
	push	af
	call	_ldexpf
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xec
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
	mov	a, #5
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
	add	a, #0xdc
	push	af
	call	___fsdiv
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xd8
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
	add	a, #0xe0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xe0
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #24
	xch	a, p
	idxm	p, a
	mov	a, #-23
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #24
	xch	a, p
	idxm	p, a
	mov	a, #-23
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #24
	xch	a, p
	idxm	p, a
	mov	a, #-23
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #24
	xch	a, p
	idxm	p, a
;	../sqrtf.c: 55: if (n&1)
	mov	a, #3
	add	p, a
	idxm	a, p
	and	a, #0x01
	cneqsn	a, #0x00
	goto	00110$
;	../sqrtf.c: 57: y*=0.7071067812;
	mov	a, #0xf3
	mov	___fsmul_PARM_1+0, a
	mov	a, #0x04
	mov	___fsmul_PARM_1+1, a
	mov	a, #0x35
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x3f
	mov	___fsmul_PARM_1+3, a
	mov	a, #-6
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
	add	a, #0xe4
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xe4
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
;	../sqrtf.c: 58: ++n;
	mov	a, #3
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
00110$:
;	../sqrtf.c: 60: return ldexpf(y, n/2);
	mov	a, sp
	add	a, #0xfe
	mov	p, a
	idxm	a, p
	mov	__divsint_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	__divsint_PARM_1+1, a
	mov	a, #0x02
	mov	__divsint_PARM_2+0, a
	clear	__divsint_PARM_2+1
	call	__divsint
	push	af
	mov	a, sp
	add	a, #0xfb
	xch	a, p
	idxm	p, a
	pop	af
	dec	p
	idxm	p, a
	mov	a, #-4
	add	p, a
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
	inc	p
	idxm	a, p
	mov	_ldexpf_PARM_2+0, a
	inc	p
	idxm	a, p
	mov	_ldexpf_PARM_2+1, a
	mov	a, sp
	add	a, #0xe8
	push	af
	call	_ldexpf
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xe8
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-40
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	idxm	p, a
	mov	a, sp
	add	a, #0xe9
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-41
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xea
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-42
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xeb
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-43
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	inc	p
	idxm	p, a
00111$:
;	../sqrtf.c: 61: }
	mov	a, sp
	add	a, #-60
	mov	sp, a
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
