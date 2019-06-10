;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _strcat
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcat_PARM_2
	.globl _strcat_PARM_1
	.globl _strcat
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_strcat_PARM_1:
	.ds 2
_strcat_PARM_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_strcat_sloc0_1_0:
	.ds 2
_strcat_sloc1_1_0:
	.ds 2
_strcat_sloc2_1_0:
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
;	../_strcat.c: 31: char * strcat ( char * dst, const char * src )
;	-----------------------------------------
;	 function strcat
;	-----------------------------------------
_strcat:
;	../_strcat.c: 33: char * cp = dst;
	mov	a, _strcat_PARM_1+0
	mov	_strcat_sloc0_1_0+0, a
	mov	a, _strcat_PARM_1+1
	mov	_strcat_sloc0_1_0+1, a
;	../_strcat.c: 35: while( *cp )
00101$:
	mov	a, _strcat_sloc0_1_0+0
	mov	p, a
	mov	a, _strcat_sloc0_1_0+1
	call	__gptrget
	cneqsn	a, #0x00
	goto	00111$
;	../_strcat.c: 36: cp++;                   /* find end of dst */
	inc	_strcat_sloc0_1_0+0
	addc	_strcat_sloc0_1_0+1
	goto	00101$
;	../_strcat.c: 38: while( *cp++ = *src++ ) ;       /* Copy src to end of dst */
00111$:
	mov	a, _strcat_PARM_2+0
	mov	_strcat_sloc1_1_0+0, a
	mov	a, _strcat_PARM_2+1
	mov	_strcat_sloc1_1_0+1, a
	mov	a, _strcat_sloc0_1_0+0
	mov	_strcat_sloc2_1_0+0, a
	mov	a, _strcat_sloc0_1_0+1
	mov	_strcat_sloc2_1_0+1, a
00104$:
	mov	a, _strcat_sloc1_1_0+0
	mov	p, a
	mov	a, _strcat_sloc1_1_0+1
	call	__gptrget
	inc	_strcat_sloc1_1_0+0
	addc	_strcat_sloc1_1_0+1
	push	af
	mov	a, _strcat_sloc2_1_0+0
	mov	p, a
	pop	af
	idxm	p, a
	inc	_strcat_sloc2_1_0+0
	addc	_strcat_sloc2_1_0+1
	ceqsn	a, #0x00
	goto	00104$
;	../_strcat.c: 40: return( dst );                  /* return dst */
	mov	a, _strcat_PARM_1+1
	mov	p, a
	mov	a, _strcat_PARM_1+0
;	../_strcat.c: 41: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
