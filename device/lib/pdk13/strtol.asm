;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module strtol
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strtoul
	.globl _strtol_PARM_3
	.globl _strtol_PARM_2
	.globl _strtol_PARM_1
	.globl _strtol
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_strtol_PARM_1:
	.ds 2
_strtol_PARM_2:
	.ds 2
_strtol_PARM_3:
	.ds 2
_strtol_rptr_65536_50:
	.ds 2
_strtol_sloc0_1_0:
	.ds 4
_strtol_sloc1_1_0:
	.ds 2
_strtol_sloc2_1_0:
	.ds 2
_strtol_sloc3_1_0:
	.ds 1
_strtol_sloc4_1_0:
	.ds 2
_strtol_sloc5_1_0:
	.ds 4
_strtol_sloc6_1_0:
	.ds 2
_strtol_sloc7_1_0:
	.ds 2
_strtol_sloc8_1_0:
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
;	../strtol.c: 38: long int strtol(const char *nptr, char **endptr, int base)
;	-----------------------------------------
;	 function strtol
;	-----------------------------------------
_strtol:
;	../strtol.c: 40: const char *ptr = nptr;
	mov	a, _strtol_PARM_1+0
	mov	_strtol_sloc1_1_0+0, a
	mov	a, _strtol_PARM_1+1
	mov	_strtol_sloc1_1_0+1, a
;	../strtol.c: 45: while (isblank (*ptr))
00101$:
	mov	a, _strtol_sloc1_1_0+0
	mov	p, a
	mov	a, _strtol_sloc1_1_0+1
	call	__gptrget
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cneqsn	a, #0x20
	goto	00132$
	ceqsn	a, #0x09
	goto	00158$
00132$:
;	../strtol.c: 46: ptr++;
	inc	_strtol_sloc1_1_0+0
	addc	_strtol_sloc1_1_0+1
	goto	00101$
00158$:
	mov	a, _strtol_sloc1_1_0+0
	mov	_strtol_sloc2_1_0+0, a
	mov	a, _strtol_sloc1_1_0+1
	mov	_strtol_sloc2_1_0+1, a
;	../strtol.c: 50: if (*ptr == '-')
	mov	a, _strtol_sloc1_1_0+0
	mov	p, a
	mov	a, _strtol_sloc1_1_0+1
	call	__gptrget
	ceqsn	a, #0x2d
	goto	00105$
;	../strtol.c: 52: neg = true;
	mov	a, #0x01
	mov	_strtol_sloc3_1_0+0, a
;	../strtol.c: 53: ptr++;
	mov	a, _strtol_sloc1_1_0+0
	add	a, #0x01
	mov	_strtol_sloc2_1_0+0, a
	mov	a, _strtol_sloc1_1_0+1
	addc	a
	mov	_strtol_sloc2_1_0+1, a
	goto	00106$
00105$:
;	../strtol.c: 56: neg = false;
	clear	_strtol_sloc3_1_0+0
00106$:
;	../strtol.c: 59: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
	mov	a, _strtol_sloc3_1_0+0
	cneqsn	a, #0x00
	goto	00110$
	mov	a, _strtol_sloc2_1_0+0
	mov	p, a
	mov	a, _strtol_sloc2_1_0+1
	call	__gptrget
	mov	p, a
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cneqsn	a, #0x20
	goto	00109$
	cneqsn	a, #0x09
	goto	00109$
;	../strtol.c: 59: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
	mov	a, p
	cneqsn	a, #0x2d
	goto	00109$
	mov	a, p
	ceqsn	a, #0x2b
	goto	00110$
00109$:
;	../strtol.c: 61: if (endptr)
	mov	a, _strtol_PARM_2+0
	or	a, _strtol_PARM_2+1
	cneqsn	a, #0x00
	goto	00108$
;	../strtol.c: 62: *endptr = nptr;
	mov	a, _strtol_PARM_2+0
	mov	_strtol_sloc4_1_0+0, a
	mov	a, _strtol_PARM_2+1
	mov	_strtol_sloc4_1_0+1, a
	mov	a, _strtol_sloc4_1_0+0
	mov	p, a
	mov	a, _strtol_PARM_1+0
	idxm	p, a
	inc	p
	mov	a, _strtol_PARM_1+1
	idxm	p, a
00108$:
;	../strtol.c: 63: return (0);
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
	ret
00110$:
;	../strtol.c: 66: u = strtoul(ptr, &rptr, base);
	mov	a, #(_strtol_rptr_65536_50 + 0)
	mov	_strtoul_PARM_2+0, a
	clear	_strtoul_PARM_2+1
	mov	a, _strtol_sloc2_1_0+0
	mov	_strtoul_PARM_1+0, a
	mov	a, _strtol_sloc2_1_0+1
	mov	_strtoul_PARM_1+1, a
	mov	a, _strtol_PARM_3+0
	mov	_strtoul_PARM_3+0, a
	mov	a, _strtol_PARM_3+1
	mov	_strtoul_PARM_3+1, a
	mov	a, #_strtol_sloc0_1_0
	push	af
	call	_strtoul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _strtol_sloc0_1_0+0
	mov	_strtol_sloc5_1_0+0, a
	mov	a, _strtol_sloc0_1_0+1
	mov	_strtol_sloc5_1_0+1, a
	mov	a, _strtol_sloc0_1_0+2
	mov	_strtol_sloc5_1_0+2, a
	mov	a, _strtol_sloc0_1_0+3
	mov	_strtol_sloc5_1_0+3, a
