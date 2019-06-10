;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module asincosf
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asincosf
	.globl _ldexpf
	.globl _fabsf
	.globl _sqrtf
	.globl _asincosf_PARM_2
	.globl _asincosf_PARM_1
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_asincosf_PARM_1:
	.ds 4
_asincosf_PARM_2:
	.ds 1
_asincosf_sloc0_1_0:
	.ds 4
_asincosf_sloc1_1_0:
	.ds 4
_asincosf_sloc2_1_0:
	.ds 4
_asincosf_sloc3_1_0:
	.ds 4
_asincosf_sloc4_1_0:
	.ds 4
_asincosf_sloc5_1_0:
	.ds 4
_asincosf_sloc6_1_0:
	.ds 4
_asincosf_sloc7_1_0:
	.ds 4
_asincosf_sloc8_1_0:
	.ds 4
_asincosf_sloc9_1_0:
	.ds 4
_asincosf_sloc10_1_0:
	.ds 4
_asincosf_sloc11_1_0:
	.ds 4
_asincosf_sloc12_1_0:
	.ds 4
_asincosf_sloc13_1_0:
	.ds 4
_asincosf_sloc14_1_0:
	.ds 4
_asincosf_sloc15_1_0:
	.ds 4
_asincosf_sloc16_1_0:
	.ds 4
_asincosf_sloc17_1_0:
	.ds 4
_asincosf_sloc18_1_0:
	.ds 4
_asincosf_sloc19_1_0:
	.ds 4
_asincosf_sloc20_1_0:
	.ds 4
_asincosf_sloc21_1_0:
	.ds 1
_asincosf_sloc22_1_0:
	.ds 4
_asincosf_sloc23_1_0:
	.ds 4
_asincosf_sloc24_1_0:
	.ds 4
_asincosf_sloc25_1_0:
	.ds 4
_asincosf_sloc26_1_0:
	.ds 1
_asincosf_sloc27_1_0:
	.ds 2
_asincosf_sloc28_1_0:
	.ds 4
_asincosf_sloc29_1_0:
	.ds 4
_asincosf_sloc30_1_0:
	.ds 2
_asincosf_sloc31_1_0:
	.ds 4
_asincosf_sloc32_1_0:
	.ds 2
_asincosf_sloc33_1_0:
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
;	../asincosf.c: 47: float asincosf(float x, bool isacos)
;	-----------------------------------------
;	 function asincosf
;	-----------------------------------------
_asincosf:
;	../asincosf.c: 51: bool quartPI = isacos;
	mov	a, _asincosf_PARM_2+0
	mov	_asincosf_sloc21_1_0+0, a
;	../asincosf.c: 56: y = fabsf(x);
	mov	a, sp
	mov	p, a
	push	af
	push	af
	mov	a, _asincosf_PARM_1+0
	idxm	p, a
	inc	p
	mov	a, _asincosf_PARM_1+1
	idxm	p, a
	inc	p
	mov	a, _asincosf_PARM_1+2
	idxm	p, a
	inc	p
	mov	a, _asincosf_PARM_1+3
	idxm	p, a
	mov	a, #_asincosf_sloc0_1_0
	push	af
	call	_fabsf
	mov	a, sp
	add	a, #-6
	mov	sp, a
	mov	a, _asincosf_sloc0_1_0+0
	mov	_asincosf_sloc22_1_0+0, a
	mov	a, _asincosf_sloc0_1_0+1
	mov	_asincosf_sloc22_1_0+1, a
	mov	a, _asincosf_sloc0_1_0+2
	mov	_asincosf_sloc22_1_0+2, a
	mov	a, _asincosf_sloc0_1_0+3
	mov	_asincosf_sloc22_1_0+3, a
