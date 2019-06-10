;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module mbrtoc16
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbrtowc
	.globl _mbrtoc16_PARM_4
	.globl _mbrtoc16_PARM_3
	.globl _mbrtoc16_PARM_2
	.globl _mbrtoc16_PARM_1
	.globl _mbrtoc16
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_mbrtoc16_PARM_1:
	.ds 2
_mbrtoc16_PARM_2:
	.ds 2
_mbrtoc16_PARM_3:
	.ds 2
_mbrtoc16_PARM_4:
	.ds 2
_mbrtoc16_codepoint_65536_16:
	.ds 4
_mbrtoc16_sps_65536_16:
	.ds 3
_mbrtoc16_sloc0_1_0:
	.ds 2
_mbrtoc16_sloc1_1_0:
	.ds 2
_mbrtoc16_sloc2_1_0:
	.ds 2
_mbrtoc16_sloc3_1_0:
	.ds 2
_mbrtoc16_sloc4_1_0:
	.ds 2
_mbrtoc16_sloc5_1_0:
	.ds 2
_mbrtoc16_sloc6_1_0:
	.ds 2
_mbrtoc16_sloc7_1_0:
	.ds 2
_mbrtoc16_sloc8_1_0:
	.ds 2
_mbrtoc16_sloc9_1_0:
	.ds 2
_mbrtoc16_sloc10_1_0:
	.ds 2
_mbrtoc16_sloc11_1_0:
	.ds 4
_mbrtoc16_sloc12_1_0:
	.ds 2
_mbrtoc16_sloc13_1_0:
	.ds 2
_mbrtoc16_sloc14_1_0:
	.ds 2
_mbrtoc16_sloc15_1_0:
	.ds 2
_mbrtoc16_sloc16_1_0:
	.ds 2
_mbrtoc16_sloc17_1_0:
	.ds 2
