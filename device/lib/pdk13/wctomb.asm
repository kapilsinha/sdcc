;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module wctomb
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctomb_PARM_2
	.globl _wctomb_PARM_1
	.globl _wctomb
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_wctomb_PARM_1:
	.ds 2
_wctomb_PARM_2:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_wctomb_sloc0_1_0:
	.ds 2
_wctomb_sloc1_1_0:
	.ds 2
_wctomb_sloc2_1_0:
	.ds 2
_wctomb_sloc3_1_0:
	.ds 2
_wctomb_sloc4_1_0:
	.ds 2
_wctomb_sloc5_1_0:
	.ds 4
_wctomb_sloc6_1_0:
	.ds 2
_wctomb_sloc7_1_0:
	.ds 2
_wctomb_sloc8_1_0:
	.ds 2
_wctomb_sloc9_1_0:
	.ds 2
_wctomb_sloc10_1_0:
	.ds 4
_wctomb_sloc11_1_0:
	.ds 2
_wctomb_sloc12_1_0:
	.ds 4
_wctomb_sloc13_1_0:
	.ds 2
_wctomb_sloc14_1_0:
	.ds 2
_wctomb_sloc15_1_0:
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
;	../wctomb.c: 31: int wctomb(char *s, wchar_t wc)
;	-----------------------------------------
;	 function wctomb
;	-----------------------------------------
_wctomb:
;	../wctomb.c: 35: if(!s)
	mov	a, _wctomb_PARM_1+0
	or	a, _wctomb_PARM_1+1
	ceqsn	a, #0x00
	goto	00102$
;	../wctomb.c: 36: return(0);
	clear	p
	ret	#0x00
00102$:
;	../wctomb.c: 38: if(wc < 0x80)
	mov	a, _wctomb_PARM_2+0
	sub	a, #0x80
	mov	a, _wctomb_PARM_2+1
	subc	a
	mov	a, _wctomb_PARM_2+2
	subc	a
	mov	a, _wctomb_PARM_2+3
	subc	a
	t1sn	f, c
	goto	00117$
;	../wctomb.c: 40: s[0] = wc;
	mov	a, _wctomb_PARM_1+0
	mov	_wctomb_sloc0_1_0+0, a
	mov	a, _wctomb_PARM_1+1
	mov	_wctomb_sloc0_1_0+1, a
	mov	a, _wctomb_PARM_2+0
	mov	p, a
	mov	a, _wctomb_sloc0_1_0+0
	xch	a, p
	idxm	p, a
;	../wctomb.c: 41: return(1);
	clear	p
	ret	#0x01
00117$:
;	../wctomb.c: 43: else if(wc < 0x800)
	mov	a, _wctomb_PARM_2+1
	sub	a, #0x08
	mov	a, _wctomb_PARM_2+2
	subc	a
	mov	a, _wctomb_PARM_2+3
	subc	a
	t1sn	f, c
	goto	00114$
;	../wctomb.c: 45: s[0] = (wc >> 6) & 0x1f | 0xc0;
	mov	a, _wctomb_PARM_1+0
	mov	_wctomb_sloc1_1_0+0, a
	mov	a, _wctomb_PARM_1+1
	mov	_wctomb_sloc1_1_0+1, a
	mov	a, _wctomb_PARM_2+1
	mov	p, a
	mov	a, _wctomb_PARM_2+0
	mov	_wctomb_sloc2_1_0+0, a
	mov	a, p
	mov	_wctomb_sloc2_1_0+1, a
	mov	a, #6
00149$:
	sr	_wctomb_sloc2_1_0+1
	src	_wctomb_sloc2_1_0+0
	dzsn	a
	goto	00149$
	mov	a, _wctomb_sloc2_1_0+0
	and	a, #0x1f
	or	a, #0xc0
	mov	p, a
	mov	a, _wctomb_sloc1_1_0+0
	xch	a, p
	idxm	p, a
;	../wctomb.c: 46: s[1] = (wc >> 0) & 0x3f | 0x80;
	mov	a, _wctomb_sloc1_1_0+0
	add	a, #0x01
	mov	_wctomb_sloc3_1_0+0, a
	mov	a, _wctomb_sloc1_1_0+1
	addc	a
	mov	_wctomb_sloc3_1_0+1, a
	mov	a, _wctomb_PARM_2+0
	and	a, #0x3f
	or	a, #0x80
	mov	p, a
	mov	a, _wctomb_sloc3_1_0+0
	xch	a, p
	idxm	p, a
