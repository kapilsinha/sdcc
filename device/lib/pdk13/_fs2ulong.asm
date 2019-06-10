;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _fs2ulong
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong_PARM_1
	.globl ___fs2ulong
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
___fs2ulong_PARM_1:
	.ds 4
___fs2ulong_fl1_65536_21:
	.ds 4
___fs2ulong_exp_65536_21:
	.ds 2
___fs2ulong_l_65536_21:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
___fs2ulong_sloc0_1_0:
	.ds 4
___fs2ulong_sloc1_1_0:
	.ds 4
___fs2ulong_sloc2_1_0:
	.ds 4
___fs2ulong_sloc3_1_0:
	.ds 4
___fs2ulong_sloc4_1_0:
	.ds 4
___fs2ulong_sloc5_1_0:
	.ds 4
___fs2ulong_sloc6_1_0:
	.ds 4
___fs2ulong_sloc7_1_0:
	.ds 2
___fs2ulong_sloc8_1_0:
	.ds 4
___fs2ulong_sloc9_1_0:
	.ds 4
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
;	../_fs2ulong.c: 103: __fs2ulong (float a1)
;	-----------------------------------------
;	 function __fs2ulong
;	-----------------------------------------
___fs2ulong:
;	../_fs2ulong.c: 109: fl1.f = a1;
	mov	a, ___fs2ulong_PARM_1+0
	mov	___fs2ulong_fl1_65536_21+0, a
	mov	a, ___fs2ulong_PARM_1+1
	mov	___fs2ulong_fl1_65536_21+1, a
	mov	a, ___fs2ulong_PARM_1+2
	mov	___fs2ulong_fl1_65536_21+2, a
	mov	a, ___fs2ulong_PARM_1+3
	mov	___fs2ulong_fl1_65536_21+3, a
;	../_fs2ulong.c: 111: if (!fl1.l || SIGN(fl1.l))
	mov	a, ___fs2ulong_fl1_65536_21+0
	mov	___fs2ulong_sloc0_1_0+0, a
	mov	a, ___fs2ulong_fl1_65536_21+1
	mov	___fs2ulong_sloc0_1_0+1, a
	mov	a, ___fs2ulong_fl1_65536_21+2
	mov	___fs2ulong_sloc0_1_0+2, a
	mov	a, ___fs2ulong_fl1_65536_21+3
	mov	___fs2ulong_sloc0_1_0+3, a
	mov	a, ___fs2ulong_sloc0_1_0+0
	or	a, ___fs2ulong_sloc0_1_0+1
	or	a, ___fs2ulong_sloc0_1_0+2
	or	a, ___fs2ulong_sloc0_1_0+3
	cneqsn	a, #0x00
	goto	00101$
	mov	a, ___fs2ulong_fl1_65536_21+0
	mov	___fs2ulong_sloc1_1_0+0, a
	mov	a, ___fs2ulong_fl1_65536_21+1
	mov	___fs2ulong_sloc1_1_0+1, a
	mov	a, ___fs2ulong_fl1_65536_21+2
	mov	___fs2ulong_sloc1_1_0+2, a
	mov	a, ___fs2ulong_fl1_65536_21+3
	mov	___fs2ulong_sloc1_1_0+3, a
	mov	a, ___fs2ulong_sloc1_1_0+0
	mov	___fs2ulong_sloc2_1_0+0, a
	mov	a, ___fs2ulong_sloc1_1_0+1
	mov	___fs2ulong_sloc2_1_0+1, a
	mov	a, ___fs2ulong_sloc1_1_0+2
	mov	___fs2ulong_sloc2_1_0+2, a
	mov	a, ___fs2ulong_sloc1_1_0+3
	mov	___fs2ulong_sloc2_1_0+3, a
	mov	___fs2ulong_sloc3_1_0+0, a
	clear	___fs2ulong_sloc3_1_0+1
	clear	___fs2ulong_sloc3_1_0+2
	clear	___fs2ulong_sloc3_1_0+3
	mov	a, #7
00110$:
	sr	___fs2ulong_sloc3_1_0+0
	dzsn	a
	goto	00110$
	mov	a, ___fs2ulong_sloc3_1_0+0
	and	a, #0x01
	cneqsn	a, #0x00
	goto	00102$
