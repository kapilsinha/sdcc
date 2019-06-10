;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _strncpy
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncpy_PARM_3
	.globl _strncpy_PARM_2
	.globl _strncpy_PARM_1
	.globl _strncpy
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_strncpy_PARM_1:
	.ds 2
_strncpy_PARM_2:
	.ds 2
_strncpy_PARM_3:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_strncpy_sloc0_1_0:
	.ds 2
_strncpy_sloc1_1_0:
	.ds 2
_strncpy_sloc2_1_0:
	.ds 2
_strncpy_sloc3_1_0:
	.ds 2
_strncpy_sloc4_1_0:
	.ds 2
_strncpy_sloc5_1_0:
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
;	../_strncpy.c: 33: char *strncpy ( char * d, const char * s, size_t n )
;	-----------------------------------------
;	 function strncpy
;	-----------------------------------------
_strncpy:
;	../_strncpy.c: 35: register char * d1 =  d;
	mov	a, _strncpy_PARM_1+0
	mov	_strncpy_sloc0_1_0+0, a
	mov	a, _strncpy_PARM_1+1
	mov	_strncpy_sloc0_1_0+1, a
;	../_strncpy.c: 37: while ( n && *s )
	mov	a, _strncpy_PARM_3+0
	mov	_strncpy_sloc1_1_0+0, a
	mov	a, _strncpy_PARM_3+1
	mov	_strncpy_sloc1_1_0+1, a
	mov	a, _strncpy_PARM_2+0
	mov	_strncpy_sloc2_1_0+0, a
	mov	a, _strncpy_PARM_2+1
	mov	_strncpy_sloc2_1_0+1, a
	mov	a, _strncpy_sloc0_1_0+0
	mov	_strncpy_sloc3_1_0+0, a
	mov	a, _strncpy_sloc0_1_0+1
	mov	_strncpy_sloc3_1_0+1, a
00102$:
	mov	a, _strncpy_sloc1_1_0+0
	or	a, _strncpy_sloc1_1_0+1
	cneqsn	a, #0x00
	goto	00114$
	mov	a, _strncpy_sloc2_1_0+0
	mov	p, a
	mov	a, _strncpy_sloc2_1_0+1
	call	__gptrget
	cneqsn	a, #0x00
	goto	00114$
;	../_strncpy.c: 39: n-- ;
	dec	_strncpy_sloc1_1_0+0
	subc	_strncpy_sloc1_1_0+1
;	../_strncpy.c: 40: *d++ = *s++ ;
	mov	p, a
	inc	_strncpy_sloc2_1_0+0
	addc	_strncpy_sloc2_1_0+1
	mov	a, _strncpy_sloc3_1_0+0
	xch	a, p
	idxm	p, a
	inc	_strncpy_sloc3_1_0+0
	addc	_strncpy_sloc3_1_0+1
	goto	00102$
;	../_strncpy.c: 42: while ( n-- )
00114$:
	mov	a, _strncpy_sloc3_1_0+0
	mov	_strncpy_sloc4_1_0+0, a
	mov	a, _strncpy_sloc3_1_0+1
	mov	_strncpy_sloc4_1_0+1, a
	mov	a, _strncpy_sloc1_1_0+0
	mov	_strncpy_sloc5_1_0+0, a
	mov	a, _strncpy_sloc1_1_0+1
	mov	_strncpy_sloc5_1_0+1, a
00105$:
	mov	a, _strncpy_sloc5_1_0+1
	mov	p, a
	mov	a, _strncpy_sloc5_1_0+0
	dec	_strncpy_sloc5_1_0+0
	subc	_strncpy_sloc5_1_0+1
	or	a, p
	cneqsn	a, #0x00
	goto	00107$
;	../_strncpy.c: 44: *d++ = '\0' ;
	mov	a, _strncpy_sloc4_1_0+0
	mov	p, a
	mov	a, #0x00
	idxm	p, a
	inc	_strncpy_sloc4_1_0+0
	addc	_strncpy_sloc4_1_0+1
	goto	00105$
00107$:
;	../_strncpy.c: 46: return d1;
	mov	a, _strncpy_sloc0_1_0+1
	mov	p, a
	mov	a, _strncpy_sloc0_1_0+0
;	../_strncpy.c: 47: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