_mbrtoc16_sloc18_1_0:
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
;	../mbrtoc16.c: 34: size_t mbrtoc16(char16_t *restrict pc16, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrtoc16
;	-----------------------------------------
_mbrtoc16:
;	../mbrtoc16.c: 41: if(!s)
	mov	a, _mbrtoc16_PARM_2+0
	or	a, _mbrtoc16_PARM_2+1
	ceqsn	a, #0x00
	goto	00102$
;	../mbrtoc16.c: 42: return(mbrtoc16(0, "", 1, ps));
	mov	a, #<(___str_0 + 0)
	mov	_mbrtoc16_PARM_2+0, a
	mov	a, #>(___str_0 + 0x8000 + 0)
	mov	_mbrtoc16_PARM_2+1, a
	clear	_mbrtoc16_PARM_1+0
	clear	_mbrtoc16_PARM_1+1
	mov	a, #0x01
	mov	_mbrtoc16_PARM_3+0, a
	clear	_mbrtoc16_PARM_3+1
	call	_mbrtoc16
	ret
00102$:
;	../mbrtoc16.c: 44: if(!ps)
	mov	a, _mbrtoc16_PARM_4+0
	or	a, _mbrtoc16_PARM_4+1
	ceqsn	a, #0x00
	goto	00104$
;	../mbrtoc16.c: 45: ps = &sps;
	mov	a, #(_mbrtoc16_sps_65536_16 + 0)
	mov	_mbrtoc16_PARM_4+0, a
	clear	_mbrtoc16_PARM_4+1
00104$:
;	../mbrtoc16.c: 47: if(!ps->c[0] && (ps->c[1] || ps->c[2]))
	mov	a, _mbrtoc16_PARM_4+0
	mov	_mbrtoc16_sloc0_1_0+0, a
	mov	a, _mbrtoc16_PARM_4+1
	mov	_mbrtoc16_sloc0_1_0+1, a
	mov	a, _mbrtoc16_sloc0_1_0+0
	mov	p, a
	mov	a, _mbrtoc16_sloc0_1_0+1
	call	__gptrget
	ceqsn	a, #0x00
	goto	00108$
	mov	a, _mbrtoc16_sloc0_1_0+0
	add	a, #0x01
	mov	p, a
	mov	a, _mbrtoc16_sloc0_1_0+1
	addc	a
	call	__gptrget
	ceqsn	a, #0x00
	goto	00107$
	mov	a, _mbrtoc16_sloc0_1_0+0
	add	a, #0x02
	mov	p, a
	mov	a, _mbrtoc16_sloc0_1_0+1
	addc	a
	call	__gptrget
	cneqsn	a, #0x00
	goto	00108$
00107$:
;	../mbrtoc16.c: 49: if(pc16)
	mov	a, _mbrtoc16_PARM_1+0
	or	a, _mbrtoc16_PARM_1+1
	cneqsn	a, #0x00
	goto	00106$
;	../mbrtoc16.c: 50: *pc16 = ps->c[1] + (ps->c[2] << 8);
	mov	a, _mbrtoc16_PARM_1+0
	mov	_mbrtoc16_sloc1_1_0+0, a
	mov	a, _mbrtoc16_PARM_1+1
	mov	_mbrtoc16_sloc1_1_0+1, a
	mov	a, _mbrtoc16_PARM_4+0
	mov	_mbrtoc16_sloc2_1_0+0, a
	mov	a, _mbrtoc16_PARM_4+1
	mov	_mbrtoc16_sloc2_1_0+1, a
	mov	a, _mbrtoc16_sloc2_1_0+0
	add	a, #0x01
	mov	p, a
	mov	a, _mbrtoc16_sloc2_1_0+1
	addc	a
	call	__gptrget
	mov	_mbrtoc16_sloc3_1_0+0, a
	clear	_mbrtoc16_sloc3_1_0+1
	mov	a, _mbrtoc16_sloc2_1_0+0
	add	a, #0x02
	mov	p, a
	mov	a, _mbrtoc16_sloc2_1_0+1
	addc	a
	call	__gptrget
	mov	p, a
	mov	a, #0x00
	add	a, _mbrtoc16_sloc3_1_0+0
	mov	_mbrtoc16_sloc4_1_0+0, a
	mov	a, _mbrtoc16_sloc3_1_0+1
	addc	a, p
	mov	_mbrtoc16_sloc4_1_0+1, a
	mov	a, _mbrtoc16_sloc1_1_0+0
	mov	p, a
	mov	a, _mbrtoc16_sloc4_1_0+0
	idxm	p, a
	inc	p
	mov	a, _mbrtoc16_sloc4_1_0+1
	idxm	p, a
00106$:
;	../mbrtoc16.c: 51: ps->c[1] = ps->c[2] = 0;
	mov	a, _mbrtoc16_PARM_4+0
	mov	_mbrtoc16_sloc5_1_0+0, a
	mov	a, _mbrtoc16_PARM_4+1
	mov	_mbrtoc16_sloc5_1_0+1, a
	mov	a, _mbrtoc16_sloc5_1_0+0
	add	a, #0x01
	mov	_mbrtoc16_sloc6_1_0+0, a
	mov	a, _mbrtoc16_sloc5_1_0+1
	addc	a
	mov	_mbrtoc16_sloc6_1_0+1, a
	mov	a, _mbrtoc16_sloc5_1_0+0
	add	a, #0x02
	mov	p, a
	mov	a, _mbrtoc16_sloc5_1_0+1
	addc	a
	mov	a, #0x00
	idxm	p, a
	mov	a, _mbrtoc16_sloc6_1_0+0
	mov	p, a
	mov	a, #0x00
	idxm	p, a
;	../mbrtoc16.c: 52: return(-3);
	mov	a, #0xff
	mov	p, a
	ret	#0xfd
00108$:
;	../mbrtoc16.c: 55: ret = mbrtowc(&codepoint, s, n, ps);
	mov	a, #(_mbrtoc16_codepoint_65536_16 + 0)
	mov	_mbrtowc_PARM_1+0, a
	clear	_mbrtowc_PARM_1+1
	mov	a, _mbrtoc16_PARM_2+0
	mov	_mbrtowc_PARM_2+0, a
	mov	a, _mbrtoc16_PARM_2+1
	mov	_mbrtowc_PARM_2+1, a
	mov	a, _mbrtoc16_PARM_3+0
	mov	_mbrtowc_PARM_3+0, a
	mov	a, _mbrtoc16_PARM_3+1
	mov	_mbrtowc_PARM_3+1, a
	mov	a, _mbrtoc16_PARM_4+0
	mov	_mbrtowc_PARM_4+0, a
	mov	a, _mbrtoc16_PARM_4+1
	mov	_mbrtowc_PARM_4+1, a
	call	_mbrtowc
	mov	_mbrtoc16_sloc7_1_0+0, a
	mov	a, p
	mov	_mbrtoc16_sloc7_1_0+1, a
;	../mbrtoc16.c: 57: if(ret > MB_LEN_MAX)
	mov	a, #0x04
	sub	a, _mbrtoc16_sloc7_1_0+0
	mov	a, #0x00
	subc	a, _mbrtoc16_sloc7_1_0+1
	t1sn	f, c
	goto	00112$
;	../mbrtoc16.c: 58: return(ret);
	mov	a, _mbrtoc16_sloc7_1_0+1
	mov	p, a
	mov	a, _mbrtoc16_sloc7_1_0+0
	ret
00112$:
;	../mbrtoc16.c: 60: if (codepoint <= 0xffff) // Basic multilingual plane
	mov	a, #0xff
	sub	a, _mbrtoc16_codepoint_65536_16+0
	mov	a, #0xff
	subc	a, _mbrtoc16_codepoint_65536_16+1
	mov	a, #0x00
	subc	a, _mbrtoc16_codepoint_65536_16+2
	mov	a, #0x00
	subc	a, _mbrtoc16_codepoint_65536_16+3
	t0sn	f, c
	goto	00116$
;	../mbrtoc16.c: 62: if(pc16)
	mov	a, _mbrtoc16_PARM_1+0
	or	a, _mbrtoc16_PARM_1+1
	cneqsn	a, #0x00
	goto	00114$
;	../mbrtoc16.c: 63: *pc16 = codepoint;
	mov	a, _mbrtoc16_PARM_1+0
	mov	_mbrtoc16_sloc8_1_0+0, a
	mov	a, _mbrtoc16_PARM_1+1
	mov	_mbrtoc16_sloc8_1_0+1, a
	mov	a, _mbrtoc16_codepoint_65536_16+0
	mov	_mbrtoc16_sloc9_1_0+0, a
	mov	a, _mbrtoc16_codepoint_65536_16+1
	mov	_mbrtoc16_sloc9_1_0+1, a
	mov	a, _mbrtoc16_sloc8_1_0+0
	mov	p, a
	mov	a, _mbrtoc16_sloc9_1_0+0
	idxm	p, a
	inc	p
	mov	a, _mbrtoc16_sloc9_1_0+1
	idxm	p, a
00114$:
;	../mbrtoc16.c: 64: return(ret);
	mov	a, _mbrtoc16_sloc7_1_0+1
	mov	p, a
	mov	a, _mbrtoc16_sloc7_1_0+0
	ret
00116$:
;	../mbrtoc16.c: 67: codepoint -= 0x100000;
	mov	a, #0x10
	sub	_mbrtoc16_codepoint_65536_16+2, a
	subc	_mbrtoc16_codepoint_65536_16+3
;	../mbrtoc16.c: 68: if(pc16)
	mov	a, _mbrtoc16_PARM_1+0
	or	a, _mbrtoc16_PARM_1+1
	cneqsn	a, #0x00
	goto	00118$
;	../mbrtoc16.c: 69: *pc16 = ((codepoint >> 10) & 0x3ff) + 0xd800;
	mov	a, _mbrtoc16_PARM_1+0
	mov	_mbrtoc16_sloc10_1_0+0, a
	mov	a, _mbrtoc16_PARM_1+1
	mov	_mbrtoc16_sloc10_1_0+1, a
	mov	a, _mbrtoc16_codepoint_65536_16+1
	mov	_mbrtoc16_sloc11_1_0+0, a
	mov	a, _mbrtoc16_codepoint_65536_16+2
	mov	_mbrtoc16_sloc11_1_0+1, a
	mov	a, _mbrtoc16_codepoint_65536_16+3
	mov	_mbrtoc16_sloc11_1_0+2, a
	clear	_mbrtoc16_sloc11_1_0+3
	sr	_mbrtoc16_sloc11_1_0+2
	src	_mbrtoc16_sloc11_1_0+1
	src	_mbrtoc16_sloc11_1_0+0
	sr	_mbrtoc16_sloc11_1_0+2
	src	_mbrtoc16_sloc11_1_0+1
	src	_mbrtoc16_sloc11_1_0+0
	mov	a, _mbrtoc16_sloc11_1_0+1
	mov	p, a
	mov	a, _mbrtoc16_sloc11_1_0+0
	mov	_mbrtoc16_sloc12_1_0+0, a
	mov	a, p
	and	a, #0x03
	mov	_mbrtoc16_sloc12_1_0+1, a
	mov	a, _mbrtoc16_sloc12_1_0+0
	mov	_mbrtoc16_sloc13_1_0+0, a
	mov	a, _mbrtoc16_sloc12_1_0+1
	add	a, #0xd8
	mov	_mbrtoc16_sloc13_1_0+1, a
	mov	a, _mbrtoc16_sloc10_1_0+0
	mov	p, a
	mov	a, _mbrtoc16_sloc13_1_0+0
	idxm	p, a
	inc	p
	mov	a, _mbrtoc16_sloc13_1_0+1
	idxm	p, a
00118$:
;	../mbrtoc16.c: 70: low_surrogate = (codepoint & 0x3ff) + 0xdc00;
	mov	a, _mbrtoc16_codepoint_65536_16+1
	mov	p, a
	mov	a, _mbrtoc16_codepoint_65536_16+0
	mov	_mbrtoc16_sloc14_1_0+0, a
	mov	a, p
	and	a, #0x03
	mov	_mbrtoc16_sloc14_1_0+1, a
	mov	a, _mbrtoc16_sloc14_1_0+0
	mov	_mbrtoc16_sloc15_1_0+0, a
	mov	a, _mbrtoc16_sloc14_1_0+1
	add	a, #0xdc
	mov	_mbrtoc16_sloc15_1_0+1, a
;	../mbrtoc16.c: 71: ps->c[0] = 0;
	mov	a, _mbrtoc16_PARM_4+0
	mov	_mbrtoc16_sloc16_1_0+0, a
	mov	a, _mbrtoc16_PARM_4+1
	mov	_mbrtoc16_sloc16_1_0+1, a
	mov	a, _mbrtoc16_sloc16_1_0+0
	mov	p, a
	mov	a, #0x00
	idxm	p, a
;	../mbrtoc16.c: 72: ps->c[1] = low_surrogate & 0xff;
	mov	a, _mbrtoc16_sloc16_1_0+0
	add	a, #0x01
	mov	_mbrtoc16_sloc17_1_0+0, a
	mov	a, _mbrtoc16_sloc16_1_0+1
	addc	a
	mov	_mbrtoc16_sloc17_1_0+1, a
	mov	a, _mbrtoc16_sloc15_1_0+0
	mov	p, a
	mov	a, _mbrtoc16_sloc17_1_0+0
	xch	a, p
	idxm	p, a
;	../mbrtoc16.c: 73: ps->c[2] = low_surrogate >> 8;
	mov	a, _mbrtoc16_sloc16_1_0+0
	add	a, #0x02
	mov	_mbrtoc16_sloc18_1_0+0, a
	mov	a, _mbrtoc16_sloc16_1_0+1
	addc	a
	mov	_mbrtoc16_sloc18_1_0+1, a
	clear	p
	mov	a, _mbrtoc16_sloc15_1_0+1
	mov	p, a
	mov	a, _mbrtoc16_sloc18_1_0+0
	xch	a, p
	idxm	p, a
;	../mbrtoc16.c: 75: return(ret);
	mov	a, _mbrtoc16_sloc7_1_0+1
	mov	p, a
	mov	a, _mbrtoc16_sloc7_1_0+0
;	../mbrtoc16.c: 76: }
	ret
	.area CODE
	.area CONST
	.area CONST
___str_0:
	ret #0x00
	.area CODE
	.area CABS (ABS)
