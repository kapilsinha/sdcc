;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _mulint
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mulint_PARM_2
	.globl __mulint_PARM_1
	.globl __mulint
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__mulint_PARM_1:
	.ds 2
__mulint_PARM_2:
	.ds 2
__mulint_t_65536_2:
	.ds 2
__mulint_sloc0_1_0:
	.ds 1
__mulint_sloc1_1_0:
	.ds 1
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
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
;	../_mulint.c: 226: _mulint (int a, int b)
;	-----------------------------------------
;	 function _mulint
;	-----------------------------------------
__mulint:
;	../_mulint.c: 238: x = (union uu *)&a;
;	../_mulint.c: 239: y = (union uu *)&b;
;	../_mulint.c: 243: t.t = (unsigned char)a * (unsigned char)b;
	mov	a, __mulint_PARM_1+0
	mov	__muluchar_PARM_1+0, a
	mov	a, __mulint_PARM_2+0
	mov	__muluchar_PARM_2+0, a
	call	__muluchar
	mov	__mulint_t_65536_2+0, a
	mov	a, p
;	../_mulint.c: 244: t.s.hi += ((unsigned char)a * y->s.hi) + (x->s.hi * (unsigned char)b);
	mov	__mulint_t_65536_2+1, a
	mov	__mulint_sloc0_1_0+0, a
	mov	a, __mulint_PARM_1+0
	mov	__muluchar_PARM_1+0, a
	mov	a, __mulint_PARM_2+1
	mov	__muluchar_PARM_2+0, a
	call	__muluchar
	mov	__mulint_sloc1_1_0+0, a
	mov	a, __mulint_PARM_1+1
	mov	__muluchar_PARM_1+0, a
	mov	a, __mulint_PARM_2+0
	mov	__muluchar_PARM_2+0, a
	call	__muluchar
	add	a, __mulint_sloc1_1_0+0
	add	a, __mulint_sloc0_1_0+0
	mov	__mulint_t_65536_2+1, a
;	../_mulint.c: 246: return t.t;
	mov	a, __mulint_t_65536_2+0
	mov	p, a
	mov	a, __mulint_t_65536_2+1
	xch	a, p
;	../_mulint.c: 247: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
