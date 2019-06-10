;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module tancotf
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tancotf
	.globl _fabsf
	.globl _tancotf_PARM_2
	.globl _tancotf_PARM_1
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_tancotf_PARM_1:
	.ds 4
_tancotf_PARM_2:
	.ds 1
_tancotf_sloc0_1_0:
	.ds 4
_tancotf_sloc1_1_0:
	.ds 4
_tancotf_sloc2_1_0:
	.ds 4
_tancotf_sloc3_1_0:
	.ds 4
_tancotf_sloc4_1_0:
	.ds 4
_tancotf_sloc5_1_0:
	.ds 4
_tancotf_sloc6_1_0:
	.ds 4
_tancotf_sloc7_1_0:
	.ds 4
_tancotf_sloc8_1_0:
	.ds 4
_tancotf_sloc9_1_0:
	.ds 4
_tancotf_sloc10_1_0:
	.ds 4
_tancotf_sloc11_1_0:
	.ds 4
_tancotf_sloc12_1_0:
	.ds 4
_tancotf_sloc13_1_0:
	.ds 4
_tancotf_sloc14_1_0:
	.ds 4
_tancotf_sloc15_1_0:
	.ds 4
_tancotf_sloc16_1_0:
	.ds 4
_tancotf_sloc17_1_0:
	.ds 4
_tancotf_sloc18_1_0:
	.ds 4
_tancotf_sloc19_1_0:
	.ds 4
_tancotf_sloc20_1_0:
	.ds 4
_tancotf_sloc21_1_0:
	.ds 4
_tancotf_sloc22_1_0:
	.ds 4
_tancotf_sloc23_1_0:
	.ds 4
_tancotf_sloc24_1_0:
	.ds 4
_tancotf_sloc25_1_0:
	.ds 2
_tancotf_sloc26_1_0:
	.ds 4
_tancotf_sloc27_1_0:
	.ds 4
_tancotf_sloc28_1_0:
	.ds 4
_tancotf_sloc29_1_0:
	.ds 4
_tancotf_sloc30_1_0:
	.ds 4
_tancotf_sloc31_1_0:
	.ds 4
_tancotf_sloc32_1_0:
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
;	../tancotf.c: 53: float tancotf(float x, bool iscotan)
;	-----------------------------------------
;	 function tancotf
;	-----------------------------------------
_tancotf:
;	../tancotf.c: 58: if (fabsf(x) > YMAX)
	mov	a, sp
	mov	p, a
	push	af
	push	af
	mov	a, _tancotf_PARM_1+0
	idxm	p, a
	inc	p
	mov	a, _tancotf_PARM_1+1
	idxm	p, a
	inc	p
	mov	a, _tancotf_PARM_1+2
	idxm	p, a
	inc	p
	mov	a, _tancotf_PARM_1+3
	idxm	p, a
	mov	a, #_tancotf_sloc0_1_0
	push	af
	call	_fabsf
	mov	a, sp
	add	a, #-6
	mov	sp, a
	clear	___fslt_PARM_1+0
	mov	a, #0x08
	mov	___fslt_PARM_1+1, a
	mov	a, #0xc9
	mov	___fslt_PARM_1+2, a
	mov	a, #0x45
	mov	___fslt_PARM_1+3, a
	mov	a, _tancotf_sloc0_1_0+0
	mov	___fslt_PARM_2+0, a
	mov	a, _tancotf_sloc0_1_0+1
	mov	___fslt_PARM_2+1, a
	mov	a, _tancotf_sloc0_1_0+2
	mov	___fslt_PARM_2+2, a
	mov	a, _tancotf_sloc0_1_0+3
	mov	___fslt_PARM_2+3, a
	call	___fslt
	cneqsn	a, #0x00
	goto	00102$
;	../tancotf.c: 60: errno = ERANGE;
	mov	a, #0x22
	mov	_errno+0, a
	clear	_errno+1
