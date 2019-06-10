;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module mbstowcs
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbtowc
	.globl _mbstowcs_PARM_3
	.globl _mbstowcs_PARM_2
	.globl _mbstowcs_PARM_1
	.globl _mbstowcs
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_mbstowcs_PARM_1:
	.ds 2
_mbstowcs_PARM_2:
	.ds 2
_mbstowcs_PARM_3:
	.ds 2
_mbstowcs_sloc0_1_0:
	.ds 2
_mbstowcs_sloc1_1_0:
	.ds 2
_mbstowcs_sloc2_1_0:
	.ds 2
_mbstowcs_sloc3_1_0:
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
;	../mbstowcs.c: 33: size_t mbstowcs(wchar_t *restrict pwcs, const char *restrict s, size_t n)
;	-----------------------------------------
;	 function mbstowcs
;	-----------------------------------------
_mbstowcs:
;	../mbstowcs.c: 35: size_t m = 0;
	clear	_mbstowcs_sloc0_1_0+0
	clear	_mbstowcs_sloc0_1_0+1
;	../mbstowcs.c: 36: while(n--)
	mov	a, _mbstowcs_PARM_1+0
	mov	_mbstowcs_sloc1_1_0+0, a
	mov	a, _mbstowcs_PARM_1+1
	mov	_mbstowcs_sloc1_1_0+1, a
	clear	_mbstowcs_sloc2_1_0+0
	clear	_mbstowcs_sloc2_1_0+1
	mov	a, _mbstowcs_PARM_3+0
	mov	_mbstowcs_sloc3_1_0+0, a
	mov	a, _mbstowcs_PARM_3+1
	mov	_mbstowcs_sloc3_1_0+1, a
00105$:
	mov	a, _mbstowcs_sloc3_1_0+1
	mov	p, a
	mov	a, _mbstowcs_sloc3_1_0+0
	dec	_mbstowcs_sloc3_1_0+0
	subc	_mbstowcs_sloc3_1_0+1
	or	a, p
	cneqsn	a, #0x00
	goto	00107$
;	../mbstowcs.c: 38: int b = mbtowc(pwcs++, s, MB_LEN_MAX);
	mov	a, _mbstowcs_sloc1_1_0+0
	mov	_mbtowc_PARM_1+0, a
	mov	a, _mbstowcs_sloc1_1_0+1
	mov	_mbtowc_PARM_1+1, a
	mov	a, #0x04
	add	_mbstowcs_sloc1_1_0+0, a
	addc	_mbstowcs_sloc1_1_0+1
	mov	a, _mbstowcs_PARM_2+0
	mov	_mbtowc_PARM_2+0, a
	mov	a, _mbstowcs_PARM_2+1
	mov	_mbtowc_PARM_2+1, a
	mov	a, #0x04
	mov	_mbtowc_PARM_3+0, a
	clear	_mbtowc_PARM_3+1
	call	_mbtowc
;	../mbstowcs.c: 39: if(!b)
	ceqsn	a, #0
	goto	#00126$
	cneqsn	a, p
	goto	00107$
00126$:
;	../mbstowcs.c: 41: if(b < 0)
	mov	a, p
	sub	a, #0x80
	t0sn	f, c
	goto	00104$
;	../mbstowcs.c: 42: return(-1);
	mov	a, #0xff
	mov	p, a
	ret	#0xff
00104$:
;	../mbstowcs.c: 43: s += b;
	add	a, _mbstowcs_PARM_2+0
	mov	_mbstowcs_PARM_2+0, a
	mov	a, _mbstowcs_PARM_2+1
	addc	a, p
	mov	_mbstowcs_PARM_2+1, a
;	../mbstowcs.c: 44: m++;
	inc	_mbstowcs_sloc2_1_0+0
	addc	_mbstowcs_sloc2_1_0+1
	mov	a, _mbstowcs_sloc2_1_0+0
	mov	_mbstowcs_sloc0_1_0+0, a
	mov	a, _mbstowcs_sloc2_1_0+1
	mov	_mbstowcs_sloc0_1_0+1, a
	goto	00105$
00107$:
;	../mbstowcs.c: 47: return(m);
	mov	a, _mbstowcs_sloc0_1_0+1
	mov	p, a
	mov	a, _mbstowcs_sloc0_1_0+0
;	../mbstowcs.c: 48: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
