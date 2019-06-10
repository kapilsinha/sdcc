;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _strncat
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncat_PARM_3
	.globl _strncat_PARM_2
	.globl _strncat_PARM_1
	.globl _strncat
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_strncat_PARM_1:
	.ds 2
_strncat_PARM_2:
	.ds 2
_strncat_PARM_3:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_strncat_sloc0_1_0:
	.ds 2
_strncat_sloc1_1_0:
	.ds 2
_strncat_sloc2_1_0:
	.ds 2
_strncat_sloc3_1_0:
	.ds 2
_strncat_sloc4_1_0:
	.ds 2
_strncat_sloc5_1_0:
	.ds 1
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
;	../_strncat.c: 31: char * strncat ( char * front, const char * back, size_t count )
;	-----------------------------------------
;	 function strncat
;	-----------------------------------------
_strncat:
;	../_strncat.c: 33: char *start = front;
	mov	a, _strncat_PARM_1+0
	mov	_strncat_sloc0_1_0+0, a
	mov	a, _strncat_PARM_1+1
	mov	_strncat_sloc0_1_0+1, a
;	../_strncat.c: 35: while (*front++);
	mov	a, _strncat_sloc0_1_0+0
	mov	_strncat_sloc1_1_0+0, a
	mov	a, _strncat_sloc0_1_0+1
	mov	_strncat_sloc1_1_0+1, a
00101$:
	mov	a, _strncat_sloc1_1_0+0
	mov	p, a
	mov	a, _strncat_sloc1_1_0+1
	call	__gptrget
	inc	_strncat_sloc1_1_0+0
	addc	_strncat_sloc1_1_0+1
	ceqsn	a, #0x00
	goto	00101$
;	../_strncat.c: 37: front--;
	mov	a, _strncat_sloc1_1_0+0
	sub	a, #0x01
	mov	_strncat_PARM_1+0, a
	mov	a, _strncat_sloc1_1_0+1
	subc	a
	mov	_strncat_PARM_1+1, a
;	../_strncat.c: 39: while (count--)
	mov	a, _strncat_PARM_2+0
	mov	_strncat_sloc2_1_0+0, a
	mov	a, _strncat_PARM_2+1
	mov	_strncat_sloc2_1_0+1, a
	mov	a, _strncat_PARM_1+0
	mov	_strncat_sloc3_1_0+0, a
	mov	a, _strncat_PARM_1+1
	mov	_strncat_sloc3_1_0+1, a
	mov	a, _strncat_PARM_3+0
	mov	_strncat_sloc4_1_0+0, a
	mov	a, _strncat_PARM_3+1
	mov	_strncat_sloc4_1_0+1, a
00106$:
	mov	a, _strncat_sloc4_1_0+1
	mov	p, a
	mov	a, _strncat_sloc4_1_0+0
	dec	_strncat_sloc4_1_0+0
	subc	_strncat_sloc4_1_0+1
	or	a, p
	cneqsn	a, #0x00
	goto	00108$
;	../_strncat.c: 40: if (!(*front++ = *back++))
	mov	a, _strncat_sloc2_1_0+0
	mov	p, a
	mov	a, _strncat_sloc2_1_0+1
	call	__gptrget
	mov	_strncat_sloc5_1_0+0, a
	inc	_strncat_sloc2_1_0+0
	addc	_strncat_sloc2_1_0+1
	mov	a, _strncat_sloc3_1_0+0
	mov	p, a
	mov	a, _strncat_sloc5_1_0+0
	idxm	p, a
	inc	_strncat_sloc3_1_0+0
	addc	_strncat_sloc3_1_0+1
	mov	a, _strncat_sloc3_1_0+0
	mov	_strncat_PARM_1+0, a
	mov	a, _strncat_sloc3_1_0+1
	mov	_strncat_PARM_1+1, a
	mov	a, _strncat_sloc5_1_0+0
	ceqsn	a, #0x00
	goto	00106$
;	../_strncat.c: 41: return(start);
	mov	a, _strncat_sloc0_1_0+1
	mov	p, a
	mov	a, _strncat_sloc0_1_0+0
	ret
00108$:
;	../_strncat.c: 43: *front = '\0';
	mov	a, _strncat_PARM_1+0
	mov	p, a
	mov	a, _strncat_PARM_1+1
	mov	a, #0x00
	idxm	p, a
;	../_strncat.c: 44: return(start);
	mov	a, _strncat_sloc0_1_0+1
	mov	p, a
	mov	a, _strncat_sloc0_1_0+0
;	../_strncat.c: 45: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
