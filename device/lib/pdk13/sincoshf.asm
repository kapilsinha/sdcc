;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module sincoshf
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincoshf
	.globl _expf
	.globl _sincoshf_PARM_2
	.globl _sincoshf_PARM_1
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_sincoshf_PARM_1:
	.ds 4
_sincoshf_PARM_2:
	.ds 1
_sincoshf_sloc0_1_0:
	.ds 4
_sincoshf_sloc1_1_0:
	.ds 4
_sincoshf_sloc2_1_0:
	.ds 4
_sincoshf_sloc3_1_0:
	.ds 4
_sincoshf_sloc4_1_0:
	.ds 4
_sincoshf_sloc5_1_0:
	.ds 4
_sincoshf_sloc6_1_0:
	.ds 4
_sincoshf_sloc7_1_0:
	.ds 4
_sincoshf_sloc8_1_0:
	.ds 4
_sincoshf_sloc9_1_0:
	.ds 4
_sincoshf_sloc10_1_0:
	.ds 4
_sincoshf_sloc11_1_0:
	.ds 4
_sincoshf_sloc12_1_0:
	.ds 4
_sincoshf_sloc13_1_0:
	.ds 4
_sincoshf_sloc14_1_0:
	.ds 4
_sincoshf_sloc15_1_0:
	.ds 4
_sincoshf_sloc16_1_0:
	.ds 4
_sincoshf_sloc17_1_0:
	.ds 1
_sincoshf_sloc18_1_0:
	.ds 4
_sincoshf_sloc19_1_0:
	.ds 4
_sincoshf_sloc20_1_0:
	.ds 4
_sincoshf_sloc21_1_0:
	.ds 4
_sincoshf_sloc22_1_0:
	.ds 4
_sincoshf_sloc23_1_0:
	.ds 4
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
;	../sincoshf.c: 56: float sincoshf(float x, bool iscosh)
;	-----------------------------------------
;	 function sincoshf
;	-----------------------------------------
_sincoshf:
;	../sincoshf.c: 61: if (x<0.0) { y=-x; sign=1; }
	mov	a, _sincoshf_PARM_1+0
	mov	___fslt_PARM_1+0, a
	mov	a, _sincoshf_PARM_1+1
	mov	___fslt_PARM_1+1, a
	mov	a, _sincoshf_PARM_1+2
	mov	___fslt_PARM_1+2, a
	mov	a, _sincoshf_PARM_1+3
	mov	___fslt_PARM_1+3, a
	clear	___fslt_PARM_2+0
	clear	___fslt_PARM_2+1
	clear	___fslt_PARM_2+2
	clear	___fslt_PARM_2+3
	call	___fslt
	cneqsn	a, #0x00
	goto	00102$
	mov	a, _sincoshf_PARM_1+0
	mov	_sincoshf_sloc16_1_0+0, a
	mov	a, _sincoshf_PARM_1+1
	mov	_sincoshf_sloc16_1_0+1, a
	mov	a, _sincoshf_PARM_1+2
	mov	_sincoshf_sloc16_1_0+2, a
	mov	a, _sincoshf_PARM_1+3
	xor	a, #0x80
	mov	_sincoshf_sloc16_1_0+3, a
	mov	a, #0x01
	mov	_sincoshf_sloc17_1_0+0, a
	goto	00103$
00102$:
;	../sincoshf.c: 62: else { y=x;  sign=0; }
	mov	a, _sincoshf_PARM_1+0
	mov	_sincoshf_sloc16_1_0+0, a
	mov	a, _sincoshf_PARM_1+1
	mov	_sincoshf_sloc16_1_0+1, a
	mov	a, _sincoshf_PARM_1+2
	mov	_sincoshf_sloc16_1_0+2, a
	mov	a, _sincoshf_PARM_1+3
	mov	_sincoshf_sloc16_1_0+3, a
	clear	_sincoshf_sloc17_1_0+0
