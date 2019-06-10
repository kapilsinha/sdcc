;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _fsdiv
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsdiv_PARM_2
	.globl ___fsdiv_PARM_1
	.globl ___fsdiv
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
___fsdiv_org_PARM_1:
	.ds 4
___fsdiv_org_PARM_2:
	.ds 4
___fsdiv_org_fl1_65536_21:
	.ds 4
___fsdiv_org_fl2_65536_21:
	.ds 4
___fsdiv_org_result_65536_21:
	.ds 4
___fsdiv_org_mask_65536_21:
	.ds 4
___fsdiv_org_mant1_65536_21:
	.ds 4
___fsdiv_org_mant2_65536_21:
	.ds 4
___fsdiv_org_exp_65536_21:
	.ds 2
___fsdiv_PARM_1:
	.ds 4
___fsdiv_PARM_2:
	.ds 4
___fsdiv_f_65536_27:
	.ds 4
___fsdiv_sloc34_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
___fsdiv_org_sloc0_1_0:
	.ds 4
___fsdiv_org_sloc1_1_0:
	.ds 4
___fsdiv_org_sloc2_1_0:
	.ds 4
___fsdiv_org_sloc3_1_0:
	.ds 4
___fsdiv_org_sloc4_1_0:
	.ds 4
___fsdiv_org_sloc5_1_0:
	.ds 4
___fsdiv_org_sloc6_1_0:
	.ds 2
___fsdiv_org_sloc7_1_0:
	.ds 4
___fsdiv_org_sloc8_1_0:
	.ds 4
___fsdiv_org_sloc9_1_0:
	.ds 4
___fsdiv_org_sloc10_1_0:
	.ds 4
___fsdiv_org_sloc11_1_0:
	.ds 4
___fsdiv_org_sloc12_1_0:
	.ds 4
___fsdiv_org_sloc13_1_0:
	.ds 4
___fsdiv_org_sloc14_1_0:
	.ds 4
___fsdiv_org_sloc15_1_0:
	.ds 4
___fsdiv_org_sloc16_1_0:
	.ds 1
___fsdiv_org_sloc17_1_0:
	.ds 4
___fsdiv_org_sloc18_1_0:
	.ds 4
___fsdiv_org_sloc19_1_0:
	.ds 4
___fsdiv_org_sloc20_1_0:
	.ds 4
___fsdiv_org_sloc21_1_0:
	.ds 4
___fsdiv_org_sloc22_1_0:
	.ds 4
___fsdiv_org_sloc23_1_0:
	.ds 4
___fsdiv_org_sloc24_1_0:
	.ds 4
___fsdiv_org_sloc25_1_0:
	.ds 4
___fsdiv_org_sloc26_1_0:
	.ds 4
___fsdiv_org_sloc27_1_0:
	.ds 4
___fsdiv_org_sloc28_1_0:
	.ds 4
___fsdiv_org_sloc29_1_0:
	.ds 4
___fsdiv_org_sloc30_1_0:
	.ds 4
___fsdiv_org_sloc31_1_0:
	.ds 4
___fsdiv_org_sloc32_1_0:
	.ds 4
___fsdiv_org_sloc33_1_0:
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
;	../_fsdiv.c: 274: static float __fsdiv_org (float a1, float a2)
;	-----------------------------------------
;	 function __fsdiv_org
;	-----------------------------------------
___fsdiv_org:
;	../_fsdiv.c: 283: fl1.f = a1;
	mov	a, ___fsdiv_org_PARM_1+0
	mov	___fsdiv_org_fl1_65536_21+0, a
	mov	a, ___fsdiv_org_PARM_1+1
	mov	___fsdiv_org_fl1_65536_21+1, a
	mov	a, ___fsdiv_org_PARM_1+2
	mov	___fsdiv_org_fl1_65536_21+2, a
	mov	a, ___fsdiv_org_PARM_1+3
	mov	___fsdiv_org_fl1_65536_21+3, a
;	../_fsdiv.c: 284: fl2.f = a2;
	mov	a, ___fsdiv_org_PARM_2+0
	mov	___fsdiv_org_fl2_65536_21+0, a
	mov	a, ___fsdiv_org_PARM_2+1
	mov	___fsdiv_org_fl2_65536_21+1, a
	mov	a, ___fsdiv_org_PARM_2+2
	mov	___fsdiv_org_fl2_65536_21+2, a
	mov	a, ___fsdiv_org_PARM_2+3
	mov	___fsdiv_org_fl2_65536_21+3, a
