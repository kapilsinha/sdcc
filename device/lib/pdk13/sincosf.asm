;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module sincosf
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincosf
	.globl _fabsf
	.globl _sincosf_PARM_2
	.globl _sincosf_PARM_1
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_sincosf_PARM_1:
	.ds 4
_sincosf_PARM_2:
	.ds 1
_sincosf_sloc0_1_0:
	.ds 4
_sincosf_sloc1_1_0:
	.ds 4
_sincosf_sloc2_1_0:
	.ds 4
_sincosf_sloc3_1_0:
	.ds 4
_sincosf_sloc4_1_0:
	.ds 4
_sincosf_sloc5_1_0:
	.ds 4
_sincosf_sloc6_1_0:
	.ds 4
_sincosf_sloc7_1_0:
	.ds 4
_sincosf_sloc8_1_0:
	.ds 4
_sincosf_sloc9_1_0:
	.ds 4
_sincosf_sloc10_1_0:
	.ds 4
_sincosf_sloc11_1_0:
	.ds 4
_sincosf_sloc12_1_0:
	.ds 4
_sincosf_sloc13_1_0:
	.ds 4
_sincosf_sloc14_1_0:
	.ds 4
_sincosf_sloc15_1_0:
	.ds 4
_sincosf_sloc16_1_0:
	.ds 4
_sincosf_sloc17_1_0:
	.ds 4
_sincosf_sloc18_1_0:
	.ds 4
_sincosf_sloc19_1_0:
	.ds 4
_sincosf_sloc20_1_0:
	.ds 4
_sincosf_sloc21_1_0:
	.ds 4
_sincosf_sloc22_1_0:
	.ds 4
_sincosf_sloc23_1_0:
	.ds 4
_sincosf_sloc24_1_0:
	.ds 4
_sincosf_sloc25_1_0:
	.ds 1
_sincosf_sloc26_1_0:
	.ds 2
_sincosf_sloc27_1_0:
	.ds 4
_sincosf_sloc28_1_0:
	.ds 4
_sincosf_sloc29_1_0:
	.ds 4
_sincosf_sloc30_1_0:
	.ds 4
_sincosf_sloc31_1_0:
	.ds 4
_sincosf_sloc32_1_0:
	.ds 4
_sincosf_sloc33_1_0:
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
;	../sincosf.c: 50: float sincosf(float x, bool iscos)
;	-----------------------------------------
;	 function sincosf
;	-----------------------------------------
_sincosf:
;	../sincosf.c: 56: if(iscos)
	mov	a, _sincosf_PARM_2+0
	cneqsn	a, #0x00
	goto	00105$
;	../sincosf.c: 58: y=fabsf(x)+HALF_PI;
	mov	a, sp
	mov	p, a
	push	af
	push	af
	mov	a, _sincosf_PARM_1+0
	idxm	p, a
	inc	p
	mov	a, _sincosf_PARM_1+1
	idxm	p, a
	inc	p
	mov	a, _sincosf_PARM_1+2
	idxm	p, a
	inc	p
	mov	a, _sincosf_PARM_1+3
	idxm	p, a
	mov	a, #_sincosf_sloc0_1_0
	push	af
	call	_fabsf
	mov	a, sp
	add	a, #-6
	mov	sp, a
	mov	a, _sincosf_sloc0_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _sincosf_sloc0_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _sincosf_sloc0_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _sincosf_sloc0_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, #0xdb
	mov	___fsadd_PARM_2+0, a
	mov	a, #0x0f
	mov	___fsadd_PARM_2+1, a
	mov	a, #0xc9
	mov	___fsadd_PARM_2+2, a
	mov	a, #0x3f
	mov	___fsadd_PARM_2+3, a
	mov	a, #_sincosf_sloc1_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc1_1_0+0
	mov	_sincosf_sloc24_1_0+0, a
	mov	a, _sincosf_sloc1_1_0+1
	mov	_sincosf_sloc24_1_0+1, a
	mov	a, _sincosf_sloc1_1_0+2
	mov	_sincosf_sloc24_1_0+2, a
	mov	a, _sincosf_sloc1_1_0+3
	mov	_sincosf_sloc24_1_0+3, a