00103$:
;	../sincoshf.c: 64: if ((y>1.0) || iscosh)
	clear	___fslt_PARM_1+0
	clear	___fslt_PARM_1+1
	mov	a, #0x80
	mov	___fslt_PARM_1+2, a
	mov	a, #0x3f
	mov	___fslt_PARM_1+3, a
	mov	a, _sincoshf_sloc16_1_0+0
	mov	___fslt_PARM_2+0, a
	mov	a, _sincoshf_sloc16_1_0+1
	mov	___fslt_PARM_2+1, a
	mov	a, _sincoshf_sloc16_1_0+2
	mov	___fslt_PARM_2+2, a
	mov	a, _sincoshf_sloc16_1_0+3
	mov	___fslt_PARM_2+3, a
	call	___fslt
	ceqsn	a, #0x00
	goto	00117$
	mov	a, _sincoshf_PARM_2+0
	cneqsn	a, #0x00
	goto	00118$
00117$:
;	../sincoshf.c: 66: if(y>YBAR)
	clear	___fslt_PARM_1+0
	clear	___fslt_PARM_1+1
	mov	a, #0x10
	mov	___fslt_PARM_1+2, a
	mov	a, #0x41
	mov	___fslt_PARM_1+3, a
	mov	a, _sincoshf_sloc16_1_0+0
	mov	___fslt_PARM_2+0, a
	mov	a, _sincoshf_sloc16_1_0+1
	mov	___fslt_PARM_2+1, a
	mov	a, _sincoshf_sloc16_1_0+2
	mov	___fslt_PARM_2+2, a
	mov	a, _sincoshf_sloc16_1_0+3
	mov	___fslt_PARM_2+3, a
	call	___fslt
	cneqsn	a, #0x00
	goto	00110$
;	../sincoshf.c: 68: w=y-K1;
	mov	a, _sincoshf_sloc16_1_0+0
	mov	___fssub_PARM_1+0, a
	mov	a, _sincoshf_sloc16_1_0+1
	mov	___fssub_PARM_1+1, a
	mov	a, _sincoshf_sloc16_1_0+2
	mov	___fssub_PARM_1+2, a
	mov	a, _sincoshf_sloc16_1_0+3
	mov	___fssub_PARM_1+3, a
	clear	___fssub_PARM_2+0
	mov	a, #0x73
	mov	___fssub_PARM_2+1, a
	mov	a, #0x31
	mov	___fssub_PARM_2+2, a
	mov	a, #0x3f
	mov	___fssub_PARM_2+3, a
	mov	a, #_sincoshf_sloc0_1_0
	push	af
	call	___fssub
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincoshf_sloc0_1_0+0
	mov	_sincoshf_sloc18_1_0+0, a
	mov	a, _sincoshf_sloc0_1_0+1
	mov	_sincoshf_sloc18_1_0+1, a
	mov	a, _sincoshf_sloc0_1_0+2
	mov	_sincoshf_sloc18_1_0+2, a
	mov	a, _sincoshf_sloc0_1_0+3
	mov	_sincoshf_sloc18_1_0+3, a
;	../sincoshf.c: 69: if (w>WMAX)
	mov	a, #0xcf
	mov	___fslt_PARM_1+0, a
	mov	a, #0xbd
	mov	___fslt_PARM_1+1, a
	mov	a, #0x33
	mov	___fslt_PARM_1+2, a
	mov	a, #0x42
	mov	___fslt_PARM_1+3, a
	mov	a, _sincoshf_sloc18_1_0+0
	mov	___fslt_PARM_2+0, a
	mov	a, _sincoshf_sloc18_1_0+1
	mov	___fslt_PARM_2+1, a
	mov	a, _sincoshf_sloc18_1_0+2
	mov	___fslt_PARM_2+2, a
	mov	a, _sincoshf_sloc18_1_0+3
	mov	___fslt_PARM_2+3, a
	call	___fslt
	cneqsn	a, #0x00
	goto	00105$
