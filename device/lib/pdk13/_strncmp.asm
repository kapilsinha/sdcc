;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _strncmp
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp_PARM_3
	.globl _strncmp_PARM_2
	.globl _strncmp_PARM_1
	.globl _strncmp
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_strncmp_PARM_1:
	.ds 2
_strncmp_PARM_2:
	.ds 2
_strncmp_PARM_3:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_strncmp_sloc0_1_0:
	.ds 2
_strncmp_sloc1_1_0:
	.ds 2
_strncmp_sloc2_1_0:
	.ds 2
_strncmp_sloc3_1_0:
	.ds 1
_strncmp_sloc4_1_0:
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
;	../_strncmp.c: 31: int strncmp ( const char * first, const char * last, size_t count )
;	-----------------------------------------
;	 function strncmp
;	-----------------------------------------
_strncmp:
;	../_strncmp.c: 33: if (!count)
	mov	a, _strncmp_PARM_3+0
	or	a, _strncmp_PARM_3+1
	ceqsn	a, #0x00
	goto	00114$
;	../_strncmp.c: 34: return(0);
	clear	p
	ret	#0x00
;	../_strncmp.c: 36: while (--count && *first && *first == *last) {
00114$:
	mov	a, _strncmp_PARM_1+0
	mov	_strncmp_sloc0_1_0+0, a
	mov	a, _strncmp_PARM_1+1
	mov	_strncmp_sloc0_1_0+1, a
	mov	a, _strncmp_PARM_2+0
	mov	_strncmp_sloc1_1_0+0, a
	mov	a, _strncmp_PARM_2+1
	mov	_strncmp_sloc1_1_0+1, a
	mov	a, _strncmp_PARM_3+0
	mov	_strncmp_sloc2_1_0+0, a
	mov	a, _strncmp_PARM_3+1
	mov	_strncmp_sloc2_1_0+1, a
00105$:
	dec	_strncmp_sloc2_1_0+0
	subc	_strncmp_sloc2_1_0+1
	mov	a, _strncmp_sloc2_1_0+0
	or	a, _strncmp_sloc2_1_0+1
	cneqsn	a, #0x00
	goto	00107$
	mov	a, _strncmp_sloc0_1_0+0
	mov	p, a
	mov	a, _strncmp_sloc0_1_0+1
	call	__gptrget
	mov	_strncmp_sloc3_1_0+0, a
	cneqsn	a, #0x00
	goto	00107$
	mov	a, _strncmp_sloc1_1_0+0
	mov	p, a
	mov	a, _strncmp_sloc1_1_0+1
	call	__gptrget
	ceqsn	a, _strncmp_sloc3_1_0+0
	goto	00107$
;	../_strncmp.c: 37: first++;
	inc	_strncmp_sloc0_1_0+0
	addc	_strncmp_sloc0_1_0+1
;	../_strncmp.c: 38: last++;
	inc	_strncmp_sloc1_1_0+0
	addc	_strncmp_sloc1_1_0+1
	goto	00105$
00107$:
;	../_strncmp.c: 41: return( *first - *last );
	mov	a, _strncmp_sloc0_1_0+0
	mov	p, a
	mov	a, _strncmp_sloc0_1_0+1
	call	__gptrget
	mov	_strncmp_sloc4_1_0+0, a
	clear	_strncmp_sloc4_1_0+1
	mov	a, _strncmp_sloc1_1_0+0
	mov	p, a
	mov	a, _strncmp_sloc1_1_0+1
	call	__gptrget
	mov	p, a
	mov	a, _strncmp_sloc4_1_0+0
	sub	a, p
	mov	p, a
	mov	a, _strncmp_sloc4_1_0+1
	subc	a
	xch	a, p
;	../_strncmp.c: 42: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