;	../sincosf.c: 59: sign=0;
	clear	_sincosf_sloc25_1_0+0
	goto	00106$
00105$:
;	../sincosf.c: 63: if(x<0.0)
	mov	a, _sincosf_PARM_1+0
	mov	___fslt_PARM_1+0, a
	mov	a, _sincosf_PARM_1+1
	mov	___fslt_PARM_1+1, a
	mov	a, _sincosf_PARM_1+2
	mov	___fslt_PARM_1+2, a
	mov	a, _sincosf_PARM_1+3
	mov	___fslt_PARM_1+3, a
	clear	___fslt_PARM_2+0
	clear	___fslt_PARM_2+1
	clear	___fslt_PARM_2+2
	clear	___fslt_PARM_2+3
	call	___fslt
	cneqsn	a, #0x00
	goto	00102$
;	../sincosf.c: 64: { y=-x; sign=1; }
	mov	a, _sincosf_PARM_1+0
	mov	_sincosf_sloc24_1_0+0, a
	mov	a, _sincosf_PARM_1+1
	mov	_sincosf_sloc24_1_0+1, a
	mov	a, _sincosf_PARM_1+2
	mov	_sincosf_sloc24_1_0+2, a
	mov	a, _sincosf_PARM_1+3
	xor	a, #0x80
	mov	_sincosf_sloc24_1_0+3, a
	mov	a, #0x01
	mov	_sincosf_sloc25_1_0+0, a
	goto	00106$
00102$:
;	../sincosf.c: 66: { y=x; sign=0; }
	mov	a, _sincosf_PARM_1+0
	mov	_sincosf_sloc24_1_0+0, a
	mov	a, _sincosf_PARM_1+1
	mov	_sincosf_sloc24_1_0+1, a
	mov	a, _sincosf_PARM_1+2
	mov	_sincosf_sloc24_1_0+2, a
	mov	a, _sincosf_PARM_1+3
	mov	_sincosf_sloc24_1_0+3, a
	clear	_sincosf_sloc25_1_0+0
00106$:
;	../sincosf.c: 69: if(y>YMAX)
	clear	___fslt_PARM_1+0
	mov	a, #0x0c
	mov	___fslt_PARM_1+1, a
	mov	a, #0x49
	mov	___fslt_PARM_1+2, a
	mov	a, #0x46
	mov	___fslt_PARM_1+3, a
	mov	a, _sincosf_sloc24_1_0+0
	mov	___fslt_PARM_2+0, a
	mov	a, _sincosf_sloc24_1_0+1
	mov	___fslt_PARM_2+1, a
	mov	a, _sincosf_sloc24_1_0+2
	mov	___fslt_PARM_2+2, a
	mov	a, _sincosf_sloc24_1_0+3
	mov	___fslt_PARM_2+3, a
	call	___fslt
	cneqsn	a, #0x00
	goto	00108$
;	../sincosf.c: 71: errno=ERANGE;
	mov	a, #0x22
	mov	_errno+0, a
	clear	_errno+1
