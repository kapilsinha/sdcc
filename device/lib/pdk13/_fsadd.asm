;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _fsadd
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsadd_PARM_2
	.globl ___fsadd_PARM_1
	.globl ___fsadd
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
___fsadd_PARM_1:
	.ds 4
___fsadd_PARM_2:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
___fsadd_sloc0_1_0:
	.ds 4
___fsadd_sloc1_1_0:
	.ds 4
___fsadd_sloc2_1_0:
	.ds 4
___fsadd_sloc3_1_0:
	.ds 2
___fsadd_sloc4_1_0:
	.ds 4
___fsadd_sloc5_1_0:
	.ds 4
___fsadd_sloc6_1_0:
	.ds 4
___fsadd_sloc7_1_0:
	.ds 4
___fsadd_sloc8_1_0:
	.ds 4
___fsadd_sloc9_1_0:
	.ds 4
___fsadd_sloc10_1_0:
	.ds 4
___fsadd_sloc11_1_0:
	.ds 2
___fsadd_sloc12_1_0:
	.ds 4
___fsadd_sloc13_1_0:
	.ds 4
___fsadd_sloc14_1_0:
	.ds 4
___fsadd_sloc15_1_0:
	.ds 4
___fsadd_sloc16_1_0:
	.ds 2
___fsadd_sloc17_1_0:
	.ds 2
___fsadd_sloc18_1_0:
	.ds 4
___fsadd_sloc19_1_0:
	.ds 1
___fsadd_sloc20_1_0:
	.ds 2
___fsadd_sloc21_1_0:
	.ds 4
___fsadd_sloc22_1_0:
	.ds 2
___fsadd_sloc23_1_0:
	.ds 2
___fsadd_sloc24_1_0:
	.ds 4
___fsadd_sloc25_1_0:
	.ds 4
___fsadd_sloc26_1_0:
	.ds 4
___fsadd_sloc27_1_0:
	.ds 4
___fsadd_sloc28_1_0:
	.ds 4
___fsadd_sloc29_1_0:
	.ds 4
___fsadd_sloc30_1_0:
	.ds 4
___fsadd_sloc31_1_0:
	.ds 4
___fsadd_sloc32_1_0:
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
;	../_fsadd.c: 170: float __fsadd (float a1, float a2)
;	-----------------------------------------
;	 function __fsadd
;	-----------------------------------------
___fsadd:
;	../_fsadd.c: 178: pfl2 = (long _AUTOMEM *)&a2;
;	../_fsadd.c: 179: exp2 = EXP (*pfl2);
	mov	a, ___fsadd_PARM_2+0
	mov	___fsadd_sloc0_1_0+0, a
	mov	a, ___fsadd_PARM_2+1
	mov	___fsadd_sloc0_1_0+1, a
	mov	a, ___fsadd_PARM_2+2
	mov	___fsadd_sloc0_1_0+2, a
	mov	a, ___fsadd_PARM_2+3
	mov	___fsadd_sloc0_1_0+3, a
	mov	a, ___fsadd_sloc0_1_0+0
	mov	___fsadd_sloc1_1_0+0, a
	mov	a, ___fsadd_sloc0_1_0+1
	mov	___fsadd_sloc1_1_0+1, a
	mov	a, ___fsadd_sloc0_1_0+2
	mov	___fsadd_sloc1_1_0+2, a
	mov	a, ___fsadd_sloc0_1_0+3
	mov	___fsadd_sloc1_1_0+3, a
	mov	a, ___fsadd_sloc1_1_0+2
	mov	___fsadd_sloc2_1_0+0, a
	mov	a, ___fsadd_sloc1_1_0+3
	mov	___fsadd_sloc2_1_0+1, a
	clear	___fsadd_sloc2_1_0+2
	clear	___fsadd_sloc2_1_0+3
	mov	a, #7
00240$:
	sr	___fsadd_sloc2_1_0+1
	src	___fsadd_sloc2_1_0+0
	dzsn	a
	goto	00240$
	mov	a, ___fsadd_sloc2_1_0+1
	mov	p, a
	mov	a, ___fsadd_sloc2_1_0+0
	mov	___fsadd_sloc3_1_0+0, a
	clear	___fsadd_sloc3_1_0+1