;	../tancotf.c: 61: return 0.0;
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
;	../tancotf.c: 65: n=(x*TWO_O_PI+(x>0.0?0.5:-0.5)); /*works for +-x*/
	mov	a, #0x83
	mov	___fsmul_PARM_1+0, a
	mov	a, #0xf9
	mov	___fsmul_PARM_1+1, a
	mov	a, #0x22
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x3f
	mov	___fsmul_PARM_1+3, a
	mov	a, _tancotf_PARM_1+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _tancotf_PARM_1+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _tancotf_PARM_1+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _tancotf_PARM_1+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_tancotf_sloc1_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	clear	___fslt_PARM_1+0
	clear	___fslt_PARM_1+1
	clear	___fslt_PARM_1+2
	clear	___fslt_PARM_1+3
	mov	a, _tancotf_PARM_1+0
	mov	___fslt_PARM_2+0, a
	mov	a, _tancotf_PARM_1+1
	mov	___fslt_PARM_2+1, a
	mov	a, _tancotf_PARM_1+2
	mov	___fslt_PARM_2+2, a
	mov	a, _tancotf_PARM_1+3
	mov	___fslt_PARM_2+3, a
	call	___fslt
	cneqsn	a, #0x00
	goto	00117$
	clear	_tancotf_sloc24_1_0+0
	clear	_tancotf_sloc24_1_0+1
	clear	_tancotf_sloc24_1_0+2
	mov	a, #0x3f
	mov	_tancotf_sloc24_1_0+3, a
	goto	00118$
00117$:
	clear	_tancotf_sloc24_1_0+0
	clear	_tancotf_sloc24_1_0+1
	clear	_tancotf_sloc24_1_0+2
	mov	a, #0xbf
	mov	_tancotf_sloc24_1_0+3, a
00118$:
	mov	a, _tancotf_sloc1_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _tancotf_sloc1_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _tancotf_sloc1_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _tancotf_sloc1_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, _tancotf_sloc24_1_0+0
	mov	___fsadd_PARM_2+0, a
	mov	a, _tancotf_sloc24_1_0+1
	mov	___fsadd_PARM_2+1, a
	mov	a, _tancotf_sloc24_1_0+2
	mov	___fsadd_PARM_2+2, a
	mov	a, _tancotf_sloc24_1_0+3
	mov	___fsadd_PARM_2+3, a
	mov	a, #_tancotf_sloc2_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _tancotf_sloc2_1_0+0
	mov	___fs2sint_PARM_1+0, a
	mov	a, _tancotf_sloc2_1_0+1
	mov	___fs2sint_PARM_1+1, a
	mov	a, _tancotf_sloc2_1_0+2
	mov	___fs2sint_PARM_1+2, a
	mov	a, _tancotf_sloc2_1_0+3
	mov	___fs2sint_PARM_1+3, a
	call	___fs2sint
	mov	_tancotf_sloc25_1_0+0, a
	mov	a, p
	mov	_tancotf_sloc25_1_0+1, a
;	../tancotf.c: 66: xn=n;
	mov	a, _tancotf_sloc25_1_0+0
	mov	___sint2fs_PARM_1+0, a
	mov	a, _tancotf_sloc25_1_0+1
	mov	___sint2fs_PARM_1+1, a
	mov	a, #_tancotf_sloc3_1_0
	push	af
	call	___sint2fs
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _tancotf_sloc3_1_0+0
	mov	_tancotf_sloc26_1_0+0, a
	mov	a, _tancotf_sloc3_1_0+1
	mov	_tancotf_sloc26_1_0+1, a
	mov	a, _tancotf_sloc3_1_0+2
	mov	_tancotf_sloc26_1_0+2, a
	mov	a, _tancotf_sloc3_1_0+3
	mov	_tancotf_sloc26_1_0+3, a