;	../_fsdiv.c: 287: exp = EXP (fl1.l) ;
	mov	a, ___fsdiv_org_fl1_65536_21+0
	mov	___fsdiv_org_sloc0_1_0+0, a
	mov	a, ___fsdiv_org_fl1_65536_21+1
	mov	___fsdiv_org_sloc0_1_0+1, a
	mov	a, ___fsdiv_org_fl1_65536_21+2
	mov	___fsdiv_org_sloc0_1_0+2, a
	mov	a, ___fsdiv_org_fl1_65536_21+3
	mov	___fsdiv_org_sloc0_1_0+3, a
	mov	a, ___fsdiv_org_sloc0_1_0+0
	mov	___fsdiv_org_sloc1_1_0+0, a
	mov	a, ___fsdiv_org_sloc0_1_0+1
	mov	___fsdiv_org_sloc1_1_0+1, a
	mov	a, ___fsdiv_org_sloc0_1_0+2
	mov	___fsdiv_org_sloc1_1_0+2, a
	mov	a, ___fsdiv_org_sloc0_1_0+3
	mov	___fsdiv_org_sloc1_1_0+3, a
	mov	a, ___fsdiv_org_sloc1_1_0+2
	mov	___fsdiv_org_sloc2_1_0+0, a
	mov	a, ___fsdiv_org_sloc1_1_0+3
	mov	___fsdiv_org_sloc2_1_0+1, a
	clear	___fsdiv_org_sloc2_1_0+2
	clear	___fsdiv_org_sloc2_1_0+3
	mov	a, #7
00164$:
	sr	___fsdiv_org_sloc2_1_0+1
	src	___fsdiv_org_sloc2_1_0+0
	dzsn	a
	goto	00164$
	mov	a, ___fsdiv_org_sloc2_1_0+1
	mov	p, a
	mov	a, ___fsdiv_org_sloc2_1_0+0
	mov	___fsdiv_org_exp_65536_21+0, a
	clear	___fsdiv_org_exp_65536_21+1
;	../_fsdiv.c: 288: exp -= EXP (fl2.l);
	mov	a, ___fsdiv_org_fl2_65536_21+0
	mov	___fsdiv_org_sloc3_1_0+0, a
	mov	a, ___fsdiv_org_fl2_65536_21+1
	mov	___fsdiv_org_sloc3_1_0+1, a
	mov	a, ___fsdiv_org_fl2_65536_21+2
	mov	___fsdiv_org_sloc3_1_0+2, a
	mov	a, ___fsdiv_org_fl2_65536_21+3
	mov	___fsdiv_org_sloc3_1_0+3, a
	mov	a, ___fsdiv_org_sloc3_1_0+0
	mov	___fsdiv_org_sloc4_1_0+0, a
	mov	a, ___fsdiv_org_sloc3_1_0+1
	mov	___fsdiv_org_sloc4_1_0+1, a
	mov	a, ___fsdiv_org_sloc3_1_0+2
	mov	___fsdiv_org_sloc4_1_0+2, a
	mov	a, ___fsdiv_org_sloc3_1_0+3
	mov	___fsdiv_org_sloc4_1_0+3, a
	mov	a, ___fsdiv_org_sloc4_1_0+2
	mov	___fsdiv_org_sloc5_1_0+0, a
	mov	a, ___fsdiv_org_sloc4_1_0+3
	mov	___fsdiv_org_sloc5_1_0+1, a
	clear	___fsdiv_org_sloc5_1_0+2
	clear	___fsdiv_org_sloc5_1_0+3
	mov	a, #7
00165$:
	sr	___fsdiv_org_sloc5_1_0+1
	src	___fsdiv_org_sloc5_1_0+0
	dzsn	a
	goto	00165$
	mov	a, ___fsdiv_org_sloc5_1_0+1
	mov	p, a
	mov	a, ___fsdiv_org_sloc5_1_0+0
	mov	___fsdiv_org_sloc6_1_0+0, a
	clear	___fsdiv_org_sloc6_1_0+1
	mov	a, ___fsdiv_org_exp_65536_21+1
	mov	p, a
	mov	a, ___fsdiv_org_exp_65536_21+0
	sub	a, ___fsdiv_org_sloc6_1_0+0
	mov	___fsdiv_org_exp_65536_21+0, a
	mov	a, p
	subc	a, ___fsdiv_org_sloc6_1_0+1
	mov	___fsdiv_org_exp_65536_21+1, a
;	../_fsdiv.c: 289: exp += EXCESS;
	mov	a, #0x7e
	add	___fsdiv_org_exp_65536_21+0, a
	addc	___fsdiv_org_exp_65536_21+1
;	../_fsdiv.c: 292: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	mov	a, ___fsdiv_org_fl1_65536_21+0
	mov	___fsdiv_org_sloc7_1_0+0, a
	mov	a, ___fsdiv_org_fl1_65536_21+1
	mov	___fsdiv_org_sloc7_1_0+1, a
	mov	a, ___fsdiv_org_fl1_65536_21+2
	mov	___fsdiv_org_sloc7_1_0+2, a
	mov	a, ___fsdiv_org_fl1_65536_21+3
	mov	___fsdiv_org_sloc7_1_0+3, a
	mov	a, ___fsdiv_org_sloc7_1_0+0
	mov	___fsdiv_org_sloc8_1_0+0, a
	mov	a, ___fsdiv_org_sloc7_1_0+1
	mov	___fsdiv_org_sloc8_1_0+1, a
	mov	a, ___fsdiv_org_sloc7_1_0+2
	mov	___fsdiv_org_sloc8_1_0+2, a
	mov	a, ___fsdiv_org_sloc7_1_0+3
	mov	___fsdiv_org_sloc8_1_0+3, a
	mov	___fsdiv_org_sloc9_1_0+0, a
	clear	___fsdiv_org_sloc9_1_0+1
	clear	___fsdiv_org_sloc9_1_0+2
	clear	___fsdiv_org_sloc9_1_0+3
	mov	a, #7