;	../asincosf.c: 57: if (y < EPS)
	mov	a, _asincosf_sloc22_1_0+0
	mov	___fslt_PARM_1+0, a
	mov	a, _asincosf_sloc22_1_0+1
	mov	___fslt_PARM_1+1, a
	mov	a, _asincosf_sloc22_1_0+2
	mov	___fslt_PARM_1+2, a
	mov	a, _asincosf_sloc22_1_0+3
	mov	___fslt_PARM_1+3, a
	clear	___fslt_PARM_2+0
	clear	___fslt_PARM_2+1
	mov	a, #0x80
	mov	___fslt_PARM_2+2, a
	mov	a, #0x39
	mov	___fslt_PARM_2+3, a
	call	___fslt
	cneqsn	a, #0x00
	goto	00107$
;	../asincosf.c: 59: r = y;
	mov	a, _asincosf_sloc22_1_0+0
	mov	_asincosf_sloc23_1_0+0, a
	mov	a, _asincosf_sloc22_1_0+1
	mov	_asincosf_sloc23_1_0+1, a
	mov	a, _asincosf_sloc22_1_0+2
	mov	_asincosf_sloc23_1_0+2, a
	mov	a, _asincosf_sloc22_1_0+3
	mov	_asincosf_sloc23_1_0+3, a
	goto	00108$
00107$:
;	../asincosf.c: 63: if (y > 0.5)
	clear	___fslt_PARM_1+0
	clear	___fslt_PARM_1+1
	clear	___fslt_PARM_1+2
	mov	a, #0x3f
	mov	___fslt_PARM_1+3, a
	mov	a, _asincosf_sloc22_1_0+0
	mov	___fslt_PARM_2+0, a
	mov	a, _asincosf_sloc22_1_0+1
	mov	___fslt_PARM_2+1, a
	mov	a, _asincosf_sloc22_1_0+2
	mov	___fslt_PARM_2+2, a
	mov	a, _asincosf_sloc22_1_0+3
	mov	___fslt_PARM_2+3, a
	call	___fslt
	cneqsn	a, #0x00
	goto	00104$
;	../asincosf.c: 65: quartPI = !isacos;
	mov	a, _asincosf_sloc21_1_0+0
	sub	a, #0x01
	mov	a, #0x00
	slc	a
	mov	_asincosf_sloc21_1_0+0, a
;	../asincosf.c: 66: if (y > 1.0)
	clear	___fslt_PARM_1+0
	clear	___fslt_PARM_1+1
	mov	a, #0x80
	mov	___fslt_PARM_1+2, a
	mov	a, #0x3f
	mov	___fslt_PARM_1+3, a
	mov	a, _asincosf_sloc22_1_0+0
	mov	___fslt_PARM_2+0, a
	mov	a, _asincosf_sloc22_1_0+1
	mov	___fslt_PARM_2+1, a
	mov	a, _asincosf_sloc22_1_0+2
	mov	___fslt_PARM_2+2, a
	mov	a, _asincosf_sloc22_1_0+3
	mov	___fslt_PARM_2+3, a
	call	___fslt
	cneqsn	a, #0x00
	goto	00102$
;	../asincosf.c: 68: errno = EDOM;
	mov	a, #0x21
	mov	_errno+0, a
	clear	_errno+1
;	../asincosf.c: 69: return 0.0;
	mov	a, sp
	add	a, #0xfc
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
	ret
00102$:
;	../asincosf.c: 71: g = (0.5 - y) + 0.5;
	clear	___fssub_PARM_1+0
	clear	___fssub_PARM_1+1
	mov	a, #0x80
	mov	___fssub_PARM_1+2, a
	mov	a, #0x3f
	mov	___fssub_PARM_1+3, a
	mov	a, _asincosf_sloc22_1_0+0
	mov	___fssub_PARM_2+0, a
	mov	a, _asincosf_sloc22_1_0+1
	mov	___fssub_PARM_2+1, a
	mov	a, _asincosf_sloc22_1_0+2
	mov	___fssub_PARM_2+2, a
	mov	a, _asincosf_sloc22_1_0+3
	mov	___fssub_PARM_2+3, a
	mov	a, #_asincosf_sloc1_1_0
	push	af
	call	___fssub
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _asincosf_sloc1_1_0+0
	mov	_ldexpf_PARM_1+0, a
	mov	a, _asincosf_sloc1_1_0+1
	mov	_ldexpf_PARM_1+1, a
	mov	a, _asincosf_sloc1_1_0+2
	mov	_ldexpf_PARM_1+2, a
	mov	a, _asincosf_sloc1_1_0+3
	mov	_ldexpf_PARM_1+3, a
