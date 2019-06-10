;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _strchr
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr_PARM_2
	.globl _strchr_PARM_1
	.globl _strchr
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_strchr_PARM_1:
	.ds 2
_strchr_PARM_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_strchr_sloc0_1_0:
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
;	../_strchr.c: 36: char * strchr ( const char * string, int ch )
;	-----------------------------------------
;	 function strchr
;	-----------------------------------------
_strchr:
;	../_strchr.c: 39: while (*string && *string != ch)
	mov	a, _strchr_PARM_1+0
	mov	_strchr_sloc0_1_0+0, a
	mov	a, _strchr_PARM_1+1
	mov	_strchr_sloc0_1_0+1, a
00102$:
	mov	a, _strchr_sloc0_1_0+0
	mov	p, a
	mov	a, _strchr_sloc0_1_0+1
	call	__gptrget
	cneqsn	a, #0x00
	goto	00104$
	clear	p
	ceqsn	a, _strchr_PARM_2+0
	goto	00126$
	mov	a, p
	cneqsn	a, _strchr_PARM_2+1
	goto	00104$
00126$:
;	../_strchr.c: 40: string++;
	inc	_strchr_sloc0_1_0+0
	addc	_strchr_sloc0_1_0+1
	goto	00102$
00104$:
;	../_strchr.c: 42: if (*string == ch)
	mov	a, _strchr_sloc0_1_0+0
	mov	p, a
	mov	a, _strchr_sloc0_1_0+1
	call	__gptrget
	clear	p
	ceqsn	a, _strchr_PARM_2+0
	goto	00106$
	mov	a, p
	ceqsn	a, _strchr_PARM_2+1
	goto	00106$
;	../_strchr.c: 43: return((char *)string);
	mov	a, _strchr_sloc0_1_0+1
	mov	p, a
	mov	a, _strchr_sloc0_1_0+0
	ret
00106$:
;	../_strchr.c: 44: return ( NULL );
	clear	p
	ret	#0x00
;	../_strchr.c: 45: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
