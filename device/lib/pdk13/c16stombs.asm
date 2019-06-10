;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module c16stombs
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___memcpy
	.globl _wctomb
	.globl ___c16stombs_PARM_3
	.globl ___c16stombs_PARM_2
	.globl ___c16stombs_PARM_1
	.globl ___c16stombs
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
___c16stombs_PARM_1:
	.ds 2
___c16stombs_PARM_2:
	.ds 2
___c16stombs_PARM_3:
	.ds 2
___c16stombs_b_65536_66:
	.ds 4
___c16stombs_sloc0_1_0:
	.ds 2
___c16stombs_sloc1_1_0:
	.ds 2
___c16stombs_sloc2_1_0:
	.ds 2
___c16stombs_sloc3_1_0:
	.ds 2
___c16stombs_sloc4_1_0:
	.ds 4
___c16stombs_sloc5_1_0:
	.ds 2
___c16stombs_sloc6_1_0:
	.ds 4
___c16stombs_sloc7_1_0:
	.ds 4
___c16stombs_sloc8_1_0:
	.ds 2
___c16stombs_sloc9_1_0:
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
;	../c16stombs.c: 44: size_t __c16stombs(char *restrict s, const char16_t *restrict c16s, size_t n)
;	-----------------------------------------
;	 function __c16stombs
;	-----------------------------------------
___c16stombs:
;	../c16stombs.c: 46: size_t m = 0;
	clear	___c16stombs_sloc0_1_0+0
	clear	___c16stombs_sloc0_1_0+1
;	../c16stombs.c: 87: return(m);
00119$:
;	../c16stombs.c: 54: if(c16s[0] < 0xd800 || c16s[0] >= 0xe000) // Basic multilingual plane
	mov	a, ___c16stombs_PARM_2+0
	mov	___c16stombs_sloc1_1_0+0, a
	mov	a, ___c16stombs_PARM_2+1
	mov	___c16stombs_sloc1_1_0+1, a
	mov	a, ___c16stombs_sloc1_1_0+0
	mov	p, a
	mov	a, ___c16stombs_sloc1_1_0+1
	call	__gptrget2
	mov	___c16stombs_sloc2_1_0+0, a
	mov	a, p
	mov	___c16stombs_sloc2_1_0+1, a
	sub	a, #0xd8
	t0sn	f, c
	goto	00106$
	mov	a, ___c16stombs_sloc2_1_0+1
	sub	a, #0xe0
	t0sn	f, c
	goto	00107$
00106$:
;	../c16stombs.c: 56: codepoint = c16s[0];
	mov	a, ___c16stombs_PARM_2+0
	mov	___c16stombs_sloc3_1_0+0, a
	mov	a, ___c16stombs_PARM_2+1
	mov	___c16stombs_sloc3_1_0+1, a
	mov	a, ___c16stombs_sloc3_1_0+0
	mov	p, a
	mov	a, ___c16stombs_sloc3_1_0+1
	call	__gptrget2
	mov	___c16stombs_sloc4_1_0+0, a
	mov	a, p
	mov	___c16stombs_sloc4_1_0+1, a
	clear	___c16stombs_sloc4_1_0+2
	clear	___c16stombs_sloc4_1_0+3
;	../c16stombs.c: 57: c16s++;
	mov	a, ___c16stombs_sloc3_1_0+0
	add	a, #0x02
	mov	___c16stombs_PARM_2+0, a
	mov	a, ___c16stombs_sloc3_1_0+1
	addc	a
	mov	___c16stombs_PARM_2+1, a
	goto	00108$