;	../tancotf.c: 68: xnum=(int)x;
	mov	a, _tancotf_PARM_1+0
	mov	___fs2sint_PARM_1+0, a
	mov	a, _tancotf_PARM_1+1
	mov	___fs2sint_PARM_1+1, a
	mov	a, _tancotf_PARM_1+2
	mov	___fs2sint_PARM_1+2, a
	mov	a, _tancotf_PARM_1+3
	mov	___fs2sint_PARM_1+3, a
	call	___fs2sint
	mov	___sint2fs_PARM_1+0, a
	mov	a, p
	mov	___sint2fs_PARM_1+1, a
	mov	a, #_tancotf_sloc4_1_0
	push	af
	call	___sint2fs
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _tancotf_sloc4_1_0+0
	mov	_tancotf_sloc27_1_0+0, a
	mov	a, _tancotf_sloc4_1_0+1
	mov	_tancotf_sloc27_1_0+1, a
	mov	a, _tancotf_sloc4_1_0+2
	mov	_tancotf_sloc27_1_0+2, a
	mov	a, _tancotf_sloc4_1_0+3
	mov	_tancotf_sloc27_1_0+3, a
;	../tancotf.c: 69: xden=x-xnum;
	mov	a, _tancotf_PARM_1+0
	mov	___fssub_PARM_1+0, a
	mov	a, _tancotf_PARM_1+1
	mov	___fssub_PARM_1+1, a
	mov	a, _tancotf_PARM_1+2
	mov	___fssub_PARM_1+2, a
	mov	a, _tancotf_PARM_1+3
	mov	___fssub_PARM_1+3, a
	mov	a, _tancotf_sloc27_1_0+0
	mov	___fssub_PARM_2+0, a
	mov	a, _tancotf_sloc27_1_0+1
	mov	___fssub_PARM_2+1, a
	mov	a, _tancotf_sloc27_1_0+2
	mov	___fssub_PARM_2+2, a
	mov	a, _tancotf_sloc27_1_0+3
	mov	___fssub_PARM_2+3, a
	mov	a, #_tancotf_sloc5_1_0
	push	af
	call	___fssub
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _tancotf_sloc5_1_0+0
	mov	_tancotf_sloc28_1_0+0, a
	mov	a, _tancotf_sloc5_1_0+1
	mov	_tancotf_sloc28_1_0+1, a
	mov	a, _tancotf_sloc5_1_0+2
	mov	_tancotf_sloc28_1_0+2, a
	mov	a, _tancotf_sloc5_1_0+3
	mov	_tancotf_sloc28_1_0+3, a