;	../wctomb.c: 47: return(2);
	clear	p
	ret	#0x02
00114$:
;	../wctomb.c: 49: else if(wc >= 0xd800 && wc < 0xe000) // Unpaired surrogate
	mov	a, _wctomb_PARM_2+1
	sub	a, #0xd8
	mov	a, _wctomb_PARM_2+2
	subc	a
	mov	a, _wctomb_PARM_2+3
	subc	a
	t0sn	f, c
	goto	00110$
	mov	a, _wctomb_PARM_2+1
	sub	a, #0xe0
	mov	a, _wctomb_PARM_2+2
	subc	a
	mov	a, _wctomb_PARM_2+3
	subc	a
	t1sn	f, c
	goto	00110$
;	../wctomb.c: 50: return(-1);
	mov	a, #0xff
	mov	p, a
	ret	#0xff
00110$:
;	../wctomb.c: 51: else if(wc < 0x10000)
	mov	a, _wctomb_PARM_2+2
	sub	a, #0x01
	mov	a, _wctomb_PARM_2+3
	subc	a
	t1sn	f, c
	goto	00107$
;	../wctomb.c: 53: s[0] = (wc >> 12) & 0x0f | 0xe0;
	mov	a, _wctomb_PARM_1+0
	mov	_wctomb_sloc4_1_0+0, a
	mov	a, _wctomb_PARM_1+1
	mov	_wctomb_sloc4_1_0+1, a
	mov	a, _wctomb_PARM_2+1
	mov	_wctomb_sloc5_1_0+0, a
	mov	a, _wctomb_PARM_2+2
	mov	_wctomb_sloc5_1_0+1, a
	mov	a, _wctomb_PARM_2+3
	mov	_wctomb_sloc5_1_0+2, a
	clear	_wctomb_sloc5_1_0+3
	mov	a, #4
00150$:
	sr	_wctomb_sloc5_1_0+2
	src	_wctomb_sloc5_1_0+1
	src	_wctomb_sloc5_1_0+0
	dzsn	a
	goto	00150$
	mov	a, _wctomb_sloc5_1_0+0
	and	a, #0x0f
	or	a, #0xe0
	mov	p, a
	mov	a, _wctomb_sloc4_1_0+0
	xch	a, p
	idxm	p, a
;	../wctomb.c: 54: s[1] = (wc >> 6) & 0x3f  | 0x80;
	mov	a, _wctomb_sloc4_1_0+0
	add	a, #0x01
	mov	_wctomb_sloc6_1_0+0, a
	mov	a, _wctomb_sloc4_1_0+1
	addc	a
	mov	_wctomb_sloc6_1_0+1, a
	mov	a, _wctomb_PARM_2+1
	mov	p, a
	mov	a, _wctomb_PARM_2+0
	mov	_wctomb_sloc7_1_0+0, a
	mov	a, p
	mov	_wctomb_sloc7_1_0+1, a
	mov	a, #6
00151$:
	sr	_wctomb_sloc7_1_0+1
	src	_wctomb_sloc7_1_0+0
	dzsn	a
	goto	00151$
	mov	a, _wctomb_sloc7_1_0+0
	and	a, #0x3f
	or	a, #0x80
	mov	p, a
	mov	a, _wctomb_sloc6_1_0+0
	xch	a, p
	idxm	p, a
;	../wctomb.c: 55: s[2] = (wc >> 0) & 0x3f  | 0x80;
	mov	a, _wctomb_sloc4_1_0+0
	add	a, #0x02
	mov	_wctomb_sloc8_1_0+0, a
	mov	a, _wctomb_sloc4_1_0+1
	addc	a
	mov	_wctomb_sloc8_1_0+1, a
	mov	a, _wctomb_PARM_2+0
	and	a, #0x3f
	or	a, #0x80
	mov	p, a
	mov	a, _wctomb_sloc8_1_0+0
	xch	a, p
	idxm	p, a
;	../wctomb.c: 56: return(3);
	clear	p
	ret	#0x03