;	../_fsadd.c: 180: mant2 = MANT (*pfl2) << 4;
	mov	a, ___fsadd_sloc0_1_0+0
	mov	___fsadd_sloc4_1_0+0, a
	mov	a, ___fsadd_sloc0_1_0+1
	mov	___fsadd_sloc4_1_0+1, a
	mov	a, ___fsadd_sloc0_1_0+2
	and	a, #0x7f
	mov	___fsadd_sloc4_1_0+2, a
	clear	___fsadd_sloc4_1_0+3
	mov	a, ___fsadd_sloc4_1_0+0
	mov	___fsadd_sloc5_1_0+0, a
	mov	a, ___fsadd_sloc4_1_0+1
	mov	___fsadd_sloc5_1_0+1, a
	mov	a, ___fsadd_sloc4_1_0+2
	or	a, #0x80
	mov	___fsadd_sloc5_1_0+2, a
	mov	a, ___fsadd_sloc4_1_0+3
	mov	___fsadd_sloc5_1_0+3, a
	mov	a, ___fsadd_sloc5_1_0+0
	mov	___fsadd_sloc6_1_0+0, a
	mov	a, ___fsadd_sloc5_1_0+1
	mov	___fsadd_sloc6_1_0+1, a
	mov	a, ___fsadd_sloc5_1_0+2
	mov	___fsadd_sloc6_1_0+2, a
	mov	a, ___fsadd_sloc5_1_0+3
	mov	___fsadd_sloc6_1_0+3, a
	mov	a, #4
00241$:
	sl	___fsadd_sloc6_1_0+0
	slc	___fsadd_sloc6_1_0+1
	slc	___fsadd_sloc6_1_0+2
	slc	___fsadd_sloc6_1_0+3
	dzsn	a
	goto	00241$
;	../_fsadd.c: 181: if (SIGN (*pfl2))
	mov	a, ___fsadd_sloc1_1_0+3
	mov	___fsadd_sloc7_1_0+0, a
	clear	___fsadd_sloc7_1_0+1
	clear	___fsadd_sloc7_1_0+2
	clear	___fsadd_sloc7_1_0+3
	mov	a, #7
00242$:
	sr	___fsadd_sloc7_1_0+0
	dzsn	a
	goto	00242$
	mov	a, ___fsadd_sloc7_1_0+0
	and	a, #0x01
	cneqsn	a, #0x00
	goto	00102$
;	../_fsadd.c: 182: mant2 = -mant2;
	mov	a, #0x00
	sub	a, ___fsadd_sloc6_1_0+0
	mov	___fsadd_sloc6_1_0+0, a
	mov	a, #0x00
	subc	a, ___fsadd_sloc6_1_0+1
	mov	___fsadd_sloc6_1_0+1, a
	mov	a, #0x00
	subc	a, ___fsadd_sloc6_1_0+2
	mov	___fsadd_sloc6_1_0+2, a
	mov	a, #0x00
	subc	a, ___fsadd_sloc6_1_0+3
	mov	___fsadd_sloc6_1_0+3, a
00102$:
;	../_fsadd.c: 184: if (!*pfl2)
	mov	a, ___fsadd_sloc0_1_0+0
	or	a, ___fsadd_sloc0_1_0+1
	or	a, ___fsadd_sloc0_1_0+2
	or	a, ___fsadd_sloc0_1_0+3
	ceqsn	a, #0x00
	goto	00104$
;	../_fsadd.c: 185: return (a1);
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, ___fsadd_PARM_1+0
	idxm	p, a
	inc	p
	mov	a, ___fsadd_PARM_1+1
	idxm	p, a
	inc	p
	mov	a, ___fsadd_PARM_1+2
	idxm	p, a
	inc	p
	mov	a, ___fsadd_PARM_1+3
	idxm	p, a
	ret
00104$:
;	../_fsadd.c: 187: pfl1 = (long _AUTOMEM *)&a1;
;	../_fsadd.c: 188: exp1 = EXP (*pfl1);
	mov	a, ___fsadd_PARM_1+0
	mov	___fsadd_sloc8_1_0+0, a
	mov	a, ___fsadd_PARM_1+1
	mov	___fsadd_sloc8_1_0+1, a
	mov	a, ___fsadd_PARM_1+2
	mov	___fsadd_sloc8_1_0+2, a
	mov	a, ___fsadd_PARM_1+3
	mov	___fsadd_sloc8_1_0+3, a
	mov	a, ___fsadd_sloc8_1_0+0
	mov	___fsadd_sloc9_1_0+0, a
	mov	a, ___fsadd_sloc8_1_0+1
	mov	___fsadd_sloc9_1_0+1, a
	mov	a, ___fsadd_sloc8_1_0+2
	mov	___fsadd_sloc9_1_0+2, a
	mov	a, ___fsadd_sloc8_1_0+3
	mov	___fsadd_sloc9_1_0+3, a
	mov	a, ___fsadd_sloc9_1_0+2
	mov	___fsadd_sloc10_1_0+0, a
	mov	a, ___fsadd_sloc9_1_0+3
	mov	___fsadd_sloc10_1_0+1, a
	clear	___fsadd_sloc10_1_0+2
	clear	___fsadd_sloc10_1_0+3
	mov	a, #7