;	../strtol.c: 69: if (rptr == ptr)
	mov	a, _strtol_rptr_65536_50+0
	ceqsn	a, _strtol_sloc2_1_0+0
	goto	00117$
	mov	a, _strtol_rptr_65536_50+1
	ceqsn	a, _strtol_sloc2_1_0+1
	goto	00117$
;	../strtol.c: 71: if (endptr)
	mov	a, _strtol_PARM_2+0
	or	a, _strtol_PARM_2+1
	cneqsn	a, #0x00
	goto	00115$
;	../strtol.c: 72: *endptr = nptr;
	mov	a, _strtol_PARM_2+0
	mov	_strtol_sloc6_1_0+0, a
	mov	a, _strtol_PARM_2+1
	mov	_strtol_sloc6_1_0+1, a
	mov	a, _strtol_sloc6_1_0+0
	mov	p, a
	mov	a, _strtol_PARM_1+0
	idxm	p, a
	inc	p
	mov	a, _strtol_PARM_1+1
	idxm	p, a
00115$:
;	../strtol.c: 73: return (0);
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
	ret
00117$:
;	../strtol.c: 76: if (endptr)
	mov	a, _strtol_PARM_2+0
	or	a, _strtol_PARM_2+1
	cneqsn	a, #0x00
	goto	00119$
;	../strtol.c: 77: *endptr = rptr;
	mov	a, _strtol_PARM_2+0
	mov	_strtol_sloc7_1_0+0, a
	mov	a, _strtol_PARM_2+1
	mov	_strtol_sloc7_1_0+1, a
	mov	a, _strtol_sloc7_1_0+0
	mov	p, a
	mov	a, _strtol_rptr_65536_50+0
	idxm	p, a
	inc	p
	mov	a, _strtol_rptr_65536_50+1
	idxm	p, a
00119$:
;	../strtol.c: 80: if (!neg && u > LONG_MAX)
	mov	a, _strtol_sloc3_1_0+0
	ceqsn	a, #0x00
	goto	00124$
	mov	a, #0xff
	sub	a, _strtol_sloc5_1_0+0
	mov	a, #0xff
	subc	a, _strtol_sloc5_1_0+1
	mov	a, #0xff
	subc	a, _strtol_sloc5_1_0+2
	mov	a, #0x7f
	subc	a, _strtol_sloc5_1_0+3
	t1sn	f, c
	goto	00124$
;	../strtol.c: 82: errno = ERANGE;
	mov	a, #0x22
	mov	_errno+0, a
	clear	_errno+1
;	../strtol.c: 83: return (LONG_MAX);
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, #0xff
	idxm	p, a
	inc	p
	mov	a, #0xff
	idxm	p, a
	inc	p
	mov	a, #0xff
	idxm	p, a
	inc	p
	mov	a, #0x7f
	idxm	p, a
	ret
00124$:
;	../strtol.c: 85: else if (neg && u > -LONG_MIN)
	mov	a, _strtol_sloc3_1_0+0
	cneqsn	a, #0x00
	goto	00125$
	mov	a, #0x00
	sub	a, _strtol_sloc5_1_0+0
	mov	a, #0x00
	subc	a, _strtol_sloc5_1_0+1
	mov	a, #0x00
	subc	a, _strtol_sloc5_1_0+2
	mov	a, #0x80
	subc	a, _strtol_sloc5_1_0+3
	t1sn	f, c
	goto	00125$
;	../strtol.c: 87: errno = ERANGE;
	mov	a, #0x22
	mov	_errno+0, a
	clear	_errno+1
;	../strtol.c: 88: return (LONG_MIN);
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x80
	idxm	p, a
	ret
00125$:
;	../strtol.c: 91: return (neg ? -u : u);
	mov	a, _strtol_sloc3_1_0+0
	cneqsn	a, #0x00
	goto	00137$
	mov	a, #0x00
	sub	a, _strtol_sloc5_1_0+0
	mov	_strtol_sloc8_1_0+0, a
	mov	a, #0x00
	subc	a, _strtol_sloc5_1_0+1
	mov	_strtol_sloc8_1_0+1, a
	mov	a, #0x00
	subc	a, _strtol_sloc5_1_0+2
	mov	_strtol_sloc8_1_0+2, a
	mov	a, #0x00
	subc	a, _strtol_sloc5_1_0+3
	mov	_strtol_sloc8_1_0+3, a
	goto	00138$
00137$:
	mov	a, _strtol_sloc5_1_0+0
	mov	_strtol_sloc8_1_0+0, a
	mov	a, _strtol_sloc5_1_0+1
	mov	_strtol_sloc8_1_0+1, a
	mov	a, _strtol_sloc5_1_0+2
	mov	_strtol_sloc8_1_0+2, a
	mov	a, _strtol_sloc5_1_0+3
	mov	_strtol_sloc8_1_0+3, a
00138$:
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _strtol_sloc8_1_0+0
	idxm	p, a
	inc	p
	mov	a, _strtol_sloc8_1_0+1
	idxm	p, a
	inc	p
	mov	a, _strtol_sloc8_1_0+2
	idxm	p, a
	inc	p
	mov	a, _strtol_sloc8_1_0+3
	idxm	p, a
;	../strtol.c: 92: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
