;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _fsmul
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsmul_PARM_2
	.globl ___fsmul_PARM_1
	.globl ___fsmul
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
___fsmul_PARM_1:
	.ds 4
___fsmul_PARM_2:
	.ds 4
___fsmul_fl1_65536_21:
	.ds 4
___fsmul_fl2_65536_21:
	.ds 4
___fsmul_result_65536_21:
	.ds 4
___fsmul_sloc0_1_0:
	.ds 4
___fsmul_sloc1_1_0:
	.ds 4
___fsmul_sloc2_1_0:
	.ds 4
___fsmul_sloc3_1_0:
	.ds 4
___fsmul_sloc4_1_0:
	.ds 4
___fsmul_sloc5_1_0:
	.ds 4
___fsmul_sloc6_1_0:
	.ds 4
___fsmul_sloc7_1_0:
	.ds 4
___fsmul_sloc8_1_0:
	.ds 4
___fsmul_sloc9_1_0:
	.ds 4
___fsmul_sloc10_1_0:
	.ds 4
___fsmul_sloc11_1_0:
	.ds 4
___fsmul_sloc12_1_0:
	.ds 1
___fsmul_sloc13_1_0:
	.ds 4
___fsmul_sloc14_1_0:
	.ds 4
___fsmul_sloc15_1_0:
	.ds 2
___fsmul_sloc16_1_0:
	.ds 2
___fsmul_sloc17_1_0:
	.ds 4
___fsmul_sloc18_1_0:
	.ds 4
___fsmul_sloc19_1_0:
	.ds 2
___fsmul_sloc20_1_0:
	.ds 2
___fsmul_sloc21_1_0:
	.ds 4
___fsmul_sloc22_1_0:
	.ds 4
___fsmul_sloc23_1_0:
	.ds 4
___fsmul_sloc24_1_0:
	.ds 4
___fsmul_sloc25_1_0:
	.ds 4
___fsmul_sloc26_1_0:
	.ds 4
___fsmul_sloc27_1_0:
	.ds 4
___fsmul_sloc28_1_0:
	.ds 4
___fsmul_sloc29_1_0:
	.ds 4
___fsmul_sloc30_1_0:
	.ds 4
___fsmul_sloc31_1_0:
	.ds 4
___fsmul_sloc32_1_0:
	.ds 2
___fsmul_sloc33_1_0:
	.ds 4
___fsmul_sloc34_1_0:
	.ds 4
___fsmul_sloc35_1_0:
	.ds 4
___fsmul_sloc36_1_0:
	.ds 4
___fsmul_sloc37_1_0:
	.ds 2
___fsmul_sloc38_1_0:
	.ds 4
___fsmul_sloc39_1_0:
	.ds 4
___fsmul_sloc40_1_0:
	.ds 4
___fsmul_sloc41_1_0:
	.ds 4
___fsmul_sloc42_1_0:
	.ds 4
___fsmul_sloc43_1_0:
	.ds 4
___fsmul_sloc44_1_0:
	.ds 4
___fsmul_sloc45_1_0:
	.ds 4
___fsmul_sloc46_1_0:
	.ds 4
___fsmul_sloc47_1_0:
	.ds 4
