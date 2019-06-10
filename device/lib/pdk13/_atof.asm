;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _atof
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
	.globl _toupper
	.globl _isspace
	.globl _atof_PARM_1
	.globl _atof
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_atof_PARM_1:
	.ds 2
_atof_sloc0_1_0:
	.ds 4
_atof_sloc1_1_0:
	.ds 4
_atof_sloc2_1_0:
	.ds 4
_atof_sloc3_1_0:
	.ds 4
_atof_sloc4_1_0:
	.ds 4
_atof_sloc5_1_0:
	.ds 4
_atof_sloc6_1_0:
	.ds 4
_atof_sloc7_1_0:
	.ds 4
_atof_sloc8_1_0:
	.ds 4
_atof_sloc9_1_0:
	.ds 2
_atof_sloc10_1_0:
	.ds 1
_atof_sloc11_1_0:
	.ds 4
_atof_sloc12_1_0:
	.ds 2
_atof_sloc13_1_0:
	.ds 2
_atof_sloc14_1_0:
	.ds 4
_atof_sloc15_1_0:
	.ds 2
_atof_sloc16_1_0:
	.ds 1
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
;	../_atof.c: 33: float atof(const char * s)
;	-----------------------------------------
;	 function atof
;	-----------------------------------------
_atof:
;	../_atof.c: 40: while (isspace(*s)) s++;
	mov	a, _atof_PARM_1+0
	mov	_atof_sloc9_1_0+0, a
	mov	a, _atof_PARM_1+1
	mov	_atof_sloc9_1_0+1, a
00101$:
	mov	a, _atof_sloc9_1_0+0
	mov	p, a
	mov	a, _atof_sloc9_1_0+1
	call	__gptrget
	mov	_isspace_PARM_1+0, a
	clear	_isspace_PARM_1+1
	call	_isspace
	or	a, p
	cneqsn	a, #0x00
	goto	00155$
	inc	_atof_sloc9_1_0+0
	addc	_atof_sloc9_1_0+1
	goto	00101$
00155$:
	mov	a, _atof_sloc9_1_0+0
	mov	_atof_PARM_1+0, a
	mov	a, _atof_sloc9_1_0+1
	mov	_atof_PARM_1+1, a
;	../_atof.c: 43: if (*s == '-')
	mov	a, _atof_sloc9_1_0+0
	mov	p, a
	mov	a, _atof_sloc9_1_0+1
	call	__gptrget
	ceqsn	a, #0x2d
	goto	00107$
;	../_atof.c: 45: sign=1;
	mov	a, #0x01
	mov	_atof_sloc10_1_0+0, a
;	../_atof.c: 46: s++;
	mov	a, _atof_sloc9_1_0+0
	add	a, #0x01
	mov	_atof_PARM_1+0, a
	mov	a, _atof_sloc9_1_0+1
	addc	a
	mov	_atof_PARM_1+1, a
	goto	00108$
00107$:
;	../_atof.c: 50: sign=0;
	clear	_atof_sloc10_1_0+0
;	../_atof.c: 51: if (*s == '+') s++;
	ceqsn	a, #0x2b
	goto	00108$
	mov	a, _atof_sloc9_1_0+0
	add	a, #0x01
	mov	_atof_PARM_1+0, a
	mov	a, _atof_sloc9_1_0+1
	addc	a
	mov	_atof_PARM_1+1, a
00108$:
;	../_atof.c: 55: for (value=0.0; isdigit(*s); s++)
	clear	_atof_sloc11_1_0+0
	clear	_atof_sloc11_1_0+1
	clear	_atof_sloc11_1_0+2
	clear	_atof_sloc11_1_0+3
	mov	a, _atof_PARM_1+0
	mov	_atof_sloc12_1_0+0, a
	mov	a, _atof_PARM_1+1
	mov	_atof_sloc12_1_0+1, a
00126$:
	mov	a, _atof_sloc12_1_0+0
	mov	p, a
	mov	a, _atof_sloc12_1_0+1
	call	__gptrget
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	ceqsn	a, #0x30
	nop
	t0sn	f, c
	goto	00156$
	ceqsn	a, #0x3a
	t1sn	f, c
	goto	00156$
;	../_atof.c: 57: value=10.0*value+(*s-'0');
	clear	___fsmul_PARM_1+0
	clear	___fsmul_PARM_1+1
	mov	a, #0x20
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x41
	mov	___fsmul_PARM_1+3, a
	mov	a, _atof_sloc11_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _atof_sloc11_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _atof_sloc11_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _atof_sloc11_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_atof_sloc0_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _atof_sloc12_1_0+0
	mov	p, a
	mov	a, _atof_sloc12_1_0+1
	call	__gptrget
	sub	a, #0x30
	mov	___sint2fs_PARM_1+0, a
	mov	a, #0x00
	subc	a
	mov	___sint2fs_PARM_1+1, a
	mov	a, #_atof_sloc1_1_0
	push	af
	call	___sint2fs
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _atof_sloc0_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _atof_sloc0_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _atof_sloc0_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _atof_sloc0_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, _atof_sloc1_1_0+0
	mov	___fsadd_PARM_2+0, a
	mov	a, _atof_sloc1_1_0+1
	mov	___fsadd_PARM_2+1, a
	mov	a, _atof_sloc1_1_0+2
	mov	___fsadd_PARM_2+2, a
	mov	a, _atof_sloc1_1_0+3
	mov	___fsadd_PARM_2+3, a
	mov	a, #_atof_sloc2_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _atof_sloc2_1_0+0
	mov	_atof_sloc11_1_0+0, a
	mov	a, _atof_sloc2_1_0+1
	mov	_atof_sloc11_1_0+1, a
	mov	a, _atof_sloc2_1_0+2
	mov	_atof_sloc11_1_0+2, a
	mov	a, _atof_sloc2_1_0+3
	mov	_atof_sloc11_1_0+3, a
