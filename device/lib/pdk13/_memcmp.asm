;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _memcmp
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcmp_PARM_3
	.globl _memcmp_PARM_2
	.globl _memcmp_PARM_1
	.globl _memcmp
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_memcmp_PARM_1:
	.ds 2
_memcmp_PARM_2:
	.ds 2
_memcmp_PARM_3:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_memcmp_sloc0_1_0:
	.ds 2
_memcmp_sloc1_1_0:
	.ds 2
_memcmp_sloc2_1_0:
	.ds 1
_memcmp_sloc3_1_0:
	.ds 2
_memcmp_sloc4_1_0:
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
;	../_memcmp.c: 31: int memcmp (const void * buf1, const void * buf2, size_t count)
;	-----------------------------------------
;	 function memcmp
;	-----------------------------------------
_memcmp:
;	../_memcmp.c: 33: if (!count)
	mov	a, _memcmp_PARM_3+0
	or	a, _memcmp_PARM_3+1
	ceqsn	a, #0x00
	goto	00112$
;	../_memcmp.c: 34: return(0);
	clear	p
	ret	#0x00
;	../_memcmp.c: 36: while ( --count && *((char *)buf1) == *((char *)buf2) ) {
00112$:
	mov	a, _memcmp_PARM_3+0
	mov	_memcmp_sloc0_1_0+0, a
	mov	a, _memcmp_PARM_3+1
	mov	_memcmp_sloc0_1_0+1, a
00104$:
	dec	_memcmp_sloc0_1_0+0
	subc	_memcmp_sloc0_1_0+1
	mov	a, _memcmp_sloc0_1_0+0
	or	a, _memcmp_sloc0_1_0+1
	cneqsn	a, #0x00
	goto	00106$
	mov	a, _memcmp_PARM_1+0
	mov	_memcmp_sloc1_1_0+0, a
	mov	a, _memcmp_PARM_1+1
	mov	_memcmp_sloc1_1_0+1, a
	mov	a, _memcmp_sloc1_1_0+0
	mov	p, a
	mov	a, _memcmp_sloc1_1_0+1
	call	__gptrget
	mov	_memcmp_sloc2_1_0+0, a
	mov	a, _memcmp_PARM_2+0
	mov	_memcmp_sloc3_1_0+0, a
	mov	a, _memcmp_PARM_2+1
	mov	_memcmp_sloc3_1_0+1, a
	mov	a, _memcmp_sloc3_1_0+0
	mov	p, a
	mov	a, _memcmp_sloc3_1_0+1
	call	__gptrget
	ceqsn	a, _memcmp_sloc2_1_0+0
	goto	00106$
;	../_memcmp.c: 37: buf1 = (char *)buf1 + 1;
	mov	a, _memcmp_sloc1_1_0+0
	add	a, #0x01
	mov	p, a
	mov	a, _memcmp_sloc1_1_0+1
	addc	a
	mov	_memcmp_PARM_1+1, a
	mov	a, p
	mov	_memcmp_PARM_1+0, a
;	../_memcmp.c: 38: buf2 = (char *)buf2 + 1;
	mov	a, _memcmp_sloc3_1_0+0
	add	a, #0x01
	mov	p, a
	mov	a, _memcmp_sloc3_1_0+1
	addc	a
	mov	_memcmp_PARM_2+1, a
	mov	a, p
	mov	_memcmp_PARM_2+0, a
	goto	00104$
00106$:
;	../_memcmp.c: 41: return( *((unsigned char *)buf1) - *((unsigned char *)buf2) );
	mov	a, _memcmp_PARM_1+0
	mov	p, a
	mov	a, _memcmp_PARM_1+1
	call	__gptrget
	mov	_memcmp_sloc4_1_0+0, a
	clear	_memcmp_sloc4_1_0+1
	mov	a, _memcmp_PARM_2+0
	mov	p, a
	mov	a, _memcmp_PARM_2+1
	call	__gptrget
	mov	p, a
	mov	a, _memcmp_sloc4_1_0+0
	sub	a, p
	mov	p, a
	mov	a, _memcmp_sloc4_1_0+1
	subc	a
	xch	a, p
;	../_memcmp.c: 42: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