;	../tancotf.c: 70: f=((xnum-xn*C1)+xden)-xn*C2;
	clear	___fsmul_PARM_1+0
	clear	___fsmul_PARM_1+1
	mov	a, #0xc9
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x3f
	mov	___fsmul_PARM_1+3, a
	mov	a, _tancotf_sloc26_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _tancotf_sloc26_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _tancotf_sloc26_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _tancotf_sloc26_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_tancotf_sloc6_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _tancotf_sloc27_1_0+0
	mov	___fssub_PARM_1+0, a
	mov	a, _tancotf_sloc27_1_0+1
	mov	___fssub_PARM_1+1, a
	mov	a, _tancotf_sloc27_1_0+2
	mov	___fssub_PARM_1+2, a
	mov	a, _tancotf_sloc27_1_0+3
	mov	___fssub_PARM_1+3, a
	mov	a, _tancotf_sloc6_1_0+0
	mov	___fssub_PARM_2+0, a
	mov	a, _tancotf_sloc6_1_0+1
	mov	___fssub_PARM_2+1, a
	mov	a, _tancotf_sloc6_1_0+2
	mov	___fssub_PARM_2+2, a
	mov	a, _tancotf_sloc6_1_0+3
	mov	___fssub_PARM_2+3, a
	mov	a, #_tancotf_sloc7_1_0
	push	af
	call	___fssub
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _tancotf_sloc7_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _tancotf_sloc7_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _tancotf_sloc7_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _tancotf_sloc7_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, _tancotf_sloc28_1_0+0
	mov	___fsadd_PARM_2+0, a
	mov	a, _tancotf_sloc28_1_0+1
	mov	___fsadd_PARM_2+1, a
	mov	a, _tancotf_sloc28_1_0+2
	mov	___fsadd_PARM_2+2, a
	mov	a, _tancotf_sloc28_1_0+3
	mov	___fsadd_PARM_2+3, a
	mov	a, #_tancotf_sloc8_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, #0x22
	mov	___fsmul_PARM_1+0, a
	mov	a, #0xaa
	mov	___fsmul_PARM_1+1, a
	mov	a, #0xfd
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x39
	mov	___fsmul_PARM_1+3, a
	mov	a, _tancotf_sloc26_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _tancotf_sloc26_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _tancotf_sloc26_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _tancotf_sloc26_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_tancotf_sloc9_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _tancotf_sloc8_1_0+0
	mov	___fssub_PARM_1+0, a
	mov	a, _tancotf_sloc8_1_0+1
	mov	___fssub_PARM_1+1, a
	mov	a, _tancotf_sloc8_1_0+2
	mov	___fssub_PARM_1+2, a
	mov	a, _tancotf_sloc8_1_0+3
	mov	___fssub_PARM_1+3, a
	mov	a, _tancotf_sloc9_1_0+0
	mov	___fssub_PARM_2+0, a
	mov	a, _tancotf_sloc9_1_0+1
	mov	___fssub_PARM_2+1, a
	mov	a, _tancotf_sloc9_1_0+2
	mov	___fssub_PARM_2+2, a
	mov	a, _tancotf_sloc9_1_0+3
	mov	___fssub_PARM_2+3, a
	mov	a, #_tancotf_sloc10_1_0
	push	af
	call	___fssub
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _tancotf_sloc10_1_0+0
	mov	_tancotf_sloc29_1_0+0, a
	mov	a, _tancotf_sloc10_1_0+1
	mov	_tancotf_sloc29_1_0+1, a
	mov	a, _tancotf_sloc10_1_0+2
	mov	_tancotf_sloc29_1_0+2, a
	mov	a, _tancotf_sloc10_1_0+3
	mov	_tancotf_sloc29_1_0+3, a
;	../tancotf.c: 72: if (fabsf(f) < EPS)
	mov	a, sp
	mov	p, a
	push	af
	push	af
	mov	a, _tancotf_sloc29_1_0+0
	idxm	p, a
	inc	p
	mov	a, _tancotf_sloc29_1_0+1
	idxm	p, a
	inc	p
	mov	a, _tancotf_sloc29_1_0+2
	idxm	p, a
	inc	p
	mov	a, _tancotf_sloc29_1_0+3
	idxm	p, a
	mov	a, #_tancotf_sloc11_1_0
	push	af
	call	_fabsf
	mov	a, sp
	add	a, #-6
	mov	sp, a
	mov	a, _tancotf_sloc11_1_0+0
	mov	___fslt_PARM_1+0, a
	mov	a, _tancotf_sloc11_1_0+1
	mov	___fslt_PARM_1+1, a
	mov	a, _tancotf_sloc11_1_0+2
	mov	___fslt_PARM_1+2, a
	mov	a, _tancotf_sloc11_1_0+3
	mov	___fslt_PARM_1+3, a
	clear	___fslt_PARM_2+0
	clear	___fslt_PARM_2+1
	mov	a, #0x80
	mov	___fslt_PARM_2+2, a
	mov	a, #0x39
	mov	___fslt_PARM_2+3, a
	call	___fslt
	cneqsn	a, #0x00
	goto	00104$
;	../tancotf.c: 74: xnum = f;
	mov	a, _tancotf_sloc29_1_0+0
	mov	_tancotf_sloc30_1_0+0, a
	mov	a, _tancotf_sloc29_1_0+1
	mov	_tancotf_sloc30_1_0+1, a
	mov	a, _tancotf_sloc29_1_0+2
	mov	_tancotf_sloc30_1_0+2, a
	mov	a, _tancotf_sloc29_1_0+3
	mov	_tancotf_sloc30_1_0+3, a
;	../tancotf.c: 75: xden = 1.0;
	clear	_tancotf_sloc31_1_0+0
	clear	_tancotf_sloc31_1_0+1
	mov	a, #0x80
	mov	_tancotf_sloc31_1_0+2, a
	mov	a, #0x3f
	mov	_tancotf_sloc31_1_0+3, a
	goto	00105$
