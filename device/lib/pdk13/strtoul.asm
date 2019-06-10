;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module strtoul
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp
	.globl _strtoul_PARM_3
	.globl _strtoul_PARM_2
	.globl _strtoul_PARM_1
	.globl _strtoul
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__isdigit_PARM_1:
	.ds 1
__isdigit_PARM_2:
	.ds 1
_strtoul_PARM_1:
	.ds 2
_strtoul_PARM_2:
	.ds 2
_strtoul_PARM_3:
	.ds 2
_strtoul_sloc0_1_0:
	.ds 4
_strtoul_sloc1_1_0:
	.ds 2
_strtoul_sloc2_1_0:
	.ds 1
_strtoul_sloc3_1_0:
	.ds 1
_strtoul_sloc4_1_0:
	.ds 2
_strtoul_sloc5_1_0:
	.ds 1
_strtoul_sloc6_1_0:
	.ds 2
_strtoul_sloc7_1_0:
	.ds 4
_strtoul_sloc8_1_0:
	.ds 2
_strtoul_sloc9_1_0:
	.ds 1
_strtoul_sloc10_1_0:
	.ds 4
_strtoul_sloc11_1_0:
	.ds 4
_strtoul_sloc12_1_0:
	.ds 2
_strtoul_sloc13_1_0:
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
;	../strtoul.c: 37: static signed char _isdigit(const char c, unsigned char base)
;	-----------------------------------------
;	 function _isdigit
;	-----------------------------------------
__isdigit:
;	../strtoul.c: 41: if (c >= '0' && c <= '9')
	mov	a, __isdigit_PARM_1+0
	sub	a, #0x30
	t0sn	f, c
	goto	00110$
	mov	a, #0x39
	sub	a, __isdigit_PARM_1+0
	t0sn	f, c
	goto	00110$
;	../strtoul.c: 42: v = c - '0';
	mov	a, __isdigit_PARM_1+0
	sub	a, #0x30
	goto	00111$
00110$:
;	../strtoul.c: 43: else if (c >= 'a' && c <='z')
	mov	a, __isdigit_PARM_1+0
	sub	a, #0x61
	t0sn	f, c
	goto	00106$
	mov	a, #0x7a
	sub	a, __isdigit_PARM_1+0
	t0sn	f, c
	goto	00106$
;	../strtoul.c: 44: v = c - 'a' + 10;
	mov	a, __isdigit_PARM_1+0
	add	a, #0xa9
	goto	00111$
00106$:
;	../strtoul.c: 45: else if (c >= 'A' && c <='Z')
	mov	a, __isdigit_PARM_1+0
	sub	a, #0x41
	t0sn	f, c
	goto	00102$
	mov	a, #0x5a
	sub	a, __isdigit_PARM_1+0
	t0sn	f, c
	goto	00102$
;	../strtoul.c: 46: v = c - 'A' + 10;
	mov	a, __isdigit_PARM_1+0
	add	a, #0xc9
	goto	00111$
00102$:
;	../strtoul.c: 48: return (-1);
	ret	#0xff
00111$:
;	../strtoul.c: 50: if (v >= base)
	ceqsn	a, __isdigit_PARM_2+0
	nop
	t0sn	f, c
	goto	00114$
;	../strtoul.c: 51: return (-1);
	ret	#0xff
00114$:
;	../strtoul.c: 53: return (v);
;	../strtoul.c: 54: }
	ret
;	../strtoul.c: 56: unsigned long int strtoul(const char *nptr, char **endptr, int base)
;	-----------------------------------------
;	 function strtoul
;	-----------------------------------------
_strtoul:
;	../strtoul.c: 58: const char *ptr = nptr;
	mov	a, _strtoul_PARM_1+0
	mov	_strtoul_sloc1_1_0+0, a
	mov	a, _strtoul_PARM_1+1
	mov	_strtoul_sloc1_1_0+1, a
;	../strtoul.c: 60: bool range_error = false;
	clear	_strtoul_sloc2_1_0+0
;	../strtoul.c: 61: bool neg = false;
	clear	_strtoul_sloc3_1_0+0
;	../strtoul.c: 63: while (isblank (*ptr))
00101$:
	mov	a, _strtoul_sloc1_1_0+0
	mov	p, a
	mov	a, _strtoul_sloc1_1_0+1
	call	__gptrget
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cneqsn	a, #0x20
	goto	00140$
	ceqsn	a, #0x09
	goto	00163$
00140$:
;	../strtoul.c: 64: ptr++;
	inc	_strtoul_sloc1_1_0+0
	addc	_strtoul_sloc1_1_0+1
	goto	00101$
00163$:
	mov	a, _strtoul_sloc1_1_0+0
	mov	_strtoul_sloc4_1_0+0, a
	mov	a, _strtoul_sloc1_1_0+1
	mov	_strtoul_sloc4_1_0+1, a
