;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module mbstoc16s
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbtowc
	.globl ___mbstoc16s_PARM_3
	.globl ___mbstoc16s_PARM_2
	.globl ___mbstoc16s_PARM_1
	.globl ___mbstoc16s
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
___mbstoc16s_PARM_1:
	.ds 2
___mbstoc16s_PARM_2:
	.ds 2
___mbstoc16s_PARM_3:
	.ds 2
___mbstoc16s_codepoint_196608_46:
	.ds 4
___mbstoc16s_sloc0_1_0:
	.ds 2
___mbstoc16s_sloc1_1_0:
	.ds 2
___mbstoc16s_sloc2_1_0:
	.ds 2
___mbstoc16s_sloc3_1_0:
	.ds 2
___mbstoc16s_sloc4_1_0:
	.ds 2
___mbstoc16s_sloc5_1_0:
	.ds 2
___mbstoc16s_sloc6_1_0:
	.ds 2
___mbstoc16s_sloc7_1_0:
	.ds 4
___mbstoc16s_sloc8_1_0:
	.ds 2
___mbstoc16s_sloc9_1_0:
	.ds 2
___mbstoc16s_sloc10_1_0:
	.ds 2
___mbstoc16s_sloc11_1_0:
	.ds 2
___mbstoc16s_sloc12_1_0:
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
;	../mbstoc16s.c: 44: size_t __mbstoc16s(char16_t *restrict c16s, const char *restrict s, size_t n)
;	-----------------------------------------
;	 function __mbstoc16s
;	-----------------------------------------
___mbstoc16s:
;	../mbstoc16s.c: 46: size_t m = 0;
	clear	___mbstoc16s_sloc0_1_0+0
	clear	___mbstoc16s_sloc0_1_0+1
;	../mbstoc16s.c: 85: return(m);
00116$:
;	../mbstoc16s.c: 53: l = mbtowc(&codepoint, s, MB_LEN_MAX);
	mov	a, #(___mbstoc16s_codepoint_196608_46 + 0)
	mov	_mbtowc_PARM_1+0, a
	clear	_mbtowc_PARM_1+1
	mov	a, ___mbstoc16s_PARM_2+0
	mov	_mbtowc_PARM_2+0, a
	mov	a, ___mbstoc16s_PARM_2+1
	mov	_mbtowc_PARM_2+1, a
	mov	a, #0x04
	mov	_mbtowc_PARM_3+0, a
	clear	_mbtowc_PARM_3+1
	call	_mbtowc
	mov	___mbstoc16s_sloc1_1_0+0, a
	mov	a, p
;	../mbstoc16s.c: 55: if(l < 0)
	mov	___mbstoc16s_sloc1_1_0+1, a
	sub	a, #0x80
	t0sn	f, c
	goto	00106$
;	../mbstoc16s.c: 56: return(-1);
	mov	a, #0xff
	mov	p, a
	ret	#0xff
00106$:
;	../mbstoc16s.c: 57: else if(!l)
	mov	a, ___mbstoc16s_sloc1_1_0+0
	or	a, ___mbstoc16s_sloc1_1_0+1
	ceqsn	a, #0x00
	goto	00107$
;	../mbstoc16s.c: 59: if(m < n)
	mov	a, ___mbstoc16s_sloc0_1_0+0
	sub	a, ___mbstoc16s_PARM_3+0
	mov	a, ___mbstoc16s_sloc0_1_0+1
	subc	a, ___mbstoc16s_PARM_3+1
	t1sn	f, c
	goto	00115$
;	../mbstoc16s.c: 60: *c16s = 0;
	mov	a, ___mbstoc16s_PARM_1+0
	mov	___mbstoc16s_sloc2_1_0+0, a
	mov	a, ___mbstoc16s_PARM_1+1
	mov	___mbstoc16s_sloc2_1_0+1, a
	mov	a, ___mbstoc16s_sloc2_1_0+0
	mov	p, a
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
;	../mbstoc16s.c: 61: break;
	goto	00115$