;	../sincosf.c: 72: return 0.0;
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
00108$:
;	../sincosf.c: 76: N=((y*iPI)+0.5); /*y is positive*/
	mov	a, #0x83
	mov	___fsmul_PARM_1+0, a
	mov	a, #0xf9
	mov	___fsmul_PARM_1+1, a
	mov	a, #0xa2
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x3e
	mov	___fsmul_PARM_1+3, a
	mov	a, _sincosf_sloc24_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _sincosf_sloc24_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _sincosf_sloc24_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _sincosf_sloc24_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_sincosf_sloc2_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc2_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _sincosf_sloc2_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _sincosf_sloc2_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _sincosf_sloc2_1_0+3
	mov	___fsadd_PARM_1+3, a
	clear	___fsadd_PARM_2+0
	clear	___fsadd_PARM_2+1
	clear	___fsadd_PARM_2+2
	mov	a, #0x3f
	mov	___fsadd_PARM_2+3, a
	mov	a, #_sincosf_sloc3_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc3_1_0+0
	mov	___fs2sint_PARM_1+0, a
	mov	a, _sincosf_sloc3_1_0+1
	mov	___fs2sint_PARM_1+1, a
	mov	a, _sincosf_sloc3_1_0+2
	mov	___fs2sint_PARM_1+2, a
	mov	a, _sincosf_sloc3_1_0+3
	mov	___fs2sint_PARM_1+3, a
	call	___fs2sint
	mov	_sincosf_sloc26_1_0+0, a
	mov	a, p
	mov	_sincosf_sloc26_1_0+1, a
;	../sincosf.c: 79: if(N&1) sign=!sign;
	mov	a, _sincosf_sloc26_1_0+0
	and	a, #0x01
	cneqsn	a, #0x00
	goto	00110$
	mov	a, _sincosf_sloc25_1_0+0
	sub	a, #0x01
	mov	a, #0x00
	slc	a
	mov	_sincosf_sloc25_1_0+0, a
00110$:
;	../sincosf.c: 81: XN=N;
	mov	a, _sincosf_sloc26_1_0+0
	mov	___sint2fs_PARM_1+0, a
	mov	a, _sincosf_sloc26_1_0+1
	mov	___sint2fs_PARM_1+1, a
	mov	a, #_sincosf_sloc4_1_0
	push	af
	call	___sint2fs
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc4_1_0+0
	mov	_sincosf_sloc27_1_0+0, a
	mov	a, _sincosf_sloc4_1_0+1
	mov	_sincosf_sloc27_1_0+1, a
	mov	a, _sincosf_sloc4_1_0+2
	mov	_sincosf_sloc27_1_0+2, a
	mov	a, _sincosf_sloc4_1_0+3
	mov	_sincosf_sloc27_1_0+3, a
;	../sincosf.c: 83: if(iscos) XN-=0.5;
	mov	a, _sincosf_PARM_2+0
	cneqsn	a, #0x00
	goto	00112$
	mov	a, _sincosf_sloc27_1_0+0
	mov	___fssub_PARM_1+0, a
	mov	a, _sincosf_sloc27_1_0+1
	mov	___fssub_PARM_1+1, a
	mov	a, _sincosf_sloc27_1_0+2
	mov	___fssub_PARM_1+2, a
	mov	a, _sincosf_sloc27_1_0+3
	mov	___fssub_PARM_1+3, a
	clear	___fssub_PARM_2+0
	clear	___fssub_PARM_2+1
	clear	___fssub_PARM_2+2
	mov	a, #0x3f
	mov	___fssub_PARM_2+3, a
	mov	a, #_sincosf_sloc5_1_0
	push	af
	call	___fssub
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc5_1_0+0
	mov	_sincosf_sloc27_1_0+0, a
	mov	a, _sincosf_sloc5_1_0+1
	mov	_sincosf_sloc27_1_0+1, a
	mov	a, _sincosf_sloc5_1_0+2
	mov	_sincosf_sloc27_1_0+2, a
	mov	a, _sincosf_sloc5_1_0+3
	mov	_sincosf_sloc27_1_0+3, a