00243$:
	sr	___fsadd_sloc10_1_0+1
	src	___fsadd_sloc10_1_0+0
	dzsn	a
	goto	00243$
	mov	a, ___fsadd_sloc10_1_0+1
	mov	p, a
	mov	a, ___fsadd_sloc10_1_0+0
	mov	___fsadd_sloc11_1_0+0, a
	clear	___fsadd_sloc11_1_0+1
;	../_fsadd.c: 189: mant1 = MANT (*pfl1) << 4;
	mov	a, ___fsadd_sloc8_1_0+0
	mov	___fsadd_sloc12_1_0+0, a
	mov	a, ___fsadd_sloc8_1_0+1
	mov	___fsadd_sloc12_1_0+1, a
	mov	a, ___fsadd_sloc8_1_0+2
	and	a, #0x7f
	mov	___fsadd_sloc12_1_0+2, a
	clear	___fsadd_sloc12_1_0+3
	mov	a, ___fsadd_sloc12_1_0+0
	mov	___fsadd_sloc13_1_0+0, a
	mov	a, ___fsadd_sloc12_1_0+1
	mov	___fsadd_sloc13_1_0+1, a
	mov	a, ___fsadd_sloc12_1_0+2
	or	a, #0x80
	mov	___fsadd_sloc13_1_0+2, a
	mov	a, ___fsadd_sloc12_1_0+3
	mov	___fsadd_sloc13_1_0+3, a
	mov	a, ___fsadd_sloc13_1_0+0
	mov	___fsadd_sloc14_1_0+0, a
	mov	a, ___fsadd_sloc13_1_0+1
	mov	___fsadd_sloc14_1_0+1, a
	mov	a, ___fsadd_sloc13_1_0+2
	mov	___fsadd_sloc14_1_0+2, a
	mov	a, ___fsadd_sloc13_1_0+3
	mov	___fsadd_sloc14_1_0+3, a
	mov	a, #4
00244$:
	sl	___fsadd_sloc14_1_0+0
	slc	___fsadd_sloc14_1_0+1
	slc	___fsadd_sloc14_1_0+2
	slc	___fsadd_sloc14_1_0+3
	dzsn	a
	goto	00244$
;	../_fsadd.c: 190: if (SIGN(*pfl1))
	mov	a, ___fsadd_sloc9_1_0+3
	mov	___fsadd_sloc15_1_0+0, a
	clear	___fsadd_sloc15_1_0+1
	clear	___fsadd_sloc15_1_0+2
	clear	___fsadd_sloc15_1_0+3
	mov	a, #7
00245$:
	sr	___fsadd_sloc15_1_0+0
	dzsn	a
	goto	00245$
	mov	a, ___fsadd_sloc15_1_0+0
	and	a, #0x01
	cneqsn	a, #0x00
	goto	00108$
;	../_fsadd.c: 191: if (*pfl1 & 0x80000000)
	mov	a, ___fsadd_sloc8_1_0+3
	and	a, #0x80
	cneqsn	a, #0x00
	goto	00108$
;	../_fsadd.c: 192: mant1 = -mant1;
	mov	a, #0x00
	sub	a, ___fsadd_sloc14_1_0+0
	mov	___fsadd_sloc14_1_0+0, a
	mov	a, #0x00
	subc	a, ___fsadd_sloc14_1_0+1
	mov	___fsadd_sloc14_1_0+1, a
	mov	a, #0x00
	subc	a, ___fsadd_sloc14_1_0+2
	mov	___fsadd_sloc14_1_0+2, a
	mov	a, #0x00
	subc	a, ___fsadd_sloc14_1_0+3
	mov	___fsadd_sloc14_1_0+3, a