;	../sincoshf.c: 71: errno=ERANGE;
	mov	a, #0x22
	mov	_errno+0, a
	clear	_errno+1
;	../sincoshf.c: 72: z=HUGE_VALF;
	mov	a, #0xff
	mov	_sincoshf_sloc19_1_0+0, a
	mov	a, #0xff
	mov	_sincoshf_sloc19_1_0+1, a
	mov	a, #0x7f
	mov	_sincoshf_sloc19_1_0+2, a
	mov	a, #0x7f
	mov	_sincoshf_sloc19_1_0+3, a
	goto	00111$
00105$:
;	../sincoshf.c: 76: z=expf(w);
	mov	a, sp
	mov	p, a
	push	af
	push	af
	mov	a, _sincoshf_sloc18_1_0+0
	idxm	p, a
	inc	p
	mov	a, _sincoshf_sloc18_1_0+1
	idxm	p, a
	inc	p
	mov	a, _sincoshf_sloc18_1_0+2
	idxm	p, a
	inc	p
	mov	a, _sincoshf_sloc18_1_0+3
	idxm	p, a
	mov	a, #_sincoshf_sloc1_1_0
	push	af
	call	_expf
	mov	a, sp
	add	a, #-6
	mov	sp, a
	mov	a, _sincoshf_sloc1_1_0+0
	mov	_sincoshf_sloc20_1_0+0, a
	mov	a, _sincoshf_sloc1_1_0+1
	mov	_sincoshf_sloc20_1_0+1, a
	mov	a, _sincoshf_sloc1_1_0+2
	mov	_sincoshf_sloc20_1_0+2, a
	mov	a, _sincoshf_sloc1_1_0+3
	mov	_sincoshf_sloc20_1_0+3, a
;	../sincoshf.c: 77: z+=K3*z;
	mov	a, #0x97
	mov	___fsmul_PARM_1+0, a
	mov	a, #0x08
	mov	___fsmul_PARM_1+1, a
	mov	a, #0x68
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x37
	mov	___fsmul_PARM_1+3, a
	mov	a, _sincoshf_sloc20_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _sincoshf_sloc20_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _sincoshf_sloc20_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _sincoshf_sloc20_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_sincoshf_sloc2_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincoshf_sloc20_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _sincoshf_sloc20_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _sincoshf_sloc20_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _sincoshf_sloc20_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, _sincoshf_sloc2_1_0+0
	mov	___fsadd_PARM_2+0, a
	mov	a, _sincoshf_sloc2_1_0+1
	mov	___fsadd_PARM_2+1, a
	mov	a, _sincoshf_sloc2_1_0+2
	mov	___fsadd_PARM_2+2, a
	mov	a, _sincoshf_sloc2_1_0+3
	mov	___fsadd_PARM_2+3, a
	mov	a, #_sincoshf_sloc3_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincoshf_sloc3_1_0+0
	mov	_sincoshf_sloc19_1_0+0, a
	mov	a, _sincoshf_sloc3_1_0+1
	mov	_sincoshf_sloc19_1_0+1, a
	mov	a, _sincoshf_sloc3_1_0+2
	mov	_sincoshf_sloc19_1_0+2, a
	mov	a, _sincoshf_sloc3_1_0+3
	mov	_sincoshf_sloc19_1_0+3, a
	goto	00111$
00110$:
;	../sincoshf.c: 82: z=expf(y);
	mov	a, sp
	mov	p, a
	push	af
	push	af
	mov	a, _sincoshf_sloc16_1_0+0
	idxm	p, a
	inc	p
	mov	a, _sincoshf_sloc16_1_0+1
	idxm	p, a
	inc	p
	mov	a, _sincoshf_sloc16_1_0+2
	idxm	p, a
	inc	p
	mov	a, _sincoshf_sloc16_1_0+3
	idxm	p, a
	mov	a, #_sincoshf_sloc4_1_0
	push	af
	call	_expf
	mov	a, sp
	add	a, #-6
	mov	sp, a
	mov	a, _sincoshf_sloc4_1_0+0
	mov	_sincoshf_sloc21_1_0+0, a
	mov	a, _sincoshf_sloc4_1_0+1
	mov	_sincoshf_sloc21_1_0+1, a
	mov	a, _sincoshf_sloc4_1_0+2
	mov	_sincoshf_sloc21_1_0+2, a
	mov	a, _sincoshf_sloc4_1_0+3
	mov	_sincoshf_sloc21_1_0+3, a