00101$:
;	../_fs2ulong.c: 112: return (0);
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
;	../_fs2ulong.c: 114: exp = EXP (fl1.l) - EXCESS - 24;
	mov	a, ___fs2ulong_fl1_65536_21+0
	mov	___fs2ulong_sloc4_1_0+0, a
	mov	a, ___fs2ulong_fl1_65536_21+1
	mov	___fs2ulong_sloc4_1_0+1, a
	mov	a, ___fs2ulong_fl1_65536_21+2
	mov	___fs2ulong_sloc4_1_0+2, a
	mov	a, ___fs2ulong_fl1_65536_21+3
	mov	___fs2ulong_sloc4_1_0+3, a
	mov	a, ___fs2ulong_sloc4_1_0+0
	mov	___fs2ulong_sloc5_1_0+0, a
	mov	a, ___fs2ulong_sloc4_1_0+1
	mov	___fs2ulong_sloc5_1_0+1, a
	mov	a, ___fs2ulong_sloc4_1_0+2
	mov	___fs2ulong_sloc5_1_0+2, a
	mov	a, ___fs2ulong_sloc4_1_0+3
	mov	___fs2ulong_sloc5_1_0+3, a
	mov	a, ___fs2ulong_sloc5_1_0+2
	mov	___fs2ulong_sloc6_1_0+0, a
	mov	a, ___fs2ulong_sloc5_1_0+3
	mov	___fs2ulong_sloc6_1_0+1, a
	clear	___fs2ulong_sloc6_1_0+2
	clear	___fs2ulong_sloc6_1_0+3
	mov	a, #7
00111$:
	sr	___fs2ulong_sloc6_1_0+1
	src	___fs2ulong_sloc6_1_0+0
	dzsn	a
	goto	00111$
	mov	a, ___fs2ulong_sloc6_1_0+1
	mov	p, a
	mov	a, ___fs2ulong_sloc6_1_0+0
	mov	___fs2ulong_sloc7_1_0+0, a
	clear	___fs2ulong_sloc7_1_0+1
	mov	a, ___fs2ulong_sloc7_1_0+0
	sub	a, #0x96
	mov	___fs2ulong_exp_65536_21+0, a
	mov	a, ___fs2ulong_sloc7_1_0+1
	subc	a
	mov	___fs2ulong_exp_65536_21+1, a
;	../_fs2ulong.c: 115: l = MANT (fl1.l);
	mov	a, ___fs2ulong_fl1_65536_21+0
	mov	___fs2ulong_sloc8_1_0+0, a
	mov	a, ___fs2ulong_fl1_65536_21+1
	mov	___fs2ulong_sloc8_1_0+1, a
	mov	a, ___fs2ulong_fl1_65536_21+2
	mov	___fs2ulong_sloc8_1_0+2, a
	mov	a, ___fs2ulong_fl1_65536_21+3
	mov	___fs2ulong_sloc8_1_0+3, a
	mov	a, ___fs2ulong_sloc8_1_0+0
	mov	___fs2ulong_sloc9_1_0+0, a
	mov	a, ___fs2ulong_sloc8_1_0+1
	mov	___fs2ulong_sloc9_1_0+1, a
	mov	a, ___fs2ulong_sloc8_1_0+2
	and	a, #0x7f
	mov	___fs2ulong_sloc9_1_0+2, a
	clear	___fs2ulong_sloc9_1_0+3
	mov	a, ___fs2ulong_sloc9_1_0+0
	mov	___fs2ulong_l_65536_21+0, a
	mov	a, ___fs2ulong_sloc9_1_0+1
	mov	___fs2ulong_l_65536_21+1, a
	mov	a, ___fs2ulong_sloc9_1_0+2
	or	a, #0x80
	mov	___fs2ulong_l_65536_21+2, a
	mov	a, ___fs2ulong_sloc9_1_0+3
	mov	___fs2ulong_l_65536_21+3, a
;	../_fs2ulong.c: 117: l >>= -exp;
	mov	a, ___fs2ulong_exp_65536_21+0
	neg	a
00112$:
	sub	a, #1
	t0sn	f, c
	goto	00113$
	push	af
	mov	a, #0x01
	sl	___fs2ulong_l_65536_21+3
	t0sn	f, c
	or	___fs2ulong_l_65536_21+3, a
	src	___fs2ulong_l_65536_21+3
	src	___fs2ulong_l_65536_21+3
	src	___fs2ulong_l_65536_21+2
	src	___fs2ulong_l_65536_21+1
	src	___fs2ulong_l_65536_21+0
	pop	af
	goto	00112$
00113$:
;	../_fs2ulong.c: 119: return l;
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, ___fs2ulong_l_65536_21+0
	idxm	p, a
	inc	p
	mov	a, ___fs2ulong_l_65536_21+1
	idxm	p, a
	inc	p
	mov	a, ___fs2ulong_l_65536_21+2
	idxm	p, a
	inc	p
	mov	a, ___fs2ulong_l_65536_21+3
	idxm	p, a
;	../_fs2ulong.c: 120: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
