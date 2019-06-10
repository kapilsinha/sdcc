;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module mbtowc
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbtowc_PARM_3
	.globl _mbtowc_PARM_2
	.globl _mbtowc_PARM_1
	.globl _mbtowc
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_mbtowc_PARM_1:
	.ds 2
_mbtowc_PARM_2:
	.ds 2
_mbtowc_PARM_3:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_mbtowc_sloc0_1_0:
	.ds 1
_mbtowc_sloc1_1_0:
	.ds 2
_mbtowc_sloc2_1_0:
	.ds 1
_mbtowc_sloc3_1_0:
	.ds 1
_mbtowc_sloc4_1_0:
	.ds 2
_mbtowc_sloc5_1_0:
	.ds 2
_mbtowc_sloc6_1_0:
	.ds 2
_mbtowc_sloc7_1_0:
	.ds 2
_mbtowc_sloc8_1_0:
	.ds 1
_mbtowc_sloc9_1_0:
	.ds 2
_mbtowc_sloc10_1_0:
	.ds 4
_mbtowc_sloc11_1_0:
	.ds 1
_mbtowc_sloc12_1_0:
	.ds 2
_mbtowc_sloc13_1_0:
	.ds 4
_mbtowc_sloc14_1_0:
	.ds 2
_mbtowc_sloc15_1_0:
	.ds 4
_mbtowc_sloc16_1_0:
	.ds 2
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
;	../mbtowc.c: 31: int mbtowc(wchar_t *pwc, const char *restrict s, size_t n)
;	-----------------------------------------
;	 function mbtowc
;	-----------------------------------------
_mbtowc:
;	../mbtowc.c: 37: if(!s)
	mov	a, _mbtowc_PARM_2+0
	or	a, _mbtowc_PARM_2+1
	ceqsn	a, #0x00
	goto	00102$
;	../mbtowc.c: 38: return(0);
	clear	p
	ret	#0x00
00102$:
;	../mbtowc.c: 40: seqlen = 1;
	mov	a, #0x01
	mov	_mbtowc_sloc0_1_0+0, a
;	../mbtowc.c: 41: first_byte = *s;
	mov	a, _mbtowc_PARM_2+0
	mov	_mbtowc_sloc1_1_0+0, a
	mov	a, _mbtowc_PARM_2+1
	mov	_mbtowc_sloc1_1_0+1, a
	mov	a, _mbtowc_sloc1_1_0+0
	mov	p, a
	mov	a, _mbtowc_sloc1_1_0+1
	call	__gptrget
;	../mbtowc.c: 43: if(first_byte & 0x80)
	mov	_mbtowc_sloc2_1_0+0, a
	and	a, #0x80
	cneqsn	a, #0x00
	goto	00107$
;	../mbtowc.c: 45: while (first_byte & (0x80 >> seqlen))
	mov	a, #0x01
	mov	_mbtowc_sloc3_1_0+0, a
00103$:
	mov	a, #0x80
	mov	_mbtowc_sloc4_1_0+0, a
	clear	_mbtowc_sloc4_1_0+1
	mov	a, _mbtowc_sloc3_1_0+0
00194$:
	sub	a, #1
	t0sn	f, c
	goto	00195$
	push	af
	mov	a, #0x01
	sl	_mbtowc_sloc4_1_0+1
	t0sn	f, c
	or	_mbtowc_sloc4_1_0+1, a
	src	_mbtowc_sloc4_1_0+1
	src	_mbtowc_sloc4_1_0+1
	src	_mbtowc_sloc4_1_0+0
	pop	af
	goto	00194$
00195$:
	clear	p
	mov	a, _mbtowc_sloc2_1_0+0
	and	a, _mbtowc_sloc4_1_0+0
	mov	_mbtowc_sloc5_1_0+0, a
	mov	a, p
	and	a, _mbtowc_sloc4_1_0+1
	mov	_mbtowc_sloc5_1_0+1, a
	mov	a, _mbtowc_sloc5_1_0+0
	or	a, _mbtowc_sloc5_1_0+1
	cneqsn	a, #0x00
	goto	00140$
;	../mbtowc.c: 46: seqlen++;
	inc	_mbtowc_sloc3_1_0+0
	goto	00103$
00140$:
	mov	a, _mbtowc_sloc3_1_0+0
	mov	_mbtowc_sloc0_1_0+0, a