00107$:
;	../mbstoc16s.c: 64: if (codepoint <= 0xffff) // Basic multilingual plane
	mov	a, #0xff
	sub	a, ___mbstoc16s_codepoint_196608_46+0
	mov	a, #0xff
	subc	a, ___mbstoc16s_codepoint_196608_46+1
	mov	a, #0x00
	subc	a, ___mbstoc16s_codepoint_196608_46+2
	mov	a, #0x00
	subc	a, ___mbstoc16s_codepoint_196608_46+3
	t0sn	f, c
	goto	00113$
;	../mbstoc16s.c: 66: if (m >= n)
	mov	a, ___mbstoc16s_sloc0_1_0+0
	sub	a, ___mbstoc16s_PARM_3+0
	mov	a, ___mbstoc16s_sloc0_1_0+1
	subc	a, ___mbstoc16s_PARM_3+1
	t1sn	f, c
	goto	00115$
;	../mbstoc16s.c: 69: *c16s++ = codepoint;
	mov	a, ___mbstoc16s_PARM_1+0
	mov	___mbstoc16s_sloc3_1_0+0, a
	mov	a, ___mbstoc16s_PARM_1+1
	mov	___mbstoc16s_sloc3_1_0+1, a
	mov	a, ___mbstoc16s_codepoint_196608_46+0
	mov	___mbstoc16s_sloc4_1_0+0, a
	mov	a, ___mbstoc16s_codepoint_196608_46+1
	mov	___mbstoc16s_sloc4_1_0+1, a
	mov	a, ___mbstoc16s_sloc3_1_0+0
	mov	p, a
	mov	a, ___mbstoc16s_sloc4_1_0+0
	idxm	p, a
	inc	p
	mov	a, ___mbstoc16s_sloc4_1_0+1
	idxm	p, a
	mov	a, ___mbstoc16s_sloc3_1_0+0
	add	a, #0x02
	mov	___mbstoc16s_PARM_1+0, a
	mov	a, ___mbstoc16s_sloc3_1_0+1
	addc	a
	mov	___mbstoc16s_PARM_1+1, a
;	../mbstoc16s.c: 70: m++;
	inc	___mbstoc16s_sloc0_1_0+0
	addc	___mbstoc16s_sloc0_1_0+1
	goto	00114$
00113$:
;	../mbstoc16s.c: 74: if (m + 1 >= n)
	mov	a, ___mbstoc16s_sloc0_1_0+0
	add	a, #0x01
	mov	___mbstoc16s_sloc5_1_0+0, a
	mov	a, ___mbstoc16s_sloc0_1_0+1
	addc	a
	mov	___mbstoc16s_sloc5_1_0+1, a
	mov	a, ___mbstoc16s_sloc5_1_0+0
	sub	a, ___mbstoc16s_PARM_3+0
	mov	a, ___mbstoc16s_sloc5_1_0+1
	subc	a, ___mbstoc16s_PARM_3+1
	t1sn	f, c
	goto	00115$
;	../mbstoc16s.c: 77: codepoint -= 0x100000;
	mov	a, #0x10
	sub	___mbstoc16s_codepoint_196608_46+2, a
	subc	___mbstoc16s_codepoint_196608_46+3