00104$:
;	../tancotf.c: 79: g = f*f;
	mov	a, _tancotf_sloc29_1_0+0
	mov	___fsmul_PARM_1+0, a
	mov	a, _tancotf_sloc29_1_0+1
	mov	___fsmul_PARM_1+1, a
	mov	a, _tancotf_sloc29_1_0+2
	mov	___fsmul_PARM_1+2, a
	mov	a, _tancotf_sloc29_1_0+3
	mov	___fsmul_PARM_1+3, a
	mov	a, _tancotf_sloc29_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _tancotf_sloc29_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _tancotf_sloc29_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _tancotf_sloc29_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_tancotf_sloc12_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _tancotf_sloc12_1_0+0
	mov	_tancotf_sloc32_1_0+0, a
	mov	a, _tancotf_sloc12_1_0+1
	mov	_tancotf_sloc32_1_0+1, a
	mov	a, _tancotf_sloc12_1_0+2
	mov	_tancotf_sloc32_1_0+2, a
	mov	a, _tancotf_sloc12_1_0+3
	mov	_tancotf_sloc32_1_0+3, a
;	../tancotf.c: 80: xnum = P(f,g);
	mov	a, #0xb8
	mov	___fsmul_PARM_1+0, a
	mov	a, #0x33
	mov	___fsmul_PARM_1+1, a
	mov	a, #0xc4
	mov	___fsmul_PARM_1+2, a
	mov	a, #0xbd
	mov	___fsmul_PARM_1+3, a
	mov	a, _tancotf_sloc32_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _tancotf_sloc32_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _tancotf_sloc32_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _tancotf_sloc32_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_tancotf_sloc13_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _tancotf_sloc13_1_0+0
	mov	___fsmul_PARM_1+0, a
	mov	a, _tancotf_sloc13_1_0+1
	mov	___fsmul_PARM_1+1, a
	mov	a, _tancotf_sloc13_1_0+2
	mov	___fsmul_PARM_1+2, a
	mov	a, _tancotf_sloc13_1_0+3
	mov	___fsmul_PARM_1+3, a
	mov	a, _tancotf_sloc29_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _tancotf_sloc29_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _tancotf_sloc29_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _tancotf_sloc29_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_tancotf_sloc14_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _tancotf_sloc14_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _tancotf_sloc14_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _tancotf_sloc14_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _tancotf_sloc14_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, _tancotf_sloc29_1_0+0
	mov	___fsadd_PARM_2+0, a
	mov	a, _tancotf_sloc29_1_0+1
	mov	___fsadd_PARM_2+1, a
	mov	a, _tancotf_sloc29_1_0+2
	mov	___fsadd_PARM_2+2, a
	mov	a, _tancotf_sloc29_1_0+3
	mov	___fsadd_PARM_2+3, a
	mov	a, #_tancotf_sloc15_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _tancotf_sloc15_1_0+0
	mov	_tancotf_sloc30_1_0+0, a
	mov	a, _tancotf_sloc15_1_0+1
	mov	_tancotf_sloc30_1_0+1, a
	mov	a, _tancotf_sloc15_1_0+2
	mov	_tancotf_sloc30_1_0+2, a
	mov	a, _tancotf_sloc15_1_0+3
	mov	_tancotf_sloc30_1_0+3, a