00112$:
;	../sincosf.c: 85: y=fabsf(x);
	mov	a, sp
	mov	p, a
	push	af
	push	af
	mov	a, _sincosf_PARM_1+0
	idxm	p, a
	inc	p
	mov	a, _sincosf_PARM_1+1
	idxm	p, a
	inc	p
	mov	a, _sincosf_PARM_1+2
	idxm	p, a
	inc	p
	mov	a, _sincosf_PARM_1+3
	idxm	p, a
	mov	a, #_sincosf_sloc6_1_0
	push	af
	call	_fabsf
	mov	a, sp
	add	a, #-6
	mov	sp, a
	mov	a, _sincosf_sloc6_1_0+0
	mov	_sincosf_sloc28_1_0+0, a
	mov	a, _sincosf_sloc6_1_0+1
	mov	_sincosf_sloc28_1_0+1, a
	mov	a, _sincosf_sloc6_1_0+2
	mov	_sincosf_sloc28_1_0+2, a
	mov	a, _sincosf_sloc6_1_0+3
	mov	_sincosf_sloc28_1_0+3, a
;	../sincosf.c: 86: r=(int)y;
	mov	a, _sincosf_sloc28_1_0+0
	mov	___fs2sint_PARM_1+0, a
	mov	a, _sincosf_sloc28_1_0+1
	mov	___fs2sint_PARM_1+1, a
	mov	a, _sincosf_sloc28_1_0+2
	mov	___fs2sint_PARM_1+2, a
	mov	a, _sincosf_sloc28_1_0+3
	mov	___fs2sint_PARM_1+3, a
	call	___fs2sint
	mov	___sint2fs_PARM_1+0, a
	mov	a, p
	mov	___sint2fs_PARM_1+1, a
	mov	a, #_sincosf_sloc7_1_0
	push	af
	call	___sint2fs
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc7_1_0+0
	mov	_sincosf_sloc29_1_0+0, a
	mov	a, _sincosf_sloc7_1_0+1
	mov	_sincosf_sloc29_1_0+1, a
	mov	a, _sincosf_sloc7_1_0+2
	mov	_sincosf_sloc29_1_0+2, a
	mov	a, _sincosf_sloc7_1_0+3
	mov	_sincosf_sloc29_1_0+3, a
;	../sincosf.c: 87: g=y-r;
	mov	a, _sincosf_sloc28_1_0+0
	mov	___fssub_PARM_1+0, a
	mov	a, _sincosf_sloc28_1_0+1
	mov	___fssub_PARM_1+1, a
	mov	a, _sincosf_sloc28_1_0+2
	mov	___fssub_PARM_1+2, a
	mov	a, _sincosf_sloc28_1_0+3
	mov	___fssub_PARM_1+3, a
	mov	a, _sincosf_sloc29_1_0+0
	mov	___fssub_PARM_2+0, a
	mov	a, _sincosf_sloc29_1_0+1
	mov	___fssub_PARM_2+1, a
	mov	a, _sincosf_sloc29_1_0+2
	mov	___fssub_PARM_2+2, a
	mov	a, _sincosf_sloc29_1_0+3
	mov	___fssub_PARM_2+3, a
	mov	a, #_sincosf_sloc8_1_0
	push	af
	call	___fssub
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc8_1_0+0
	mov	_sincosf_sloc30_1_0+0, a
	mov	a, _sincosf_sloc8_1_0+1
	mov	_sincosf_sloc30_1_0+1, a
	mov	a, _sincosf_sloc8_1_0+2
	mov	_sincosf_sloc30_1_0+2, a
	mov	a, _sincosf_sloc8_1_0+3
	mov	_sincosf_sloc30_1_0+3, a
