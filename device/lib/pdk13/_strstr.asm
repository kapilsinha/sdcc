;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _strstr
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strstr_PARM_2
	.globl _strstr_PARM_1
	.globl _strstr
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_strstr_PARM_1:
	.ds 2
_strstr_PARM_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_strstr_sloc0_1_0:
	.ds 2
_strstr_sloc1_1_0:
	.ds 2
_strstr_sloc2_1_0:
	.ds 2
_strstr_sloc3_1_0:
	.ds 2
_strstr_sloc4_1_0:
	.ds 2
_strstr_sloc5_1_0:
	.ds 1
_strstr_sloc6_1_0:
	.ds 1
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
;	../_strstr.c: 31: char *strstr ( const char *str1, const char *str2 )
;	-----------------------------------------
;	 function strstr
;	-----------------------------------------
_strstr:
;	../_strstr.c: 33: const char *cp = str1;
	mov	a, _strstr_PARM_1+0
	mov	_strstr_sloc0_1_0+0, a
	mov	a, _strstr_PARM_1+1
	mov	_strstr_sloc0_1_0+1, a
;	../_strstr.c: 37: if (!*str2)
	mov	a, _strstr_PARM_2+0
	mov	_strstr_sloc1_1_0+0, a
	mov	a, _strstr_PARM_2+1
	mov	_strstr_sloc1_1_0+1, a
	mov	a, _strstr_sloc1_1_0+0
	mov	p, a
	mov	a, _strstr_sloc1_1_0+1
	call	__gptrget
	ceqsn	a, #0x00
	goto	00122$
;	../_strstr.c: 38: return ((char*)str1);
	mov	a, _strstr_sloc0_1_0+1
	mov	p, a
	mov	a, _strstr_sloc0_1_0+0
	ret
;	../_strstr.c: 40: while (*cp)
00122$:
	mov	a, _strstr_sloc0_1_0+0
	mov	_strstr_sloc2_1_0+0, a
	mov	a, _strstr_sloc0_1_0+1
	mov	_strstr_sloc2_1_0+1, a
00110$:
	mov	a, _strstr_sloc2_1_0+0
	mov	p, a
	mov	a, _strstr_sloc2_1_0+1
	call	__gptrget
	cneqsn	a, #0x00
	goto	00112$
;	../_strstr.c: 43: s2 = str2;
	mov	a, _strstr_sloc1_1_0+0
	mov	_strstr_sloc3_1_0+0, a
	mov	a, _strstr_sloc1_1_0+1
	mov	_strstr_sloc3_1_0+1, a
;	../_strstr.c: 45: while (*s1 && *s2 && !(*s1-*s2))
	mov	a, _strstr_sloc2_1_0+0
	mov	_strstr_sloc4_1_0+0, a
	mov	a, _strstr_sloc2_1_0+1
	mov	_strstr_sloc4_1_0+1, a
00105$:
	mov	a, _strstr_sloc4_1_0+0
	mov	p, a
	mov	a, _strstr_sloc4_1_0+1
	call	__gptrget
	mov	_strstr_sloc5_1_0+0, a
	cneqsn	a, #0x00
	goto	00107$
	mov	a, _strstr_sloc3_1_0+0
	mov	p, a
	mov	a, _strstr_sloc3_1_0+1
	call	__gptrget
	mov	_strstr_sloc6_1_0+0, a
	cneqsn	a, #0x00
	goto	00107$
	clear	p
	mov	a, _strstr_sloc5_1_0+0
	sub	a, _strstr_sloc6_1_0+0
	push	af
	subc	p
	pop	af
	or	a, p
	ceqsn	a, #0x00
	goto	00107$
;	../_strstr.c: 46: s1++, s2++;
	inc	_strstr_sloc4_1_0+0
	addc	_strstr_sloc4_1_0+1
	inc	_strstr_sloc3_1_0+0
	addc	_strstr_sloc3_1_0+1
	goto	00105$
00107$:
;	../_strstr.c: 48: if (!*s2)
	mov	a, _strstr_sloc3_1_0+0
	mov	p, a
	mov	a, _strstr_sloc3_1_0+1
	call	__gptrget
	ceqsn	a, #0x00
	goto	00109$
;	../_strstr.c: 49: return ((char*)cp);
	mov	a, _strstr_sloc0_1_0+1
	mov	p, a
	mov	a, _strstr_sloc0_1_0+0
	ret
00109$:
;	../_strstr.c: 51: cp++;
	inc	_strstr_sloc2_1_0+0
	addc	_strstr_sloc2_1_0+1
	mov	a, _strstr_sloc2_1_0+0
	mov	_strstr_sloc0_1_0+0, a
	mov	a, _strstr_sloc2_1_0+1
	mov	_strstr_sloc0_1_0+1, a
	goto	00110$
00112$:
;	../_strstr.c: 54: return (NULL) ;
	clear	p
	ret	#0x00
;	../_strstr.c: 55: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