;	../sincoshf.c: 83: w=1.0/z;
	clear	___fsdiv_PARM_1+0
	clear	___fsdiv_PARM_1+1
	mov	a, #0x80
	mov	___fsdiv_PARM_1+2, a
	mov	a, #0x3f
	mov	___fsdiv_PARM_1+3, a
	mov	a, _sincoshf_sloc21_1_0+0
	mov	___fsdiv_PARM_2+0, a
	mov	a, _sincoshf_sloc21_1_0+1
	mov	___fsdiv_PARM_2+1, a
	mov	a, _sincoshf_sloc21_1_0+2
	mov	___fsdiv_PARM_2+2, a
	mov	a, _sincoshf_sloc21_1_0+3
	mov	___fsdiv_PARM_2+3, a
	mov	a, #_sincoshf_sloc5_1_0
	push	af
	call	___fsdiv
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincoshf_sloc5_1_0+0
	mov	_sincoshf_sloc22_1_0+0, a
	mov	a, _sincoshf_sloc5_1_0+1
	mov	_sincoshf_sloc22_1_0+1, a
	mov	a, _sincoshf_sloc5_1_0+2
	mov	_sincoshf_sloc22_1_0+2, a
	mov	a, _sincoshf_sloc5_1_0+3
	mov	_sincoshf_sloc22_1_0+3, a
;	../sincoshf.c: 84: if(!iscosh) w=-w;
	mov	a, _sincoshf_PARM_2+0
	ceqsn	a, #0x00
	goto	00108$
	mov	a, _sincoshf_sloc22_1_0+3
	xor	a, #0x80
	mov	_sincoshf_sloc22_1_0+3, a
00108$:
;	../sincoshf.c: 85: z=(z+w)*0.5;
	mov	a, _sincoshf_sloc21_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _sincoshf_sloc21_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _sincoshf_sloc21_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _sincoshf_sloc21_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, _sincoshf_sloc22_1_0+0
	mov	___fsadd_PARM_2+0, a
	mov	a, _sincoshf_sloc22_1_0+1
	mov	___fsadd_PARM_2+1, a
	mov	a, _sincoshf_sloc22_1_0+2
	mov	___fsadd_PARM_2+2, a
	mov	a, _sincoshf_sloc22_1_0+3
	mov	___fsadd_PARM_2+3, a
	mov	a, #_sincoshf_sloc6_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	clear	___fsmul_PARM_1+0
	clear	___fsmul_PARM_1+1
	clear	___fsmul_PARM_1+2
	mov	a, #0x3f
	mov	___fsmul_PARM_1+3, a
	mov	a, _sincoshf_sloc6_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _sincoshf_sloc6_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _sincoshf_sloc6_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _sincoshf_sloc6_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_sincoshf_sloc7_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincoshf_sloc7_1_0+0
	mov	_sincoshf_sloc19_1_0+0, a
	mov	a, _sincoshf_sloc7_1_0+1
	mov	_sincoshf_sloc19_1_0+1, a
	mov	a, _sincoshf_sloc7_1_0+2
	mov	_sincoshf_sloc19_1_0+2, a
	mov	a, _sincoshf_sloc7_1_0+3
	mov	_sincoshf_sloc19_1_0+3, a
00111$:
;	../sincoshf.c: 87: if(sign) z=-z;
	mov	a, _sincoshf_sloc17_1_0+0
	cneqsn	a, #0x00
	goto	00119$
	mov	a, _sincoshf_sloc19_1_0+3
	xor	a, #0x80
	mov	_sincoshf_sloc19_1_0+3, a
	goto	00119$