00107$:
;	../wctomb.c: 58: else if(wc < 0x110000)
	mov	a, _wctomb_PARM_2+2
	sub	a, #0x11
	mov	a, _wctomb_PARM_2+3
	subc	a
	t1sn	f, c
	goto	00104$
;	../wctomb.c: 60: s[0] = (wc >> 18) & 0x07 | 0xf0;
	mov	a, _wctomb_PARM_1+0
	mov	_wctomb_sloc9_1_0+0, a
	mov	a, _wctomb_PARM_1+1
	mov	_wctomb_sloc9_1_0+1, a
	mov	a, _wctomb_PARM_2+2
	mov	_wctomb_sloc10_1_0+0, a
	mov	a, _wctomb_PARM_2+3
	mov	_wctomb_sloc10_1_0+1, a
	clear	_wctomb_sloc10_1_0+2
	clear	_wctomb_sloc10_1_0+3
	sr	_wctomb_sloc10_1_0+1
	src	_wctomb_sloc10_1_0+0
	sr	_wctomb_sloc10_1_0+1
	src	_wctomb_sloc10_1_0+0
	mov	a, _wctomb_sloc10_1_0+0
	and	a, #0x07
	or	a, #0xf0
	mov	p, a
	mov	a, _wctomb_sloc9_1_0+0
	xch	a, p
	idxm	p, a
;	../wctomb.c: 61: s[1] = (wc >> 12) & 0x3f | 0x80;
	mov	a, _wctomb_sloc9_1_0+0
	add	a, #0x01
	mov	_wctomb_sloc11_1_0+0, a
	mov	a, _wctomb_sloc9_1_0+1
	addc	a
	mov	_wctomb_sloc11_1_0+1, a
	mov	a, _wctomb_PARM_2+1
	mov	_wctomb_sloc12_1_0+0, a
	mov	a, _wctomb_PARM_2+2
	mov	_wctomb_sloc12_1_0+1, a
	mov	a, _wctomb_PARM_2+3
	mov	_wctomb_sloc12_1_0+2, a
	clear	_wctomb_sloc12_1_0+3
	mov	a, #4
00152$:
	sr	_wctomb_sloc12_1_0+2
	src	_wctomb_sloc12_1_0+1
	src	_wctomb_sloc12_1_0+0
	dzsn	a
	goto	00152$
	mov	a, _wctomb_sloc12_1_0+0
	and	a, #0x3f
	or	a, #0x80
	mov	p, a
	mov	a, _wctomb_sloc11_1_0+0
	xch	a, p
	idxm	p, a
;	../wctomb.c: 62: s[2] = (wc >> 6) & 0x3f  | 0x80;
	mov	a, _wctomb_sloc9_1_0+0
	add	a, #0x02
	mov	_wctomb_sloc13_1_0+0, a
	mov	a, _wctomb_sloc9_1_0+1
	addc	a
	mov	_wctomb_sloc13_1_0+1, a
	mov	a, _wctomb_PARM_2+1
	mov	p, a
	mov	a, _wctomb_PARM_2+0
	mov	_wctomb_sloc14_1_0+0, a
	mov	a, p
	mov	_wctomb_sloc14_1_0+1, a
	mov	a, #6
00153$:
	sr	_wctomb_sloc14_1_0+1
	src	_wctomb_sloc14_1_0+0
	dzsn	a
	goto	00153$
	mov	a, _wctomb_sloc14_1_0+0
	and	a, #0x3f
	or	a, #0x80
	mov	p, a
	mov	a, _wctomb_sloc13_1_0+0
	xch	a, p
	idxm	p, a
;	../wctomb.c: 63: s[3] = (wc >> 0) & 0x3f  | 0x80;
	mov	a, _wctomb_sloc9_1_0+0
	add	a, #0x03
	mov	_wctomb_sloc15_1_0+0, a
	mov	a, _wctomb_sloc9_1_0+1
	addc	a
	mov	_wctomb_sloc15_1_0+1, a
	mov	a, _wctomb_PARM_2+0
	and	a, #0x3f
	or	a, #0x80
	mov	p, a
	mov	a, _wctomb_sloc15_1_0+0
	xch	a, p
	idxm	p, a
;	../wctomb.c: 64: return(4);
	clear	p
	ret	#0x04
00104$:
;	../wctomb.c: 67: return(-1);
	mov	a, #0xff
	mov	p, a
	ret	#0xff
;	../wctomb.c: 68: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
