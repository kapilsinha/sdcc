;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module wcstombs
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wctomb
	.globl _wcstombs_PARM_3
	.globl _wcstombs_PARM_2
	.globl _wcstombs_PARM_1
	.globl _wcstombs
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_wcstombs_PARM_1:
	.ds 2
_wcstombs_PARM_2:
	.ds 2
_wcstombs_PARM_3:
	.ds 2
_wcstombs_buffer_65536_30:
	.ds 4
_wcstombs_sloc0_1_0:
	.ds 2
_wcstombs_sloc1_1_0:
	.ds 2
_wcstombs_sloc2_1_0:
	.ds 2
_wcstombs_sloc3_1_0:
	.ds 2
_wcstombs_sloc4_1_0:
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
;	../wcstombs.c: 33: size_t wcstombs(char *restrict s, const wchar_t *restrict pwcs, size_t n)
;	-----------------------------------------
;	 function wcstombs
;	-----------------------------------------
_wcstombs:
;	../wcstombs.c: 35: size_t m = 0;
	clear	_wcstombs_sloc0_1_0+0
	clear	_wcstombs_sloc0_1_0+1
;	../wcstombs.c: 38: while(n > MB_LEN_MAX || n >= wctomb(buffer, *pwcs))
	mov	a, _wcstombs_PARM_2+0
	mov	_wcstombs_sloc1_1_0+0, a
	mov	a, _wcstombs_PARM_2+1
	mov	_wcstombs_sloc1_1_0+1, a
00107$:
	mov	a, #0x04
	sub	a, _wcstombs_PARM_3+0
	mov	a, #0x00
	subc	a, _wcstombs_PARM_3+1
	t0sn	f, c
	goto	00108$
	mov	a, #(_wcstombs_buffer_65536_30 + 0)
	mov	_wctomb_PARM_1+0, a
	clear	_wctomb_PARM_1+1
	mov	a, _wcstombs_sloc1_1_0+0
	mov	p, a
	mov	a, _wcstombs_sloc1_1_0+1
	call	__gptrget
	mov	_wctomb_PARM_2+0, a
	mov	a, _wcstombs_sloc1_1_0+0
	mov	p, a
	mov	a, _wcstombs_sloc1_1_0+1
	inc	p
	addc	a
	call	__gptrget
	mov	_wctomb_PARM_2+1, a
	mov	a, _wcstombs_sloc1_1_0+0
	mov	p, a
	mov	a, _wcstombs_sloc1_1_0+1
	inc	p
	addc	a
	inc	p
	addc	a
	call	__gptrget
	mov	_wctomb_PARM_2+2, a
	mov	a, _wcstombs_sloc1_1_0+0
	mov	p, a
	mov	a, _wcstombs_sloc1_1_0+1
	xch	a, p
	add	a, #3
	xch	a, p
	addc	a
	call	__gptrget
	mov	_wctomb_PARM_2+3, a
	call	_wctomb
	mov	_wcstombs_sloc2_1_0+0, a
	mov	a, p
	mov	_wcstombs_sloc2_1_0+1, a
	mov	a, _wcstombs_PARM_3+0
	sub	a, _wcstombs_sloc2_1_0+0
	mov	a, _wcstombs_PARM_3+1
	subc	a, _wcstombs_sloc2_1_0+1
	t0sn	f, c
	goto	00109$
00108$:
;	../wcstombs.c: 40: int b = wctomb(s, *pwcs);
	mov	a, _wcstombs_sloc1_1_0+0
	mov	p, a
	mov	a, _wcstombs_sloc1_1_0+1
	call	__gptrget
	mov	_wctomb_PARM_2+0, a
	mov	a, _wcstombs_sloc1_1_0+0
	mov	p, a
	mov	a, _wcstombs_sloc1_1_0+1
	inc	p
	addc	a
	call	__gptrget
	mov	_wctomb_PARM_2+1, a
	mov	a, _wcstombs_sloc1_1_0+0
	mov	p, a
	mov	a, _wcstombs_sloc1_1_0+1
	inc	p
	addc	a
	inc	p
	addc	a
	call	__gptrget
	mov	_wctomb_PARM_2+2, a
	mov	a, _wcstombs_sloc1_1_0+0
	mov	p, a
	mov	a, _wcstombs_sloc1_1_0+1
	xch	a, p
	add	a, #3
	xch	a, p
	addc	a
	call	__gptrget
	mov	_wctomb_PARM_2+3, a
	mov	a, _wcstombs_PARM_1+0
	mov	_wctomb_PARM_1+0, a
	mov	a, _wcstombs_PARM_1+1
	mov	_wctomb_PARM_1+1, a
	call	_wctomb
	mov	_wcstombs_sloc3_1_0+0, a
	mov	a, p
	mov	_wcstombs_sloc3_1_0+1, a
;	../wcstombs.c: 42: if(b == 1 && !*s)
	mov	a, _wcstombs_sloc3_1_0+0
	ceqsn	a, #0x01
	goto	00102$
	mov	a, _wcstombs_sloc3_1_0+1
	ceqsn	a, #0x00
	goto	00102$
	mov	a, _wcstombs_PARM_1+0
	mov	p, a
	mov	a, _wcstombs_PARM_1+1
	call	__gptrget
	cneqsn	a, #0x00
	goto	00109$
;	../wcstombs.c: 43: break;
00102$:
;	../wcstombs.c: 44: if(b < 0)
	mov	a, _wcstombs_sloc3_1_0+1
	sub	a, #0x80
	t0sn	f, c
	goto	00105$
;	../wcstombs.c: 45: return(-1);
	mov	a, #0xff
	mov	p, a
	ret	#0xff
00105$:
;	../wcstombs.c: 47: n -= b;
	mov	a, _wcstombs_sloc3_1_0+0
	mov	_wcstombs_sloc4_1_0+0, a
	mov	a, _wcstombs_sloc3_1_0+1
	mov	_wcstombs_sloc4_1_0+1, a
	mov	a, _wcstombs_sloc4_1_0+0
	sub	_wcstombs_PARM_3+0, a
	mov	a, _wcstombs_sloc4_1_0+1
	subc	_wcstombs_PARM_3+1, a
;	../wcstombs.c: 48: m += b;
	mov	a, _wcstombs_sloc4_1_0+0
	add	_wcstombs_sloc0_1_0+0, a
	mov	a, _wcstombs_sloc4_1_0+1
	addc	_wcstombs_sloc0_1_0+1, a
;	../wcstombs.c: 49: s += b;
	mov	a, _wcstombs_sloc3_1_0+0
	add	_wcstombs_PARM_1+0, a
	mov	a, _wcstombs_sloc3_1_0+1
	addc	_wcstombs_PARM_1+1, a
;	../wcstombs.c: 50: pwcs++;
	mov	a, #0x04
	add	_wcstombs_sloc1_1_0+0, a
	addc	_wcstombs_sloc1_1_0+1
	goto	00107$
00109$:
;	../wcstombs.c: 53: return(m);
	mov	a, _wcstombs_sloc0_1_0+1
	mov	p, a
	mov	a, _wcstombs_sloc0_1_0+0
;	../wcstombs.c: 54: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