;	../mbtowc.c: 47: first_byte &= (0xff >> (seqlen + 1));
	mov	a, _mbtowc_sloc3_1_0+0
	add	a, #0x01
	mov	p, a
	mov	a, #0xff
	mov	_mbtowc_sloc6_1_0+0, a
	clear	_mbtowc_sloc6_1_0+1
	mov	a, p
00196$:
	sub	a, #1
	t0sn	f, c
	goto	00197$
	push	af
	mov	a, #0x01
	sl	_mbtowc_sloc6_1_0+1
	t0sn	f, c
	or	_mbtowc_sloc6_1_0+1, a
	src	_mbtowc_sloc6_1_0+1
	src	_mbtowc_sloc6_1_0+1
	src	_mbtowc_sloc6_1_0+0
	pop	af
	goto	00196$
00197$:
	mov	a, _mbtowc_sloc6_1_0+0
	and	_mbtowc_sloc2_1_0+0, a
00107$:
;	../mbtowc.c: 50: if(seqlen > 4 || n < seqlen)
	mov	a, #0x04
	sub	a, _mbtowc_sloc0_1_0+0
	t0sn	f, c
	goto	00108$
	mov	a, _mbtowc_sloc0_1_0+0
	mov	_mbtowc_sloc7_1_0+0, a
	clear	_mbtowc_sloc7_1_0+1
	mov	a, _mbtowc_PARM_3+0
	sub	a, _mbtowc_sloc7_1_0+0
	mov	a, _mbtowc_PARM_3+1
	subc	a, _mbtowc_sloc7_1_0+1
	t1sn	f, c
	goto	00134$
00108$:
;	../mbtowc.c: 51: return(-1);
	mov	a, #0xff
	mov	p, a
	ret	#0xff
;	../mbtowc.c: 53: for(i = 1; i < seqlen; i++)
00134$:
	mov	a, #0x01
	mov	_mbtowc_sloc8_1_0+0, a
00119$:
	mov	a, _mbtowc_sloc8_1_0+0
	sub	a, _mbtowc_sloc0_1_0+0
	t1sn	f, c
	goto	00113$
;	../mbtowc.c: 54: if((s[i] & 0xc0) != 0x80)
	mov	a, _mbtowc_sloc1_1_0+0
	add	a, _mbtowc_sloc8_1_0+0
	mov	p, a
	mov	a, _mbtowc_sloc1_1_0+1
	addc	a
	call	__gptrget
	clear	p
	and	a, #0xc0
	mov	_mbtowc_sloc9_1_0+0, a
	clear	_mbtowc_sloc9_1_0+1
	mov	a, _mbtowc_sloc9_1_0+0
	ceqsn	a, #0x80
	goto	00198$
	mov	a, _mbtowc_sloc9_1_0+1
	cneqsn	a, #0x00
	goto	00120$
00198$:
;	../mbtowc.c: 55: return(-1);
	mov	a, #0xff
	mov	p, a
	ret	#0xff
00120$:
;	../mbtowc.c: 53: for(i = 1; i < seqlen; i++)
	inc	_mbtowc_sloc8_1_0+0
	goto	00119$
00113$:
;	../mbtowc.c: 57: codepoint = first_byte;
	mov	a, _mbtowc_sloc2_1_0+0
	mov	_mbtowc_sloc10_1_0+0, a
	clear	_mbtowc_sloc10_1_0+1
	clear	_mbtowc_sloc10_1_0+2
	clear	_mbtowc_sloc10_1_0+3
;	../mbtowc.c: 59: for(s++, i = seqlen - 1; i; i--)
	mov	a, _mbtowc_sloc1_1_0+0
	add	a, #0x01
	mov	_mbtowc_PARM_2+0, a
	mov	a, _mbtowc_sloc1_1_0+1
	addc	a
	mov	_mbtowc_PARM_2+1, a
	mov	a, _mbtowc_sloc0_1_0+0
	sub	a, #0x01
	mov	_mbtowc_sloc11_1_0+0, a
	mov	a, _mbtowc_PARM_2+0
	mov	_mbtowc_sloc12_1_0+0, a
	mov	a, _mbtowc_PARM_2+1
	mov	_mbtowc_sloc12_1_0+1, a
00122$:
	mov	a, _mbtowc_sloc11_1_0+0
	cneqsn	a, #0x00
	goto	00114$
;	../mbtowc.c: 61: codepoint <<= 6;
	mov	a, _mbtowc_sloc10_1_0+0
	mov	_mbtowc_sloc13_1_0+0, a
	mov	a, _mbtowc_sloc10_1_0+1
	mov	_mbtowc_sloc13_1_0+1, a
	mov	a, _mbtowc_sloc10_1_0+2
	mov	_mbtowc_sloc13_1_0+2, a
	mov	a, _mbtowc_sloc10_1_0+3
	mov	_mbtowc_sloc13_1_0+3, a
	mov	a, #6
