;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module c16rtomb
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctomb
	.globl _c16rtomb_PARM_3
	.globl _c16rtomb_PARM_2
	.globl _c16rtomb_PARM_1
	.globl _c16rtomb
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_c16rtomb_PARM_1:
	.ds 2
_c16rtomb_PARM_2:
	.ds 2
_c16rtomb_PARM_3:
	.ds 2
_c16rtomb_buf_65536_36:
	.ds 4
_c16rtomb_sps_65536_36:
	.ds 3
_c16rtomb_sloc0_1_0:
	.ds 2
_c16rtomb_sloc1_1_0:
	.ds 2
_c16rtomb_sloc2_1_0:
	.ds 4
_c16rtomb_sloc3_1_0:
	.ds 2
_c16rtomb_sloc4_1_0:
	.ds 2
_c16rtomb_sloc5_1_0:
	.ds 2
_c16rtomb_sloc6_1_0:
	.ds 2
_c16rtomb_sloc7_1_0:
	.ds 2
_c16rtomb_sloc8_1_0:
	.ds 2
_c16rtomb_sloc9_1_0:
	.ds 2
_c16rtomb_sloc10_1_0:
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
;	../c16rtomb.c: 35: size_t c16rtomb(char *restrict s, char16_t c16, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function c16rtomb
;	-----------------------------------------
_c16rtomb:
;	../c16rtomb.c: 41: if(!s)
	mov	a, _c16rtomb_PARM_1+0
	or	a, _c16rtomb_PARM_1+1
	ceqsn	a, #0x00
	goto	00102$
;	../c16rtomb.c: 42: s = buf;
	mov	a, #(_c16rtomb_buf_65536_36 + 0)
	mov	_c16rtomb_PARM_1+0, a
	clear	_c16rtomb_PARM_1+1
00102$:
;	../c16rtomb.c: 44: if(!ps)
	mov	a, _c16rtomb_PARM_3+0
	or	a, _c16rtomb_PARM_3+1
	ceqsn	a, #0x00
	goto	00104$
;	../c16rtomb.c: 45: ps = &sps;
	mov	a, #(_c16rtomb_sps_65536_36 + 0)
	mov	_c16rtomb_PARM_3+0, a
	clear	_c16rtomb_PARM_3+1
00104$:
;	../c16rtomb.c: 47: if (!c16) // 0 always resets conversion state.
	mov	a, _c16rtomb_PARM_2+0
	or	a, _c16rtomb_PARM_2+1
	ceqsn	a, #0x00
	goto	00119$
;	../c16rtomb.c: 49: ps->c[1] = ps->c[2] = 0;
	mov	a, _c16rtomb_PARM_3+0
	mov	_c16rtomb_sloc0_1_0+0, a
	mov	a, _c16rtomb_PARM_3+1
	mov	_c16rtomb_sloc0_1_0+1, a
	mov	a, _c16rtomb_sloc0_1_0+0
	add	a, #0x01
	mov	_c16rtomb_sloc1_1_0+0, a
	mov	a, _c16rtomb_sloc0_1_0+1
	addc	a
	mov	_c16rtomb_sloc1_1_0+1, a
	mov	a, _c16rtomb_sloc0_1_0+0
	add	a, #0x02
	mov	p, a
	mov	a, _c16rtomb_sloc0_1_0+1
	addc	a
	mov	a, #0x00
	idxm	p, a
	mov	a, _c16rtomb_sloc1_1_0+0
	mov	p, a
	mov	a, #0x00
	idxm	p, a
;	../c16rtomb.c: 50: codepoint = 0;
	clear	_c16rtomb_sloc2_1_0+0
	clear	_c16rtomb_sloc2_1_0+1
	clear	_c16rtomb_sloc2_1_0+2
	clear	_c16rtomb_sloc2_1_0+3
	goto	00120$
00119$:
;	../c16rtomb.c: 52: else if(ps->c[1] || ps->c[2]) // We already have the high surrogate. Now get the low surrogate
	mov	a, _c16rtomb_PARM_3+0
	mov	_c16rtomb_sloc3_1_0+0, a
	mov	a, _c16rtomb_PARM_3+1
	mov	_c16rtomb_sloc3_1_0+1, a
	mov	a, _c16rtomb_sloc3_1_0+0
	add	a, #0x01
	mov	_c16rtomb_sloc4_1_0+0, a
	mov	a, _c16rtomb_sloc3_1_0+1
	addc	a
	mov	_c16rtomb_sloc4_1_0+1, a
	mov	a, _c16rtomb_sloc4_1_0+0
	mov	p, a
	mov	a, _c16rtomb_sloc4_1_0+1
	call	__gptrget
	ceqsn	a, #0x00
	goto	00114$
	mov	a, _c16rtomb_sloc3_1_0+0
	add	a, #0x02
	mov	_c16rtomb_sloc5_1_0+0, a
	mov	a, _c16rtomb_sloc3_1_0+1
	addc	a
	mov	_c16rtomb_sloc5_1_0+1, a
	mov	a, _c16rtomb_sloc5_1_0+0
	mov	p, a
	mov	a, _c16rtomb_sloc5_1_0+1
	call	__gptrget
	cneqsn	a, #0x00
	goto	00115$
00114$:
;	../c16rtomb.c: 56: if(c16 < 0xdc00 || c16 > 0xdfff)
	mov	a, _c16rtomb_PARM_2+1
	sub	a, #0xdc
	t0sn	f, c
	goto	00121$
	mov	a, #0xff
	sub	a, _c16rtomb_PARM_2+0
	mov	a, #0xdf
	subc	a, _c16rtomb_PARM_2+1
	t0sn	f, c
	goto	00121$
;	../c16rtomb.c: 59: high_surrogate = ps->c[1] + (ps->c[2] << 8);
	mov	a, _c16rtomb_PARM_3+0
	mov	_c16rtomb_sloc6_1_0+0, a
	mov	a, _c16rtomb_PARM_3+1
	mov	_c16rtomb_sloc6_1_0+1, a
	mov	a, _c16rtomb_sloc6_1_0+0
	add	a, #0x01
	mov	_c16rtomb_sloc7_1_0+0, a
	mov	a, _c16rtomb_sloc6_1_0+1
	addc	a
	mov	_c16rtomb_sloc7_1_0+1, a
	mov	a, _c16rtomb_sloc7_1_0+0
	mov	p, a
	mov	a, _c16rtomb_sloc7_1_0+1
	call	__gptrget
	mov	_c16rtomb_sloc8_1_0+0, a
	clear	_c16rtomb_sloc8_1_0+1
	mov	a, _c16rtomb_sloc6_1_0+0
	add	a, #0x02
	mov	_c16rtomb_sloc9_1_0+0, a
	mov	a, _c16rtomb_sloc6_1_0+1
	addc	a
	mov	_c16rtomb_sloc9_1_0+1, a
	mov	a, _c16rtomb_sloc9_1_0+0
	mov	p, a
	mov	a, _c16rtomb_sloc9_1_0+1
	call	__gptrget
	mov	p, a
	mov	a, #0x00
	add	a, _c16rtomb_sloc8_1_0+0
	mov	_c16rtomb_sloc10_1_0+0, a
	mov	a, _c16rtomb_sloc8_1_0+1
	addc	a, p
	mov	_c16rtomb_sloc10_1_0+1, a
;	../c16rtomb.c: 60: ps->c[1] = ps->c[2] = 0;
	mov	a, _c16rtomb_sloc9_1_0+0
	mov	p, a
	mov	a, #0x00
	idxm	p, a
	mov	a, _c16rtomb_sloc7_1_0+0
	mov	p, a
	mov	a, #0x00
	idxm	p, a
;	../c16rtomb.c: 61: codepoint = (high_surrogate << 10) - (0xd800 << 10) + c16 - 0xdc00 + 0x10000;
	mov	a, _c16rtomb_sloc10_1_0+0
	mov	p, a
	mov	a, #0x00
	sl	p
	sl	p
	add	a, _c16rtomb_PARM_2+0
	push	af
	mov	a, _c16rtomb_PARM_2+1
	addc	p, a
	pop	af
	mov	_c16rtomb_sloc2_1_0+0, a
	mov	a, #0x24
	add	a, p
	mov	_c16rtomb_sloc2_1_0+1, a
	clear	_c16rtomb_sloc2_1_0+2
	clear	_c16rtomb_sloc2_1_0+3
	goto	00120$
00115$:
;	../c16rtomb.c: 63: else if(c16 < 0xd7ff || c16 >= 0xe000) // Basic multilingual plane.
	mov	a, _c16rtomb_PARM_2+0
	sub	a, #0xff
	mov	a, #0xd7
	mov	p, a
	mov	a, _c16rtomb_PARM_2+1
	subc	a, p
	t0sn	f, c
	goto	00110$
	mov	a, _c16rtomb_PARM_2+1
	sub	a, #0xe0
	t0sn	f, c
	goto	00111$
00110$:
;	../c16rtomb.c: 64: codepoint = c16;
	mov	a, _c16rtomb_PARM_2+0
	mov	_c16rtomb_sloc2_1_0+0, a
	mov	a, _c16rtomb_PARM_2+1
	mov	_c16rtomb_sloc2_1_0+1, a
	clear	_c16rtomb_sloc2_1_0+2
	clear	_c16rtomb_sloc2_1_0+3
	goto	00120$
00111$:
;	../c16rtomb.c: 67: if(c16 > 0xdbff)
	mov	a, #0xff
	sub	a, _c16rtomb_PARM_2+0
	mov	a, #0xdb
	subc	a, _c16rtomb_PARM_2+1
	t0sn	f, c
	goto	00121$
;	../c16rtomb.c: 70: ps->c[1] = c16 & 0xff;
	mov	a, _c16rtomb_PARM_2+0
	mov	p, a
	mov	a, _c16rtomb_sloc4_1_0+0
	xch	a, p
	idxm	p, a
;	../c16rtomb.c: 71: ps->c[2] = c16 >> 8;
	clear	p
	mov	a, _c16rtomb_PARM_2+1
	mov	p, a
	mov	a, _c16rtomb_sloc5_1_0+0
	xch	a, p
	idxm	p, a
;	../c16rtomb.c: 72: return(0);
	clear	p
	ret	#0x00
00120$:
;	../c16rtomb.c: 75: return(wctomb(s, codepoint));
	mov	a, _c16rtomb_PARM_1+0
	mov	_wctomb_PARM_1+0, a
	mov	a, _c16rtomb_PARM_1+1
	mov	_wctomb_PARM_1+1, a
	mov	a, _c16rtomb_sloc2_1_0+0
	mov	_wctomb_PARM_2+0, a
	mov	a, _c16rtomb_sloc2_1_0+1
	mov	_wctomb_PARM_2+1, a
	mov	a, _c16rtomb_sloc2_1_0+2
	mov	_wctomb_PARM_2+2, a
	mov	a, _c16rtomb_sloc2_1_0+3
	mov	_wctomb_PARM_2+3, a
	call	_wctomb
	ret
;	../c16rtomb.c: 77: eilseq:
00121$:
;	../c16rtomb.c: 78: errno = EILSEQ;
	mov	a, #0x54
	mov	_errno+0, a
	clear	_errno+1
;	../c16rtomb.c: 79: return(-1);
	mov	a, #0xff
	mov	p, a
	ret	#0xff
;	../c16rtomb.c: 80: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
