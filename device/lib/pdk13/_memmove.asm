;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _memmove
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memmove_PARM_3
	.globl _memmove_PARM_2
	.globl _memmove_PARM_1
	.globl _memmove
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_memmove_PARM_1:
	.ds 2
_memmove_PARM_2:
	.ds 2
_memmove_PARM_3:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_memmove_sloc0_1_0:
	.ds 2
_memmove_sloc1_1_0:
	.ds 2
_memmove_sloc2_1_0:
	.ds 2
_memmove_sloc3_1_0:
	.ds 2
_memmove_sloc4_1_0:
	.ds 2
_memmove_sloc5_1_0:
	.ds 2
_memmove_sloc6_1_0:
	.ds 2
_memmove_sloc7_1_0:
	.ds 2
_memmove_sloc8_1_0:
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
;	../_memmove.c: 34: void * memmove (void * dst, const void * src, size_t acount)
;	-----------------------------------------
;	 function memmove
;	-----------------------------------------
_memmove:
;	../_memmove.c: 36: void * ret = dst;
	mov	a, _memmove_PARM_1+0
	mov	_memmove_sloc0_1_0+0, a
	mov	a, _memmove_PARM_1+1
	mov	_memmove_sloc0_1_0+1, a
;	../_memmove.c: 40: if ((uintptr_t)src < (uintptr_t)dst) {
	mov	a, _memmove_PARM_2+0
	mov	_memmove_sloc1_1_0+0, a
	mov	a, _memmove_PARM_2+1
	mov	_memmove_sloc1_1_0+1, a
	mov	a, _memmove_PARM_1+0
	mov	_memmove_sloc2_1_0+0, a
	mov	a, _memmove_PARM_1+1
	mov	_memmove_sloc2_1_0+1, a
	mov	a, _memmove_sloc1_1_0+0
	sub	a, _memmove_sloc2_1_0+0
	mov	a, _memmove_sloc1_1_0+1
	subc	a, _memmove_sloc2_1_0+1
	t1sn	f, c
	goto	00108$
;	../_memmove.c: 44: d = ((char *)dst)+acount-1;
	mov	a, _memmove_PARM_1+1
	mov	p, a
	mov	a, _memmove_PARM_1+0
	add	a, _memmove_PARM_3+0
	push	af
	mov	a, _memmove_PARM_3+1
	addc	p, a
	pop	af
	sub	a, #0x01
	mov	_memmove_sloc3_1_0+0, a
	mov	a, p
	subc	a
	mov	_memmove_sloc3_1_0+1, a
;	../_memmove.c: 45: s = ((char *)src)+acount-1;
	mov	a, _memmove_PARM_2+1
	mov	p, a
	mov	a, _memmove_PARM_2+0
	add	a, _memmove_PARM_3+0
	push	af
	mov	a, _memmove_PARM_3+1
	addc	p, a
	pop	af
	sub	a, #0x01
	mov	_memmove_sloc4_1_0+0, a
	mov	a, p
	subc	a
	mov	_memmove_sloc4_1_0+1, a
;	../_memmove.c: 46: while (acount--) {
	mov	a, _memmove_PARM_3+0
	mov	_memmove_sloc5_1_0+0, a
	mov	a, _memmove_PARM_3+1
	mov	_memmove_sloc5_1_0+1, a
00101$:
	mov	a, _memmove_sloc5_1_0+1
	mov	p, a
	mov	a, _memmove_sloc5_1_0+0
	dec	_memmove_sloc5_1_0+0
	subc	_memmove_sloc5_1_0+1
	or	a, p
	cneqsn	a, #0x00
	goto	00109$
;	../_memmove.c: 47: *d-- = *s--;
	mov	a, _memmove_sloc4_1_0+0
	mov	p, a
	mov	a, _memmove_sloc4_1_0+1
	call	__gptrget
	mov	p, a
	dec	_memmove_sloc4_1_0+0
	subc	_memmove_sloc4_1_0+1
	mov	a, _memmove_sloc3_1_0+0
	xch	a, p
	idxm	p, a
	dec	_memmove_sloc3_1_0+0
	subc	_memmove_sloc3_1_0+1
	goto	00101$
00108$:
;	../_memmove.c: 54: d = dst;
	mov	a, _memmove_PARM_1+0
	mov	_memmove_sloc6_1_0+0, a
	mov	a, _memmove_PARM_1+1
	mov	_memmove_sloc6_1_0+1, a
;	../_memmove.c: 55: s = src;
	mov	a, _memmove_PARM_2+0
	mov	_memmove_sloc7_1_0+0, a
	mov	a, _memmove_PARM_2+1
	mov	_memmove_sloc7_1_0+1, a
;	../_memmove.c: 56: while (acount--) {
	mov	a, _memmove_PARM_3+0
	mov	_memmove_sloc8_1_0+0, a
	mov	a, _memmove_PARM_3+1
	mov	_memmove_sloc8_1_0+1, a
00104$:
	mov	a, _memmove_sloc8_1_0+1
	mov	p, a
	mov	a, _memmove_sloc8_1_0+0
	dec	_memmove_sloc8_1_0+0
	subc	_memmove_sloc8_1_0+1
	or	a, p
	cneqsn	a, #0x00
	goto	00109$
;	../_memmove.c: 57: *d++ = *s++;
	mov	a, _memmove_sloc7_1_0+0
	mov	p, a
	mov	a, _memmove_sloc7_1_0+1
	call	__gptrget
	mov	p, a
	inc	_memmove_sloc7_1_0+0
	addc	_memmove_sloc7_1_0+1
	mov	a, _memmove_sloc6_1_0+0
	xch	a, p
	idxm	p, a
	inc	_memmove_sloc6_1_0+0
	addc	_memmove_sloc6_1_0+1
	goto	00104$
00109$:
;	../_memmove.c: 61: return(ret);
	mov	a, _memmove_sloc0_1_0+1
	mov	p, a
	mov	a, _memmove_sloc0_1_0+0
;	../_memmove.c: 62: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