;	../tancotf.c: 81: xden = Q(g);
	mov	a, #0x75
	mov	___fsmul_PARM_1+0, a
	mov	a, #0x33
	mov	___fsmul_PARM_1+1, a
	mov	a, #0x1f
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x3c
	mov	___fsmul_PARM_1+3, a
	mov	a, _tancotf_sloc32_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _tancotf_sloc32_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _tancotf_sloc32_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _tancotf_sloc32_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_tancotf_sloc16_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _tancotf_sloc16_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _tancotf_sloc16_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _tancotf_sloc16_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _tancotf_sloc16_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, #0xaf
	mov	___fsadd_PARM_2+0, a
	mov	a, #0xb7
	mov	___fsadd_PARM_2+1, a
	mov	a, #0xdb
	mov	___fsadd_PARM_2+2, a
	mov	a, #0xbe
	mov	___fsadd_PARM_2+3, a
	mov	a, #_tancotf_sloc17_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _tancotf_sloc17_1_0+0
	mov	___fsmul_PARM_1+0, a
	mov	a, _tancotf_sloc17_1_0+1
	mov	___fsmul_PARM_1+1, a
	mov	a, _tancotf_sloc17_1_0+2
	mov	___fsmul_PARM_1+2, a
	mov	a, _tancotf_sloc17_1_0+3
	mov	___fsmul_PARM_1+3, a
	mov	a, _tancotf_sloc32_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _tancotf_sloc32_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _tancotf_sloc32_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _tancotf_sloc32_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_tancotf_sloc18_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _tancotf_sloc18_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _tancotf_sloc18_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _tancotf_sloc18_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _tancotf_sloc18_1_0+3
	mov	___fsadd_PARM_1+3, a
	clear	___fsadd_PARM_2+0
	clear	___fsadd_PARM_2+1
	mov	a, #0x80
	mov	___fsadd_PARM_2+2, a
	mov	a, #0x3f
	mov	___fsadd_PARM_2+3, a
	mov	a, #_tancotf_sloc19_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _tancotf_sloc19_1_0+0
	mov	_tancotf_sloc31_1_0+0, a
	mov	a, _tancotf_sloc19_1_0+1
	mov	_tancotf_sloc31_1_0+1, a
	mov	a, _tancotf_sloc19_1_0+2
	mov	_tancotf_sloc31_1_0+2, a
	mov	a, _tancotf_sloc19_1_0+3
	mov	_tancotf_sloc31_1_0+3, a
00105$:
;	../tancotf.c: 84: if(n&1)
	mov	a, _tancotf_sloc25_1_0+0
	and	a, #0x01
	cneqsn	a, #0x00
	goto	00113$
;	../tancotf.c: 87: if(iscotan) return (-xnum/xden);
	mov	a, _tancotf_PARM_2+0
	cneqsn	a, #0x00
	goto	00107$
	mov	a, _tancotf_sloc30_1_0+0
	mov	___fsdiv_PARM_1+0, a
	mov	a, _tancotf_sloc30_1_0+1
	mov	___fsdiv_PARM_1+1, a
	mov	a, _tancotf_sloc30_1_0+2
	mov	___fsdiv_PARM_1+2, a
	mov	a, _tancotf_sloc30_1_0+3
	xor	a, #0x80
	mov	___fsdiv_PARM_1+3, a
	mov	a, _tancotf_sloc31_1_0+0
	mov	___fsdiv_PARM_2+0, a
	mov	a, _tancotf_sloc31_1_0+1
	mov	___fsdiv_PARM_2+1, a
	mov	a, _tancotf_sloc31_1_0+2
	mov	___fsdiv_PARM_2+2, a
	mov	a, _tancotf_sloc31_1_0+3
	mov	___fsdiv_PARM_2+3, a
	mov	a, #_tancotf_sloc20_1_0
	push	af
	call	___fsdiv
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _tancotf_sloc20_1_0+0
	idxm	p, a
	inc	p
	mov	a, _tancotf_sloc20_1_0+1
	idxm	p, a
	inc	p
	mov	a, _tancotf_sloc20_1_0+2
	idxm	p, a
	inc	p
	mov	a, _tancotf_sloc20_1_0+3
	idxm	p, a
	ret