;	../strtoul.c: 67: switch(*ptr)
	mov	a, _strtoul_sloc1_1_0+0
	mov	p, a
	mov	a, _strtoul_sloc1_1_0+1
	call	__gptrget
	cneqsn	a, #0x2b
	goto	00105$
	ceqsn	a, #0x2d
	goto	00106$
;	../strtoul.c: 70: neg = true;
	mov	a, #0x01
	mov	_strtoul_sloc3_1_0+0, a
;	../strtoul.c: 71: case '+':
00105$:
;	../strtoul.c: 72: ptr++;
	inc	_strtoul_sloc4_1_0+0
	addc	_strtoul_sloc4_1_0+1
;	../strtoul.c: 73: }
00106$:
;	../strtoul.c: 76: if (!base)
	mov	a, _strtoul_PARM_3+0
	or	a, _strtoul_PARM_3+1
	ceqsn	a, #0x00
	goto	00119$
;	../strtoul.c: 78: if (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2))
	mov	a, #<(___str_0 + 0)
	mov	_strncmp_PARM_2+0, a
	mov	a, #>(___str_0 + 0x8000 + 0)
	mov	_strncmp_PARM_2+1, a
	mov	a, _strtoul_sloc4_1_0+0
	mov	_strncmp_PARM_1+0, a
	mov	a, _strtoul_sloc4_1_0+1
	mov	_strncmp_PARM_1+1, a
	mov	a, #0x02
	mov	_strncmp_PARM_3+0, a
	clear	_strncmp_PARM_3+1
	call	_strncmp
	or	a, p
	cneqsn	a, #0x00
	goto	00110$
	mov	a, #<(___str_1 + 0)
	mov	_strncmp_PARM_2+0, a
	mov	a, #>(___str_1 + 0x8000 + 0)
	mov	_strncmp_PARM_2+1, a
	mov	a, _strtoul_sloc4_1_0+0
	mov	_strncmp_PARM_1+0, a
	mov	a, _strtoul_sloc4_1_0+1
	mov	_strncmp_PARM_1+1, a
	mov	a, #0x02
	mov	_strncmp_PARM_3+0, a
	clear	_strncmp_PARM_3+1
	call	_strncmp
	or	a, p
	ceqsn	a, #0x00
	goto	00111$
00110$:
;	../strtoul.c: 80: base = 16;
	mov	a, #0x10
	mov	_strtoul_PARM_3+0, a
	clear	_strtoul_PARM_3+1
;	../strtoul.c: 81: ptr += 2;
	mov	a, #0x02
	add	_strtoul_sloc4_1_0+0, a
	addc	_strtoul_sloc4_1_0+1
	goto	00120$
00111$:
;	../strtoul.c: 83: else if (*ptr == '0')
	mov	a, _strtoul_sloc4_1_0+0
	mov	p, a
	mov	a, _strtoul_sloc4_1_0+1
	call	__gptrget
	ceqsn	a, #0x30
	goto	00108$
;	../strtoul.c: 85: base = 8;
	mov	a, #0x08
	mov	_strtoul_PARM_3+0, a
	clear	_strtoul_PARM_3+1
;	../strtoul.c: 86: ptr++;
	inc	_strtoul_sloc4_1_0+0
	addc	_strtoul_sloc4_1_0+1
	goto	00120$
00108$:
;	../strtoul.c: 89: base = 10;
	mov	a, #0x0a
	mov	_strtoul_PARM_3+0, a
	clear	_strtoul_PARM_3+1
	goto	00120$
00119$:
;	../strtoul.c: 92: else if (base == 16 && (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2)))
	mov	a, _strtoul_PARM_3+0
	ceqsn	a, #0x10
	goto	00120$
	mov	a, _strtoul_PARM_3+1
	ceqsn	a, #0x00
	goto	00120$
	mov	a, #<(___str_0 + 0)
	mov	_strncmp_PARM_2+0, a
	mov	a, #>(___str_0 + 0x8000 + 0)
	mov	_strncmp_PARM_2+1, a
	mov	a, _strtoul_sloc4_1_0+0
	mov	_strncmp_PARM_1+0, a
	mov	a, _strtoul_sloc4_1_0+1
	mov	_strncmp_PARM_1+1, a
	mov	a, #0x02
	mov	_strncmp_PARM_3+0, a
	clear	_strncmp_PARM_3+1
	call	_strncmp
	or	a, p
	cneqsn	a, #0x00
	goto	00114$
	mov	a, #<(___str_1 + 0)
	mov	_strncmp_PARM_2+0, a
	mov	a, #>(___str_1 + 0x8000 + 0)
	mov	_strncmp_PARM_2+1, a
	mov	a, _strtoul_sloc4_1_0+0
	mov	_strncmp_PARM_1+0, a
	mov	a, _strtoul_sloc4_1_0+1
	mov	_strncmp_PARM_1+1, a
	mov	a, #0x02
	mov	_strncmp_PARM_3+0, a
	clear	_strncmp_PARM_3+1
	call	_strncmp
	or	a, p
	ceqsn	a, #0x00
	goto	00120$