00108$:
;	../_fsadd.c: 194: if (!*pfl1)
	mov	a, ___fsadd_sloc8_1_0+0
	or	a, ___fsadd_sloc8_1_0+1
	or	a, ___fsadd_sloc8_1_0+2
	or	a, ___fsadd_sloc8_1_0+3
	ceqsn	a, #0x00
	goto	00110$
;	../_fsadd.c: 195: return (a2);
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, ___fsadd_PARM_2+0
	idxm	p, a
	inc	p
	mov	a, ___fsadd_PARM_2+1
	idxm	p, a
	inc	p
	mov	a, ___fsadd_PARM_2+2
	idxm	p, a
	inc	p
	mov	a, ___fsadd_PARM_2+3
	idxm	p, a
	ret
00110$:
;	../_fsadd.c: 197: expd = exp1 - exp2;
	mov	a, ___fsadd_sloc11_1_0+0
	sub	a, ___fsadd_sloc3_1_0+0
	mov	___fsadd_sloc16_1_0+0, a
	mov	a, ___fsadd_sloc11_1_0+1
	subc	a, ___fsadd_sloc3_1_0+1
	mov	___fsadd_sloc16_1_0+1, a
;	../_fsadd.c: 198: if (expd > 25)
	mov	a, #0x19
	sub	a, ___fsadd_sloc16_1_0+0
	mov	a, #0x00
	subc	a, ___fsadd_sloc16_1_0+1
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t1sn	f, c
	goto	00112$
;	../_fsadd.c: 199: return (a1);
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, ___fsadd_PARM_1+0
	idxm	p, a
	inc	p
	mov	a, ___fsadd_PARM_1+1
	idxm	p, a
	inc	p
	mov	a, ___fsadd_PARM_1+2
	idxm	p, a
	inc	p
	mov	a, ___fsadd_PARM_1+3
	idxm	p, a
	ret
00112$:
;	../_fsadd.c: 200: if (expd < -25)
	mov	a, ___fsadd_sloc16_1_0+0
	sub	a, #0xe7
	mov	a, #0xff
	mov	p, a
	mov	a, ___fsadd_sloc16_1_0+1
	subc	a, p
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t1sn	f, c
	goto	00114$
;	../_fsadd.c: 201: return (a2);
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, ___fsadd_PARM_2+0
	idxm	p, a
	inc	p
	mov	a, ___fsadd_PARM_2+1
	idxm	p, a
	inc	p
	mov	a, ___fsadd_PARM_2+2
	idxm	p, a
	inc	p
	mov	a, ___fsadd_PARM_2+3
	idxm	p, a
	ret
00114$:
;	../_fsadd.c: 203: if (expd < 0)
	mov	a, ___fsadd_sloc16_1_0+1
	sub	a, #0x80
	t0sn	f, c
	goto	00116$
;	../_fsadd.c: 205: expd = -expd;
	mov	a, #0x00
	sub	a, ___fsadd_sloc16_1_0+0
	mov	___fsadd_sloc17_1_0+0, a
	mov	a, #0x00
	subc	a, ___fsadd_sloc16_1_0+1
	mov	___fsadd_sloc17_1_0+1, a
;	../_fsadd.c: 206: exp1 += expd;
	mov	a, ___fsadd_sloc17_1_0+0
	add	___fsadd_sloc11_1_0+0, a
	mov	a, ___fsadd_sloc17_1_0+1
	addc	___fsadd_sloc11_1_0+1, a
;	../_fsadd.c: 207: mant1 >>= expd;
	mov	a, ___fsadd_sloc17_1_0+0
00246$:
	sub	a, #1
	t0sn	f, c
	goto	00247$
	push	af
	mov	a, #0x01
	sl	___fsadd_sloc14_1_0+3
	t0sn	f, c
	or	___fsadd_sloc14_1_0+3, a
	src	___fsadd_sloc14_1_0+3
	src	___fsadd_sloc14_1_0+3
	src	___fsadd_sloc14_1_0+2
	src	___fsadd_sloc14_1_0+1
	src	___fsadd_sloc14_1_0+0
	pop	af
	goto	00246$
00247$:
	goto	00117$
00116$:
;	../_fsadd.c: 211: mant2 >>= expd;
	mov	a, ___fsadd_sloc16_1_0+0