;	../sincosf.c: 88: f=((r-XN*C1)+g)-XN*C2;
	clear	___fsmul_PARM_1+0
	clear	___fsmul_PARM_1+1
	mov	a, #0x49
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x40
	mov	___fsmul_PARM_1+3, a
	mov	a, _sincosf_sloc27_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _sincosf_sloc27_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _sincosf_sloc27_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _sincosf_sloc27_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_sincosf_sloc9_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc29_1_0+0
	mov	___fssub_PARM_1+0, a
	mov	a, _sincosf_sloc29_1_0+1
	mov	___fssub_PARM_1+1, a
	mov	a, _sincosf_sloc29_1_0+2
	mov	___fssub_PARM_1+2, a
	mov	a, _sincosf_sloc29_1_0+3
	mov	___fssub_PARM_1+3, a
	mov	a, _sincosf_sloc9_1_0+0
	mov	___fssub_PARM_2+0, a
	mov	a, _sincosf_sloc9_1_0+1
	mov	___fssub_PARM_2+1, a
	mov	a, _sincosf_sloc9_1_0+2
	mov	___fssub_PARM_2+2, a
	mov	a, _sincosf_sloc9_1_0+3
	mov	___fssub_PARM_2+3, a
	mov	a, #_sincosf_sloc10_1_0
	push	af
	call	___fssub
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc10_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _sincosf_sloc10_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _sincosf_sloc10_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _sincosf_sloc10_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, _sincosf_sloc30_1_0+0
	mov	___fsadd_PARM_2+0, a
	mov	a, _sincosf_sloc30_1_0+1
	mov	___fsadd_PARM_2+1, a
	mov	a, _sincosf_sloc30_1_0+2
	mov	___fsadd_PARM_2+2, a
	mov	a, _sincosf_sloc30_1_0+3
	mov	___fsadd_PARM_2+3, a
	mov	a, #_sincosf_sloc11_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, #0x22
	mov	___fsmul_PARM_1+0, a
	mov	a, #0xaa
	mov	___fsmul_PARM_1+1, a
	mov	a, #0x7d
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x3a
	mov	___fsmul_PARM_1+3, a
	mov	a, _sincosf_sloc27_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _sincosf_sloc27_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _sincosf_sloc27_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _sincosf_sloc27_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_sincosf_sloc12_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc11_1_0+0
	mov	___fssub_PARM_1+0, a
	mov	a, _sincosf_sloc11_1_0+1
	mov	___fssub_PARM_1+1, a
	mov	a, _sincosf_sloc11_1_0+2
	mov	___fssub_PARM_1+2, a
	mov	a, _sincosf_sloc11_1_0+3
	mov	___fssub_PARM_1+3, a
	mov	a, _sincosf_sloc12_1_0+0
	mov	___fssub_PARM_2+0, a
	mov	a, _sincosf_sloc12_1_0+1
	mov	___fssub_PARM_2+1, a
	mov	a, _sincosf_sloc12_1_0+2
	mov	___fssub_PARM_2+2, a
	mov	a, _sincosf_sloc12_1_0+3
	mov	___fssub_PARM_2+3, a
	mov	a, #_sincosf_sloc13_1_0
	push	af
	call	___fssub
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc13_1_0+0
	mov	_sincosf_sloc31_1_0+0, a
	mov	a, _sincosf_sloc13_1_0+1
	mov	_sincosf_sloc31_1_0+1, a
	mov	a, _sincosf_sloc13_1_0+2
	mov	_sincosf_sloc31_1_0+2, a
	mov	a, _sincosf_sloc13_1_0+3
	mov	_sincosf_sloc31_1_0+3, a
;	../sincosf.c: 90: g=f*f;
	mov	a, _sincosf_sloc31_1_0+0
	mov	___fsmul_PARM_1+0, a
	mov	a, _sincosf_sloc31_1_0+1
	mov	___fsmul_PARM_1+1, a
	mov	a, _sincosf_sloc31_1_0+2
	mov	___fsmul_PARM_1+2, a
	mov	a, _sincosf_sloc31_1_0+3
	mov	___fsmul_PARM_1+3, a
	mov	a, _sincosf_sloc31_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _sincosf_sloc31_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _sincosf_sloc31_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _sincosf_sloc31_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_sincosf_sloc14_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc14_1_0+0
	mov	_sincosf_sloc32_1_0+0, a
	mov	a, _sincosf_sloc14_1_0+1
	mov	_sincosf_sloc32_1_0+1, a
	mov	a, _sincosf_sloc14_1_0+2
	mov	_sincosf_sloc32_1_0+2, a
	mov	a, _sincosf_sloc14_1_0+3
	mov	_sincosf_sloc32_1_0+3, a
