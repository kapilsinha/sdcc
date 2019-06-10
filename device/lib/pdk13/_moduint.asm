;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _moduint
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __moduint_PARM_2
	.globl __moduint_PARM_1
	.globl __moduint
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__moduint_PARM_1:
	.ds 2
__moduint_PARM_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
__moduint_sloc0_1_0:
	.ds 1
__moduint_sloc1_1_0:
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
;	../_moduint.c: 173: _moduint (unsigned int a, unsigned int b)
;	-----------------------------------------
;	 function _moduint
;	-----------------------------------------
__moduint:
;	../_moduint.c: 175: unsigned char count = 0;
	clear	__moduint_sloc0_1_0+0
;	../_moduint.c: 177: while (!MSB_SET(b))
	clear	__moduint_sloc1_1_0+0
00103$:
	clear	p
	mov	a, __moduint_PARM_2+1
	sl	a
	mov	a, #0x00
	slc	a
	ceqsn	a, #0x00
	goto	00117$
;	../_moduint.c: 179: b <<= 1;
	sl	__moduint_PARM_2+0
	slc	__moduint_PARM_2+1
;	../_moduint.c: 180: if (b > a)
	mov	a, __moduint_PARM_1+0
	sub	a, __moduint_PARM_2+0
	mov	a, __moduint_PARM_1+1
	subc	a, __moduint_PARM_2+1
	t1sn	f, c
	goto	00102$
;	../_moduint.c: 182: b >>=1;
	sr	__moduint_PARM_2+1
	src	__moduint_PARM_2+0
;	../_moduint.c: 183: break;
	goto	00117$
00102$:
;	../_moduint.c: 185: count++;
	inc	__moduint_sloc1_1_0+0
	mov	a, __moduint_sloc1_1_0+0
	mov	__moduint_sloc0_1_0+0, a
	goto	00103$
;	../_moduint.c: 187: do
00117$:
	mov	a, __moduint_sloc0_1_0+0
	mov	p, a
00108$:
;	../_moduint.c: 189: if (a >= b)
	mov	a, __moduint_PARM_1+0
	sub	a, __moduint_PARM_2+0
	mov	a, __moduint_PARM_1+1
	subc	a, __moduint_PARM_2+1
	t0sn	f, c
	goto	00107$
;	../_moduint.c: 190: a -= b;
	mov	a, __moduint_PARM_2+0
	sub	__moduint_PARM_1+0, a
	mov	a, __moduint_PARM_2+1
	subc	__moduint_PARM_1+1, a
00107$:
;	../_moduint.c: 191: b >>= 1;
	sr	__moduint_PARM_2+1
	src	__moduint_PARM_2+0
;	../_moduint.c: 193: while (count--);
	mov	a, p
	dec	p
	ceqsn	a, #0x00
	goto	00108$
;	../_moduint.c: 194: return a;
	mov	a, __moduint_PARM_1+1
	mov	p, a
	mov	a, __moduint_PARM_1+0
;	../_moduint.c: 195: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