00166$:
	sr	___fsdiv_org_sloc9_1_0+0
	dzsn	a
	goto	00166$
	mov	a, ___fsdiv_org_sloc9_1_0+0
	and	a, #0x01
	mov	___fsdiv_org_sloc10_1_0+0, a
	clear	___fsdiv_org_sloc10_1_0+1
	clear	___fsdiv_org_sloc10_1_0+2
	clear	___fsdiv_org_sloc10_1_0+3
	mov	a, ___fsdiv_org_fl2_65536_21+0
	mov	___fsdiv_org_sloc11_1_0+0, a
	mov	a, ___fsdiv_org_fl2_65536_21+1
	mov	___fsdiv_org_sloc11_1_0+1, a
	mov	a, ___fsdiv_org_fl2_65536_21+2
	mov	___fsdiv_org_sloc11_1_0+2, a
	mov	a, ___fsdiv_org_fl2_65536_21+3
	mov	___fsdiv_org_sloc11_1_0+3, a
	mov	a, ___fsdiv_org_sloc11_1_0+0
	mov	___fsdiv_org_sloc12_1_0+0, a
	mov	a, ___fsdiv_org_sloc11_1_0+1
	mov	___fsdiv_org_sloc12_1_0+1, a
	mov	a, ___fsdiv_org_sloc11_1_0+2
	mov	___fsdiv_org_sloc12_1_0+2, a
	mov	a, ___fsdiv_org_sloc11_1_0+3
	mov	___fsdiv_org_sloc12_1_0+3, a
	mov	___fsdiv_org_sloc13_1_0+0, a
	clear	___fsdiv_org_sloc13_1_0+1
	clear	___fsdiv_org_sloc13_1_0+2
	clear	___fsdiv_org_sloc13_1_0+3
	mov	a, #7
00167$:
	sr	___fsdiv_org_sloc13_1_0+0
	dzsn	a
	goto	00167$
	mov	a, ___fsdiv_org_sloc13_1_0+0
	and	a, #0x01
	mov	___fsdiv_org_sloc14_1_0+0, a
	clear	___fsdiv_org_sloc14_1_0+1
	clear	___fsdiv_org_sloc14_1_0+2
	clear	___fsdiv_org_sloc14_1_0+3
	mov	a, ___fsdiv_org_sloc10_1_0+0
	xor	a, ___fsdiv_org_sloc14_1_0+0
	mov	___fsdiv_org_sloc15_1_0+0, a
	mov	a, ___fsdiv_org_sloc10_1_0+1
	xor	a, ___fsdiv_org_sloc14_1_0+1
	mov	___fsdiv_org_sloc15_1_0+1, a
	mov	a, ___fsdiv_org_sloc10_1_0+2
	xor	a, ___fsdiv_org_sloc14_1_0+2
	mov	___fsdiv_org_sloc15_1_0+2, a
	mov	a, ___fsdiv_org_sloc10_1_0+3
	xor	a, ___fsdiv_org_sloc14_1_0+3
	mov	___fsdiv_org_sloc15_1_0+3, a
	mov	a, ___fsdiv_org_sloc15_1_0+0
	mov	___fsdiv_org_sloc16_1_0+0, a
;	../_fsdiv.c: 295: if (!fl2.l)
	mov	a, ___fsdiv_org_fl2_65536_21+0
	mov	___fsdiv_org_sloc17_1_0+0, a
	mov	a, ___fsdiv_org_fl2_65536_21+1
	mov	___fsdiv_org_sloc17_1_0+1, a
	mov	a, ___fsdiv_org_fl2_65536_21+2
	mov	___fsdiv_org_sloc17_1_0+2, a
	mov	a, ___fsdiv_org_fl2_65536_21+3
	mov	___fsdiv_org_sloc17_1_0+3, a
	mov	a, ___fsdiv_org_sloc17_1_0+0
	or	a, ___fsdiv_org_sloc17_1_0+1
	or	a, ___fsdiv_org_sloc17_1_0+2
	or	a, ___fsdiv_org_sloc17_1_0+3
	ceqsn	a, #0x00
	goto	00102$
;	../_fsdiv.c: 297: fl2.l = 0x7FC00000;
	clear	___fsdiv_org_fl2_65536_21+0
	clear	___fsdiv_org_fl2_65536_21+1
	mov	a, #0xc0
	mov	___fsdiv_org_fl2_65536_21+2, a
	mov	a, #0x7f
	mov	___fsdiv_org_fl2_65536_21+3, a
;	../_fsdiv.c: 298: return (fl2.f);
	mov	a, ___fsdiv_org_fl2_65536_21+0
	mov	___fsdiv_org_sloc18_1_0+0, a
	mov	a, ___fsdiv_org_fl2_65536_21+1
	mov	___fsdiv_org_sloc18_1_0+1, a
	mov	a, ___fsdiv_org_fl2_65536_21+2
	mov	___fsdiv_org_sloc18_1_0+2, a
	mov	a, ___fsdiv_org_fl2_65536_21+3
	mov	___fsdiv_org_sloc18_1_0+3, a
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, ___fsdiv_org_sloc18_1_0+0
	idxm	p, a
	inc	p
	mov	a, ___fsdiv_org_sloc18_1_0+1
	idxm	p, a
	inc	p
	mov	a, ___fsdiv_org_sloc18_1_0+2
	idxm	p, a
	inc	p
	mov	a, ___fsdiv_org_sloc18_1_0+3
	idxm	p, a
	ret