;	../sincosf.c: 91: if(g>EPS2) //Used to be if(fabsf(f)>EPS)
	mov	a, #0xf3
	mov	___fslt_PARM_1+0, a
	mov	a, #0xff
	mov	___fslt_PARM_1+1, a
	mov	a, #0x7f
	mov	___fslt_PARM_1+2, a
	mov	a, #0x33
	mov	___fslt_PARM_1+3, a
	mov	a, _sincosf_sloc32_1_0+0
	mov	___fslt_PARM_2+0, a
	mov	a, _sincosf_sloc32_1_0+1
	mov	___fslt_PARM_2+1, a
	mov	a, _sincosf_sloc32_1_0+2
	mov	___fslt_PARM_2+2, a
	mov	a, _sincosf_sloc32_1_0+3
	mov	___fslt_PARM_2+3, a
	call	___fslt
	cneqsn	a, #0x00
	goto	00114$
;	../sincosf.c: 93: r=(((r4*g+r3)*g+r2)*g+r1)*g;
	mov	a, #0x5b
	mov	___fsmul_PARM_1+0, a
	mov	a, #0x9c
	mov	___fsmul_PARM_1+1, a
	mov	a, #0x2e
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x36
	mov	___fsmul_PARM_1+3, a
	mov	a, _sincosf_sloc32_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _sincosf_sloc32_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _sincosf_sloc32_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _sincosf_sloc32_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_sincosf_sloc15_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc15_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _sincosf_sloc15_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _sincosf_sloc15_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _sincosf_sloc15_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, #0x22
	mov	___fsadd_PARM_2+0, a
	mov	a, #0xb2
	mov	___fsadd_PARM_2+1, a
	mov	a, #0x4f
	mov	___fsadd_PARM_2+2, a
	mov	a, #0xb9
	mov	___fsadd_PARM_2+3, a
	mov	a, #_sincosf_sloc16_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc16_1_0+0
	mov	___fsmul_PARM_1+0, a
	mov	a, _sincosf_sloc16_1_0+1
	mov	___fsmul_PARM_1+1, a
	mov	a, _sincosf_sloc16_1_0+2
	mov	___fsmul_PARM_1+2, a
	mov	a, _sincosf_sloc16_1_0+3
	mov	___fsmul_PARM_1+3, a
	mov	a, _sincosf_sloc32_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _sincosf_sloc32_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _sincosf_sloc32_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _sincosf_sloc32_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_sincosf_sloc17_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc17_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _sincosf_sloc17_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _sincosf_sloc17_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _sincosf_sloc17_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, #0x3e
	mov	___fsadd_PARM_2+0, a
	mov	a, #0x87
	mov	___fsadd_PARM_2+1, a
	mov	a, #0x08
	mov	___fsadd_PARM_2+2, a
	mov	a, #0x3c
	mov	___fsadd_PARM_2+3, a
	mov	a, #_sincosf_sloc18_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc18_1_0+0
	mov	___fsmul_PARM_1+0, a
	mov	a, _sincosf_sloc18_1_0+1
	mov	___fsmul_PARM_1+1, a
	mov	a, _sincosf_sloc18_1_0+2
	mov	___fsmul_PARM_1+2, a
	mov	a, _sincosf_sloc18_1_0+3
	mov	___fsmul_PARM_1+3, a
	mov	a, _sincosf_sloc32_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _sincosf_sloc32_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _sincosf_sloc32_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _sincosf_sloc32_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_sincosf_sloc19_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc19_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _sincosf_sloc19_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _sincosf_sloc19_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _sincosf_sloc19_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, #0xa4
	mov	___fsadd_PARM_2+0, a
	mov	a, #0xaa
	mov	___fsadd_PARM_2+1, a
	mov	a, #0x2a
	mov	___fsadd_PARM_2+2, a
	mov	a, #0xbe
	mov	___fsadd_PARM_2+3, a
	mov	a, #_sincosf_sloc20_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc20_1_0+0
	mov	___fsmul_PARM_1+0, a
	mov	a, _sincosf_sloc20_1_0+1
	mov	___fsmul_PARM_1+1, a
	mov	a, _sincosf_sloc20_1_0+2
	mov	___fsmul_PARM_1+2, a
	mov	a, _sincosf_sloc20_1_0+3
	mov	___fsmul_PARM_1+3, a
	mov	a, _sincosf_sloc32_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _sincosf_sloc32_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _sincosf_sloc32_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _sincosf_sloc32_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_sincosf_sloc21_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc21_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _sincosf_sloc21_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _sincosf_sloc21_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _sincosf_sloc21_1_0+3
	mov	___fsmul_PARM_2+3, a
