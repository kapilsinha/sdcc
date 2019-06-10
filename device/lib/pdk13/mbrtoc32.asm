;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module mbrtoc32
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbrtowc
	.globl _mbrtoc32_PARM_4
	.globl _mbrtoc32_PARM_3
	.globl _mbrtoc32_PARM_2
	.globl _mbrtoc32_PARM_1
	.globl _mbrtoc32
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_mbrtoc32_PARM_1:
	.ds 2
_mbrtoc32_PARM_2:
	.ds 2
_mbrtoc32_PARM_3:
	.ds 2
_mbrtoc32_PARM_4:
	.ds 2
_mbrtoc32_wc_65536_16:
	.ds 4
_mbrtoc32_sps_65536_16:
	.ds 3
_mbrtoc32_sloc0_1_0:
	.ds 2
_mbrtoc32_sloc1_1_0:
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
;	../mbrtoc32.c: 34: size_t mbrtoc32(char32_t *restrict pc32, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrtoc32
;	-----------------------------------------
_mbrtoc32:
;	../mbrtoc32.c: 40: if(!ps)
	mov	a, _mbrtoc32_PARM_4+0
	or	a, _mbrtoc32_PARM_4+1
	ceqsn	a, #0x00
	goto	00102$
;	../mbrtoc32.c: 41: ps = &sps;
	mov	a, #(_mbrtoc32_sps_65536_16 + 0)
	mov	_mbrtoc32_PARM_4+0, a
	clear	_mbrtoc32_PARM_4+1
00102$:
;	../mbrtoc32.c: 43: if(!pc32)
	mov	a, _mbrtoc32_PARM_1+0
	or	a, _mbrtoc32_PARM_1+1
	ceqsn	a, #0x00
	goto	00104$
;	../mbrtoc32.c: 44: return(mbrtowc(0, s, n, ps));
	clear	_mbrtowc_PARM_1+0
	clear	_mbrtowc_PARM_1+1
	mov	a, _mbrtoc32_PARM_2+0
	mov	_mbrtowc_PARM_2+0, a
	mov	a, _mbrtoc32_PARM_2+1
	mov	_mbrtowc_PARM_2+1, a
	mov	a, _mbrtoc32_PARM_3+0
	mov	_mbrtowc_PARM_3+0, a
	mov	a, _mbrtoc32_PARM_3+1
	mov	_mbrtowc_PARM_3+1, a
	mov	a, _mbrtoc32_PARM_4+0
	mov	_mbrtowc_PARM_4+0, a
	mov	a, _mbrtoc32_PARM_4+1
	mov	_mbrtowc_PARM_4+1, a
	call	_mbrtowc
	ret
00104$:
;	../mbrtoc32.c: 46: ret = mbrtowc(&wc, s, n, ps);
	mov	a, #(_mbrtoc32_wc_65536_16 + 0)
	mov	_mbrtowc_PARM_1+0, a
	clear	_mbrtowc_PARM_1+1
	mov	a, _mbrtoc32_PARM_2+0
	mov	_mbrtowc_PARM_2+0, a
	mov	a, _mbrtoc32_PARM_2+1
	mov	_mbrtowc_PARM_2+1, a
	mov	a, _mbrtoc32_PARM_3+0
	mov	_mbrtowc_PARM_3+0, a
	mov	a, _mbrtoc32_PARM_3+1
	mov	_mbrtowc_PARM_3+1, a
	mov	a, _mbrtoc32_PARM_4+0
	mov	_mbrtowc_PARM_4+0, a
	mov	a, _mbrtoc32_PARM_4+1
	mov	_mbrtowc_PARM_4+1, a
	call	_mbrtowc
	mov	_mbrtoc32_sloc0_1_0+0, a
	mov	a, p
	mov	_mbrtoc32_sloc0_1_0+1, a
;	../mbrtoc32.c: 48: if(ret <= MB_LEN_MAX)
	mov	a, #0x04
	sub	a, _mbrtoc32_sloc0_1_0+0
	mov	a, #0x00
	subc	a, _mbrtoc32_sloc0_1_0+1
	t0sn	f, c
	goto	00106$
;	../mbrtoc32.c: 49: *pc32 = wc;
	mov	a, _mbrtoc32_PARM_1+0
	mov	_mbrtoc32_sloc1_1_0+0, a
	mov	a, _mbrtoc32_PARM_1+1
	mov	_mbrtoc32_sloc1_1_0+1, a
	mov	a, _mbrtoc32_sloc1_1_0+0
	mov	p, a
	mov	a, _mbrtoc32_wc_65536_16+0
	idxm	p, a
	inc	p
	mov	a, _mbrtoc32_wc_65536_16+1
	idxm	p, a
	inc	p
	mov	a, _mbrtoc32_wc_65536_16+2
	idxm	p, a
	inc	p
	mov	a, _mbrtoc32_wc_65536_16+3
	idxm	p, a
00106$:
;	../mbrtoc32.c: 51: return(ret);
	mov	a, _mbrtoc32_sloc0_1_0+1
	mov	p, a
	mov	a, _mbrtoc32_sloc0_1_0+0
;	../mbrtoc32.c: 52: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