;	../_atof.c: 55: for (value=0.0; isdigit(*s); s++)
	inc	_atof_sloc12_1_0+0
	addc	_atof_sloc12_1_0+1
	goto	00126$
00156$:
	mov	a, _atof_sloc12_1_0+0
	mov	_atof_PARM_1+0, a
	mov	a, _atof_sloc12_1_0+1
	mov	_atof_PARM_1+1, a
;	../_atof.c: 61: if (*s == '.')
	mov	a, _atof_sloc12_1_0+0
	mov	p, a
	mov	a, _atof_sloc12_1_0+1
	call	__gptrget
	ceqsn	a, #0x2e
	goto	00112$
;	../_atof.c: 63: s++;
	mov	a, _atof_sloc12_1_0+0
	add	a, #0x01
	mov	_atof_sloc13_1_0+0, a
	mov	a, _atof_sloc12_1_0+1
	addc	a
	mov	_atof_sloc13_1_0+1, a
;	../_atof.c: 64: for (fraction=0.1; isdigit(*s); s++)
	mov	a, #0xcd
	mov	_atof_sloc14_1_0+0, a
	mov	a, #0xcc
	mov	_atof_sloc14_1_0+1, a
	mov	a, #0xcc
	mov	_atof_sloc14_1_0+2, a
	mov	a, #0x3d
	mov	_atof_sloc14_1_0+3, a
00129$:
	mov	a, _atof_sloc13_1_0+0
	mov	p, a
	mov	a, _atof_sloc13_1_0+1
	call	__gptrget
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	ceqsn	a, #0x30
	nop
	t0sn	f, c
	goto	00157$
	ceqsn	a, #0x3a
	t1sn	f, c
	goto	00157$
;	../_atof.c: 66: value+=(*s-'0')*fraction;
	mov	a, _atof_sloc13_1_0+0
	mov	p, a
	mov	a, _atof_sloc13_1_0+1
	call	__gptrget
	sub	a, #0x30
	mov	___sint2fs_PARM_1+0, a
	mov	a, #0x00
	subc	a
	mov	___sint2fs_PARM_1+1, a
	mov	a, #_atof_sloc3_1_0
	push	af
	call	___sint2fs
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _atof_sloc3_1_0+0
	mov	___fsmul_PARM_1+0, a
	mov	a, _atof_sloc3_1_0+1
	mov	___fsmul_PARM_1+1, a
	mov	a, _atof_sloc3_1_0+2
	mov	___fsmul_PARM_1+2, a
	mov	a, _atof_sloc3_1_0+3
	mov	___fsmul_PARM_1+3, a
	mov	a, _atof_sloc14_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _atof_sloc14_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _atof_sloc14_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _atof_sloc14_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_atof_sloc4_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _atof_sloc11_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _atof_sloc11_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _atof_sloc11_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _atof_sloc11_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, _atof_sloc4_1_0+0
	mov	___fsadd_PARM_2+0, a
	mov	a, _atof_sloc4_1_0+1
	mov	___fsadd_PARM_2+1, a
	mov	a, _atof_sloc4_1_0+2
	mov	___fsadd_PARM_2+2, a
	mov	a, _atof_sloc4_1_0+3
	mov	___fsadd_PARM_2+3, a
	mov	a, #_atof_sloc5_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _atof_sloc5_1_0+0
	mov	_atof_sloc11_1_0+0, a
	mov	a, _atof_sloc5_1_0+1
	mov	_atof_sloc11_1_0+1, a
	mov	a, _atof_sloc5_1_0+2
	mov	_atof_sloc11_1_0+2, a
	mov	a, _atof_sloc5_1_0+3
	mov	_atof_sloc11_1_0+3, a
;	../_atof.c: 67: fraction*=0.1;
	mov	a, #0xcd
	mov	___fsmul_PARM_1+0, a
	mov	a, #0xcc
	mov	___fsmul_PARM_1+1, a
	mov	a, #0xcc
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x3d
	mov	___fsmul_PARM_1+3, a
	mov	a, _atof_sloc14_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _atof_sloc14_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _atof_sloc14_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _atof_sloc14_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_atof_sloc6_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _atof_sloc6_1_0+0
	mov	_atof_sloc14_1_0+0, a
	mov	a, _atof_sloc6_1_0+1
	mov	_atof_sloc14_1_0+1, a
	mov	a, _atof_sloc6_1_0+2
	mov	_atof_sloc14_1_0+2, a
	mov	a, _atof_sloc6_1_0+3
	mov	_atof_sloc14_1_0+3, a