;	../sincosf.c: 94: f+=f*r;
	mov	a, _sincosf_sloc31_1_0+0
	mov	___fsmul_PARM_1+0, a
	mov	a, _sincosf_sloc31_1_0+1
	mov	___fsmul_PARM_1+1, a
	mov	a, _sincosf_sloc31_1_0+2
	mov	___fsmul_PARM_1+2, a
	mov	a, _sincosf_sloc31_1_0+3
	mov	___fsmul_PARM_1+3, a
	mov	a, #_sincosf_sloc22_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc31_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _sincosf_sloc31_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _sincosf_sloc31_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _sincosf_sloc31_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, _sincosf_sloc22_1_0+0
	mov	___fsadd_PARM_2+0, a
	mov	a, _sincosf_sloc22_1_0+1
	mov	___fsadd_PARM_2+1, a
	mov	a, _sincosf_sloc22_1_0+2
	mov	___fsadd_PARM_2+2, a
	mov	a, _sincosf_sloc22_1_0+3
	mov	___fsadd_PARM_2+3, a
	mov	a, #_sincosf_sloc23_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _sincosf_sloc23_1_0+0
	mov	_sincosf_sloc31_1_0+0, a
	mov	a, _sincosf_sloc23_1_0+1
	mov	_sincosf_sloc31_1_0+1, a
	mov	a, _sincosf_sloc23_1_0+2
	mov	_sincosf_sloc31_1_0+2, a
	mov	a, _sincosf_sloc23_1_0+3
	mov	_sincosf_sloc31_1_0+3, a
00114$:
;	../sincosf.c: 96: return (sign?-f:f);
	mov	a, _sincosf_sloc25_1_0+0
	cneqsn	a, #0x00
	goto	00117$
	mov	a, _sincosf_sloc31_1_0+0
	mov	_sincosf_sloc33_1_0+0, a
	mov	a, _sincosf_sloc31_1_0+1
	mov	_sincosf_sloc33_1_0+1, a
	mov	a, _sincosf_sloc31_1_0+2
	mov	_sincosf_sloc33_1_0+2, a
	mov	a, _sincosf_sloc31_1_0+3
	xor	a, #0x80
	mov	_sincosf_sloc33_1_0+3, a
	goto	00118$
00117$:
	mov	a, _sincosf_sloc31_1_0+0
	mov	_sincosf_sloc33_1_0+0, a
	mov	a, _sincosf_sloc31_1_0+1
	mov	_sincosf_sloc33_1_0+1, a
	mov	a, _sincosf_sloc31_1_0+2
	mov	_sincosf_sloc33_1_0+2, a
	mov	a, _sincosf_sloc31_1_0+3
	mov	_sincosf_sloc33_1_0+3, a
00118$:
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _sincosf_sloc33_1_0+0
	idxm	p, a
	inc	p
	mov	a, _sincosf_sloc33_1_0+1
	idxm	p, a
	inc	p
	mov	a, _sincosf_sloc33_1_0+2
	idxm	p, a
	inc	p
	mov	a, _sincosf_sloc33_1_0+3
	idxm	p, a
;	../sincosf.c: 97: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