;	../asincosf.c: 72: g = ldexpf(g, -1);
	mov	a, #0xff
	mov	_ldexpf_PARM_2+0, a
	mov	a, #0xff
	mov	_ldexpf_PARM_2+1, a
	mov	a, #_asincosf_sloc2_1_0
	push	af
	call	_ldexpf
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _asincosf_sloc2_1_0+0
	mov	_asincosf_sloc24_1_0+0, a
	mov	a, _asincosf_sloc2_1_0+1
	mov	_asincosf_sloc24_1_0+1, a
	mov	a, _asincosf_sloc2_1_0+2
	mov	_asincosf_sloc24_1_0+2, a
	mov	a, _asincosf_sloc2_1_0+3
	mov	_asincosf_sloc24_1_0+3, a
;	../asincosf.c: 73: y = sqrtf(g);
	mov	a, sp
	mov	p, a
	push	af
	push	af
	mov	a, _asincosf_sloc24_1_0+0
	idxm	p, a
	inc	p
	mov	a, _asincosf_sloc24_1_0+1
	idxm	p, a
	inc	p
	mov	a, _asincosf_sloc24_1_0+2
	idxm	p, a
	inc	p
	mov	a, _asincosf_sloc24_1_0+3
	idxm	p, a
	mov	a, #_asincosf_sloc3_1_0
	push	af
	call	_sqrtf
	mov	a, sp
	add	a, #-6
	mov	sp, a
	mov	a, _asincosf_sloc3_1_0+0
	mov	_asincosf_sloc25_1_0+0, a
	mov	a, _asincosf_sloc3_1_0+1
	mov	_asincosf_sloc25_1_0+1, a
	mov	a, _asincosf_sloc3_1_0+2
	mov	_asincosf_sloc25_1_0+2, a
	mov	a, _asincosf_sloc3_1_0+3
	mov	_asincosf_sloc25_1_0+3, a
;	../asincosf.c: 74: y = -(y + y);
	mov	a, _asincosf_sloc25_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _asincosf_sloc25_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _asincosf_sloc25_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _asincosf_sloc25_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, _asincosf_sloc25_1_0+0
	mov	___fsadd_PARM_2+0, a
	mov	a, _asincosf_sloc25_1_0+1
	mov	___fsadd_PARM_2+1, a
	mov	a, _asincosf_sloc25_1_0+2
	mov	___fsadd_PARM_2+2, a
	mov	a, _asincosf_sloc25_1_0+3
	mov	___fsadd_PARM_2+3, a
	mov	a, #_asincosf_sloc4_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _asincosf_sloc4_1_0+0
	mov	_asincosf_sloc22_1_0+0, a
	mov	a, _asincosf_sloc4_1_0+1
	mov	_asincosf_sloc22_1_0+1, a
	mov	a, _asincosf_sloc4_1_0+2
	mov	_asincosf_sloc22_1_0+2, a
	mov	a, _asincosf_sloc4_1_0+3
	xor	a, #0x80
	mov	_asincosf_sloc22_1_0+3, a
	goto	00105$
