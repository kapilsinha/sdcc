;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module wcscmp
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wcscmp_PARM_2
	.globl _wcscmp_PARM_1
	.globl _wcscmp
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_wcscmp_PARM_1:
	.ds 2
_wcscmp_PARM_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_wcscmp_sloc0_1_0:
	.ds 2
_wcscmp_sloc1_1_0:
	.ds 2
_wcscmp_sloc2_1_0:
	.ds 4
_wcscmp_sloc3_1_0:
	.ds 4
_wcscmp_sloc4_1_0:
	.ds 4
_wcscmp_sloc5_1_0:
	.ds 4
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
;	../wcscmp.c: 31: int wcscmp(const wchar_t *s1, const wchar_t *s2)
;	-----------------------------------------
;	 function wcscmp
;	-----------------------------------------
_wcscmp:
;	../wcscmp.c: 33: while(*s1 == *s2 && *s1)
	mov	a, _wcscmp_PARM_1+0
	mov	_wcscmp_sloc0_1_0+0, a
	mov	a, _wcscmp_PARM_1+1
	mov	_wcscmp_sloc0_1_0+1, a
	mov	a, _wcscmp_PARM_2+0
	mov	_wcscmp_sloc1_1_0+0, a
	mov	a, _wcscmp_PARM_2+1
	mov	_wcscmp_sloc1_1_0+1, a
00102$:
	mov	a, _wcscmp_sloc0_1_0+0
	mov	p, a
	mov	a, _wcscmp_sloc0_1_0+1
	call	__gptrget
	mov	_wcscmp_sloc2_1_0+0, a
	mov	a, _wcscmp_sloc0_1_0+0
	mov	p, a
	mov	a, _wcscmp_sloc0_1_0+1
	inc	p
	addc	a
	call	__gptrget
	mov	_wcscmp_sloc2_1_0+1, a
	mov	a, _wcscmp_sloc0_1_0+0
	mov	p, a
	mov	a, _wcscmp_sloc0_1_0+1
	inc	p
	addc	a
	inc	p
	addc	a
	call	__gptrget
	mov	_wcscmp_sloc2_1_0+2, a
	mov	a, _wcscmp_sloc0_1_0+0
	mov	p, a
	mov	a, _wcscmp_sloc0_1_0+1
	xch	a, p
	add	a, #3
	xch	a, p
	addc	a
	call	__gptrget
	mov	_wcscmp_sloc2_1_0+3, a
	mov	a, _wcscmp_sloc1_1_0+0
	mov	p, a
	mov	a, _wcscmp_sloc1_1_0+1
	call	__gptrget
	mov	_wcscmp_sloc3_1_0+0, a
	mov	a, _wcscmp_sloc1_1_0+0
	mov	p, a
	mov	a, _wcscmp_sloc1_1_0+1
	inc	p
	addc	a
	call	__gptrget
	mov	_wcscmp_sloc3_1_0+1, a
	mov	a, _wcscmp_sloc1_1_0+0
	mov	p, a
	mov	a, _wcscmp_sloc1_1_0+1
	inc	p
	addc	a
	inc	p
	addc	a
	call	__gptrget
	mov	_wcscmp_sloc3_1_0+2, a
	mov	a, _wcscmp_sloc1_1_0+0
	mov	p, a
	mov	a, _wcscmp_sloc1_1_0+1
	xch	a, p
	add	a, #3
	xch	a, p
	addc	a
	call	__gptrget
	mov	_wcscmp_sloc3_1_0+3, a
	mov	a, _wcscmp_sloc2_1_0+0
	ceqsn	a, _wcscmp_sloc3_1_0+0
	goto	00104$
	mov	a, _wcscmp_sloc2_1_0+1
	ceqsn	a, _wcscmp_sloc3_1_0+1
	goto	00104$
	mov	a, _wcscmp_sloc2_1_0+2
	ceqsn	a, _wcscmp_sloc3_1_0+2
	goto	00104$
	mov	a, _wcscmp_sloc2_1_0+3
	ceqsn	a, _wcscmp_sloc3_1_0+3
	goto	00104$
	mov	a, _wcscmp_sloc2_1_0+0
	or	a, _wcscmp_sloc2_1_0+1
	or	a, _wcscmp_sloc2_1_0+2
	or	a, _wcscmp_sloc2_1_0+3
	cneqsn	a, #0x00
	goto	00104$