00114$:
;	../strtoul.c: 93: ptr += 2;
	mov	a, #0x02
	add	_strtoul_sloc4_1_0+0, a
	addc	_strtoul_sloc4_1_0+1
00120$:
;	../strtoul.c: 97: if (_isdigit (*ptr, base) < 0)
	mov	a, _strtoul_sloc4_1_0+0
	mov	p, a
	mov	a, _strtoul_sloc4_1_0+1
	call	__gptrget
	mov	__isdigit_PARM_1+0, a
	mov	a, _strtoul_PARM_3+0
	mov	_strtoul_sloc5_1_0+0, a
	mov	__isdigit_PARM_2+0, a
	call	__isdigit
	sub	a, #0x80
	t0sn	f, c
	goto	00124$
;	../strtoul.c: 99: if (endptr)
	mov	a, _strtoul_PARM_2+0
	or	a, _strtoul_PARM_2+1
	cneqsn	a, #0x00
	goto	00122$
;	../strtoul.c: 100: *endptr = (char*)nptr;
	mov	a, _strtoul_PARM_2+0
	mov	_strtoul_sloc6_1_0+0, a
	mov	a, _strtoul_PARM_2+1
	mov	_strtoul_sloc6_1_0+1, a
	mov	a, _strtoul_sloc6_1_0+0
	mov	p, a
	mov	a, _strtoul_PARM_1+0
	idxm	p, a
	inc	p
	mov	a, _strtoul_PARM_1+1
	idxm	p, a
00122$:
;	../strtoul.c: 101: return (0);
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
00124$:
;	../strtoul.c: 104: for (ret = 0;; ptr++)
	clear	_strtoul_sloc7_1_0+0
	clear	_strtoul_sloc7_1_0+1
	clear	_strtoul_sloc7_1_0+2
	clear	_strtoul_sloc7_1_0+3
	mov	a, _strtoul_sloc4_1_0+0
	mov	_strtoul_sloc8_1_0+0, a
	mov	a, _strtoul_sloc4_1_0+1
	mov	_strtoul_sloc8_1_0+1, a
00135$:
;	../strtoul.c: 107: signed char digit = _isdigit (*ptr, base);
	mov	a, _strtoul_sloc8_1_0+0
	mov	p, a
	mov	a, _strtoul_sloc8_1_0+1
	call	__gptrget
	mov	__isdigit_PARM_1+0, a
	mov	a, _strtoul_sloc5_1_0+0
	mov	__isdigit_PARM_2+0, a
	call	__isdigit
;	../strtoul.c: 109: if (digit < 0)
	mov	_strtoul_sloc9_1_0+0, a
	ceqsn	a, #0x80
	t1sn	f, c
	goto	00129$
;	../strtoul.c: 112: oldret = ret;
	mov	a, _strtoul_sloc7_1_0+0
	mov	_strtoul_sloc10_1_0+0, a
	mov	a, _strtoul_sloc7_1_0+1
	mov	_strtoul_sloc10_1_0+1, a
	mov	a, _strtoul_sloc7_1_0+2
	mov	_strtoul_sloc10_1_0+2, a
	mov	a, _strtoul_sloc7_1_0+3
	mov	_strtoul_sloc10_1_0+3, a
;	../strtoul.c: 113: ret *= base;
	mov	a, _strtoul_PARM_3+0
	mov	__mullong_PARM_2+0, a
	mov	a, _strtoul_PARM_3+1
	mov	__mullong_PARM_2+1, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	__mullong_PARM_2+2, a
	mov	__mullong_PARM_2+3, a
	mov	a, _strtoul_sloc7_1_0+0
	mov	__mullong_PARM_1+0, a
	mov	a, _strtoul_sloc7_1_0+1
	mov	__mullong_PARM_1+1, a
	mov	a, _strtoul_sloc7_1_0+2
	mov	__mullong_PARM_1+2, a
	mov	a, _strtoul_sloc7_1_0+3
	mov	__mullong_PARM_1+3, a
	mov	a, #_strtoul_sloc0_1_0
	push	af
	call	__mullong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _strtoul_sloc0_1_0+0
	mov	_strtoul_sloc11_1_0+0, a
	mov	a, _strtoul_sloc0_1_0+1
	mov	_strtoul_sloc11_1_0+1, a
	mov	a, _strtoul_sloc0_1_0+2
	mov	_strtoul_sloc11_1_0+2, a
	mov	a, _strtoul_sloc0_1_0+3
	mov	_strtoul_sloc11_1_0+3, a