00104$:
;	../asincosf.c: 78: g = y * y;
	mov	a, _asincosf_sloc22_1_0+0
	mov	___fsmul_PARM_1+0, a
	mov	a, _asincosf_sloc22_1_0+1
	mov	___fsmul_PARM_1+1, a
	mov	a, _asincosf_sloc22_1_0+2
	mov	___fsmul_PARM_1+2, a
	mov	a, _asincosf_sloc22_1_0+3
	mov	___fsmul_PARM_1+3, a
	mov	a, _asincosf_sloc22_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _asincosf_sloc22_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _asincosf_sloc22_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _asincosf_sloc22_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_asincosf_sloc5_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _asincosf_sloc5_1_0+0
	mov	_asincosf_sloc24_1_0+0, a
	mov	a, _asincosf_sloc5_1_0+1
	mov	_asincosf_sloc24_1_0+1, a
	mov	a, _asincosf_sloc5_1_0+2
	mov	_asincosf_sloc24_1_0+2, a
	mov	a, _asincosf_sloc5_1_0+3
	mov	_asincosf_sloc24_1_0+3, a
00105$:
;	../asincosf.c: 80: r = y + y * ((P(g) * g) / Q(g));
	mov	a, #0x65
	mov	___fsmul_PARM_1+0, a
	mov	a, #0x20
	mov	___fsmul_PARM_1+1, a
	mov	a, #0x01
	mov	___fsmul_PARM_1+2, a
	mov	a, #0xbf
	mov	___fsmul_PARM_1+3, a
	mov	a, _asincosf_sloc24_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _asincosf_sloc24_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _asincosf_sloc24_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _asincosf_sloc24_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_asincosf_sloc6_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _asincosf_sloc6_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _asincosf_sloc6_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _asincosf_sloc6_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _asincosf_sloc6_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, #0x6b
	mov	___fsadd_PARM_2+0, a
	mov	a, #0x16
	mov	___fsadd_PARM_2+1, a
	mov	a, #0x6f
	mov	___fsadd_PARM_2+2, a
	mov	a, #0x3f
	mov	___fsadd_PARM_2+3, a
	mov	a, #_asincosf_sloc7_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _asincosf_sloc7_1_0+0
	mov	___fsmul_PARM_1+0, a
	mov	a, _asincosf_sloc7_1_0+1
	mov	___fsmul_PARM_1+1, a
	mov	a, _asincosf_sloc7_1_0+2
	mov	___fsmul_PARM_1+2, a
	mov	a, _asincosf_sloc7_1_0+3
	mov	___fsmul_PARM_1+3, a
	mov	a, _asincosf_sloc24_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _asincosf_sloc24_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _asincosf_sloc24_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _asincosf_sloc24_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_asincosf_sloc8_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _asincosf_sloc24_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _asincosf_sloc24_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _asincosf_sloc24_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _asincosf_sloc24_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, #0x0b
	mov	___fsadd_PARM_2+0, a
	mov	a, #0x8d
	mov	___fsadd_PARM_2+1, a
	mov	a, #0xb1
	mov	___fsadd_PARM_2+2, a
	mov	a, #0xc0
	mov	___fsadd_PARM_2+3, a
	mov	a, #_asincosf_sloc9_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _asincosf_sloc9_1_0+0
	mov	___fsmul_PARM_1+0, a
	mov	a, _asincosf_sloc9_1_0+1
	mov	___fsmul_PARM_1+1, a
	mov	a, _asincosf_sloc9_1_0+2
	mov	___fsmul_PARM_1+2, a
	mov	a, _asincosf_sloc9_1_0+3
	mov	___fsmul_PARM_1+3, a
	mov	a, _asincosf_sloc24_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _asincosf_sloc24_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _asincosf_sloc24_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _asincosf_sloc24_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_asincosf_sloc10_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _asincosf_sloc10_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _asincosf_sloc10_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _asincosf_sloc10_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _asincosf_sloc10_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, #0xf0
	mov	___fsadd_PARM_2+0, a
	mov	a, #0x50
	mov	___fsadd_PARM_2+1, a
	mov	a, #0xb3
	mov	___fsadd_PARM_2+2, a
	mov	a, #0x40
	mov	___fsadd_PARM_2+3, a
	mov	a, #_asincosf_sloc11_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _asincosf_sloc8_1_0+0
	mov	___fsdiv_PARM_1+0, a
	mov	a, _asincosf_sloc8_1_0+1
	mov	___fsdiv_PARM_1+1, a
	mov	a, _asincosf_sloc8_1_0+2
	mov	___fsdiv_PARM_1+2, a
	mov	a, _asincosf_sloc8_1_0+3
	mov	___fsdiv_PARM_1+3, a
	mov	a, _asincosf_sloc11_1_0+0
	mov	___fsdiv_PARM_2+0, a
	mov	a, _asincosf_sloc11_1_0+1
	mov	___fsdiv_PARM_2+1, a
	mov	a, _asincosf_sloc11_1_0+2
	mov	___fsdiv_PARM_2+2, a
	mov	a, _asincosf_sloc11_1_0+3
	mov	___fsdiv_PARM_2+3, a
	mov	a, #_asincosf_sloc12_1_0
	push	af
	call	___fsdiv
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _asincosf_sloc22_1_0+0
	mov	___fsmul_PARM_1+0, a
	mov	a, _asincosf_sloc22_1_0+1
	mov	___fsmul_PARM_1+1, a
	mov	a, _asincosf_sloc22_1_0+2
	mov	___fsmul_PARM_1+2, a
	mov	a, _asincosf_sloc22_1_0+3
	mov	___fsmul_PARM_1+3, a
	mov	a, _asincosf_sloc12_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _asincosf_sloc12_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _asincosf_sloc12_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _asincosf_sloc12_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_asincosf_sloc13_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _asincosf_sloc22_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _asincosf_sloc22_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _asincosf_sloc22_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _asincosf_sloc22_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, _asincosf_sloc13_1_0+0
	mov	___fsadd_PARM_2+0, a
	mov	a, _asincosf_sloc13_1_0+1
	mov	___fsadd_PARM_2+1, a
	mov	a, _asincosf_sloc13_1_0+2
	mov	___fsadd_PARM_2+2, a
	mov	a, _asincosf_sloc13_1_0+3
	mov	___fsadd_PARM_2+3, a
	mov	a, #_asincosf_sloc14_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _asincosf_sloc14_1_0+0
	mov	_asincosf_sloc23_1_0+0, a
	mov	a, _asincosf_sloc14_1_0+1
	mov	_asincosf_sloc23_1_0+1, a
	mov	a, _asincosf_sloc14_1_0+2
	mov	_asincosf_sloc23_1_0+2, a
	mov	a, _asincosf_sloc14_1_0+3
	mov	_asincosf_sloc23_1_0+3, a