00107$:
;	../tancotf.c: 88: else return (-xden/xnum);
	mov	a, _tancotf_sloc31_1_0+0
	mov	___fsdiv_PARM_1+0, a
	mov	a, _tancotf_sloc31_1_0+1
	mov	___fsdiv_PARM_1+1, a
	mov	a, _tancotf_sloc31_1_0+2
	mov	___fsdiv_PARM_1+2, a
	mov	a, _tancotf_sloc31_1_0+3
	xor	a, #0x80
	mov	___fsdiv_PARM_1+3, a
	mov	a, _tancotf_sloc30_1_0+0
	mov	___fsdiv_PARM_2+0, a
	mov	a, _tancotf_sloc30_1_0+1
	mov	___fsdiv_PARM_2+1, a
	mov	a, _tancotf_sloc30_1_0+2
	mov	___fsdiv_PARM_2+2, a
	mov	a, _tancotf_sloc30_1_0+3
	mov	___fsdiv_PARM_2+3, a
	mov	a, #_tancotf_sloc21_1_0
	push	af
	call	___fsdiv
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _tancotf_sloc21_1_0+0
	idxm	p, a
	inc	p
	mov	a, _tancotf_sloc21_1_0+1
	idxm	p, a
	inc	p
	mov	a, _tancotf_sloc21_1_0+2
	idxm	p, a
	inc	p
	mov	a, _tancotf_sloc21_1_0+3
	idxm	p, a
	ret
00113$:
;	../tancotf.c: 92: if(iscotan) return (xden/xnum);
	mov	a, _tancotf_PARM_2+0
	cneqsn	a, #0x00
	goto	00110$
	mov	a, _tancotf_sloc31_1_0+0
	mov	___fsdiv_PARM_1+0, a
	mov	a, _tancotf_sloc31_1_0+1
	mov	___fsdiv_PARM_1+1, a
	mov	a, _tancotf_sloc31_1_0+2
	mov	___fsdiv_PARM_1+2, a
	mov	a, _tancotf_sloc31_1_0+3
	mov	___fsdiv_PARM_1+3, a
	mov	a, _tancotf_sloc30_1_0+0
	mov	___fsdiv_PARM_2+0, a
	mov	a, _tancotf_sloc30_1_0+1
	mov	___fsdiv_PARM_2+1, a
	mov	a, _tancotf_sloc30_1_0+2
	mov	___fsdiv_PARM_2+2, a
	mov	a, _tancotf_sloc30_1_0+3
	mov	___fsdiv_PARM_2+3, a
	mov	a, #_tancotf_sloc22_1_0
	push	af
	call	___fsdiv
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _tancotf_sloc22_1_0+0
	idxm	p, a
	inc	p
	mov	a, _tancotf_sloc22_1_0+1
	idxm	p, a
	inc	p
	mov	a, _tancotf_sloc22_1_0+2
	idxm	p, a
	inc	p
	mov	a, _tancotf_sloc22_1_0+3
	idxm	p, a
	ret
00110$:
;	../tancotf.c: 93: else return (xnum/xden);
	mov	a, _tancotf_sloc30_1_0+0
	mov	___fsdiv_PARM_1+0, a
	mov	a, _tancotf_sloc30_1_0+1
	mov	___fsdiv_PARM_1+1, a
	mov	a, _tancotf_sloc30_1_0+2
	mov	___fsdiv_PARM_1+2, a
	mov	a, _tancotf_sloc30_1_0+3
	mov	___fsdiv_PARM_1+3, a
	mov	a, _tancotf_sloc31_1_0+0
	mov	___fsdiv_PARM_2+0, a
	mov	a, _tancotf_sloc31_1_0+1
	mov	___fsdiv_PARM_2+1, a
	mov	a, _tancotf_sloc31_1_0+2
	mov	___fsdiv_PARM_2+2, a
	mov	a, _tancotf_sloc31_1_0+3
	mov	___fsdiv_PARM_2+3, a
	mov	a, #_tancotf_sloc23_1_0
	push	af
	call	___fsdiv
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _tancotf_sloc23_1_0+0
	idxm	p, a
	inc	p
	mov	a, _tancotf_sloc23_1_0+1
	idxm	p, a
	inc	p
	mov	a, _tancotf_sloc23_1_0+2
	idxm	p, a
	inc	p
	mov	a, _tancotf_sloc23_1_0+3
	idxm	p, a
;	../tancotf.c: 95: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
