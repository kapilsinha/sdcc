;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module atoi
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi_PARM_1
	.globl _atoi
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_atoi_PARM_1:
	.ds 2
_atoi_sloc0_1_0:
	.ds 2
_atoi_sloc1_1_0:
	.ds 2
_atoi_sloc2_1_0:
	.ds 1
_atoi_sloc3_1_0:
	.ds 2
_atoi_sloc4_1_0:
	.ds 2
_atoi_sloc5_1_0:
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
;	../atoi.c: 34: int atoi(const char *nptr)
;	-----------------------------------------
;	 function atoi
;	-----------------------------------------
_atoi:
;	../atoi.c: 36: int ret = 0;
	clear	_atoi_sloc0_1_0+0
	clear	_atoi_sloc0_1_0+1
;	../atoi.c: 39: while (isblank (*nptr))
	mov	a, _atoi_PARM_1+0
	mov	_atoi_sloc1_1_0+0, a
	mov	a, _atoi_PARM_1+1
	mov	_atoi_sloc1_1_0+1, a
00101$:
	mov	a, _atoi_sloc1_1_0+0
	mov	p, a
	mov	a, _atoi_sloc1_1_0+1
	call	__gptrget
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cneqsn	a, #0x20
	goto	00115$
	ceqsn	a, #0x09
	goto	00131$
00115$:
;	../atoi.c: 40: nptr++;
	inc	_atoi_sloc1_1_0+0
	addc	_atoi_sloc1_1_0+1
	goto	00101$
00131$:
	mov	a, _atoi_sloc1_1_0+0
	mov	_atoi_PARM_1+0, a
	mov	a, _atoi_sloc1_1_0+1
	mov	_atoi_PARM_1+1, a
;	../atoi.c: 42: neg = (*nptr == '-');
	mov	a, _atoi_sloc1_1_0+0
	mov	p, a
	mov	a, _atoi_sloc1_1_0+1
	call	__gptrget
	ceqsn	a, #0x2d
	goto	00155$
	push	af
	mov	a, #0x01
	mov	_atoi_sloc2_1_0+0, a
	goto	00156$
00155$:
	push	af
	clear	_atoi_sloc2_1_0+0
00156$:
	pop	af
;	../atoi.c: 44: if (*nptr == '-' || *nptr == '+')
	cneqsn	a, #0x2d
	goto	00104$
	ceqsn	a, #0x2b
	goto	00129$
00104$:
;	../atoi.c: 45: nptr++;
	mov	a, _atoi_sloc1_1_0+0
	add	a, #0x01
	mov	_atoi_PARM_1+0, a
	mov	a, _atoi_sloc1_1_0+1
	addc	a
	mov	_atoi_PARM_1+1, a
;	../atoi.c: 47: while (isdigit (*nptr))
00129$:
	mov	a, _atoi_PARM_1+0
	mov	_atoi_sloc3_1_0+0, a
	mov	a, _atoi_PARM_1+1
	mov	_atoi_sloc3_1_0+1, a
00107$:
	mov	a, _atoi_sloc3_1_0+0
	mov	p, a
	mov	a, _atoi_sloc3_1_0+1
	call	__gptrget
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	ceqsn	a, #0x30
	nop
	t0sn	f, c
	goto	00109$
	ceqsn	a, #0x3a
	t1sn	f, c
	goto	00109$
;	../atoi.c: 48: ret = ret * 10 + (*(nptr++) - '0');
	mov	a, #0x0a
	mov	__mulint_PARM_1+0, a
	clear	__mulint_PARM_1+1
	mov	a, _atoi_sloc0_1_0+0
	mov	__mulint_PARM_2+0, a
	mov	a, _atoi_sloc0_1_0+1
	mov	__mulint_PARM_2+1, a
	call	__mulint
	mov	_atoi_sloc4_1_0+0, a
	mov	a, p
	mov	_atoi_sloc4_1_0+1, a
	mov	a, _atoi_sloc3_1_0+0
	mov	p, a
	mov	a, _atoi_sloc3_1_0+1
	call	__gptrget
	inc	_atoi_sloc3_1_0+0
	addc	_atoi_sloc3_1_0+1
	sub	a, #0x30
	mov	_atoi_sloc5_1_0+0, a
	mov	a, #0x00
	subc	a
	mov	_atoi_sloc5_1_0+1, a
	mov	a, _atoi_sloc4_1_0+0
	add	a, _atoi_sloc5_1_0+0
	mov	_atoi_sloc0_1_0+0, a
	mov	a, _atoi_sloc4_1_0+1
	addc	a, _atoi_sloc5_1_0+1
	mov	_atoi_sloc0_1_0+1, a
	goto	00107$
00109$:
;	../atoi.c: 50: return (neg ? -ret : ret); // Since -INT_MIN is INT_MIN in sdcc, the result value always turns out ok.
	mov	a, _atoi_sloc2_1_0+0
	cneqsn	a, #0x00
	goto	00120$
	mov	a, #0x00
	sub	a, _atoi_sloc0_1_0+0
	mov	p, a
	mov	a, #0x00
	subc	a, _atoi_sloc0_1_0+1
	goto	00121$
00120$:
	mov	a, _atoi_sloc0_1_0+0
	mov	p, a
	mov	a, _atoi_sloc0_1_0+1
00121$:
	xch	a, p
;	../atoi.c: 51: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