00108$:
;	../asincosf.c: 82: i = quartPI;
	mov	a, _asincosf_sloc21_1_0+0
	mov	_asincosf_sloc26_1_0+0, a
;	../asincosf.c: 83: if (isacos)
	mov	a, _asincosf_PARM_2+0
	cneqsn	a, #0x00
	goto	00115$
;	../asincosf.c: 85: if (x < 0.0)
	mov	a, _asincosf_PARM_1+0
	mov	___fslt_PARM_1+0, a
	mov	a, _asincosf_PARM_1+1
	mov	___fslt_PARM_1+1, a
	mov	a, _asincosf_PARM_1+2
	mov	___fslt_PARM_1+2, a
	mov	a, _asincosf_PARM_1+3
	mov	___fslt_PARM_1+3, a
	clear	___fslt_PARM_2+0
	clear	___fslt_PARM_2+1
	clear	___fslt_PARM_2+2
	clear	___fslt_PARM_2+3
	call	___fslt
	cneqsn	a, #0x00
	goto	00110$
;	../asincosf.c: 86: r = (b[i] + r) + b[i];
	mov	a, _asincosf_sloc26_1_0+0
	mov	__muluchar_PARM_1+0, a
	mov	a, #0x04
	mov	__muluchar_PARM_2+0, a
	call	__muluchar
	add	a, #<(_asincosf_b_65536_26 + 0)
	mov	_asincosf_sloc27_1_0+0, a
	mov	a, #>(_asincosf_b_65536_26 + 0x8000 + 0)
	addc	a, p
	mov	_asincosf_sloc27_1_0+1, a
	mov	a, _asincosf_sloc27_1_0+0
	mov	p, a
	mov	a, _asincosf_sloc27_1_0+1
	call	__gptrget
	mov	_asincosf_sloc28_1_0+0, a
	mov	a, _asincosf_sloc27_1_0+0
	mov	p, a
	mov	a, _asincosf_sloc27_1_0+1
	inc	p
	addc	a
	call	__gptrget
	mov	_asincosf_sloc28_1_0+1, a
	mov	a, _asincosf_sloc27_1_0+0
	mov	p, a
	mov	a, _asincosf_sloc27_1_0+1
	inc	p
	addc	a
	inc	p
	addc	a
	call	__gptrget
	mov	_asincosf_sloc28_1_0+2, a
	mov	a, _asincosf_sloc27_1_0+0
	mov	p, a
	mov	a, _asincosf_sloc27_1_0+1
	xch	a, p
	add	a, #3
	xch	a, p
	addc	a
	call	__gptrget
	mov	_asincosf_sloc28_1_0+3, a
	mov	a, _asincosf_sloc28_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _asincosf_sloc28_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _asincosf_sloc28_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _asincosf_sloc28_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, _asincosf_sloc23_1_0+0
	mov	___fsadd_PARM_2+0, a
	mov	a, _asincosf_sloc23_1_0+1
	mov	___fsadd_PARM_2+1, a
	mov	a, _asincosf_sloc23_1_0+2
	mov	___fsadd_PARM_2+2, a
	mov	a, _asincosf_sloc23_1_0+3
	mov	___fsadd_PARM_2+3, a
	mov	a, #_asincosf_sloc15_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _asincosf_sloc15_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _asincosf_sloc15_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _asincosf_sloc15_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _asincosf_sloc15_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, _asincosf_sloc28_1_0+0
	mov	___fsadd_PARM_2+0, a
	mov	a, _asincosf_sloc28_1_0+1
	mov	___fsadd_PARM_2+1, a
	mov	a, _asincosf_sloc28_1_0+2
	mov	___fsadd_PARM_2+2, a
	mov	a, _asincosf_sloc28_1_0+3
	mov	___fsadd_PARM_2+3, a
	mov	a, #_asincosf_sloc16_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _asincosf_sloc16_1_0+0
	mov	_asincosf_sloc29_1_0+0, a
	mov	a, _asincosf_sloc16_1_0+1
	mov	_asincosf_sloc29_1_0+1, a
	mov	a, _asincosf_sloc16_1_0+2
	mov	_asincosf_sloc29_1_0+2, a
	mov	a, _asincosf_sloc16_1_0+3
	mov	_asincosf_sloc29_1_0+3, a
	goto	00116$