;	../mbstoc16s.c: 78: *c16s++ = ((codepoint >> 10) & 0x3ff) + 0xd800;
	mov	a, ___mbstoc16s_PARM_1+0
	mov	___mbstoc16s_sloc6_1_0+0, a
	mov	a, ___mbstoc16s_PARM_1+1
	mov	___mbstoc16s_sloc6_1_0+1, a
	mov	a, ___mbstoc16s_codepoint_196608_46+1
	mov	___mbstoc16s_sloc7_1_0+0, a
	mov	a, ___mbstoc16s_codepoint_196608_46+2
	mov	___mbstoc16s_sloc7_1_0+1, a
	mov	a, ___mbstoc16s_codepoint_196608_46+3
	mov	___mbstoc16s_sloc7_1_0+2, a
	clear	___mbstoc16s_sloc7_1_0+3
	sr	___mbstoc16s_sloc7_1_0+2
	src	___mbstoc16s_sloc7_1_0+1
	src	___mbstoc16s_sloc7_1_0+0
	sr	___mbstoc16s_sloc7_1_0+2
	src	___mbstoc16s_sloc7_1_0+1
	src	___mbstoc16s_sloc7_1_0+0
	mov	a, ___mbstoc16s_sloc7_1_0+1
	mov	p, a
	mov	a, ___mbstoc16s_sloc7_1_0+0
	mov	___mbstoc16s_sloc8_1_0+0, a
	mov	a, p
	and	a, #0x03
	mov	___mbstoc16s_sloc8_1_0+1, a
	mov	a, ___mbstoc16s_sloc8_1_0+0
	mov	___mbstoc16s_sloc9_1_0+0, a
	mov	a, ___mbstoc16s_sloc8_1_0+1
	add	a, #0xd8
	mov	___mbstoc16s_sloc9_1_0+1, a
	mov	a, ___mbstoc16s_sloc6_1_0+0
	mov	p, a
	mov	a, ___mbstoc16s_sloc9_1_0+0
	idxm	p, a
	inc	p
	mov	a, ___mbstoc16s_sloc9_1_0+1
	idxm	p, a
	mov	a, ___mbstoc16s_sloc6_1_0+0
	add	a, #0x02
	mov	___mbstoc16s_PARM_1+0, a
	mov	a, ___mbstoc16s_sloc6_1_0+1
	addc	a
	mov	___mbstoc16s_PARM_1+1, a
;	../mbstoc16s.c: 79: *c16s++ = (codepoint & 0x3ff) + 0xdc00;
	mov	a, ___mbstoc16s_PARM_1+0
	mov	___mbstoc16s_sloc10_1_0+0, a
	mov	a, ___mbstoc16s_PARM_1+1
	mov	___mbstoc16s_sloc10_1_0+1, a
	mov	a, ___mbstoc16s_codepoint_196608_46+1
	mov	p, a
	mov	a, ___mbstoc16s_codepoint_196608_46+0
	mov	___mbstoc16s_sloc11_1_0+0, a
	mov	a, p
	and	a, #0x03
	mov	___mbstoc16s_sloc11_1_0+1, a
	mov	a, ___mbstoc16s_sloc11_1_0+0
	mov	___mbstoc16s_sloc12_1_0+0, a
	mov	a, ___mbstoc16s_sloc11_1_0+1
	add	a, #0xdc
	mov	___mbstoc16s_sloc12_1_0+1, a
	mov	a, ___mbstoc16s_sloc10_1_0+0
	mov	p, a
	mov	a, ___mbstoc16s_sloc12_1_0+0
	idxm	p, a
	inc	p
	mov	a, ___mbstoc16s_sloc12_1_0+1
	idxm	p, a
	mov	a, ___mbstoc16s_sloc10_1_0+0
	add	a, #0x02
	mov	___mbstoc16s_PARM_1+0, a
	mov	a, ___mbstoc16s_sloc10_1_0+1
	addc	a
	mov	___mbstoc16s_PARM_1+1, a
;	../mbstoc16s.c: 80: m += 2;
	mov	a, #0x02
	add	___mbstoc16s_sloc0_1_0+0, a
	addc	___mbstoc16s_sloc0_1_0+1
00114$:
;	../mbstoc16s.c: 82: s += l;
	mov	a, ___mbstoc16s_sloc1_1_0+0
	add	___mbstoc16s_PARM_2+0, a
	mov	a, ___mbstoc16s_sloc1_1_0+1
	addc	___mbstoc16s_PARM_2+1, a
	goto	00116$
00115$:
;	../mbstoc16s.c: 85: return(m);
	mov	a, ___mbstoc16s_sloc0_1_0+1
	mov	p, a
	mov	a, ___mbstoc16s_sloc0_1_0+0
;	../mbstoc16s.c: 86: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
