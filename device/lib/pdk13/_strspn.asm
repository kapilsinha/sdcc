;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _strspn
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strspn_PARM_2
	.globl _strspn_PARM_1
	.globl _strspn
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_strspn_PARM_1:
	.ds 2
_strspn_PARM_2:
	.ds 2
_strspn_sloc0_1_0:
	.ds 2
_strspn_sloc1_1_0:
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
;	../_strspn.c: 31: size_t strspn ( const char * string, const char * control )
;	-----------------------------------------
;	 function strspn
;	-----------------------------------------
_strspn:
;	../_strspn.c: 36: while (ch = *string) {
	clear	_strspn_sloc0_1_0+0
	clear	_strspn_sloc0_1_0+1
	mov	a, _strspn_PARM_1+0
	mov	_strspn_sloc1_1_0+0, a
	mov	a, _strspn_PARM_1+1
	mov	_strspn_sloc1_1_0+1, a
00104$:
	mov	a, _strspn_sloc1_1_0+0
	mov	p, a
	mov	a, _strspn_sloc1_1_0+1
	call	__gptrget
	mov	p, a
	cneqsn	a, #0x00
	goto	00106$
;	../_strspn.c: 37: if ( strchr(control,ch) )
	mov	a, p
	mov	_strchr_PARM_2+0, a
	clear	_strchr_PARM_2+1
	mov	a, _strspn_PARM_2+0
	mov	_strchr_PARM_1+0, a
	mov	a, _strspn_PARM_2+1
	mov	_strchr_PARM_1+1, a
	call	_strchr
	or	a, p
	cneqsn	a, #0x00
	goto	00106$
;	../_strspn.c: 38: count++ ;
	inc	_strspn_sloc0_1_0+0
	addc	_strspn_sloc0_1_0+1
;	../_strspn.c: 41: string++ ;
	inc	_strspn_sloc1_1_0+0
	addc	_strspn_sloc1_1_0+1
	goto	00104$
00106$:
;	../_strspn.c: 44: return count ;
	mov	a, _strspn_sloc0_1_0+1
	mov	p, a
	mov	a, _strspn_sloc0_1_0+0
;	../_strspn.c: 45: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