;	../strtoul.c: 114: if (ret < oldret)
	mov	a, _strtoul_sloc11_1_0+0
	sub	a, _strtoul_sloc10_1_0+0
	mov	a, _strtoul_sloc11_1_0+1
	subc	a, _strtoul_sloc10_1_0+1
	mov	a, _strtoul_sloc11_1_0+2
	subc	a, _strtoul_sloc10_1_0+2
	mov	a, _strtoul_sloc11_1_0+3
	subc	a, _strtoul_sloc10_1_0+3
	t1sn	f, c
	goto	00128$
;	../strtoul.c: 115: range_error = true;
	mov	a, #0x01
	mov	_strtoul_sloc2_1_0+0, a
00128$:
;	../strtoul.c: 117: ret += (unsigned char)digit;
	mov	a, _strtoul_sloc9_1_0+0
	add	a, _strtoul_sloc11_1_0+0
	mov	_strtoul_sloc7_1_0+0, a
	mov	a, #0x00
	addc	a, _strtoul_sloc11_1_0+1
	mov	_strtoul_sloc7_1_0+1, a
	mov	a, #0x00
	addc	a, _strtoul_sloc11_1_0+2
	mov	_strtoul_sloc7_1_0+2, a
	mov	a, #0x00
	addc	a, _strtoul_sloc11_1_0+3
	mov	_strtoul_sloc7_1_0+3, a
;	../strtoul.c: 104: for (ret = 0;; ptr++)
	inc	_strtoul_sloc8_1_0+0
	addc	_strtoul_sloc8_1_0+1
	goto	00135$
00129$:
;	../strtoul.c: 120: if (endptr)
	mov	a, _strtoul_PARM_2+0
	or	a, _strtoul_PARM_2+1
	cneqsn	a, #0x00
	goto	00131$
;	../strtoul.c: 121: *endptr = (char*)ptr;
	mov	a, _strtoul_PARM_2+0
	mov	_strtoul_sloc12_1_0+0, a
	mov	a, _strtoul_PARM_2+1
	mov	_strtoul_sloc12_1_0+1, a
	mov	a, _strtoul_sloc12_1_0+0
	mov	p, a
	mov	a, _strtoul_sloc8_1_0+0
	idxm	p, a
	inc	p
	mov	a, _strtoul_sloc8_1_0+1
	idxm	p, a
00131$:
;	../strtoul.c: 123: if (range_error)
	mov	a, _strtoul_sloc2_1_0+0
	cneqsn	a, #0x00
	goto	00133$
;	../strtoul.c: 125: errno = ERANGE;
	mov	a, #0x22
	mov	_errno+0, a
	clear	_errno+1
;	../strtoul.c: 126: return (ULONG_MAX);
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
	mov	a, #0xff
	idxm	p, a
	ret
00133$:
;	../strtoul.c: 129: return (neg ? -ret : ret);
	mov	a, _strtoul_sloc3_1_0+0
	cneqsn	a, #0x00
	goto	00142$
	mov	a, #0x00
	sub	a, _strtoul_sloc7_1_0+0
	mov	_strtoul_sloc13_1_0+0, a
	mov	a, #0x00
	subc	a, _strtoul_sloc7_1_0+1
	mov	_strtoul_sloc13_1_0+1, a
	mov	a, #0x00
	subc	a, _strtoul_sloc7_1_0+2
	mov	_strtoul_sloc13_1_0+2, a
	mov	a, #0x00
	subc	a, _strtoul_sloc7_1_0+3
	mov	_strtoul_sloc13_1_0+3, a
	goto	00143$
00142$:
	mov	a, _strtoul_sloc7_1_0+0
	mov	_strtoul_sloc13_1_0+0, a
	mov	a, _strtoul_sloc7_1_0+1
	mov	_strtoul_sloc13_1_0+1, a
	mov	a, _strtoul_sloc7_1_0+2
	mov	_strtoul_sloc13_1_0+2, a
	mov	a, _strtoul_sloc7_1_0+3
	mov	_strtoul_sloc13_1_0+3, a
00143$:
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _strtoul_sloc13_1_0+0
	idxm	p, a
	inc	p
	mov	a, _strtoul_sloc13_1_0+1
	idxm	p, a
	inc	p
	mov	a, _strtoul_sloc13_1_0+2
	idxm	p, a
	inc	p
	mov	a, _strtoul_sloc13_1_0+3
	idxm	p, a
;	../strtoul.c: 130: }
	ret
	.area CODE
	.area CONST
	.area CONST
___str_0:
	ret #0x30	; 0
	ret #0x78	; x
	ret #0x00
	.area CODE
	.area CONST
___str_1:
	ret #0x30	; 0
	ret #0x58	; X
	ret #0x00
	.area CODE
	.area CABS (ABS)