00102$:
;	../_fsdiv.c: 302: if (!fl1.l)
	mov	a, ___fsdiv_org_fl1_65536_21+0
	mov	___fsdiv_org_sloc19_1_0+0, a
	mov	a, ___fsdiv_org_fl1_65536_21+1
	mov	___fsdiv_org_sloc19_1_0+1, a
	mov	a, ___fsdiv_org_fl1_65536_21+2
	mov	___fsdiv_org_sloc19_1_0+2, a
	mov	a, ___fsdiv_org_fl1_65536_21+3
	mov	___fsdiv_org_sloc19_1_0+3, a
	mov	a, ___fsdiv_org_sloc19_1_0+0
	or	a, ___fsdiv_org_sloc19_1_0+1
	or	a, ___fsdiv_org_sloc19_1_0+2
	or	a, ___fsdiv_org_sloc19_1_0+3
	ceqsn	a, #0x00
	goto	00104$
;	../_fsdiv.c: 303: return (0);
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
00104$:
;	../_fsdiv.c: 306: mant1 = MANT (fl1.l);
	mov	a, ___fsdiv_org_fl1_65536_21+0
	mov	___fsdiv_org_sloc20_1_0+0, a
	mov	a, ___fsdiv_org_fl1_65536_21+1
	mov	___fsdiv_org_sloc20_1_0+1, a
	mov	a, ___fsdiv_org_fl1_65536_21+2
	mov	___fsdiv_org_sloc20_1_0+2, a
	mov	a, ___fsdiv_org_fl1_65536_21+3
	mov	___fsdiv_org_sloc20_1_0+3, a
	mov	a, ___fsdiv_org_sloc20_1_0+0
	mov	___fsdiv_org_sloc21_1_0+0, a
	mov	a, ___fsdiv_org_sloc20_1_0+1
	mov	___fsdiv_org_sloc21_1_0+1, a
	mov	a, ___fsdiv_org_sloc20_1_0+2
	and	a, #0x7f
	mov	___fsdiv_org_sloc21_1_0+2, a
	clear	___fsdiv_org_sloc21_1_0+3
	mov	a, ___fsdiv_org_sloc21_1_0+0
	mov	___fsdiv_org_mant1_65536_21+0, a
	mov	a, ___fsdiv_org_sloc21_1_0+1
	mov	___fsdiv_org_mant1_65536_21+1, a
	mov	a, ___fsdiv_org_sloc21_1_0+2
	or	a, #0x80
	mov	___fsdiv_org_mant1_65536_21+2, a
	mov	a, ___fsdiv_org_sloc21_1_0+3
	mov	___fsdiv_org_mant1_65536_21+3, a
;	../_fsdiv.c: 307: mant2 = MANT (fl2.l);
	mov	a, ___fsdiv_org_fl2_65536_21+0
	mov	___fsdiv_org_sloc22_1_0+0, a
	mov	a, ___fsdiv_org_fl2_65536_21+1
	mov	___fsdiv_org_sloc22_1_0+1, a
	mov	a, ___fsdiv_org_fl2_65536_21+2
	mov	___fsdiv_org_sloc22_1_0+2, a
	mov	a, ___fsdiv_org_fl2_65536_21+3
	mov	___fsdiv_org_sloc22_1_0+3, a
	mov	a, ___fsdiv_org_sloc22_1_0+0
	mov	___fsdiv_org_sloc23_1_0+0, a
	mov	a, ___fsdiv_org_sloc22_1_0+1
	mov	___fsdiv_org_sloc23_1_0+1, a
	mov	a, ___fsdiv_org_sloc22_1_0+2
	and	a, #0x7f
	mov	___fsdiv_org_sloc23_1_0+2, a
	clear	___fsdiv_org_sloc23_1_0+3
	mov	a, ___fsdiv_org_sloc23_1_0+0
	mov	___fsdiv_org_mant2_65536_21+0, a
	mov	a, ___fsdiv_org_sloc23_1_0+1
	mov	___fsdiv_org_mant2_65536_21+1, a
	mov	a, ___fsdiv_org_sloc23_1_0+2
	or	a, #0x80
	mov	___fsdiv_org_mant2_65536_21+2, a
	mov	a, ___fsdiv_org_sloc23_1_0+3
	mov	___fsdiv_org_mant2_65536_21+3, a
;	../_fsdiv.c: 310: if (mant1 < mant2)
	mov	a, ___fsdiv_org_mant1_65536_21+0
	sub	a, ___fsdiv_org_mant2_65536_21+0
	mov	a, ___fsdiv_org_mant1_65536_21+1
	subc	a, ___fsdiv_org_mant2_65536_21+1
	mov	a, ___fsdiv_org_mant1_65536_21+2
	subc	a, ___fsdiv_org_mant2_65536_21+2
	mov	a, ___fsdiv_org_mant1_65536_21+3
	subc	a, ___fsdiv_org_mant2_65536_21+3
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t1sn	f, c
	goto	00106$