00118$:
;	../sincoshf.c: 91: if (y<EPS)
	mov	a, _sincoshf_sloc16_1_0+0
	mov	___fslt_PARM_1+0, a
	mov	a, _sincoshf_sloc16_1_0+1
	mov	___fslt_PARM_1+1, a
	mov	a, _sincoshf_sloc16_1_0+2
	mov	___fslt_PARM_1+2, a
	mov	a, _sincoshf_sloc16_1_0+3
	mov	___fslt_PARM_1+3, a
	clear	___fslt_PARM_2+0
	clear	___fslt_PARM_2+1
	mov	a, #0x80
	mov	___fslt_PARM_2+2, a
	mov	a, #0x39
	mov	___fslt_PARM_2+3, a
	call	___fslt
	cneqsn	a, #0x00
	goto	00115$
;	../sincoshf.c: 92: z=x;
	mov	a, _sincoshf_PARM_1+0
	mov	_sincoshf_sloc19_1_0+0, a
	mov	a, _sincoshf_PARM_1+1
	mov	_sincoshf_sloc19_1_0+1, a
	mov	a, _sincoshf_PARM_1+2
	mov	_sincoshf_sloc19_1_0+2, a
	mov	a, _sincoshf_PARM_1+3
	mov	_sincoshf_sloc19_1_0+3, a
	goto	00119$
00115$:
;	../sincoshf.c: 95: z=x*x;
	mov	a, _sincoshf_PARM_1+0
	mov	___fsmul_PARM_1+0, a
	mov	a, _sincoshf_PARM_1+1
	mov	___fsmul_PARM_1+1, a
	mov	a, _sincoshf_PARM_1+2
	mov	___fsmul_PARM_1+2, a
	mov	a, _sincoshf_PARM_1+3
	mov	___fsmul_PARM_1+3, a
	mov	a, _sincoshf_PARM_1+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _sincoshf_PARM_1+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _sincoshf_PARM_1+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _sincoshf_PARM_1+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_sincoshf_sloc8_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincoshf_sloc8_1_0+0
	mov	_sincoshf_sloc23_1_0+0, a
	mov	a, _sincoshf_sloc8_1_0+1
	mov	_sincoshf_sloc23_1_0+1, a
	mov	a, _sincoshf_sloc8_1_0+2
	mov	_sincoshf_sloc23_1_0+2, a
	mov	a, _sincoshf_sloc8_1_0+3
	mov	_sincoshf_sloc23_1_0+3, a