___fsmul_sloc48_1_0:
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
;	../_fsmul.c: 241: float __fsmul (float a1, float a2) {
;	-----------------------------------------
;	 function __fsmul
;	-----------------------------------------
___fsmul:
;	../_fsmul.c: 247: fl1.f = a1;
	mov	a, ___fsmul_PARM_1+0
	mov	___fsmul_fl1_65536_21+0, a
	mov	a, ___fsmul_PARM_1+1
	mov	___fsmul_fl1_65536_21+1, a
	mov	a, ___fsmul_PARM_1+2
	mov	___fsmul_fl1_65536_21+2, a
	mov	a, ___fsmul_PARM_1+3
	mov	___fsmul_fl1_65536_21+3, a
;	../_fsmul.c: 248: fl2.f = a2;
	mov	a, ___fsmul_PARM_2+0
	mov	___fsmul_fl2_65536_21+0, a
	mov	a, ___fsmul_PARM_2+1
	mov	___fsmul_fl2_65536_21+1, a
	mov	a, ___fsmul_PARM_2+2
	mov	___fsmul_fl2_65536_21+2, a
	mov	a, ___fsmul_PARM_2+3
	mov	___fsmul_fl2_65536_21+3, a
;	../_fsmul.c: 250: if (!fl1.l || !fl2.l)
	mov	a, ___fsmul_fl1_65536_21+0
	mov	___fsmul_sloc3_1_0+0, a
	mov	a, ___fsmul_fl1_65536_21+1
	mov	___fsmul_sloc3_1_0+1, a
	mov	a, ___fsmul_fl1_65536_21+2
	mov	___fsmul_sloc3_1_0+2, a
	mov	a, ___fsmul_fl1_65536_21+3
	mov	___fsmul_sloc3_1_0+3, a
	mov	a, ___fsmul_sloc3_1_0+0
	or	a, ___fsmul_sloc3_1_0+1
	or	a, ___fsmul_sloc3_1_0+2
	or	a, ___fsmul_sloc3_1_0+3
	cneqsn	a, #0x00
	goto	00101$
	mov	a, ___fsmul_fl2_65536_21+0
	mov	___fsmul_sloc4_1_0+0, a
	mov	a, ___fsmul_fl2_65536_21+1
	mov	___fsmul_sloc4_1_0+1, a
	mov	a, ___fsmul_fl2_65536_21+2
	mov	___fsmul_sloc4_1_0+2, a
	mov	a, ___fsmul_fl2_65536_21+3
	mov	___fsmul_sloc4_1_0+3, a
	mov	a, ___fsmul_sloc4_1_0+0
	or	a, ___fsmul_sloc4_1_0+1
	or	a, ___fsmul_sloc4_1_0+2
	or	a, ___fsmul_sloc4_1_0+3
	ceqsn	a, #0x00
	goto	00102$
00101$:
;	../_fsmul.c: 251: return (0);
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
;	../_fsmul.c: 254: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	mov	a, ___fsmul_fl1_65536_21+0
	mov	___fsmul_sloc5_1_0+0, a
	mov	a, ___fsmul_fl1_65536_21+1
	mov	___fsmul_sloc5_1_0+1, a
	mov	a, ___fsmul_fl1_65536_21+2
	mov	___fsmul_sloc5_1_0+2, a
	mov	a, ___fsmul_fl1_65536_21+3
	mov	___fsmul_sloc5_1_0+3, a
	mov	___fsmul_sloc6_1_0+0, a
	clear	___fsmul_sloc6_1_0+1
	clear	___fsmul_sloc6_1_0+2
	clear	___fsmul_sloc6_1_0+3
	mov	a, #7
00149$:
	sr	___fsmul_sloc6_1_0+0
	dzsn	a
	goto	00149$
	mov	a, ___fsmul_sloc6_1_0+0
	and	a, #0x01
	mov	___fsmul_sloc7_1_0+0, a
	clear	___fsmul_sloc7_1_0+1
	clear	___fsmul_sloc7_1_0+2
	clear	___fsmul_sloc7_1_0+3
	mov	a, ___fsmul_fl2_65536_21+0
	mov	___fsmul_sloc8_1_0+0, a
	mov	a, ___fsmul_fl2_65536_21+1
	mov	___fsmul_sloc8_1_0+1, a
	mov	a, ___fsmul_fl2_65536_21+2
	mov	___fsmul_sloc8_1_0+2, a
	mov	a, ___fsmul_fl2_65536_21+3
	mov	___fsmul_sloc8_1_0+3, a
	mov	___fsmul_sloc9_1_0+0, a
	clear	___fsmul_sloc9_1_0+1
	clear	___fsmul_sloc9_1_0+2
	clear	___fsmul_sloc9_1_0+3
	mov	a, #7
00150$:
	sr	___fsmul_sloc9_1_0+0
	dzsn	a
	goto	00150$
	mov	a, ___fsmul_sloc9_1_0+0
	and	a, #0x01
	mov	___fsmul_sloc10_1_0+0, a
	clear	___fsmul_sloc10_1_0+1
	clear	___fsmul_sloc10_1_0+2
	clear	___fsmul_sloc10_1_0+3
	mov	a, ___fsmul_sloc7_1_0+0
	xor	a, ___fsmul_sloc10_1_0+0
	mov	___fsmul_sloc11_1_0+0, a
	mov	a, ___fsmul_sloc7_1_0+1
	xor	a, ___fsmul_sloc10_1_0+1
	mov	___fsmul_sloc11_1_0+1, a
	mov	a, ___fsmul_sloc7_1_0+2
	xor	a, ___fsmul_sloc10_1_0+2
	mov	___fsmul_sloc11_1_0+2, a
	mov	a, ___fsmul_sloc7_1_0+3
	xor	a, ___fsmul_sloc10_1_0+3
	mov	___fsmul_sloc11_1_0+3, a
	mov	a, ___fsmul_sloc11_1_0+0
	mov	___fsmul_sloc12_1_0+0, a
;	../_fsmul.c: 255: exp = EXP (fl1.l) - EXCESS;
	mov	a, ___fsmul_fl1_65536_21+0
	mov	___fsmul_sloc13_1_0+0, a
	mov	a, ___fsmul_fl1_65536_21+1
	mov	___fsmul_sloc13_1_0+1, a
	mov	a, ___fsmul_fl1_65536_21+2
	mov	___fsmul_sloc13_1_0+2, a
	mov	a, ___fsmul_fl1_65536_21+3
	mov	___fsmul_sloc13_1_0+3, a
	mov	a, ___fsmul_sloc13_1_0+2
	mov	___fsmul_sloc14_1_0+0, a
	mov	a, ___fsmul_sloc13_1_0+3
	mov	___fsmul_sloc14_1_0+1, a
	clear	___fsmul_sloc14_1_0+2
	clear	___fsmul_sloc14_1_0+3
	mov	a, #7
00151$:
	sr	___fsmul_sloc14_1_0+1
	src	___fsmul_sloc14_1_0+0
	dzsn	a
	goto	00151$
	mov	a, ___fsmul_sloc14_1_0+1
	mov	p, a
	mov	a, ___fsmul_sloc14_1_0+0
	mov	___fsmul_sloc15_1_0+0, a
	clear	___fsmul_sloc15_1_0+1
	mov	a, ___fsmul_sloc15_1_0+0
	sub	a, #0x7e
	mov	___fsmul_sloc16_1_0+0, a
	mov	a, ___fsmul_sloc15_1_0+1
	subc	a
	mov	___fsmul_sloc16_1_0+1, a
;	../_fsmul.c: 256: exp += EXP (fl2.l);
	mov	a, ___fsmul_fl2_65536_21+0
	mov	___fsmul_sloc17_1_0+0, a
	mov	a, ___fsmul_fl2_65536_21+1
	mov	___fsmul_sloc17_1_0+1, a
	mov	a, ___fsmul_fl2_65536_21+2
	mov	___fsmul_sloc17_1_0+2, a
	mov	a, ___fsmul_fl2_65536_21+3
	mov	___fsmul_sloc17_1_0+3, a
	mov	a, ___fsmul_sloc17_1_0+2
	mov	___fsmul_sloc18_1_0+0, a
	mov	a, ___fsmul_sloc17_1_0+3
	mov	___fsmul_sloc18_1_0+1, a
	clear	___fsmul_sloc18_1_0+2
	clear	___fsmul_sloc18_1_0+3
	mov	a, #7
00152$:
	sr	___fsmul_sloc18_1_0+1
	src	___fsmul_sloc18_1_0+0
	dzsn	a
	goto	00152$
	mov	a, ___fsmul_sloc18_1_0+1
	mov	p, a
	mov	a, ___fsmul_sloc18_1_0+0
	mov	___fsmul_sloc19_1_0+0, a
	clear	___fsmul_sloc19_1_0+1
	mov	a, ___fsmul_sloc16_1_0+0
	add	a, ___fsmul_sloc19_1_0+0
	mov	___fsmul_sloc20_1_0+0, a
	mov	a, ___fsmul_sloc16_1_0+1
	addc	a, ___fsmul_sloc19_1_0+1
	mov	___fsmul_sloc20_1_0+1, a
;	../_fsmul.c: 258: fl1.l = MANT (fl1.l);
	mov	a, ___fsmul_fl1_65536_21+0
	mov	___fsmul_sloc21_1_0+0, a
	mov	a, ___fsmul_fl1_65536_21+1
	mov	___fsmul_sloc21_1_0+1, a
	mov	a, ___fsmul_fl1_65536_21+2
	mov	___fsmul_sloc21_1_0+2, a
	mov	a, ___fsmul_fl1_65536_21+3
	mov	___fsmul_sloc21_1_0+3, a
	mov	a, ___fsmul_sloc21_1_0+0
	mov	___fsmul_sloc22_1_0+0, a
	mov	a, ___fsmul_sloc21_1_0+1
	mov	___fsmul_sloc22_1_0+1, a
	mov	a, ___fsmul_sloc21_1_0+2
	and	a, #0x7f
	mov	___fsmul_sloc22_1_0+2, a
	clear	___fsmul_sloc22_1_0+3
	mov	a, ___fsmul_sloc22_1_0+0
	mov	___fsmul_sloc23_1_0+0, a
	mov	a, ___fsmul_sloc22_1_0+1
	mov	___fsmul_sloc23_1_0+1, a
	mov	a, ___fsmul_sloc22_1_0+2
	or	a, #0x80
	mov	___fsmul_sloc23_1_0+2, a
	mov	a, ___fsmul_sloc22_1_0+3
	mov	___fsmul_sloc23_1_0+3, a
	mov	a, ___fsmul_sloc23_1_0+0
	mov	___fsmul_fl1_65536_21+0, a
	mov	a, ___fsmul_sloc23_1_0+1
	mov	___fsmul_fl1_65536_21+1, a
	mov	a, ___fsmul_sloc23_1_0+2
	mov	___fsmul_fl1_65536_21+2, a
	mov	a, ___fsmul_sloc23_1_0+3
	mov	___fsmul_fl1_65536_21+3, a
;	../_fsmul.c: 259: fl2.l = MANT (fl2.l);
	mov	a, ___fsmul_fl2_65536_21+0
	mov	___fsmul_sloc24_1_0+0, a
	mov	a, ___fsmul_fl2_65536_21+1
	mov	___fsmul_sloc24_1_0+1, a
	mov	a, ___fsmul_fl2_65536_21+2
	mov	___fsmul_sloc24_1_0+2, a
	mov	a, ___fsmul_fl2_65536_21+3
	mov	___fsmul_sloc24_1_0+3, a
	mov	a, ___fsmul_sloc24_1_0+0
	mov	___fsmul_sloc25_1_0+0, a
	mov	a, ___fsmul_sloc24_1_0+1
	mov	___fsmul_sloc25_1_0+1, a
	mov	a, ___fsmul_sloc24_1_0+2
	and	a, #0x7f
	mov	___fsmul_sloc25_1_0+2, a
	clear	___fsmul_sloc25_1_0+3
	mov	a, ___fsmul_sloc25_1_0+0
	mov	___fsmul_sloc26_1_0+0, a
	mov	a, ___fsmul_sloc25_1_0+1
	mov	___fsmul_sloc26_1_0+1, a
	mov	a, ___fsmul_sloc25_1_0+2
	or	a, #0x80
	mov	___fsmul_sloc26_1_0+2, a
	mov	a, ___fsmul_sloc25_1_0+3
	mov	___fsmul_sloc26_1_0+3, a
	mov	a, ___fsmul_sloc26_1_0+0
	mov	___fsmul_fl2_65536_21+0, a
	mov	a, ___fsmul_sloc26_1_0+1
	mov	___fsmul_fl2_65536_21+1, a
	mov	a, ___fsmul_sloc26_1_0+2
	mov	___fsmul_fl2_65536_21+2, a
	mov	a, ___fsmul_sloc26_1_0+3
	mov	___fsmul_fl2_65536_21+3, a
;	../_fsmul.c: 262: result = (unsigned long)((unsigned short)(fl1.l >> 8)) * (unsigned short)(fl2.l >> 8);
	mov	a, ___fsmul_fl1_65536_21+0
	mov	___fsmul_sloc27_1_0+0, a
	mov	a, ___fsmul_fl1_65536_21+1
	mov	___fsmul_sloc27_1_0+1, a
	mov	a, ___fsmul_fl1_65536_21+2
	mov	___fsmul_sloc27_1_0+2, a
	mov	a, ___fsmul_fl1_65536_21+3
	mov	___fsmul_sloc27_1_0+3, a
	mov	a, ___fsmul_sloc27_1_0+1
	mov	___fsmul_sloc28_1_0+0, a
	mov	a, ___fsmul_sloc27_1_0+2
	mov	___fsmul_sloc28_1_0+1, a
	mov	a, ___fsmul_sloc27_1_0+3
	mov	___fsmul_sloc28_1_0+2, a
	clear	___fsmul_sloc28_1_0+3
	mov	a, ___fsmul_sloc28_1_0+1
	mov	p, a
	mov	a, ___fsmul_sloc28_1_0+0
	mov	__mullong_PARM_1+0, a
	mov	a, p
	mov	__mullong_PARM_1+1, a
	clear	__mullong_PARM_1+2
	clear	__mullong_PARM_1+3
	mov	a, ___fsmul_fl2_65536_21+0
	mov	___fsmul_sloc29_1_0+0, a
	mov	a, ___fsmul_fl2_65536_21+1
	mov	___fsmul_sloc29_1_0+1, a
	mov	a, ___fsmul_fl2_65536_21+2
	mov	___fsmul_sloc29_1_0+2, a
	mov	a, ___fsmul_fl2_65536_21+3
	mov	___fsmul_sloc29_1_0+3, a
	mov	a, ___fsmul_sloc29_1_0+1
	mov	___fsmul_sloc30_1_0+0, a
	mov	a, ___fsmul_sloc29_1_0+2
	mov	___fsmul_sloc30_1_0+1, a
	mov	a, ___fsmul_sloc29_1_0+3
	mov	___fsmul_sloc30_1_0+2, a
	clear	___fsmul_sloc30_1_0+3
	mov	a, ___fsmul_sloc30_1_0+1
	mov	p, a
	mov	a, ___fsmul_sloc30_1_0+0
	mov	__mullong_PARM_2+0, a
	mov	a, p
	mov	__mullong_PARM_2+1, a
	clear	__mullong_PARM_2+2
	clear	__mullong_PARM_2+3
	mov	a, #___fsmul_sloc0_1_0
	push	af
	call	__mullong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, ___fsmul_sloc0_1_0+0
	mov	___fsmul_result_65536_21+0, a
	mov	a, ___fsmul_sloc0_1_0+1
	mov	___fsmul_result_65536_21+1, a
	mov	a, ___fsmul_sloc0_1_0+2
	mov	___fsmul_result_65536_21+2, a
	mov	a, ___fsmul_sloc0_1_0+3
	mov	___fsmul_result_65536_21+3, a
;	../_fsmul.c: 263: result += ((unsigned long)((unsigned short)(fl1.l & 0xff)) * (unsigned short)(fl2.l >> 8)) >> 8;
	mov	a, ___fsmul_fl1_65536_21+0
	mov	___fsmul_sloc31_1_0+0, a
	mov	a, ___fsmul_fl1_65536_21+1
	mov	___fsmul_sloc31_1_0+1, a
	mov	a, ___fsmul_fl1_65536_21+2
	mov	___fsmul_sloc31_1_0+2, a
	mov	a, ___fsmul_fl1_65536_21+3
	mov	___fsmul_sloc31_1_0+3, a
	mov	a, ___fsmul_sloc31_1_0+1
	mov	p, a
	mov	a, ___fsmul_sloc31_1_0+0
	mov	___fsmul_sloc32_1_0+0, a
	clear	___fsmul_sloc32_1_0+1
	mov	a, ___fsmul_sloc32_1_0+0
	mov	__mullong_PARM_1+0, a
	mov	a, ___fsmul_sloc32_1_0+1
	mov	__mullong_PARM_1+1, a
	clear	__mullong_PARM_1+2
	clear	__mullong_PARM_1+3
	mov	a, ___fsmul_fl2_65536_21+0
	mov	___fsmul_sloc33_1_0+0, a
	mov	a, ___fsmul_fl2_65536_21+1
	mov	___fsmul_sloc33_1_0+1, a
	mov	a, ___fsmul_fl2_65536_21+2
	mov	___fsmul_sloc33_1_0+2, a
	mov	a, ___fsmul_fl2_65536_21+3
	mov	___fsmul_sloc33_1_0+3, a
	mov	a, ___fsmul_sloc33_1_0+1
	mov	___fsmul_sloc34_1_0+0, a
	mov	a, ___fsmul_sloc33_1_0+2
	mov	___fsmul_sloc34_1_0+1, a
	mov	a, ___fsmul_sloc33_1_0+3
	mov	___fsmul_sloc34_1_0+2, a
	clear	___fsmul_sloc34_1_0+3
	mov	a, ___fsmul_sloc34_1_0+1
	mov	p, a
	mov	a, ___fsmul_sloc34_1_0+0
	mov	__mullong_PARM_2+0, a
	mov	a, p
	mov	__mullong_PARM_2+1, a
	clear	__mullong_PARM_2+2
	clear	__mullong_PARM_2+3
	mov	a, #___fsmul_sloc1_1_0
	push	af
	call	__mullong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, ___fsmul_sloc1_1_0+1
	mov	___fsmul_sloc35_1_0+0, a
	mov	a, ___fsmul_sloc1_1_0+2
	mov	___fsmul_sloc35_1_0+1, a
	mov	a, ___fsmul_sloc1_1_0+3
	mov	___fsmul_sloc35_1_0+2, a
	clear	___fsmul_sloc35_1_0+3
	mov	a, ___fsmul_sloc35_1_0+0
	add	___fsmul_result_65536_21+0, a
	mov	a, ___fsmul_sloc35_1_0+1
	addc	___fsmul_result_65536_21+1, a
	mov	a, ___fsmul_sloc35_1_0+2
	addc	___fsmul_result_65536_21+2, a
	mov	a, ___fsmul_sloc35_1_0+3
	addc	___fsmul_result_65536_21+3, a
;	../_fsmul.c: 264: result += ((unsigned long)((unsigned short)(fl2.l & 0xff)) * (unsigned short)(fl1.l >> 8)) >> 8;
	mov	a, ___fsmul_fl2_65536_21+0
	mov	___fsmul_sloc36_1_0+0, a
	mov	a, ___fsmul_fl2_65536_21+1
	mov	___fsmul_sloc36_1_0+1, a
	mov	a, ___fsmul_fl2_65536_21+2
	mov	___fsmul_sloc36_1_0+2, a
	mov	a, ___fsmul_fl2_65536_21+3
	mov	___fsmul_sloc36_1_0+3, a
	mov	a, ___fsmul_sloc36_1_0+1
	mov	p, a
	mov	a, ___fsmul_sloc36_1_0+0
	mov	___fsmul_sloc37_1_0+0, a
	clear	___fsmul_sloc37_1_0+1
	mov	a, ___fsmul_sloc37_1_0+0
	mov	__mullong_PARM_1+0, a
	mov	a, ___fsmul_sloc37_1_0+1
	mov	__mullong_PARM_1+1, a
	clear	__mullong_PARM_1+2
	clear	__mullong_PARM_1+3
	mov	a, ___fsmul_fl1_65536_21+0
	mov	___fsmul_sloc38_1_0+0, a
	mov	a, ___fsmul_fl1_65536_21+1
	mov	___fsmul_sloc38_1_0+1, a
	mov	a, ___fsmul_fl1_65536_21+2
	mov	___fsmul_sloc38_1_0+2, a
	mov	a, ___fsmul_fl1_65536_21+3
	mov	___fsmul_sloc38_1_0+3, a
	mov	a, ___fsmul_sloc38_1_0+1
	mov	___fsmul_sloc39_1_0+0, a
	mov	a, ___fsmul_sloc38_1_0+2
	mov	___fsmul_sloc39_1_0+1, a
	mov	a, ___fsmul_sloc38_1_0+3
	mov	___fsmul_sloc39_1_0+2, a
	clear	___fsmul_sloc39_1_0+3
	mov	a, ___fsmul_sloc39_1_0+1
	mov	p, a
	mov	a, ___fsmul_sloc39_1_0+0
	mov	__mullong_PARM_2+0, a
	mov	a, p
	mov	__mullong_PARM_2+1, a
	clear	__mullong_PARM_2+2
	clear	__mullong_PARM_2+3
	mov	a, #___fsmul_sloc2_1_0
	push	af
	call	__mullong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, ___fsmul_sloc2_1_0+1
	mov	___fsmul_sloc40_1_0+0, a
	mov	a, ___fsmul_sloc2_1_0+2
	mov	___fsmul_sloc40_1_0+1, a
	mov	a, ___fsmul_sloc2_1_0+3
	mov	___fsmul_sloc40_1_0+2, a
	clear	___fsmul_sloc40_1_0+3
	mov	a, ___fsmul_sloc40_1_0+0
	add	___fsmul_result_65536_21+0, a
	mov	a, ___fsmul_sloc40_1_0+1
	addc	___fsmul_result_65536_21+1, a
	mov	a, ___fsmul_sloc40_1_0+2
	addc	___fsmul_result_65536_21+2, a
	mov	a, ___fsmul_sloc40_1_0+3
	addc	___fsmul_result_65536_21+3, a
;	../_fsmul.c: 267: result += 0x40;
	mov	a, #0x40
	add	___fsmul_result_65536_21+0, a
	addc	___fsmul_result_65536_21+1
	addc	___fsmul_result_65536_21+2
	addc	___fsmul_result_65536_21+3
;	../_fsmul.c: 269: if (result & SIGNBIT)
	mov	a, ___fsmul_result_65536_21+3
	and	a, #0x80
	cneqsn	a, #0x00
	goto	00105$
;	../_fsmul.c: 272: result += 0x40;
	mov	a, #0x40
	add	___fsmul_result_65536_21+0, a
	addc	___fsmul_result_65536_21+1
	addc	___fsmul_result_65536_21+2
	addc	___fsmul_result_65536_21+3
;	../_fsmul.c: 273: result >>= 8;
	mov	a, ___fsmul_result_65536_21+1
	mov	___fsmul_result_65536_21+0, a
	mov	a, ___fsmul_result_65536_21+2
	mov	___fsmul_result_65536_21+1, a
	mov	a, ___fsmul_result_65536_21+3
	mov	___fsmul_result_65536_21+2, a
	clear	___fsmul_result_65536_21+3
	goto	00106$
00105$:
;	../_fsmul.c: 277: result >>= 7;
	mov	a, #7
00153$:
	sr	___fsmul_result_65536_21+3
	src	___fsmul_result_65536_21+2
	src	___fsmul_result_65536_21+1
	src	___fsmul_result_65536_21+0
	dzsn	a
	goto	00153$
;	../_fsmul.c: 278: exp--;
	dec	___fsmul_sloc20_1_0+0
	subc	___fsmul_sloc20_1_0+1
00106$:
;	../_fsmul.c: 281: result &= ~HIDDEN;
	mov	a, #0x7f
	and	___fsmul_result_65536_21+2, a
;	../_fsmul.c: 284: if (exp >= 0x100)
	mov	a, ___fsmul_sloc20_1_0+1
	sub	a, #0x01
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t0sn	f, c
	goto	00111$
;	../_fsmul.c: 285: fl1.l = (sign ? SIGNBIT : 0) | __INFINITY;
	mov	a, ___fsmul_sloc12_1_0+0
	cneqsn	a, #0x00
	goto	00115$
	clear	___fsmul_sloc41_1_0+0
	clear	___fsmul_sloc41_1_0+1
	clear	___fsmul_sloc41_1_0+2
	mov	a, #0x80
	mov	___fsmul_sloc41_1_0+3, a
	goto	00116$
00115$:
	clear	___fsmul_sloc41_1_0+0
	clear	___fsmul_sloc41_1_0+1
	clear	___fsmul_sloc41_1_0+2
	clear	___fsmul_sloc41_1_0+3
00116$:
	mov	a, ___fsmul_sloc41_1_0+0
	mov	___fsmul_sloc42_1_0+0, a
	mov	a, ___fsmul_sloc41_1_0+1
	mov	___fsmul_sloc42_1_0+1, a
	mov	a, ___fsmul_sloc41_1_0+2
	or	a, #0x80
	mov	___fsmul_sloc42_1_0+2, a
	mov	a, ___fsmul_sloc41_1_0+3
	or	a, #0x7f
	mov	___fsmul_sloc42_1_0+3, a
	mov	a, ___fsmul_sloc42_1_0+0
	mov	___fsmul_fl1_65536_21+0, a
	mov	a, ___fsmul_sloc42_1_0+1
	mov	___fsmul_fl1_65536_21+1, a
	mov	a, ___fsmul_sloc42_1_0+2
	mov	___fsmul_fl1_65536_21+2, a
	mov	a, ___fsmul_sloc42_1_0+3
	mov	___fsmul_fl1_65536_21+3, a
	goto	00112$
00111$:
;	../_fsmul.c: 286: else if (exp < 0)
	mov	a, ___fsmul_sloc20_1_0+1
	sub	a, #0x80
	t0sn	f, c
	goto	00108$
;	../_fsmul.c: 287: fl1.l = 0;
	clear	___fsmul_fl1_65536_21+0
	clear	___fsmul_fl1_65536_21+1
	clear	___fsmul_fl1_65536_21+2
	clear	___fsmul_fl1_65536_21+3
	goto	00112$
00108$:
;	../_fsmul.c: 289: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	mov	a, ___fsmul_sloc12_1_0+0
	cneqsn	a, #0x00
	goto	00117$
	clear	___fsmul_sloc43_1_0+0
	clear	___fsmul_sloc43_1_0+1
	clear	___fsmul_sloc43_1_0+2
	mov	a, #0x80
	mov	___fsmul_sloc43_1_0+3, a
	goto	00118$
00117$:
	clear	___fsmul_sloc43_1_0+0
	clear	___fsmul_sloc43_1_0+1
	clear	___fsmul_sloc43_1_0+2
	clear	___fsmul_sloc43_1_0+3
00118$:
	mov	a, ___fsmul_sloc20_1_0+0
	mov	___fsmul_sloc44_1_0+0, a
	mov	a, ___fsmul_sloc20_1_0+1
	mov	___fsmul_sloc44_1_0+1, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	___fsmul_sloc44_1_0+2, a
	mov	___fsmul_sloc44_1_0+3, a
	mov	a, ___fsmul_sloc44_1_0+0
	mov	___fsmul_sloc45_1_0+2, a
	mov	a, ___fsmul_sloc44_1_0+1
	mov	___fsmul_sloc45_1_0+3, a
	clear	___fsmul_sloc45_1_0+0
	clear	___fsmul_sloc45_1_0+1
	mov	a, #7
00154$:
	sl	___fsmul_sloc45_1_0+2
	slc	___fsmul_sloc45_1_0+3
	dzsn	a
	goto	00154$
	mov	a, ___fsmul_sloc43_1_0+0
	or	a, ___fsmul_sloc45_1_0+0
	mov	___fsmul_sloc46_1_0+0, a
	mov	a, ___fsmul_sloc43_1_0+1
	or	a, ___fsmul_sloc45_1_0+1
	mov	___fsmul_sloc46_1_0+1, a
	mov	a, ___fsmul_sloc43_1_0+2
	or	a, ___fsmul_sloc45_1_0+2
	mov	___fsmul_sloc46_1_0+2, a
	mov	a, ___fsmul_sloc43_1_0+3
	or	a, ___fsmul_sloc45_1_0+3
	mov	___fsmul_sloc46_1_0+3, a
	mov	a, ___fsmul_sloc46_1_0+0
	or	a, ___fsmul_result_65536_21+0
	mov	___fsmul_sloc47_1_0+0, a
	mov	a, ___fsmul_sloc46_1_0+1
	or	a, ___fsmul_result_65536_21+1
	mov	___fsmul_sloc47_1_0+1, a
	mov	a, ___fsmul_sloc46_1_0+2
	or	a, ___fsmul_result_65536_21+2
	mov	___fsmul_sloc47_1_0+2, a
	mov	a, ___fsmul_sloc46_1_0+3
	or	a, ___fsmul_result_65536_21+3
	mov	___fsmul_sloc47_1_0+3, a
	mov	a, ___fsmul_sloc47_1_0+0
	mov	___fsmul_fl1_65536_21+0, a
	mov	a, ___fsmul_sloc47_1_0+1
	mov	___fsmul_fl1_65536_21+1, a
	mov	a, ___fsmul_sloc47_1_0+2
	mov	___fsmul_fl1_65536_21+2, a
	mov	a, ___fsmul_sloc47_1_0+3
	mov	___fsmul_fl1_65536_21+3, a
00112$:
;	../_fsmul.c: 290: return (fl1.f);
	mov	a, ___fsmul_fl1_65536_21+0
	mov	___fsmul_sloc48_1_0+0, a
	mov	a, ___fsmul_fl1_65536_21+1
	mov	___fsmul_sloc48_1_0+1, a
	mov	a, ___fsmul_fl1_65536_21+2
	mov	___fsmul_sloc48_1_0+2, a
	mov	a, ___fsmul_fl1_65536_21+3
	mov	___fsmul_sloc48_1_0+3, a
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, ___fsmul_sloc48_1_0+0
	idxm	p, a
	inc	p
	mov	a, ___fsmul_sloc48_1_0+1
	idxm	p, a
	inc	p
	mov	a, ___fsmul_sloc48_1_0+2
	idxm	p, a
	inc	p
	mov	a, ___fsmul_sloc48_1_0+3
	idxm	p, a
;	../_fsmul.c: 291: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