;	../_fsdiv.c: 312: mant1 <<= 1;
	sl	___fsdiv_org_mant1_65536_21+0
	slc	___fsdiv_org_mant1_65536_21+1
	slc	___fsdiv_org_mant1_65536_21+2
	slc	___fsdiv_org_mant1_65536_21+3
;	../_fsdiv.c: 313: exp--;
	mov	a, ___fsdiv_org_exp_65536_21+1
	mov	p, a
	mov	a, ___fsdiv_org_exp_65536_21+0
	sub	a, #0x01
	mov	___fsdiv_org_exp_65536_21+0, a
	mov	a, p
	subc	a
	mov	___fsdiv_org_exp_65536_21+1, a
00106$:
;	../_fsdiv.c: 317: mask = 0x1000000;
	clear	___fsdiv_org_mask_65536_21+0
	clear	___fsdiv_org_mask_65536_21+1
	clear	___fsdiv_org_mask_65536_21+2
	mov	a, #0x01
	mov	___fsdiv_org_mask_65536_21+3, a
;	../_fsdiv.c: 318: result = 0;
	clear	___fsdiv_org_result_65536_21+0
	clear	___fsdiv_org_result_65536_21+1
	clear	___fsdiv_org_result_65536_21+2
	clear	___fsdiv_org_result_65536_21+3
;	../_fsdiv.c: 319: while (mask)
00109$:
	mov	a, ___fsdiv_org_mask_65536_21+0
	or	a, ___fsdiv_org_mask_65536_21+1
	or	a, ___fsdiv_org_mask_65536_21+2
	or	a, ___fsdiv_org_mask_65536_21+3
	cneqsn	a, #0x00
	goto	00111$
;	../_fsdiv.c: 321: if (mant1 >= mant2)
	mov	a, ___fsdiv_org_mant1_65536_21+0
	sub	a, ___fsdiv_org_mant2_65536_21+0
	mov	a, ___fsdiv_org_mant1_65536_21+1
	subc	a, ___fsdiv_org_mant2_65536_21+1
	mov	a, ___fsdiv_org_mant1_65536_21+2
	subc	a, ___fsdiv_org_mant2_65536_21+2
	mov	a, ___fsdiv_org_mant1_65536_21+3
	subc	a, ___fsdiv_org_mant2_65536_21+3
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t0sn	f, c
	goto	00108$
;	../_fsdiv.c: 323: result |= mask;
	mov	a, ___fsdiv_org_result_65536_21+0
	mov	___fsdiv_org_sloc24_1_0+0, a
	mov	a, ___fsdiv_org_result_65536_21+1
	mov	___fsdiv_org_sloc24_1_0+1, a
	mov	a, ___fsdiv_org_result_65536_21+2
	mov	___fsdiv_org_sloc24_1_0+2, a
	mov	a, ___fsdiv_org_result_65536_21+3
	mov	___fsdiv_org_sloc24_1_0+3, a
	mov	a, ___fsdiv_org_sloc24_1_0+0
	or	a, ___fsdiv_org_mask_65536_21+0
	mov	___fsdiv_org_result_65536_21+0, a
	mov	a, ___fsdiv_org_sloc24_1_0+1
	or	a, ___fsdiv_org_mask_65536_21+1
	mov	___fsdiv_org_result_65536_21+1, a
	mov	a, ___fsdiv_org_sloc24_1_0+2
	or	a, ___fsdiv_org_mask_65536_21+2
	mov	___fsdiv_org_result_65536_21+2, a
	mov	a, ___fsdiv_org_sloc24_1_0+3
	or	a, ___fsdiv_org_mask_65536_21+3
	mov	___fsdiv_org_result_65536_21+3, a
;	../_fsdiv.c: 324: mant1 -= mant2;
	mov	a, ___fsdiv_org_mant2_65536_21+0
	sub	___fsdiv_org_mant1_65536_21+0, a
	mov	a, ___fsdiv_org_mant2_65536_21+1
	subc	___fsdiv_org_mant1_65536_21+1, a
	mov	a, ___fsdiv_org_mant2_65536_21+2
	subc	___fsdiv_org_mant1_65536_21+2, a
	mov	a, ___fsdiv_org_mant2_65536_21+3
	subc	___fsdiv_org_mant1_65536_21+3, a
00108$:
;	../_fsdiv.c: 326: mant1 <<= 1;
	sl	___fsdiv_org_mant1_65536_21+0
	slc	___fsdiv_org_mant1_65536_21+1
	slc	___fsdiv_org_mant1_65536_21+2
	slc	___fsdiv_org_mant1_65536_21+3
;	../_fsdiv.c: 327: mask >>= 1;
	sr	___fsdiv_org_mask_65536_21+3
	src	___fsdiv_org_mask_65536_21+2
	src	___fsdiv_org_mask_65536_21+1
	src	___fsdiv_org_mask_65536_21+0
	goto	00109$
