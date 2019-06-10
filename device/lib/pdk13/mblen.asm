;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module mblen
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mblen_PARM_2
	.globl _mblen_PARM_1
	.globl _mblen
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_mblen_PARM_1:
	.ds 2
_mblen_PARM_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_mblen_sloc0_1_0:
	.ds 2
_mblen_sloc1_1_0:
	.ds 1
_mblen_sloc2_1_0:
	.ds 2
_mblen_sloc3_1_0:
	.ds 2
_mblen_sloc4_1_0:
	.ds 1
_mblen_sloc5_1_0:
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
;	../mblen.c: 31: int mblen(const char *s, size_t n)
;	-----------------------------------------
;	 function mblen
;	-----------------------------------------
_mblen:
;	../mblen.c: 36: if(!s)
	mov	a, _mblen_PARM_1+0
	or	a, _mblen_PARM_1+1
	ceqsn	a, #0x00
	goto	00102$
;	../mblen.c: 37: return(0);
	clear	p
	ret	#0x00
00102$:
;	../mblen.c: 39: if(!n)
	mov	a, _mblen_PARM_2+0
	or	a, _mblen_PARM_2+1
	ceqsn	a, #0x00
	goto	00104$
;	../mblen.c: 40: return(-1);
	mov	a, #0xff
	mov	p, a
	ret	#0xff
00104$:
;	../mblen.c: 42: c = *s;
	mov	a, _mblen_PARM_1+0
	mov	_mblen_sloc0_1_0+0, a
	mov	a, _mblen_PARM_1+1
	mov	_mblen_sloc0_1_0+1, a
	mov	a, _mblen_sloc0_1_0+0
	mov	p, a
	mov	a, _mblen_sloc0_1_0+1
	call	__gptrget
;	../mblen.c: 44: if(!c)
	mov	p, a
	ceqsn	a, #0x00
	goto	00106$
;	../mblen.c: 45: return(0);
	clear	p
	ret	#0x00
00106$:
;	../mblen.c: 47: if(c <= 0x7f)
	mov	a, #0x7f
	sub	a, p
	t0sn	f, c
	goto	00126$
;	../mblen.c: 48: return(1);
	clear	p
	ret	#0x01
;	../mblen.c: 50: while(c & 0x80)
00126$:
	clear	_mblen_sloc1_1_0+0
00109$:
	t1sn	p, #7
	goto	00111$
;	../mblen.c: 52: c <<= 1;
	sl	p
;	../mblen.c: 53: m++;
	inc	_mblen_sloc1_1_0+0
	goto	00109$
00111$:
;	../mblen.c: 56: if(m > n)
	mov	a, _mblen_sloc1_1_0+0
	mov	_mblen_sloc2_1_0+0, a
	clear	_mblen_sloc2_1_0+1
	mov	a, _mblen_PARM_2+0
	sub	a, _mblen_sloc2_1_0+0
	mov	a, _mblen_PARM_2+1
	subc	a, _mblen_sloc2_1_0+1
	t1sn	f, c
	goto	00129$
;	../mblen.c: 57: return(-1);
	mov	a, #0xff
	mov	p, a
	ret	#0xff
;	../mblen.c: 60: while(--m)
00129$:
	mov	a, _mblen_sloc0_1_0+0
	mov	_mblen_sloc3_1_0+0, a
	mov	a, _mblen_sloc0_1_0+1
	mov	_mblen_sloc3_1_0+1, a
	mov	a, _mblen_sloc1_1_0+0
	mov	_mblen_sloc4_1_0+0, a
00116$:
	dec	_mblen_sloc4_1_0+0
	mov	a, _mblen_sloc4_1_0+0
	cneqsn	a, #0x00
	goto	00118$
;	../mblen.c: 61: if((*++s & 0xc0) != 0x80)
	inc	_mblen_sloc3_1_0+0
	addc	_mblen_sloc3_1_0+1
	mov	a, _mblen_sloc3_1_0+0
	mov	p, a
	mov	a, _mblen_sloc3_1_0+1
	call	__gptrget
	clear	p
	and	a, #0xc0
	mov	_mblen_sloc5_1_0+0, a
	clear	_mblen_sloc5_1_0+1
	mov	a, _mblen_sloc5_1_0+0
	ceqsn	a, #0x80
	goto	00162$
	mov	a, _mblen_sloc5_1_0+1
	cneqsn	a, #0x00
	goto	00116$
00162$:
;	../mblen.c: 62: return(-1);
	mov	a, #0xff
	mov	p, a
	ret	#0xff
00118$:
;	../mblen.c: 64: return(n);
	mov	a, _mblen_sloc2_1_0+1
	mov	p, a
	mov	a, _mblen_sloc2_1_0+0
;	../mblen.c: 65: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
