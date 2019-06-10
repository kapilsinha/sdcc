;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _strpbrk
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strpbrk_PARM_2
	.globl _strpbrk_PARM_1
	.globl _strpbrk
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_strpbrk_PARM_1:
	.ds 2
_strpbrk_PARM_2:
	.ds 2
_strpbrk_sloc0_1_0:
	.ds 2
_strpbrk_sloc1_1_0:
	.ds 2
_strpbrk_sloc2_1_0:
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
;	../_strpbrk.c: 31: char * strpbrk ( const char * string, const char * control )
;	-----------------------------------------
;	 function strpbrk
;	-----------------------------------------
_strpbrk:
;	../_strpbrk.c: 33: char *ret = NULL;
	clear	_strpbrk_sloc0_1_0+0
	clear	_strpbrk_sloc0_1_0+1
;	../_strpbrk.c: 36: while (ch = *control) {
	mov	a, _strpbrk_PARM_2+0
	mov	_strpbrk_sloc1_1_0+0, a
	mov	a, _strpbrk_PARM_2+1
	mov	_strpbrk_sloc1_1_0+1, a
00105$:
	mov	a, _strpbrk_sloc1_1_0+0
	mov	p, a
	mov	a, _strpbrk_sloc1_1_0+1
	call	__gptrget
	mov	p, a
	cneqsn	a, #0x00
	goto	00107$
;	../_strpbrk.c: 37: char * p = strchr(string, ch);
	mov	a, p
	mov	_strchr_PARM_2+0, a
	clear	_strchr_PARM_2+1
	mov	a, _strpbrk_PARM_1+0
	mov	_strchr_PARM_1+0, a
	mov	a, _strpbrk_PARM_1+1
	mov	_strchr_PARM_1+1, a
	call	_strchr
	mov	_strpbrk_sloc2_1_0+0, a
	mov	a, p
	mov	_strpbrk_sloc2_1_0+1, a
;	../_strpbrk.c: 38: if (p != NULL && (ret == NULL || p < ret)) {
	mov	a, _strpbrk_sloc2_1_0+0
	or	a, _strpbrk_sloc2_1_0+1
	cneqsn	a, #0x00
	goto	00102$
	mov	a, _strpbrk_sloc0_1_0+0
	or	a, _strpbrk_sloc0_1_0+1
	cneqsn	a, #0x00
	goto	00101$
	mov	a, _strpbrk_sloc2_1_0+0
	sub	a, _strpbrk_sloc0_1_0+0
	mov	a, _strpbrk_sloc2_1_0+1
	subc	a, _strpbrk_sloc0_1_0+1
	t1sn	f, c
	goto	00102$
00101$:
;	../_strpbrk.c: 39: ret = p;
	mov	a, _strpbrk_sloc2_1_0+0
	mov	_strpbrk_sloc0_1_0+0, a
	mov	a, _strpbrk_sloc2_1_0+1
	mov	_strpbrk_sloc0_1_0+1, a
00102$:
;	../_strpbrk.c: 41: control++;
	inc	_strpbrk_sloc1_1_0+0
	addc	_strpbrk_sloc1_1_0+1
	goto	00105$
00107$:
;	../_strpbrk.c: 44: return (ret);
	mov	a, _strpbrk_sloc0_1_0+1
	mov	p, a
	mov	a, _strpbrk_sloc0_1_0+0
;	../_strpbrk.c: 45: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