00111$:
;	../_fsdiv.c: 331: result += 1;
	inc	___fsdiv_org_result_65536_21+0
	addc	___fsdiv_org_result_65536_21+1
	addc	___fsdiv_org_result_65536_21+2
	addc	___fsdiv_org_result_65536_21+3
;	../_fsdiv.c: 334: exp++;
	mov	a, ___fsdiv_org_exp_65536_21+1
	mov	p, a
	mov	a, ___fsdiv_org_exp_65536_21+0
	add	a, #0x01
	mov	___fsdiv_org_exp_65536_21+0, a
	mov	a, #0x00
	addc	a, p
	mov	___fsdiv_org_exp_65536_21+1, a
;	../_fsdiv.c: 335: result >>= 1;
	mov	a, ___fsdiv_org_result_65536_21+3
	sl	a
	src	___fsdiv_org_result_65536_21+3
	src	___fsdiv_org_result_65536_21+2
	src	___fsdiv_org_result_65536_21+1
	src	___fsdiv_org_result_65536_21+0
;	../_fsdiv.c: 337: result &= ~HIDDEN;
	mov	a, #0x7f
	and	___fsdiv_org_result_65536_21+2, a
;	../_fsdiv.c: 340: if (exp >= 0x100)
	mov	a, ___fsdiv_org_exp_65536_21+1
	sub	a, #0x01
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t0sn	f, c
	goto	00116$
;	../_fsdiv.c: 341: fl1.l = (sign ? SIGNBIT : 0) | __INFINITY;
	mov	a, ___fsdiv_org_sloc16_1_0+0
	cneqsn	a, #0x00
	goto	00120$
	clear	___fsdiv_org_sloc25_1_0+0
	clear	___fsdiv_org_sloc25_1_0+1
	clear	___fsdiv_org_sloc25_1_0+2
	mov	a, #0x80
	mov	___fsdiv_org_sloc25_1_0+3, a
	goto	00121$
00120$:
	clear	___fsdiv_org_sloc25_1_0+0
	clear	___fsdiv_org_sloc25_1_0+1
	clear	___fsdiv_org_sloc25_1_0+2
	clear	___fsdiv_org_sloc25_1_0+3
00121$:
	mov	a, ___fsdiv_org_sloc25_1_0+0
	mov	___fsdiv_org_sloc26_1_0+0, a
	mov	a, ___fsdiv_org_sloc25_1_0+1
	mov	___fsdiv_org_sloc26_1_0+1, a
	mov	a, ___fsdiv_org_sloc25_1_0+2
	or	a, #0x80
	mov	___fsdiv_org_sloc26_1_0+2, a
	mov	a, ___fsdiv_org_sloc25_1_0+3
	or	a, #0x7f
	mov	___fsdiv_org_sloc26_1_0+3, a
	mov	a, ___fsdiv_org_sloc26_1_0+0
	mov	___fsdiv_org_fl1_65536_21+0, a
	mov	a, ___fsdiv_org_sloc26_1_0+1
	mov	___fsdiv_org_fl1_65536_21+1, a
	mov	a, ___fsdiv_org_sloc26_1_0+2
	mov	___fsdiv_org_fl1_65536_21+2, a
	mov	a, ___fsdiv_org_sloc26_1_0+3
	mov	___fsdiv_org_fl1_65536_21+3, a
	goto	00117$
00116$:
;	../_fsdiv.c: 342: else if (exp < 0)
	mov	a, ___fsdiv_org_exp_65536_21+1
	sub	a, #0x80
	t0sn	f, c
	goto	00113$
;	../_fsdiv.c: 343: fl1.l = 0;
	clear	___fsdiv_org_fl1_65536_21+0
	clear	___fsdiv_org_fl1_65536_21+1
	clear	___fsdiv_org_fl1_65536_21+2
	clear	___fsdiv_org_fl1_65536_21+3
	goto	00117$
00113$:
;	../_fsdiv.c: 345: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	mov	a, ___fsdiv_org_sloc16_1_0+0
	cneqsn	a, #0x00
	goto	00122$
	clear	___fsdiv_org_sloc27_1_0+0
	clear	___fsdiv_org_sloc27_1_0+1
	clear	___fsdiv_org_sloc27_1_0+2
	mov	a, #0x80
	mov	___fsdiv_org_sloc27_1_0+3, a
	goto	00123$
00122$:
	clear	___fsdiv_org_sloc27_1_0+0
	clear	___fsdiv_org_sloc27_1_0+1
	clear	___fsdiv_org_sloc27_1_0+2
	clear	___fsdiv_org_sloc27_1_0+3
00123$:
	mov	a, ___fsdiv_org_exp_65536_21+0
	mov	___fsdiv_org_sloc28_1_0+0, a
	mov	a, ___fsdiv_org_exp_65536_21+1
	mov	___fsdiv_org_sloc28_1_0+1, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	___fsdiv_org_sloc28_1_0+2, a
	mov	___fsdiv_org_sloc28_1_0+3, a
	mov	a, ___fsdiv_org_sloc28_1_0+0
	mov	___fsdiv_org_sloc29_1_0+2, a
	mov	a, ___fsdiv_org_sloc28_1_0+1
	mov	___fsdiv_org_sloc29_1_0+3, a
	clear	___fsdiv_org_sloc29_1_0+0
	clear	___fsdiv_org_sloc29_1_0+1
	mov	a, #7