;	../_atof.c: 64: for (fraction=0.1; isdigit(*s); s++)
	inc	_atof_sloc13_1_0+0
	addc	_atof_sloc13_1_0+1
	goto	00129$
00157$:
	mov	a, _atof_sloc13_1_0+0
	mov	_atof_PARM_1+0, a
	mov	a, _atof_sloc13_1_0+1
	mov	_atof_PARM_1+1, a
00112$:
;	../_atof.c: 72: if (toupper(*s)=='E')
	mov	a, _atof_PARM_1+0
	mov	_atof_sloc15_1_0+0, a
	mov	a, _atof_PARM_1+1
	mov	_atof_sloc15_1_0+1, a
	mov	a, _atof_sloc15_1_0+0
	mov	p, a
	mov	a, _atof_sloc15_1_0+1
	call	__gptrget
	mov	_toupper_PARM_1+0, a
	clear	_toupper_PARM_1+1
	call	_toupper
	ceqsn	a, #0x45
	goto	00120$
	mov	a, p
	ceqsn	a, #0x00
	goto	00120$
;	../_atof.c: 74: s++;
	mov	a, _atof_sloc15_1_0+0
	add	a, #0x01
	mov	_atof_PARM_1+0, a
	mov	a, _atof_sloc15_1_0+1
	addc	a
	mov	_atof_PARM_1+1, a
;	../_atof.c: 75: iexp=(signed char)atoi(s);
	mov	a, _atof_PARM_1+0
	mov	_atoi_PARM_1+0, a
	mov	a, _atof_PARM_1+1
	mov	_atoi_PARM_1+1, a
	call	_atoi
	mov	_atof_sloc16_1_0+0, a
;	../_atof.c: 77: while(iexp!=0)
00116$:
	mov	a, _atof_sloc16_1_0+0
	cneqsn	a, #0x00
	goto	00120$
;	../_atof.c: 79: if(iexp<0)
	mov	a, _atof_sloc16_1_0+0
	sub	a, #0x80
	t0sn	f, c
	goto	00114$
;	../_atof.c: 81: value*=0.1;
	mov	a, #0xcd
	mov	___fsmul_PARM_1+0, a
	mov	a, #0xcc
	mov	___fsmul_PARM_1+1, a
	mov	a, #0xcc
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x3d
	mov	___fsmul_PARM_1+3, a
	mov	a, _atof_sloc11_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _atof_sloc11_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _atof_sloc11_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _atof_sloc11_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_atof_sloc7_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _atof_sloc7_1_0+0
	mov	_atof_sloc11_1_0+0, a
	mov	a, _atof_sloc7_1_0+1
	mov	_atof_sloc11_1_0+1, a
	mov	a, _atof_sloc7_1_0+2
	mov	_atof_sloc11_1_0+2, a
	mov	a, _atof_sloc7_1_0+3
	mov	_atof_sloc11_1_0+3, a
;	../_atof.c: 82: iexp++;
	inc	_atof_sloc16_1_0+0
	goto	00116$
00114$:
;	../_atof.c: 86: value*=10.0;
	clear	___fsmul_PARM_1+0
	clear	___fsmul_PARM_1+1
	mov	a, #0x20
	mov	___fsmul_PARM_1+2, a
	mov	a, #0x41
	mov	___fsmul_PARM_1+3, a
	mov	a, _atof_sloc11_1_0+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _atof_sloc11_1_0+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _atof_sloc11_1_0+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _atof_sloc11_1_0+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_atof_sloc8_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _atof_sloc8_1_0+0
	mov	_atof_sloc11_1_0+0, a
	mov	a, _atof_sloc8_1_0+1
	mov	_atof_sloc11_1_0+1, a
	mov	a, _atof_sloc8_1_0+2
	mov	_atof_sloc11_1_0+2, a
	mov	a, _atof_sloc8_1_0+3
	mov	_atof_sloc11_1_0+3, a
;	../_atof.c: 87: iexp--;
	dec	_atof_sloc16_1_0+0
	goto	00116$
00120$:
;	../_atof.c: 93: if(sign) value*=-1.0;
	mov	a, _atof_sloc10_1_0+0
	cneqsn	a, #0x00
	goto	00122$
	mov	a, _atof_sloc11_1_0+3
	xor	a, #0x80
	mov	_atof_sloc11_1_0+3, a
00122$:
;	../_atof.c: 94: return (value);
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _atof_sloc11_1_0+0
	idxm	p, a
	inc	p
	mov	a, _atof_sloc11_1_0+1
	idxm	p, a
	inc	p
	mov	a, _atof_sloc11_1_0+2
	idxm	p, a
	inc	p
	mov	a, _atof_sloc11_1_0+3
	idxm	p, a
;	../_atof.c: 95: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