;	../wcscmp.c: 34: s1++, s2++;
	mov	a, #0x04
	add	_wcscmp_sloc0_1_0+0, a
	addc	_wcscmp_sloc0_1_0+1
	mov	a, #0x04
	add	_wcscmp_sloc1_1_0+0, a
	addc	_wcscmp_sloc1_1_0+1
	goto	00102$
00104$:
;	../wcscmp.c: 36: if(*s1 < *s2)
	mov	a, _wcscmp_sloc0_1_0+0
	mov	p, a
	mov	a, _wcscmp_sloc0_1_0+1
	call	__gptrget
	mov	_wcscmp_sloc4_1_0+0, a
	mov	a, _wcscmp_sloc0_1_0+0
	mov	p, a
	mov	a, _wcscmp_sloc0_1_0+1
	inc	p
	addc	a
	call	__gptrget
	mov	_wcscmp_sloc4_1_0+1, a
	mov	a, _wcscmp_sloc0_1_0+0
	mov	p, a
	mov	a, _wcscmp_sloc0_1_0+1
	inc	p
	addc	a
	inc	p
	addc	a
	call	__gptrget
	mov	_wcscmp_sloc4_1_0+2, a
	mov	a, _wcscmp_sloc0_1_0+0
	mov	p, a
	mov	a, _wcscmp_sloc0_1_0+1
	xch	a, p
	add	a, #3
	xch	a, p
	addc	a
	call	__gptrget
	mov	_wcscmp_sloc4_1_0+3, a
	mov	a, _wcscmp_sloc1_1_0+0
	mov	p, a
	mov	a, _wcscmp_sloc1_1_0+1
	call	__gptrget
	mov	_wcscmp_sloc5_1_0+0, a
	mov	a, _wcscmp_sloc1_1_0+0
	mov	p, a
	mov	a, _wcscmp_sloc1_1_0+1
	inc	p
	addc	a
	call	__gptrget
	mov	_wcscmp_sloc5_1_0+1, a
	mov	a, _wcscmp_sloc1_1_0+0
	mov	p, a
	mov	a, _wcscmp_sloc1_1_0+1
	inc	p
	addc	a
	inc	p
	addc	a
	call	__gptrget
	mov	_wcscmp_sloc5_1_0+2, a
	mov	a, _wcscmp_sloc1_1_0+0
	mov	p, a
	mov	a, _wcscmp_sloc1_1_0+1
	xch	a, p
	add	a, #3
	xch	a, p
	addc	a
	call	__gptrget
	mov	_wcscmp_sloc5_1_0+3, a
	mov	a, _wcscmp_sloc4_1_0+0
	sub	a, _wcscmp_sloc5_1_0+0
	mov	a, _wcscmp_sloc4_1_0+1
	subc	a, _wcscmp_sloc5_1_0+1
	mov	a, _wcscmp_sloc4_1_0+2
	subc	a, _wcscmp_sloc5_1_0+2
	mov	a, _wcscmp_sloc4_1_0+3
	subc	a, _wcscmp_sloc5_1_0+3
	t1sn	f, c
	goto	00106$
;	../wcscmp.c: 37: return(-1);
	mov	a, #0xff
	mov	p, a
	ret	#0xff
00106$:
;	../wcscmp.c: 38: if(*s1 > *s2)
	mov	a, _wcscmp_sloc5_1_0+0
	sub	a, _wcscmp_sloc4_1_0+0
	mov	a, _wcscmp_sloc5_1_0+1
	subc	a, _wcscmp_sloc4_1_0+1
	mov	a, _wcscmp_sloc5_1_0+2
	subc	a, _wcscmp_sloc4_1_0+2
	mov	a, _wcscmp_sloc5_1_0+3
	subc	a, _wcscmp_sloc4_1_0+3
	t1sn	f, c
	goto	00108$
;	../wcscmp.c: 39: return(1);
	clear	p
	ret	#0x01
00108$:
;	../wcscmp.c: 40: return(0);
	clear	p
	ret	#0x00
;	../wcscmp.c: 41: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
