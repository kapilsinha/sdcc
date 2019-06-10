;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module mbrtowc
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbrtowc_PARM_4
	.globl _mbrtowc_PARM_3
	.globl _mbrtowc_PARM_2
	.globl _mbrtowc_PARM_1
	.globl _mbrtowc
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_mbrtowc_PARM_1:
	.ds 2
_mbrtowc_PARM_2:
	.ds 2
_mbrtowc_PARM_3:
	.ds 2
_mbrtowc_PARM_4:
	.ds 2
_mbrtowc_mbseq_65536_10:
	.ds 4
_mbrtowc_sps_65536_10:
	.ds 3
_mbrtowc_sloc0_1_0:
	.ds 2
_mbrtowc_sloc1_1_0:
	.ds 1
_mbrtowc_sloc2_1_0:
	.ds 1
_mbrtowc_sloc3_1_0:
	.ds 1
_mbrtowc_sloc4_1_0:
	.ds 1
_mbrtowc_sloc5_1_0:
	.ds 1
_mbrtowc_sloc6_1_0:
	.ds 2
_mbrtowc_sloc7_1_0:
	.ds 2
_mbrtowc_sloc8_1_0:
	.ds 2
_mbrtowc_sloc9_1_0:
	.ds 2
_mbrtowc_sloc10_1_0:
	.ds 2
_mbrtowc_sloc11_1_0:
	.ds 2
_mbrtowc_sloc12_1_0:
	.ds 2
_mbrtowc_sloc13_1_0:
	.ds 2
_mbrtowc_sloc14_1_0:
	.ds 1
_mbrtowc_sloc15_1_0:
	.ds 2
_mbrtowc_sloc16_1_0:
	.ds 2
_mbrtowc_sloc17_1_0:
	.ds 2
_mbrtowc_sloc18_1_0:
	.ds 1
_mbrtowc_sloc19_1_0:
	.ds 1
_mbrtowc_sloc20_1_0:
	.ds 2
_mbrtowc_sloc21_1_0:
	.ds 2
_mbrtowc_sloc22_1_0:
	.ds 1
_mbrtowc_sloc23_1_0:
	.ds 2
_mbrtowc_sloc24_1_0:
	.ds 4
_mbrtowc_sloc25_1_0:
	.ds 2
_mbrtowc_sloc26_1_0:
	.ds 1
_mbrtowc_sloc27_1_0:
	.ds 4
_mbrtowc_sloc28_1_0:
	.ds 2
_mbrtowc_sloc29_1_0:
	.ds 4