00107$:
;	../c16stombs.c: 59: else if(c16s[0] > 0xdbff || c16s[1] < 0xdc00 || c16s[1] > 0xdfff) // Unpaired surrogate
	mov	a, #0xff
	sub	a, ___c16stombs_sloc2_1_0+0
	mov	a, #0xdb
	subc	a, ___c16stombs_sloc2_1_0+1
	t0sn	f, c
	goto	00101$
	mov	a, ___c16stombs_sloc1_1_0+0
	add	a, #0x02
	mov	p, a
	mov	a, ___c16stombs_sloc1_1_0+1
	addc	a
	call	__gptrget2
	mov	___c16stombs_sloc5_1_0+0, a
	mov	a, p
	mov	___c16stombs_sloc5_1_0+1, a
	sub	a, #0xdc
	t0sn	f, c
	goto	00101$
	mov	a, #0xff
	sub	a, ___c16stombs_sloc5_1_0+0
	mov	a, #0xdf
	subc	a, ___c16stombs_sloc5_1_0+1
	t1sn	f, c
	goto	00102$
00101$:
;	../c16stombs.c: 60: return(-1);
	mov	a, #0xff
	mov	p, a
	ret	#0xff
00102$:
;	../c16stombs.c: 63: codepoint = ((unsigned long)(c16s[0]) << 10) -(0xd800ul << 10) + (unsigned long)(c16s[1]) - 0xdc00ul + 0x10000ul;
	mov	a, ___c16stombs_sloc2_1_0+0
	mov	___c16stombs_sloc6_1_0+1, a
	mov	a, ___c16stombs_sloc2_1_0+1
	mov	___c16stombs_sloc6_1_0+2, a
	clear	___c16stombs_sloc6_1_0+3
	clear	___c16stombs_sloc6_1_0+0
	sl	___c16stombs_sloc6_1_0+1
	slc	___c16stombs_sloc6_1_0+2
	slc	___c16stombs_sloc6_1_0+3
	sl	___c16stombs_sloc6_1_0+1
	slc	___c16stombs_sloc6_1_0+2
	slc	___c16stombs_sloc6_1_0+3
	mov	a, ___c16stombs_sloc6_1_0+0
	add	a, ___c16stombs_sloc5_1_0+0
	mov	___c16stombs_sloc7_1_0+0, a
	mov	a, ___c16stombs_sloc6_1_0+1
	addc	a, ___c16stombs_sloc5_1_0+1
	mov	___c16stombs_sloc7_1_0+1, a
	mov	a, ___c16stombs_sloc6_1_0+2
	addc	a
	mov	___c16stombs_sloc7_1_0+2, a
	mov	a, ___c16stombs_sloc6_1_0+3
	addc	a
	mov	___c16stombs_sloc7_1_0+3, a
	mov	a, ___c16stombs_sloc7_1_0+0
	mov	___c16stombs_sloc4_1_0+0, a
	mov	a, ___c16stombs_sloc7_1_0+1
	add	a, #0x24
	mov	___c16stombs_sloc4_1_0+1, a
	mov	a, #0xa0
	mov	p, a
	mov	a, ___c16stombs_sloc7_1_0+2
	addc	a, p
	mov	___c16stombs_sloc4_1_0+2, a
	mov	a, ___c16stombs_sloc7_1_0+3
	addc	a
	add	a, #0xfc
	mov	___c16stombs_sloc4_1_0+3, a
;	../c16stombs.c: 64: c16s += 2;
	mov	a, ___c16stombs_sloc1_1_0+0
	add	a, #0x04
	mov	___c16stombs_PARM_2+0, a
	mov	a, ___c16stombs_sloc1_1_0+1
	addc	a
	mov	___c16stombs_PARM_2+1, a
00108$:
;	../c16stombs.c: 67: if(!codepoint)
	mov	a, ___c16stombs_sloc4_1_0+0
	or	a, ___c16stombs_sloc4_1_0+1
	or	a, ___c16stombs_sloc4_1_0+2
	or	a, ___c16stombs_sloc4_1_0+3
	ceqsn	a, #0x00
	goto	00113$