00110$:
;	../asincosf.c: 88: r = (a[i] - r) + a[i];
	mov	a, _asincosf_sloc26_1_0+0
	mov	__muluchar_PARM_1+0, a
	mov	a, #0x04
	mov	__muluchar_PARM_2+0, a
	call	__muluchar
	add	a, #<(_asincosf_a_65536_26 + 0)
	mov	_asincosf_sloc30_1_0+0, a
	mov	a, #>(_asincosf_a_65536_26 + 0x8000 + 0)
	addc	a, p
	mov	_asincosf_sloc30_1_0+1, a
	mov	a, _asincosf_sloc30_1_0+0
	mov	p, a
	mov	a, _asincosf_sloc30_1_0+1
	call	__gptrget
	mov	_asincosf_sloc31_1_0+0, a
	mov	a, _asincosf_sloc30_1_0+0
	mov	p, a
	mov	a, _asincosf_sloc30_1_0+1
	inc	p
	addc	a
	call	__gptrget
	mov	_asincosf_sloc31_1_0+1, a
	mov	a, _asincosf_sloc30_1_0+0
	mov	p, a
	mov	a, _asincosf_sloc30_1_0+1
	inc	p
	addc	a
	inc	p
	addc	a
	call	__gptrget
	mov	_asincosf_sloc31_1_0+2, a
	mov	a, _asincosf_sloc30_1_0+0
	mov	p, a
	mov	a, _asincosf_sloc30_1_0+1
	xch	a, p
	add	a, #3
	xch	a, p
	addc	a
	call	__gptrget
	mov	_asincosf_sloc31_1_0+3, a
	mov	a, _asincosf_sloc31_1_0+0
	mov	___fssub_PARM_1+0, a
	mov	a, _asincosf_sloc31_1_0+1
	mov	___fssub_PARM_1+1, a
	mov	a, _asincosf_sloc31_1_0+2
	mov	___fssub_PARM_1+2, a
	mov	a, _asincosf_sloc31_1_0+3
	mov	___fssub_PARM_1+3, a
	mov	a, _asincosf_sloc23_1_0+0
	mov	___fssub_PARM_2+0, a
	mov	a, _asincosf_sloc23_1_0+1
	mov	___fssub_PARM_2+1, a
	mov	a, _asincosf_sloc23_1_0+2
	mov	___fssub_PARM_2+2, a
	mov	a, _asincosf_sloc23_1_0+3
	mov	___fssub_PARM_2+3, a
	mov	a, #_asincosf_sloc17_1_0
	push	af
	call	___fssub
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _asincosf_sloc17_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _asincosf_sloc17_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _asincosf_sloc17_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _asincosf_sloc17_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, _asincosf_sloc31_1_0+0
	mov	___fsadd_PARM_2+0, a
	mov	a, _asincosf_sloc31_1_0+1
	mov	___fsadd_PARM_2+1, a
	mov	a, _asincosf_sloc31_1_0+2
	mov	___fsadd_PARM_2+2, a
	mov	a, _asincosf_sloc31_1_0+3
	mov	___fsadd_PARM_2+3, a
	mov	a, #_asincosf_sloc18_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _asincosf_sloc18_1_0+0
	mov	_asincosf_sloc29_1_0+0, a
	mov	a, _asincosf_sloc18_1_0+1
	mov	_asincosf_sloc29_1_0+1, a
	mov	a, _asincosf_sloc18_1_0+2
	mov	_asincosf_sloc29_1_0+2, a
	mov	a, _asincosf_sloc18_1_0+3
	mov	_asincosf_sloc29_1_0+3, a
	goto	00116$