;	../sincoshf.c: 96: z=x+x*z*P(z)/Q(z);
	mov	a, _sincoshf_PARM_1+0
	mov	___fsmul_PARM_1+0, a
	mov	a, _sincoshf_PARM_1+1
	mov	___fsmul_PARM_1+1, a
	mov	a, _sincoshf_PARM_1+2
	mov	___fsmul_PARM_1+2, a
	mov	a, _sincoshf_PARM_1+3
	mov	___fsmul_PARM_1+3, a
	mov	a, _sincoshf_sloc23_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _sincoshf_sloc23_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _sincoshf_sloc23_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _sincoshf_sloc23_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_sincoshf_sloc9_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, #0xea
	mov	___fsmul_PARM_1+0, a
	mov	a, #0xe6
	mov	___fsmul_PARM_1+1, a
	mov	a, #0x42
	mov	___fsmul_PARM_1+2, a
	mov	a, #0xbe
	mov	___fsmul_PARM_1+3, a
	mov	a, _sincoshf_sloc23_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _sincoshf_sloc23_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _sincoshf_sloc23_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _sincoshf_sloc23_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_sincoshf_sloc10_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincoshf_sloc10_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _sincoshf_sloc10_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _sincoshf_sloc10_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _sincoshf_sloc10_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, #0xf0
	mov	___fsadd_PARM_2+0, a
	mov	a, #0x69
	mov	___fsadd_PARM_2+1, a
	mov	a, #0xe4
	mov	___fsadd_PARM_2+2, a
	mov	a, #0xc0
	mov	___fsadd_PARM_2+3, a
	mov	a, #_sincoshf_sloc11_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincoshf_sloc9_1_0+0
	mov	___fsmul_PARM_1+0, a
	mov	a, _sincoshf_sloc9_1_0+1
	mov	___fsmul_PARM_1+1, a
	mov	a, _sincoshf_sloc9_1_0+2
	mov	___fsmul_PARM_1+2, a
	mov	a, _sincoshf_sloc9_1_0+3
	mov	___fsmul_PARM_1+3, a
	mov	a, _sincoshf_sloc11_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _sincoshf_sloc11_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _sincoshf_sloc11_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _sincoshf_sloc11_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_sincoshf_sloc12_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincoshf_sloc23_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _sincoshf_sloc23_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _sincoshf_sloc23_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _sincoshf_sloc23_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, #0x93
	mov	___fsadd_PARM_2+0, a
	mov	a, #0x4f
	mov	___fsadd_PARM_2+1, a
	mov	a, #0x2b
	mov	___fsadd_PARM_2+2, a
	mov	a, #0xc2
	mov	___fsadd_PARM_2+3, a
	mov	a, #_sincoshf_sloc13_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincoshf_sloc12_1_0+0
	mov	___fsdiv_PARM_1+0, a
	mov	a, _sincoshf_sloc12_1_0+1
	mov	___fsdiv_PARM_1+1, a
	mov	a, _sincoshf_sloc12_1_0+2
	mov	___fsdiv_PARM_1+2, a
	mov	a, _sincoshf_sloc12_1_0+3
	mov	___fsdiv_PARM_1+3, a
	mov	a, _sincoshf_sloc13_1_0+0
	mov	___fsdiv_PARM_2+0, a
	mov	a, _sincoshf_sloc13_1_0+1
	mov	___fsdiv_PARM_2+1, a
	mov	a, _sincoshf_sloc13_1_0+2
	mov	___fsdiv_PARM_2+2, a
	mov	a, _sincoshf_sloc13_1_0+3
	mov	___fsdiv_PARM_2+3, a
	mov	a, #_sincoshf_sloc14_1_0
	push	af
	call	___fsdiv
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincoshf_PARM_1+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _sincoshf_PARM_1+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _sincoshf_PARM_1+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _sincoshf_PARM_1+3
	mov	___fsadd_PARM_1+3, a
	mov	a, _sincoshf_sloc14_1_0+0
	mov	___fsadd_PARM_2+0, a
	mov	a, _sincoshf_sloc14_1_0+1
	mov	___fsadd_PARM_2+1, a
	mov	a, _sincoshf_sloc14_1_0+2
	mov	___fsadd_PARM_2+2, a
	mov	a, _sincoshf_sloc14_1_0+3
	mov	___fsadd_PARM_2+3, a
	mov	a, #_sincoshf_sloc15_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincoshf_sloc15_1_0+0
	mov	_sincoshf_sloc19_1_0+0, a
	mov	a, _sincoshf_sloc15_1_0+1
	mov	_sincoshf_sloc19_1_0+1, a
	mov	a, _sincoshf_sloc15_1_0+2
	mov	_sincoshf_sloc19_1_0+2, a
	mov	a, _sincoshf_sloc15_1_0+3
	mov	_sincoshf_sloc19_1_0+3, a
00119$:
;	../sincoshf.c: 99: return z;
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _sincoshf_sloc19_1_0+0
	idxm	p, a
	inc	p
	mov	a, _sincoshf_sloc19_1_0+1
	idxm	p, a
	inc	p
	mov	a, _sincoshf_sloc19_1_0+2
	idxm	p, a
	inc	p
	mov	a, _sincoshf_sloc19_1_0+3
	idxm	p, a
;	../sincoshf.c: 100: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
