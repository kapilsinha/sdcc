;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _strrchr
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strrchr_PARM_2
	.globl _strrchr_PARM_1
	.globl _strrchr
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_strrchr_PARM_1:
	.ds 2
_strrchr_PARM_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_strrchr_sloc0_1_0:
	.ds 2
_strrchr_sloc1_1_0:
	.ds 2
_strrchr_sloc2_1_0:
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
;	../_strrchr.c: 34: char * strrchr ( const char * string, int ch )
;	-----------------------------------------
;	 function strrchr
;	-----------------------------------------
_strrchr:
;	../_strrchr.c: 37: const char * start = string;
	mov	a, _strrchr_PARM_1+0
	mov	_strrchr_sloc0_1_0+0, a
	mov	a, _strrchr_PARM_1+1
	mov	_strrchr_sloc0_1_0+1, a
;	../_strrchr.c: 39: while (*string++)                       /* find end of string */
	mov	a, _strrchr_sloc0_1_0+0
	mov	_strrchr_sloc1_1_0+0, a
	mov	a, _strrchr_sloc0_1_0+1
	mov	_strrchr_sloc1_1_0+1, a
00101$:
	mov	a, _strrchr_sloc1_1_0+0
	mov	p, a
	mov	a, _strrchr_sloc1_1_0+1
	call	__gptrget
	inc	_strrchr_sloc1_1_0+0
	addc	_strrchr_sloc1_1_0+1
	ceqsn	a, #0x00
	goto	00101$
;	../_strrchr.c: 42: while (--string != start && *string != ch)
	mov	a, _strrchr_sloc1_1_0+0
	mov	_strrchr_sloc2_1_0+0, a
	mov	a, _strrchr_sloc1_1_0+1
	mov	_strrchr_sloc2_1_0+1, a
00105$:
	dec	_strrchr_sloc2_1_0+0
	subc	_strrchr_sloc2_1_0+1
	mov	a, _strrchr_sloc2_1_0+0
	ceqsn	a, _strrchr_sloc0_1_0+0
	goto	00133$
	mov	a, _strrchr_sloc2_1_0+1
	cneqsn	a, _strrchr_sloc0_1_0+1
	goto	00107$
00133$:
	mov	a, _strrchr_sloc2_1_0+0
	mov	p, a
	mov	a, _strrchr_sloc2_1_0+1
	call	__gptrget
	clear	p
	ceqsn	a, _strrchr_PARM_2+0
	goto	00105$
	mov	a, p
	ceqsn	a, _strrchr_PARM_2+1
	goto	00105$
00107$:
;	../_strrchr.c: 45: if (*string == ch)                      /* char found ? */
	mov	a, _strrchr_sloc2_1_0+0
	mov	p, a
	mov	a, _strrchr_sloc2_1_0+1
	call	__gptrget
	clear	p
	ceqsn	a, _strrchr_PARM_2+0
	goto	00109$
	mov	a, p
	ceqsn	a, _strrchr_PARM_2+1
	goto	00109$
;	../_strrchr.c: 46: return( (char *)string );
	mov	a, _strrchr_sloc2_1_0+1
	mov	p, a
	mov	a, _strrchr_sloc2_1_0+0
	ret
00109$:
;	../_strrchr.c: 48: return (NULL) ;
	clear	p
	ret	#0x00
;	../_strrchr.c: 49: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