00115$:
;	../asincosf.c: 92: r = (a[i] + r) + a[i];
	mov	a, _asincosf_sloc26_1_0+0
	mov	__muluchar_PARM_1+0, a
	mov	a, #0x04
	mov	__muluchar_PARM_2+0, a
	call	__muluchar
	add	a, #<(_asincosf_a_65536_26 + 0)
	mov	_asincosf_sloc32_1_0+0, a
	mov	a, #>(_asincosf_a_65536_26 + 0x8000 + 0)
	addc	a, p
	mov	_asincosf_sloc32_1_0+1, a
	mov	a, _asincosf_sloc32_1_0+0
	mov	p, a
	mov	a, _asincosf_sloc32_1_0+1
	call	__gptrget
	mov	_asincosf_sloc33_1_0+0, a
	mov	a, _asincosf_sloc32_1_0+0
	mov	p, a
	mov	a, _asincosf_sloc32_1_0+1
	inc	p
	addc	a
	call	__gptrget
	mov	_asincosf_sloc33_1_0+1, a
	mov	a, _asincosf_sloc32_1_0+0
	mov	p, a
	mov	a, _asincosf_sloc32_1_0+1
	inc	p
	addc	a
	inc	p
	addc	a
	call	__gptrget
	mov	_asincosf_sloc33_1_0+2, a
	mov	a, _asincosf_sloc32_1_0+0
	mov	p, a
	mov	a, _asincosf_sloc32_1_0+1
	xch	a, p
	add	a, #3
	xch	a, p
	addc	a
	call	__gptrget
	mov	_asincosf_sloc33_1_0+3, a
	mov	a, _asincosf_sloc33_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _asincosf_sloc33_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _asincosf_sloc33_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _asincosf_sloc33_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, _asincosf_sloc23_1_0+0
	mov	___fsadd_PARM_2+0, a
	mov	a, _asincosf_sloc23_1_0+1
	mov	___fsadd_PARM_2+1, a
	mov	a, _asincosf_sloc23_1_0+2
	mov	___fsadd_PARM_2+2, a
	mov	a, _asincosf_sloc23_1_0+3
	mov	___fsadd_PARM_2+3, a
	mov	a, #_asincosf_sloc19_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _asincosf_sloc19_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _asincosf_sloc19_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _asincosf_sloc19_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _asincosf_sloc19_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, _asincosf_sloc33_1_0+0
	mov	___fsadd_PARM_2+0, a
	mov	a, _asincosf_sloc33_1_0+1
	mov	___fsadd_PARM_2+1, a
	mov	a, _asincosf_sloc33_1_0+2
	mov	___fsadd_PARM_2+2, a
	mov	a, _asincosf_sloc33_1_0+3
	mov	___fsadd_PARM_2+3, a
	mov	a, #_asincosf_sloc20_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _asincosf_sloc20_1_0+0
	mov	_asincosf_sloc29_1_0+0, a
	mov	a, _asincosf_sloc20_1_0+1
	mov	_asincosf_sloc29_1_0+1, a
	mov	a, _asincosf_sloc20_1_0+2
	mov	_asincosf_sloc29_1_0+2, a
	mov	a, _asincosf_sloc20_1_0+3
	mov	_asincosf_sloc29_1_0+3, a