00168$:
	sl	___fsdiv_org_sloc29_1_0+2
	slc	___fsdiv_org_sloc29_1_0+3
	dzsn	a
	goto	00168$
	mov	a, ___fsdiv_org_sloc27_1_0+0
	or	a, ___fsdiv_org_sloc29_1_0+0
	mov	___fsdiv_org_sloc30_1_0+0, a
	mov	a, ___fsdiv_org_sloc27_1_0+1
	or	a, ___fsdiv_org_sloc29_1_0+1
	mov	___fsdiv_org_sloc30_1_0+1, a
	mov	a, ___fsdiv_org_sloc27_1_0+2
	or	a, ___fsdiv_org_sloc29_1_0+2
	mov	___fsdiv_org_sloc30_1_0+2, a
	mov	a, ___fsdiv_org_sloc27_1_0+3
	or	a, ___fsdiv_org_sloc29_1_0+3
	mov	___fsdiv_org_sloc30_1_0+3, a
	mov	a, ___fsdiv_org_result_65536_21+0
	mov	___fsdiv_org_sloc31_1_0+0, a
	mov	a, ___fsdiv_org_result_65536_21+1
	mov	___fsdiv_org_sloc31_1_0+1, a
	mov	a, ___fsdiv_org_result_65536_21+2
	mov	___fsdiv_org_sloc31_1_0+2, a
	mov	a, ___fsdiv_org_result_65536_21+3
	mov	___fsdiv_org_sloc31_1_0+3, a
	mov	a, ___fsdiv_org_sloc30_1_0+0
	or	a, ___fsdiv_org_sloc31_1_0+0
	mov	___fsdiv_org_sloc32_1_0+0, a
	mov	a, ___fsdiv_org_sloc30_1_0+1
	or	a, ___fsdiv_org_sloc31_1_0+1
	mov	___fsdiv_org_sloc32_1_0+1, a
	mov	a, ___fsdiv_org_sloc30_1_0+2
	or	a, ___fsdiv_org_sloc31_1_0+2
	mov	___fsdiv_org_sloc32_1_0+2, a
	mov	a, ___fsdiv_org_sloc30_1_0+3
	or	a, ___fsdiv_org_sloc31_1_0+3
	mov	___fsdiv_org_sloc32_1_0+3, a
	mov	a, ___fsdiv_org_sloc32_1_0+0
	mov	___fsdiv_org_fl1_65536_21+0, a
	mov	a, ___fsdiv_org_sloc32_1_0+1
	mov	___fsdiv_org_fl1_65536_21+1, a
	mov	a, ___fsdiv_org_sloc32_1_0+2
	mov	___fsdiv_org_fl1_65536_21+2, a
	mov	a, ___fsdiv_org_sloc32_1_0+3
	mov	___fsdiv_org_fl1_65536_21+3, a
00117$:
;	../_fsdiv.c: 346: return (fl1.f);
	mov	a, ___fsdiv_org_fl1_65536_21+0
	mov	___fsdiv_org_sloc33_1_0+0, a
	mov	a, ___fsdiv_org_fl1_65536_21+1
	mov	___fsdiv_org_sloc33_1_0+1, a
	mov	a, ___fsdiv_org_fl1_65536_21+2
	mov	___fsdiv_org_sloc33_1_0+2, a
	mov	a, ___fsdiv_org_fl1_65536_21+3
	mov	___fsdiv_org_sloc33_1_0+3, a
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, ___fsdiv_org_sloc33_1_0+0
	idxm	p, a
	inc	p
	mov	a, ___fsdiv_org_sloc33_1_0+1
	idxm	p, a
	inc	p
	mov	a, ___fsdiv_org_sloc33_1_0+2
	idxm	p, a
	inc	p
	mov	a, ___fsdiv_org_sloc33_1_0+3
	idxm	p, a
;	../_fsdiv.c: 347: }
	ret
;	../_fsdiv.c: 349: float __fsdiv (float a1, float a2)
;	-----------------------------------------
;	 function __fsdiv
;	-----------------------------------------
___fsdiv:
;	../_fsdiv.c: 352: unsigned long *p = (unsigned long *) &f;
;	../_fsdiv.c: 354: if (a2 == 0.0f && a1 > 0.0f)
	mov	a, ___fsdiv_PARM_2+3
	and	a, #0x7f
	or	a, ___fsdiv_PARM_2+0
	or	a, ___fsdiv_PARM_2+1
	or	a, ___fsdiv_PARM_2+2
	ceqsn	a, #0x00
	goto	00110$
	clear	___fslt_PARM_1+0
	clear	___fslt_PARM_1+1
	clear	___fslt_PARM_1+2
	clear	___fslt_PARM_1+3
	mov	a, ___fsdiv_PARM_1+0
	mov	___fslt_PARM_2+0, a
	mov	a, ___fsdiv_PARM_1+1
	mov	___fslt_PARM_2+1, a
	mov	a, ___fsdiv_PARM_1+2
	mov	___fslt_PARM_2+2, a
	mov	a, ___fsdiv_PARM_1+3
	mov	___fslt_PARM_2+3, a
	call	___fslt
	cneqsn	a, #0x00
	goto	00110$
