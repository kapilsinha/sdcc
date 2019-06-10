;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module atol
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atol_PARM_1
	.globl _atol
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_atol_PARM_1:
	.ds 2
_atol_sloc0_1_0:
	.ds 4
_atol_sloc1_1_0:
	.ds 4
_atol_sloc2_1_0:
	.ds 2
_atol_sloc3_1_0:
	.ds 1
_atol_sloc4_1_0:
	.ds 2
_atol_sloc5_1_0:
	.ds 4
_atol_sloc6_1_0:
	.ds 4
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
;	../atol.c: 34: long int atol(const char *nptr)
;	-----------------------------------------
;	 function atol
;	-----------------------------------------
_atol:
;	../atol.c: 36: long int ret = 0;
	clear	_atol_sloc1_1_0+0
	clear	_atol_sloc1_1_0+1
	clear	_atol_sloc1_1_0+2
	clear	_atol_sloc1_1_0+3
;	../atol.c: 39: while (isblank (*nptr))
	mov	a, _atol_PARM_1+0
	mov	_atol_sloc2_1_0+0, a
	mov	a, _atol_PARM_1+1
	mov	_atol_sloc2_1_0+1, a
00101$:
	mov	a, _atol_sloc2_1_0+0
	mov	p, a
	mov	a, _atol_sloc2_1_0+1
	call	__gptrget
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cneqsn	a, #0x20
	goto	00115$
	ceqsn	a, #0x09
	goto	00131$
00115$:
;	../atol.c: 40: nptr++;
	inc	_atol_sloc2_1_0+0
	addc	_atol_sloc2_1_0+1
	goto	00101$
00131$:
	mov	a, _atol_sloc2_1_0+0
	mov	_atol_PARM_1+0, a
	mov	a, _atol_sloc2_1_0+1
	mov	_atol_PARM_1+1, a
;	../atol.c: 42: neg = (*nptr == '-');
	mov	a, _atol_sloc2_1_0+0
	mov	p, a
	mov	a, _atol_sloc2_1_0+1
	call	__gptrget
	ceqsn	a, #0x2d
	goto	00155$
	push	af
	mov	a, #0x01
	mov	_atol_sloc3_1_0+0, a
	goto	00156$
00155$:
	push	af
	clear	_atol_sloc3_1_0+0
00156$:
	pop	af
;	../atol.c: 44: if (*nptr == '-' || *nptr == '+')
	cneqsn	a, #0x2d
	goto	00104$
	ceqsn	a, #0x2b
	goto	00129$
00104$:
;	../atol.c: 45: nptr++;
	mov	a, _atol_sloc2_1_0+0
	add	a, #0x01
	mov	_atol_PARM_1+0, a
	mov	a, _atol_sloc2_1_0+1
	addc	a
	mov	_atol_PARM_1+1, a
;	../atol.c: 47: while (isdigit (*nptr))
00129$:
	mov	a, _atol_PARM_1+0
	mov	_atol_sloc4_1_0+0, a
	mov	a, _atol_PARM_1+1
	mov	_atol_sloc4_1_0+1, a
00107$:
	mov	a, _atol_sloc4_1_0+0
	mov	p, a
	mov	a, _atol_sloc4_1_0+1
	call	__gptrget
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	ceqsn	a, #0x30
	nop
	t0sn	f, c
	goto	00109$
	ceqsn	a, #0x3a
	t1sn	f, c
	goto	00109$
;	../atol.c: 48: ret = ret * 10 + (*(nptr++) - '0');
	mov	a, #0x0a
	mov	__mullong_PARM_1+0, a
	clear	__mullong_PARM_1+1
	clear	__mullong_PARM_1+2
	clear	__mullong_PARM_1+3
	mov	a, _atol_sloc1_1_0+0
	mov	__mullong_PARM_2+0, a
	mov	a, _atol_sloc1_1_0+1
	mov	__mullong_PARM_2+1, a
	mov	a, _atol_sloc1_1_0+2
	mov	__mullong_PARM_2+2, a
	mov	a, _atol_sloc1_1_0+3
	mov	__mullong_PARM_2+3, a
	mov	a, #_atol_sloc0_1_0
	push	af
	call	__mullong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _atol_sloc4_1_0+0
	mov	p, a
	mov	a, _atol_sloc4_1_0+1
	call	__gptrget
	inc	_atol_sloc4_1_0+0
	addc	_atol_sloc4_1_0+1
	sub	a, #0x30
	push	af
	mov	a, #0x00
	subc	a
	mov	p, a
	pop	af
	mov	_atol_sloc5_1_0+0, a
	mov	a, p
	mov	_atol_sloc5_1_0+1, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	_atol_sloc5_1_0+2, a
	mov	_atol_sloc5_1_0+3, a
	mov	a, _atol_sloc0_1_0+0
	add	a, _atol_sloc5_1_0+0
	mov	_atol_sloc1_1_0+0, a
	mov	a, _atol_sloc0_1_0+1
	addc	a, _atol_sloc5_1_0+1
	mov	_atol_sloc1_1_0+1, a
	mov	a, _atol_sloc0_1_0+2
	addc	a, _atol_sloc5_1_0+2
	mov	_atol_sloc1_1_0+2, a
	mov	a, _atol_sloc0_1_0+3
	addc	a, _atol_sloc5_1_0+3
	mov	_atol_sloc1_1_0+3, a
	goto	00107$
00109$:
;	../atol.c: 50: return (neg ? -ret : ret); // Since -LONG_MIN is LONG_MIN in sdcc, the result value always turns out ok.
	mov	a, _atol_sloc3_1_0+0
	cneqsn	a, #0x00
	goto	00120$
	mov	a, #0x00
	sub	a, _atol_sloc1_1_0+0
	mov	_atol_sloc6_1_0+0, a
	mov	a, #0x00
	subc	a, _atol_sloc1_1_0+1
	mov	_atol_sloc6_1_0+1, a
	mov	a, #0x00
	subc	a, _atol_sloc1_1_0+2
	mov	_atol_sloc6_1_0+2, a
	mov	a, #0x00
	subc	a, _atol_sloc1_1_0+3
	mov	_atol_sloc6_1_0+3, a
	goto	00121$
00120$:
	mov	a, _atol_sloc1_1_0+0
	mov	_atol_sloc6_1_0+0, a
	mov	a, _atol_sloc1_1_0+1
	mov	_atol_sloc6_1_0+1, a
	mov	a, _atol_sloc1_1_0+2
	mov	_atol_sloc6_1_0+2, a
	mov	a, _atol_sloc1_1_0+3
	mov	_atol_sloc6_1_0+3, a
00121$:
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _atol_sloc6_1_0+0
	idxm	p, a
	inc	p
	mov	a, _atol_sloc6_1_0+1
	idxm	p, a
	inc	p
	mov	a, _atol_sloc6_1_0+2
	idxm	p, a
	inc	p
	mov	a, _atol_sloc6_1_0+3
	idxm	p, a
;	../atol.c: 51: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