00248$:
	sub	a, #1
	t0sn	f, c
	goto	00249$
	push	af
	mov	a, #0x01
	sl	___fsadd_sloc6_1_0+3
	t0sn	f, c
	or	___fsadd_sloc6_1_0+3, a
	src	___fsadd_sloc6_1_0+3
	src	___fsadd_sloc6_1_0+3
	src	___fsadd_sloc6_1_0+2
	src	___fsadd_sloc6_1_0+1
	src	___fsadd_sloc6_1_0+0
	pop	af
	goto	00248$
00249$:
00117$:
;	../_fsadd.c: 213: mant1 += mant2;
	mov	a, ___fsadd_sloc14_1_0+0
	add	a, ___fsadd_sloc6_1_0+0
	mov	___fsadd_sloc18_1_0+0, a
	mov	a, ___fsadd_sloc14_1_0+1
	addc	a, ___fsadd_sloc6_1_0+1
	mov	___fsadd_sloc18_1_0+1, a
	mov	a, ___fsadd_sloc14_1_0+2
	addc	a, ___fsadd_sloc6_1_0+2
	mov	___fsadd_sloc18_1_0+2, a
	mov	a, ___fsadd_sloc14_1_0+3
	addc	a, ___fsadd_sloc6_1_0+3
	mov	___fsadd_sloc18_1_0+3, a
;	../_fsadd.c: 215: sign = false;
	clear	___fsadd_sloc19_1_0+0
;	../_fsadd.c: 217: if (mant1 < 0)
	mov	a, ___fsadd_sloc18_1_0+3
	sub	a, #0x80
	t0sn	f, c
	goto	00121$
;	../_fsadd.c: 219: mant1 = -mant1;
	mov	a, #0x00
	sub	a, ___fsadd_sloc18_1_0+0
	mov	___fsadd_sloc18_1_0+0, a
	mov	a, #0x00
	subc	a, ___fsadd_sloc18_1_0+1
	mov	___fsadd_sloc18_1_0+1, a
	mov	a, #0x00
	subc	a, ___fsadd_sloc18_1_0+2
	mov	___fsadd_sloc18_1_0+2, a
	mov	a, #0x00
	subc	a, ___fsadd_sloc18_1_0+3
	mov	___fsadd_sloc18_1_0+3, a
;	../_fsadd.c: 220: sign = true;
	mov	a, #0x01
	mov	___fsadd_sloc19_1_0+0, a
	goto	00154$
00121$:
;	../_fsadd.c: 222: else if (!mant1)
	mov	a, ___fsadd_sloc18_1_0+0
	or	a, ___fsadd_sloc18_1_0+1
	or	a, ___fsadd_sloc18_1_0+2
	or	a, ___fsadd_sloc18_1_0+3
	ceqsn	a, #0x00
	goto	00154$