;	../c16stombs.c: 69: if(m < n)
	mov	a, ___c16stombs_sloc0_1_0+0
	sub	a, ___c16stombs_PARM_3+0
	mov	a, ___c16stombs_sloc0_1_0+1
	subc	a, ___c16stombs_PARM_3+1
	t1sn	f, c
	goto	00118$
;	../c16stombs.c: 70: *s = 0;
	mov	a, ___c16stombs_PARM_1+0
	mov	p, a
	mov	a, ___c16stombs_PARM_1+1
	mov	a, #0x00
	idxm	p, a
;	../c16stombs.c: 71: break;
	goto	00118$
00113$:
;	../c16stombs.c: 74: l = wctomb(b, codepoint);
	mov	a, #(___c16stombs_b_65536_66 + 0)
	mov	_wctomb_PARM_1+0, a
	clear	_wctomb_PARM_1+1
	mov	a, ___c16stombs_sloc4_1_0+0
	mov	_wctomb_PARM_2+0, a
	mov	a, ___c16stombs_sloc4_1_0+1
	mov	_wctomb_PARM_2+1, a
	mov	a, ___c16stombs_sloc4_1_0+2
	mov	_wctomb_PARM_2+2, a
	mov	a, ___c16stombs_sloc4_1_0+3
	mov	_wctomb_PARM_2+3, a
	call	_wctomb
	mov	___c16stombs_sloc8_1_0+0, a
	mov	a, p
;	../c16stombs.c: 76: if(l < 0)
	mov	___c16stombs_sloc8_1_0+1, a
	sub	a, #0x80
	t0sn	f, c
	goto	00115$
;	../c16stombs.c: 77: return(-1);
	mov	a, #0xff
	mov	p, a
	ret	#0xff
00115$:
;	../c16stombs.c: 79: if(m + l > n)
	mov	a, ___c16stombs_sloc8_1_0+1
	mov	p, a
	mov	a, ___c16stombs_sloc8_1_0+0
	add	a, ___c16stombs_sloc0_1_0+0
	mov	___c16stombs_sloc9_1_0+0, a
	mov	a, ___c16stombs_sloc0_1_0+1
	addc	a, p
	mov	___c16stombs_sloc9_1_0+1, a
	mov	a, ___c16stombs_PARM_3+0
	sub	a, ___c16stombs_sloc9_1_0+0
	mov	a, ___c16stombs_PARM_3+1
	subc	a, ___c16stombs_sloc9_1_0+1
	t0sn	f, c
	goto	00118$
;	../c16stombs.c: 82: memcpy(s, b, l);
	mov	a, ___c16stombs_PARM_1+0
	mov	___memcpy_PARM_1+0, a
	mov	a, ___c16stombs_PARM_1+1
	mov	___memcpy_PARM_1+1, a
	mov	a, #(___c16stombs_b_65536_66 + 0)
	mov	___memcpy_PARM_2+0, a
	clear	___memcpy_PARM_2+1
	mov	a, ___c16stombs_sloc8_1_0+0
	mov	___memcpy_PARM_3+0, a
	mov	a, ___c16stombs_sloc8_1_0+1
	mov	___memcpy_PARM_3+1, a
	call	___memcpy
;	../c16stombs.c: 83: s += l;
	mov	a, ___c16stombs_sloc8_1_0+0
	add	___c16stombs_PARM_1+0, a
	mov	a, ___c16stombs_sloc8_1_0+1
	addc	___c16stombs_PARM_1+1, a
;	../c16stombs.c: 84: m += l;
	mov	a, ___c16stombs_sloc9_1_0+0
	mov	___c16stombs_sloc0_1_0+0, a
	mov	a, ___c16stombs_sloc9_1_0+1
	mov	___c16stombs_sloc0_1_0+1, a
	goto	00119$
00118$:
;	../c16stombs.c: 87: return(m);
	mov	a, ___c16stombs_sloc0_1_0+1
	mov	p, a
	mov	a, ___c16stombs_sloc0_1_0+0
;	../c16stombs.c: 88: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