;	../asincosf.c: 93: if (x < 0.0)
	mov	a, _asincosf_PARM_1+0
	mov	___fslt_PARM_1+0, a
	mov	a, _asincosf_PARM_1+1
	mov	___fslt_PARM_1+1, a
	mov	a, _asincosf_PARM_1+2
	mov	___fslt_PARM_1+2, a
	mov	a, _asincosf_PARM_1+3
	mov	___fslt_PARM_1+3, a
	clear	___fslt_PARM_2+0
	clear	___fslt_PARM_2+1
	clear	___fslt_PARM_2+2
	clear	___fslt_PARM_2+3
	call	___fslt
	cneqsn	a, #0x00
	goto	00116$
;	../asincosf.c: 94: r = -r;
	mov	a, _asincosf_sloc29_1_0+3
	xor	a, #0x80
	mov	_asincosf_sloc29_1_0+3, a
00116$:
;	../asincosf.c: 96: return r;
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _asincosf_sloc29_1_0+0
	idxm	p, a
	inc	p
	mov	a, _asincosf_sloc29_1_0+1
	idxm	p, a
	inc	p
	mov	a, _asincosf_sloc29_1_0+2
	idxm	p, a
	inc	p
	mov	a, _asincosf_sloc29_1_0+3
	idxm	p, a
;	../asincosf.c: 97: }
	ret
	.area CODE
	.area CONST
_asincosf_a_65536_26:
	ret #0x00
	ret #0x00
	ret #0x00
	ret #0x00	;  0.000000e+00
	ret #0xdb
	ret #0x0f
	ret #0x49
	ret #0x3f	;  7.853982e-01
_asincosf_b_65536_26:
	ret #0xdb
	ret #0x0f
	ret #0xc9
	ret #0x3f	;  1.570796e+00
	ret #0xdb
	ret #0x0f
	ret #0x49
	ret #0x3f	;  7.853982e-01
	.area CABS (ABS)