;	../_fsdiv.c: 355: *p = 0x7f800000; // inf
	clear	___fsdiv_f_65536_27+0
	clear	___fsdiv_f_65536_27+1
	mov	a, #0x80
	mov	___fsdiv_f_65536_27+2, a
	mov	a, #0x7f
	mov	___fsdiv_f_65536_27+3, a
	goto	00111$
00110$:
;	../_fsdiv.c: 356: else if (a2 == 0.0f && a1 < 0.0f)
	mov	a, ___fsdiv_PARM_2+3
	and	a, #0x7f
	or	a, ___fsdiv_PARM_2+0
	or	a, ___fsdiv_PARM_2+1
	or	a, ___fsdiv_PARM_2+2
	ceqsn	a, #0x00
	goto	00106$
	mov	a, ___fsdiv_PARM_1+0
	mov	___fslt_PARM_1+0, a
	mov	a, ___fsdiv_PARM_1+1
	mov	___fslt_PARM_1+1, a
	mov	a, ___fsdiv_PARM_1+2
	mov	___fslt_PARM_1+2, a
	mov	a, ___fsdiv_PARM_1+3
	mov	___fslt_PARM_1+3, a
	clear	___fslt_PARM_2+0
	clear	___fslt_PARM_2+1
	clear	___fslt_PARM_2+2
	clear	___fslt_PARM_2+3
	call	___fslt
	cneqsn	a, #0x00
	goto	00106$
;	../_fsdiv.c: 357: *p = 0xff800000; // -inf
	clear	___fsdiv_f_65536_27+0
	clear	___fsdiv_f_65536_27+1
	mov	a, #0x80
	mov	___fsdiv_f_65536_27+2, a
	mov	a, #0xff
	mov	___fsdiv_f_65536_27+3, a
	goto	00111$
00106$:
;	../_fsdiv.c: 358: else if (a2 == 0.0f && a1 == 0.0f)
	mov	a, ___fsdiv_PARM_2+3
	and	a, #0x7f
	or	a, ___fsdiv_PARM_2+0
	or	a, ___fsdiv_PARM_2+1
	or	a, ___fsdiv_PARM_2+2
	ceqsn	a, #0x00
	goto	00102$
	mov	a, ___fsdiv_PARM_1+3
	and	a, #0x7f
	or	a, ___fsdiv_PARM_1+0
	or	a, ___fsdiv_PARM_1+1
	or	a, ___fsdiv_PARM_1+2
	ceqsn	a, #0x00
	goto	00102$
;	../_fsdiv.c: 359: *p = 0xffc00000; // nan
	clear	___fsdiv_f_65536_27+0
	clear	___fsdiv_f_65536_27+1
	mov	a, #0xc0
	mov	___fsdiv_f_65536_27+2, a
	mov	a, #0xff
	mov	___fsdiv_f_65536_27+3, a
	goto	00111$
00102$:
;	../_fsdiv.c: 361: f = __fsdiv_org (a1, a2);
	mov	a, ___fsdiv_PARM_1+0
	mov	___fsdiv_org_PARM_1+0, a
	mov	a, ___fsdiv_PARM_1+1
	mov	___fsdiv_org_PARM_1+1, a
	mov	a, ___fsdiv_PARM_1+2
	mov	___fsdiv_org_PARM_1+2, a
	mov	a, ___fsdiv_PARM_1+3
	mov	___fsdiv_org_PARM_1+3, a
	mov	a, ___fsdiv_PARM_2+0
	mov	___fsdiv_org_PARM_2+0, a
	mov	a, ___fsdiv_PARM_2+1
	mov	___fsdiv_org_PARM_2+1, a
	mov	a, ___fsdiv_PARM_2+2
	mov	___fsdiv_org_PARM_2+2, a
	mov	a, ___fsdiv_PARM_2+3
	mov	___fsdiv_org_PARM_2+3, a
	mov	a, #___fsdiv_sloc34_1_0
	push	af
	call	___fsdiv_org
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, ___fsdiv_sloc34_1_0+0
	mov	___fsdiv_f_65536_27+0, a
	mov	a, ___fsdiv_sloc34_1_0+1
	mov	___fsdiv_f_65536_27+1, a
	mov	a, ___fsdiv_sloc34_1_0+2
	mov	___fsdiv_f_65536_27+2, a
	mov	a, ___fsdiv_sloc34_1_0+3
	mov	___fsdiv_f_65536_27+3, a
00111$:
;	../_fsdiv.c: 363: return f; 
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, ___fsdiv_f_65536_27+0
	idxm	p, a
	inc	p
	mov	a, ___fsdiv_f_65536_27+1
	idxm	p, a
	inc	p
	mov	a, ___fsdiv_f_65536_27+2
	idxm	p, a
	inc	p
	mov	a, ___fsdiv_f_65536_27+3
	idxm	p, a
;	../_fsdiv.c: 364: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