_mbrtowc_sloc30_1_0:
	.ds 2
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
;	../mbrtowc.c: 32: size_t mbrtowc(wchar_t *restrict pwc, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrtowc
;	-----------------------------------------
_mbrtowc:
;	../mbrtowc.c: 41: if(!s)
	mov	a, _mbrtowc_PARM_2+0
	or	a, _mbrtowc_PARM_2+1
	ceqsn	a, #0x00
	goto	00102$
;	../mbrtowc.c: 42: return(mbrtowc(0, "", 1, ps));
	mov	a, #<(___str_0 + 0)
	mov	_mbrtowc_PARM_2+0, a
	mov	a, #>(___str_0 + 0x8000 + 0)
	mov	_mbrtowc_PARM_2+1, a
	clear	_mbrtowc_PARM_1+0
	clear	_mbrtowc_PARM_1+1
	mov	a, #0x01
	mov	_mbrtowc_PARM_3+0, a
	clear	_mbrtowc_PARM_3+1
	call	_mbrtowc
	ret
00102$:
;	../mbrtowc.c: 43: if(!n)
	mov	a, _mbrtowc_PARM_3+0
	or	a, _mbrtowc_PARM_3+1
	cneqsn	a, #0x00
	goto	00126$
;	../mbrtowc.c: 45: if(!ps)
	mov	a, _mbrtowc_PARM_4+0
	or	a, _mbrtowc_PARM_4+1
	ceqsn	a, #0x00
	goto	00106$
;	../mbrtowc.c: 47: ps = &sps;
	mov	a, #(_mbrtowc_sps_65536_10 + 0)
	mov	_mbrtowc_PARM_4+0, a
	clear	_mbrtowc_PARM_4+1
00106$:
;	../mbrtowc.c: 50: for(i = 0; ps->c[i] && i < 3; i++)
	mov	a, _mbrtowc_PARM_4+0
	mov	_mbrtowc_sloc0_1_0+0, a
	mov	a, _mbrtowc_PARM_4+1
	mov	_mbrtowc_sloc0_1_0+1, a
	clear	_mbrtowc_sloc1_1_0+0
00129$:
	mov	a, _mbrtowc_sloc0_1_0+0
	add	a, _mbrtowc_sloc1_1_0+0
	mov	p, a
	mov	a, _mbrtowc_sloc0_1_0+1
	addc	a
	call	__gptrget
	mov	p, a
	cneqsn	a, #0x00
	goto	00171$
	mov	a, _mbrtowc_sloc1_1_0+0
	sub	a, #0x03
	t1sn	f, c
	goto	00171$
;	../mbrtowc.c: 51: mbseq[i] = ps->c[i];
	mov	a, #(_mbrtowc_mbseq_65536_10 + 0)
	add	a, _mbrtowc_sloc1_1_0+0
	xch	a, p
	idxm	p, a
;	../mbrtowc.c: 50: for(i = 0; ps->c[i] && i < 3; i++)
	inc	_mbrtowc_sloc1_1_0+0
	goto	00129$
00171$:
	mov	a, _mbrtowc_sloc1_1_0+0
	mov	_mbrtowc_sloc2_1_0+0, a
;	../mbrtowc.c: 53: seqlen = 1;
	mov	a, #0x01
	mov	_mbrtowc_sloc3_1_0+0, a
;	../mbrtowc.c: 54: first_byte = ps->c[0] ? ps->c[0] : *s;
	mov	a, _mbrtowc_PARM_4+0
	mov	p, a
	mov	a, _mbrtowc_PARM_4+1
	call	__gptrget
	cneqsn	a, #0x00
	goto	00145$
	goto	00146$
00145$:
	mov	a, _mbrtowc_PARM_2+0
	mov	p, a
	mov	a, _mbrtowc_PARM_2+1
	call	__gptrget
00146$:
;	../mbrtowc.c: 56: if(first_byte & 0x80)
	mov	_mbrtowc_sloc4_1_0+0, a
	and	a, #0x80
	cneqsn	a, #0x00
	goto	00112$
;	../mbrtowc.c: 58: while (first_byte & (0x80 >> seqlen))
	mov	a, #0x01
	mov	_mbrtowc_sloc5_1_0+0, a
00108$:
	mov	a, #0x80
	mov	_mbrtowc_sloc6_1_0+0, a
	clear	_mbrtowc_sloc6_1_0+1
	mov	a, _mbrtowc_sloc5_1_0+0
00272$:
	sub	a, #1
	t0sn	f, c
	goto	00273$
	push	af
	mov	a, #0x01
	sl	_mbrtowc_sloc6_1_0+1
	t0sn	f, c
	or	_mbrtowc_sloc6_1_0+1, a
	src	_mbrtowc_sloc6_1_0+1
	src	_mbrtowc_sloc6_1_0+1
	src	_mbrtowc_sloc6_1_0+0
	pop	af
	goto	00272$
00273$:
	clear	p
	mov	a, _mbrtowc_sloc4_1_0+0
	and	a, _mbrtowc_sloc6_1_0+0
	mov	_mbrtowc_sloc7_1_0+0, a
	mov	a, p
	and	a, _mbrtowc_sloc6_1_0+1
	mov	_mbrtowc_sloc7_1_0+1, a
	mov	a, _mbrtowc_sloc7_1_0+0
	or	a, _mbrtowc_sloc7_1_0+1
	cneqsn	a, #0x00
	goto	00172$
;	../mbrtowc.c: 59: seqlen++;
	inc	_mbrtowc_sloc5_1_0+0
	goto	00108$
00172$:
	mov	a, _mbrtowc_sloc5_1_0+0
	mov	_mbrtowc_sloc3_1_0+0, a
;	../mbrtowc.c: 60: first_byte &= (0xff >> (seqlen + 1));
	mov	a, _mbrtowc_sloc5_1_0+0
	add	a, #0x01
	push	af
	mov	a, #0xff
	mov	_mbrtowc_sloc8_1_0+0, a
	pop	af
	clear	_mbrtowc_sloc8_1_0+1
00274$:
	sub	a, #1
	t0sn	f, c
	goto	00275$
	push	af
	mov	a, #0x01
	sl	_mbrtowc_sloc8_1_0+1
	t0sn	f, c
	or	_mbrtowc_sloc8_1_0+1, a
	src	_mbrtowc_sloc8_1_0+1
	src	_mbrtowc_sloc8_1_0+1
	src	_mbrtowc_sloc8_1_0+0
	pop	af
	goto	00274$
00275$:
	mov	a, _mbrtowc_sloc8_1_0+0
	and	_mbrtowc_sloc4_1_0+0, a
00112$:
;	../mbrtowc.c: 63: if(seqlen > 4)
	mov	a, #0x04
	sub	a, _mbrtowc_sloc3_1_0+0
	t0sn	f, c
	goto	00126$
;	../mbrtowc.c: 66: if(i + n < seqlen) // Incomplete multibyte character
	mov	a, _mbrtowc_sloc2_1_0+0
	mov	_mbrtowc_sloc9_1_0+0, a
	clear	_mbrtowc_sloc9_1_0+1
	mov	a, _mbrtowc_sloc9_1_0+1
	mov	p, a
	mov	a, _mbrtowc_sloc9_1_0+0
	add	a, _mbrtowc_PARM_3+0
	mov	_mbrtowc_sloc10_1_0+0, a
	mov	a, _mbrtowc_PARM_3+1
	addc	a, p
	mov	_mbrtowc_sloc10_1_0+1, a
	mov	a, _mbrtowc_sloc3_1_0+0
	mov	_mbrtowc_sloc11_1_0+0, a
	clear	_mbrtowc_sloc11_1_0+1
	mov	a, _mbrtowc_sloc10_1_0+0
	sub	a, _mbrtowc_sloc11_1_0+0
	mov	a, _mbrtowc_sloc10_1_0+1
	subc	a, _mbrtowc_sloc11_1_0+1
	t1sn	f, c
	goto	00162$
;	../mbrtowc.c: 70: return(-2);
	mov	a, _mbrtowc_PARM_4+0
	mov	_mbrtowc_sloc12_1_0+0, a
	mov	a, _mbrtowc_PARM_4+1
	mov	_mbrtowc_sloc12_1_0+1, a
	mov	a, _mbrtowc_PARM_2+0
	mov	_mbrtowc_sloc13_1_0+0, a
	mov	a, _mbrtowc_PARM_2+1
	mov	_mbrtowc_sloc13_1_0+1, a
	mov	a, _mbrtowc_sloc2_1_0+0
	mov	_mbrtowc_sloc14_1_0+0, a
	mov	a, _mbrtowc_PARM_3+0
	mov	_mbrtowc_sloc15_1_0+0, a
	mov	a, _mbrtowc_PARM_3+1
	mov	_mbrtowc_sloc15_1_0+1, a
00132$:
;	../mbrtowc.c: 68: for(;n-- ; i++)
	mov	a, _mbrtowc_sloc15_1_0+1
	mov	p, a
	mov	a, _mbrtowc_sloc15_1_0+0
	dec	_mbrtowc_sloc15_1_0+0
	subc	_mbrtowc_sloc15_1_0+1
	or	a, p
	cneqsn	a, #0x00
	goto	00115$
;	../mbrtowc.c: 69: ps->c[i] = *s++;
	mov	a, _mbrtowc_sloc12_1_0+0
	add	a, _mbrtowc_sloc14_1_0+0
	mov	_mbrtowc_sloc16_1_0+0, a
	mov	a, _mbrtowc_sloc12_1_0+1
	addc	a
	mov	_mbrtowc_sloc16_1_0+1, a
	mov	a, _mbrtowc_sloc13_1_0+0
	mov	p, a
	mov	a, _mbrtowc_sloc13_1_0+1
	call	__gptrget
	mov	p, a
	inc	_mbrtowc_sloc13_1_0+0
	addc	_mbrtowc_sloc13_1_0+1
	mov	a, _mbrtowc_sloc16_1_0+0
	xch	a, p
	idxm	p, a
;	../mbrtowc.c: 68: for(;n-- ; i++)
	inc	_mbrtowc_sloc14_1_0+0
	goto	00132$
00115$:
;	../mbrtowc.c: 70: return(-2);
	mov	a, #0xff
	mov	p, a
	ret	#0xfe
;	../mbrtowc.c: 73: for(j = 0; j < i; j++)
00162$:
	mov	a, _mbrtowc_PARM_4+0
	mov	_mbrtowc_sloc17_1_0+0, a
	mov	a, _mbrtowc_PARM_4+1
	mov	_mbrtowc_sloc17_1_0+1, a
	clear	_mbrtowc_sloc18_1_0+0
00135$:
	mov	a, _mbrtowc_sloc18_1_0+0
	sub	a, _mbrtowc_sloc2_1_0+0
	t1sn	f, c
	goto	00118$
;	../mbrtowc.c: 74: ps->c[j] = 0;
	mov	a, _mbrtowc_sloc17_1_0+0
	add	a, _mbrtowc_sloc18_1_0+0
	mov	p, a
	mov	a, _mbrtowc_sloc17_1_0+1
	addc	a
	mov	a, #0x00
	idxm	p, a
;	../mbrtowc.c: 73: for(j = 0; j < i; j++)
	inc	_mbrtowc_sloc18_1_0+0
	goto	00135$
00118$:
;	../mbrtowc.c: 76: for(n = 1, i = i ? i : 1; i < seqlen; i++, n++)
	mov	a, #0x01
	mov	_mbrtowc_PARM_3+0, a
	clear	_mbrtowc_PARM_3+1
	mov	a, _mbrtowc_sloc2_1_0+0
	cneqsn	a, #0x00
	goto	00147$
	mov	a, _mbrtowc_sloc9_1_0+1
	mov	p, a
	mov	a, _mbrtowc_sloc9_1_0+0
	goto	00148$
00147$:
	mov	a, #0x01
	clear	p
00148$:
	mov	_mbrtowc_sloc19_1_0+0, a
	mov	a, _mbrtowc_PARM_2+0
	mov	_mbrtowc_sloc20_1_0+0, a
	mov	a, _mbrtowc_PARM_2+1
	mov	_mbrtowc_sloc20_1_0+1, a
	mov	a, #0x01
	mov	_mbrtowc_sloc21_1_0+0, a
	clear	_mbrtowc_sloc21_1_0+1
00138$:
	mov	a, _mbrtowc_sloc19_1_0+0
	sub	a, _mbrtowc_sloc3_1_0+0
	t1sn	f, c
	goto	00121$
;	../mbrtowc.c: 78: mbseq[i] = *s++;
	mov	a, #(_mbrtowc_mbseq_65536_10 + 0)
	add	a, _mbrtowc_sloc19_1_0+0
	mov	_mbrtowc_sloc22_1_0+0, a
	mov	a, _mbrtowc_sloc20_1_0+0
	mov	p, a
	mov	a, _mbrtowc_sloc20_1_0+1
	call	__gptrget
	inc	_mbrtowc_sloc20_1_0+0
	addc	_mbrtowc_sloc20_1_0+1
	push	af
	mov	a, _mbrtowc_sloc22_1_0+0
	mov	p, a
	pop	af
	idxm	p, a
;	../mbrtowc.c: 79: if((mbseq[i] & 0xc0) != 0x80)
	clear	p
	and	a, #0xc0
	mov	_mbrtowc_sloc23_1_0+0, a
	clear	_mbrtowc_sloc23_1_0+1
	mov	a, _mbrtowc_sloc23_1_0+0
	ceqsn	a, #0x80
	goto	00126$
	mov	a, _mbrtowc_sloc23_1_0+1
	ceqsn	a, #0x00
	goto	00126$
;	../mbrtowc.c: 76: for(n = 1, i = i ? i : 1; i < seqlen; i++, n++)
	inc	_mbrtowc_sloc19_1_0+0
	inc	_mbrtowc_sloc21_1_0+0
	addc	_mbrtowc_sloc21_1_0+1
	mov	a, _mbrtowc_sloc21_1_0+0
	mov	_mbrtowc_PARM_3+0, a
	mov	a, _mbrtowc_sloc21_1_0+1
	mov	_mbrtowc_PARM_3+1, a
	goto	00138$
00121$:
;	../mbrtowc.c: 83: codepoint = first_byte;
	mov	a, _mbrtowc_sloc4_1_0+0
	mov	_mbrtowc_sloc24_1_0+0, a
	clear	_mbrtowc_sloc24_1_0+1
	clear	_mbrtowc_sloc24_1_0+2
	clear	_mbrtowc_sloc24_1_0+3
;	../mbrtowc.c: 85: for(s = mbseq + 1, seqlen--; seqlen; seqlen--)
	mov	a, #(_mbrtowc_mbseq_65536_10 + 1)
	mov	_mbrtowc_sloc25_1_0+0, a
	clear	_mbrtowc_sloc25_1_0+1
	mov	a, _mbrtowc_sloc3_1_0+0
	sub	a, #0x01
	mov	_mbrtowc_sloc26_1_0+0, a
00141$:
	mov	a, _mbrtowc_sloc26_1_0+0
	cneqsn	a, #0x00
	goto	00122$
;	../mbrtowc.c: 87: codepoint <<= 6;
	mov	a, _mbrtowc_sloc24_1_0+0
	mov	_mbrtowc_sloc27_1_0+0, a
	mov	a, _mbrtowc_sloc24_1_0+1
	mov	_mbrtowc_sloc27_1_0+1, a
	mov	a, _mbrtowc_sloc24_1_0+2
	mov	_mbrtowc_sloc27_1_0+2, a
	mov	a, _mbrtowc_sloc24_1_0+3
	mov	_mbrtowc_sloc27_1_0+3, a
	mov	a, #6
00276$:
	sl	_mbrtowc_sloc27_1_0+0
	slc	_mbrtowc_sloc27_1_0+1
	slc	_mbrtowc_sloc27_1_0+2
	slc	_mbrtowc_sloc27_1_0+3
	dzsn	a
	goto	00276$
;	../mbrtowc.c: 88: codepoint |= (*s & 0x3f);
	mov	a, _mbrtowc_sloc25_1_0+0
	mov	p, a
	mov	a, _mbrtowc_sloc25_1_0+1
	call	__gptrget
	clear	p
	and	a, #0x3f
	mov	_mbrtowc_sloc28_1_0+0, a
	clear	_mbrtowc_sloc28_1_0+1
	mov	a, _mbrtowc_sloc28_1_0+0
	mov	_mbrtowc_sloc29_1_0+0, a
	mov	a, _mbrtowc_sloc28_1_0+1
	mov	_mbrtowc_sloc29_1_0+1, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	_mbrtowc_sloc29_1_0+2, a
	mov	_mbrtowc_sloc29_1_0+3, a
	mov	a, _mbrtowc_sloc27_1_0+0
	or	a, _mbrtowc_sloc29_1_0+0
	mov	_mbrtowc_sloc24_1_0+0, a
	mov	a, _mbrtowc_sloc27_1_0+1
	or	a, _mbrtowc_sloc29_1_0+1
	mov	_mbrtowc_sloc24_1_0+1, a
	mov	a, _mbrtowc_sloc27_1_0+2
	or	a, _mbrtowc_sloc29_1_0+2
	mov	_mbrtowc_sloc24_1_0+2, a
	mov	a, _mbrtowc_sloc27_1_0+3
	or	a, _mbrtowc_sloc29_1_0+3
	mov	_mbrtowc_sloc24_1_0+3, a
;	../mbrtowc.c: 89: s++;
	inc	_mbrtowc_sloc25_1_0+0
	addc	_mbrtowc_sloc25_1_0+1
;	../mbrtowc.c: 85: for(s = mbseq + 1, seqlen--; seqlen; seqlen--)
	dec	_mbrtowc_sloc26_1_0+0
	goto	00141$
00122$:
;	../mbrtowc.c: 92: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
	mov	a, _mbrtowc_sloc24_1_0+1
	sub	a, #0xd8
	mov	a, _mbrtowc_sloc24_1_0+2
	subc	a
	mov	a, _mbrtowc_sloc24_1_0+3
	subc	a
	t0sn	f, c
	goto	00124$
	mov	a, #0xff
	sub	a, _mbrtowc_sloc24_1_0+0
	mov	a, #0xdf
	subc	a, _mbrtowc_sloc24_1_0+1
	mov	a, #0x00
	subc	a, _mbrtowc_sloc24_1_0+2
	mov	a, #0x00
	subc	a, _mbrtowc_sloc24_1_0+3
	t0sn	f, c
	goto	00124$
;	../mbrtowc.c: 93: return(-1);
	mov	a, #0xff
	mov	p, a
	ret	#0xff
00124$:
;	../mbrtowc.c: 95: *pwc = codepoint;
	mov	a, _mbrtowc_PARM_1+0
	mov	_mbrtowc_sloc30_1_0+0, a
	mov	a, _mbrtowc_PARM_1+1
	mov	_mbrtowc_sloc30_1_0+1, a
	mov	a, _mbrtowc_sloc30_1_0+0
	mov	p, a
	mov	a, _mbrtowc_sloc24_1_0+0
	idxm	p, a
	inc	p
	mov	a, _mbrtowc_sloc24_1_0+1
	idxm	p, a
	inc	p
	mov	a, _mbrtowc_sloc24_1_0+2
	idxm	p, a
	inc	p
	mov	a, _mbrtowc_sloc24_1_0+3
	idxm	p, a
;	../mbrtowc.c: 96: return(n);
	mov	a, _mbrtowc_PARM_3+1
	mov	p, a
	mov	a, _mbrtowc_PARM_3+0
	ret
;	../mbrtowc.c: 98: eilseq:
00126$:
;	../mbrtowc.c: 99: errno = EILSEQ;
	mov	a, #0x54
	mov	_errno+0, a
	clear	_errno+1
;	../mbrtowc.c: 100: return(-1);
	mov	a, #0xff
	mov	p, a
	ret	#0xff
;	../mbrtowc.c: 101: }
	ret
	.area CODE
	.area CONST
	.area CONST
___str_0:
	ret #0x00
	.area CODE
	.area CABS (ABS)