;	../_fsadd.c: 223: return (0);
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
;	../_fsadd.c: 226: while (mant1 < (HIDDEN<<4)) {
00154$:
	mov	a, ___fsadd_sloc11_1_0+0
	mov	___fsadd_sloc20_1_0+0, a
	mov	a, ___fsadd_sloc11_1_0+1
	mov	___fsadd_sloc20_1_0+1, a
00123$:
	mov	a, ___fsadd_sloc18_1_0+0
	mov	___fsadd_sloc21_1_0+0, a
	mov	a, ___fsadd_sloc18_1_0+1
	mov	___fsadd_sloc21_1_0+1, a
	mov	a, ___fsadd_sloc18_1_0+2
	mov	___fsadd_sloc21_1_0+2, a
	mov	a, ___fsadd_sloc18_1_0+3
	mov	___fsadd_sloc21_1_0+3, a
	sub	a, #0x08
	t1sn	f, c
	goto	00157$
;	../_fsadd.c: 227: mant1 <<= 1;
	sl	___fsadd_sloc18_1_0+0
	slc	___fsadd_sloc18_1_0+1
	slc	___fsadd_sloc18_1_0+2
	slc	___fsadd_sloc18_1_0+3
;	../_fsadd.c: 228: exp1--;
	dec	___fsadd_sloc20_1_0+0
	subc	___fsadd_sloc20_1_0+1
	goto	00123$
;	../_fsadd.c: 232: while (mant1 & 0xf0000000) {
00157$:
	mov	a, ___fsadd_sloc20_1_0+0
	mov	___fsadd_sloc22_1_0+0, a
	mov	a, ___fsadd_sloc20_1_0+1
	mov	___fsadd_sloc22_1_0+1, a
00128$:
	mov	a, ___fsadd_sloc18_1_0+3
	and	a, #0xf0
	cneqsn	a, #0x00
	goto	00163$
;	../_fsadd.c: 233: if (mant1&1)
	mov	a, ___fsadd_sloc18_1_0+0
	and	a, #0x01
	cneqsn	a, #0x00
	goto	00127$
;	../_fsadd.c: 234: mant1 += 2;
	mov	a, #0x02
	add	___fsadd_sloc18_1_0+0, a
	addc	___fsadd_sloc18_1_0+1
	addc	___fsadd_sloc18_1_0+2
	addc	___fsadd_sloc18_1_0+3
00127$:
;	../_fsadd.c: 235: mant1 >>= 1;
	mov	a, ___fsadd_sloc18_1_0+3
	sl	a
	src	___fsadd_sloc18_1_0+3
	src	___fsadd_sloc18_1_0+2
	src	___fsadd_sloc18_1_0+1
	src	___fsadd_sloc18_1_0+0
;	../_fsadd.c: 236: exp1++;
	inc	___fsadd_sloc22_1_0+0
	addc	___fsadd_sloc22_1_0+1
	goto	00128$
00163$:
	mov	a, ___fsadd_sloc22_1_0+0
	mov	___fsadd_sloc23_1_0+0, a
	mov	a, ___fsadd_sloc22_1_0+1
	mov	___fsadd_sloc23_1_0+1, a
;	../_fsadd.c: 240: mant1 &= ~(HIDDEN<<4);
	mov	a, ___fsadd_sloc18_1_0+0
	mov	___fsadd_sloc24_1_0+0, a
	mov	a, ___fsadd_sloc18_1_0+1
	mov	___fsadd_sloc24_1_0+1, a
	mov	a, ___fsadd_sloc18_1_0+2
	mov	___fsadd_sloc24_1_0+2, a
	mov	a, ___fsadd_sloc18_1_0+3
	and	a, #0xf7
	mov	___fsadd_sloc24_1_0+3, a
;	../_fsadd.c: 243: if (exp1 >= 0x100)
	mov	a, ___fsadd_sloc22_1_0+1
	sub	a, #0x01
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t0sn	f, c
	goto	00135$
;	../_fsadd.c: 244: *pfl1 = (sign ? (SIGNBIT | __INFINITY) : __INFINITY);
	mov	a, ___fsadd_sloc19_1_0+0
	cneqsn	a, #0x00
	goto	00139$
	clear	___fsadd_sloc25_1_0+0
	clear	___fsadd_sloc25_1_0+1
	mov	a, #0x80
	mov	___fsadd_sloc25_1_0+2, a
	mov	a, #0xff
	mov	___fsadd_sloc25_1_0+3, a
	goto	00140$
00139$:
	clear	___fsadd_sloc25_1_0+0
	clear	___fsadd_sloc25_1_0+1
	mov	a, #0x80
	mov	___fsadd_sloc25_1_0+2, a
	mov	a, #0x7f
	mov	___fsadd_sloc25_1_0+3, a
00140$:
	mov	a, ___fsadd_sloc25_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, ___fsadd_sloc25_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, ___fsadd_sloc25_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, ___fsadd_sloc25_1_0+3
	mov	___fsadd_PARM_1+3, a
	goto	00136$
00135$:
;	../_fsadd.c: 245: else if (exp1 < 0)
	mov	a, ___fsadd_sloc22_1_0+1
	sub	a, #0x80
	t0sn	f, c
	goto	00132$
;	../_fsadd.c: 246: *pfl1 = 0;
	clear	___fsadd_PARM_1+0
	clear	___fsadd_PARM_1+1
	clear	___fsadd_PARM_1+2
	clear	___fsadd_PARM_1+3
	goto	00136$
00132$:
;	../_fsadd.c: 248: *pfl1 = PACK (sign ? SIGNBIT : 0 , exp1, mant1>>4);
	mov	a, ___fsadd_sloc19_1_0+0
	cneqsn	a, #0x00
	goto	00141$
	clear	___fsadd_sloc26_1_0+0
	clear	___fsadd_sloc26_1_0+1
	clear	___fsadd_sloc26_1_0+2
	mov	a, #0x80
	mov	___fsadd_sloc26_1_0+3, a
	goto	00142$
00141$:
	clear	___fsadd_sloc26_1_0+0
	clear	___fsadd_sloc26_1_0+1
	clear	___fsadd_sloc26_1_0+2
	clear	___fsadd_sloc26_1_0+3
00142$:
	mov	a, ___fsadd_sloc23_1_0+0
	mov	___fsadd_sloc27_1_0+0, a
	mov	a, ___fsadd_sloc23_1_0+1
	mov	___fsadd_sloc27_1_0+1, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	___fsadd_sloc27_1_0+2, a
	mov	___fsadd_sloc27_1_0+3, a
	mov	a, ___fsadd_sloc27_1_0+0
	mov	___fsadd_sloc28_1_0+2, a
	mov	a, ___fsadd_sloc27_1_0+1
	mov	___fsadd_sloc28_1_0+3, a
	clear	___fsadd_sloc28_1_0+0
	clear	___fsadd_sloc28_1_0+1
	mov	a, #7
00250$:
	sl	___fsadd_sloc28_1_0+2
	slc	___fsadd_sloc28_1_0+3
	dzsn	a
	goto	00250$
	mov	a, ___fsadd_sloc26_1_0+0
	or	a, ___fsadd_sloc28_1_0+0
	mov	___fsadd_sloc29_1_0+0, a
	mov	a, ___fsadd_sloc26_1_0+1
	or	a, ___fsadd_sloc28_1_0+1
	mov	___fsadd_sloc29_1_0+1, a
	mov	a, ___fsadd_sloc26_1_0+2
	or	a, ___fsadd_sloc28_1_0+2
	mov	___fsadd_sloc29_1_0+2, a
	mov	a, ___fsadd_sloc26_1_0+3
	or	a, ___fsadd_sloc28_1_0+3
	mov	___fsadd_sloc29_1_0+3, a
	mov	a, ___fsadd_sloc24_1_0+0
	mov	___fsadd_sloc30_1_0+0, a
	mov	a, ___fsadd_sloc24_1_0+1
	mov	___fsadd_sloc30_1_0+1, a
	mov	a, ___fsadd_sloc24_1_0+2
	mov	___fsadd_sloc30_1_0+2, a
	mov	a, ___fsadd_sloc24_1_0+3
	mov	___fsadd_sloc30_1_0+3, a
	mov	a, #4
00251$:
	push	af
	mov	a, ___fsadd_sloc30_1_0+3
	sl	a
	src	___fsadd_sloc30_1_0+3
	src	___fsadd_sloc30_1_0+2
	src	___fsadd_sloc30_1_0+1
	src	___fsadd_sloc30_1_0+0
	pop	af
	dzsn	a
	goto	00251$
	mov	a, ___fsadd_sloc30_1_0+0
	mov	___fsadd_sloc31_1_0+0, a
	mov	a, ___fsadd_sloc30_1_0+1
	mov	___fsadd_sloc31_1_0+1, a
	mov	a, ___fsadd_sloc30_1_0+2
	mov	___fsadd_sloc31_1_0+2, a
	mov	a, ___fsadd_sloc30_1_0+3
	mov	___fsadd_sloc31_1_0+3, a
	mov	a, ___fsadd_sloc29_1_0+0
	or	a, ___fsadd_sloc31_1_0+0
	mov	___fsadd_sloc32_1_0+0, a
	mov	a, ___fsadd_sloc29_1_0+1
	or	a, ___fsadd_sloc31_1_0+1
	mov	___fsadd_sloc32_1_0+1, a
	mov	a, ___fsadd_sloc29_1_0+2
	or	a, ___fsadd_sloc31_1_0+2
	mov	___fsadd_sloc32_1_0+2, a
	mov	a, ___fsadd_sloc29_1_0+3
	or	a, ___fsadd_sloc31_1_0+3
	mov	___fsadd_sloc32_1_0+3, a
	mov	a, ___fsadd_sloc32_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, ___fsadd_sloc32_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, ___fsadd_sloc32_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, ___fsadd_sloc32_1_0+3
	mov	___fsadd_PARM_1+3, a
00136$:
;	../_fsadd.c: 249: return (a1);
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, ___fsadd_PARM_1+0
	idxm	p, a
	inc	p
	mov	a, ___fsadd_PARM_1+1
	idxm	p, a
	inc	p
	mov	a, ___fsadd_PARM_1+2
	idxm	p, a
	inc	p
	mov	a, ___fsadd_PARM_1+3
	idxm	p, a
;	../_fsadd.c: 250: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