00199$:
	sl	_mbtowc_sloc13_1_0+0
	slc	_mbtowc_sloc13_1_0+1
	slc	_mbtowc_sloc13_1_0+2
	slc	_mbtowc_sloc13_1_0+3
	dzsn	a
	goto	00199$
;	../mbtowc.c: 62: codepoint |= (*s & 0x3f);
	mov	a, _mbtowc_sloc12_1_0+0
	mov	p, a
	mov	a, _mbtowc_sloc12_1_0+1
	call	__gptrget
	clear	p
	and	a, #0x3f
	mov	_mbtowc_sloc14_1_0+0, a
	clear	_mbtowc_sloc14_1_0+1
	mov	a, _mbtowc_sloc14_1_0+0
	mov	_mbtowc_sloc15_1_0+0, a
	mov	a, _mbtowc_sloc14_1_0+1
	mov	_mbtowc_sloc15_1_0+1, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	_mbtowc_sloc15_1_0+2, a
	mov	_mbtowc_sloc15_1_0+3, a
	mov	a, _mbtowc_sloc13_1_0+0
	or	a, _mbtowc_sloc15_1_0+0
	mov	_mbtowc_sloc10_1_0+0, a
	mov	a, _mbtowc_sloc13_1_0+1
	or	a, _mbtowc_sloc15_1_0+1
	mov	_mbtowc_sloc10_1_0+1, a
	mov	a, _mbtowc_sloc13_1_0+2
	or	a, _mbtowc_sloc15_1_0+2
	mov	_mbtowc_sloc10_1_0+2, a
	mov	a, _mbtowc_sloc13_1_0+3
	or	a, _mbtowc_sloc15_1_0+3
	mov	_mbtowc_sloc10_1_0+3, a
;	../mbtowc.c: 63: s++;
	inc	_mbtowc_sloc12_1_0+0
	addc	_mbtowc_sloc12_1_0+1
;	../mbtowc.c: 59: for(s++, i = seqlen - 1; i; i--)
	dec	_mbtowc_sloc11_1_0+0
	goto	00122$
00114$:
;	../mbtowc.c: 66: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
	mov	a, _mbtowc_sloc10_1_0+1
	sub	a, #0xd8
	mov	a, _mbtowc_sloc10_1_0+2
	subc	a
	mov	a, _mbtowc_sloc10_1_0+3
	subc	a
	t0sn	f, c
	goto	00116$
	mov	a, #0xff
	sub	a, _mbtowc_sloc10_1_0+0
	mov	a, #0xdf
	subc	a, _mbtowc_sloc10_1_0+1
	mov	a, #0x00
	subc	a, _mbtowc_sloc10_1_0+2
	mov	a, #0x00
	subc	a, _mbtowc_sloc10_1_0+3
	t0sn	f, c
	goto	00116$
;	../mbtowc.c: 67: return(-1);
	mov	a, #0xff
	mov	p, a
	ret	#0xff
00116$:
;	../mbtowc.c: 69: *pwc = codepoint;
	mov	a, _mbtowc_PARM_1+0
	mov	_mbtowc_sloc16_1_0+0, a
	mov	a, _mbtowc_PARM_1+1
	mov	_mbtowc_sloc16_1_0+1, a
	mov	a, _mbtowc_sloc16_1_0+0
	mov	p, a
	mov	a, _mbtowc_sloc10_1_0+0
	idxm	p, a
	inc	p
	mov	a, _mbtowc_sloc10_1_0+1
	idxm	p, a
	inc	p
	mov	a, _mbtowc_sloc10_1_0+2
	idxm	p, a
	inc	p
	mov	a, _mbtowc_sloc10_1_0+3
	idxm	p, a
;	../mbtowc.c: 70: return(codepoint ? seqlen : 0);
	mov	a, _mbtowc_sloc10_1_0+0
	or	a, _mbtowc_sloc10_1_0+1
	or	a, _mbtowc_sloc10_1_0+2
	or	a, _mbtowc_sloc10_1_0+3
	cneqsn	a, #0x00
	goto	00126$
	clear	p
	mov	a, _mbtowc_sloc0_1_0+0
	goto	00127$
00126$:
	mov	a, #0x00
	clear	p
00127$:
;	../mbtowc.c: 71: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
