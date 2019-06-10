;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _fssub
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fssub_PARM_2
	.globl ___fssub_PARM_1
	.globl ___fssub
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
___fssub_PARM_1:
	.ds 4
___fssub_PARM_2:
	.ds 4
___fssub_sloc0_1_0:
	.ds 4
___fssub_sloc1_1_0:
	.ds 4
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
;	../_fssub.c: 73: float __fssub (float a1, float a2)
;	-----------------------------------------
;	 function __fssub
;	-----------------------------------------
___fssub:
;	../_fssub.c: 75: float neg = -a1;
	mov	a, ___fssub_PARM_1+0
	mov	___fsadd_PARM_1+0, a
	mov	a, ___fssub_PARM_1+1
	mov	___fsadd_PARM_1+1, a
	mov	a, ___fssub_PARM_1+2
	mov	___fsadd_PARM_1+2, a
	mov	a, ___fssub_PARM_1+3
	xor	a, #0x80
	mov	___fsadd_PARM_1+3, a
;	../_fssub.c: 76: return -(neg + a2);
	mov	a, ___fssub_PARM_2+0
	mov	___fsadd_PARM_2+0, a
	mov	a, ___fssub_PARM_2+1
	mov	___fsadd_PARM_2+1, a
	mov	a, ___fssub_PARM_2+2
	mov	___fsadd_PARM_2+2, a
	mov	a, ___fssub_PARM_2+3
	mov	___fsadd_PARM_2+3, a
	mov	a, #___fssub_sloc0_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, ___fssub_sloc0_1_0+0
	mov	___fssub_sloc1_1_0+0, a
	mov	a, ___fssub_sloc0_1_0+1
	mov	___fssub_sloc1_1_0+1, a
	mov	a, ___fssub_sloc0_1_0+2
	mov	___fssub_sloc1_1_0+2, a
	mov	a, ___fssub_sloc0_1_0+3
	xor	a, #0x80
	mov	___fssub_sloc1_1_0+3, a
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, ___fssub_sloc1_1_0+0
	idxm	p, a
	inc	p
	mov	a, ___fssub_sloc1_1_0+1
	idxm	p, a
	inc	p
	mov	a, ___fssub_sloc1_1_0+2
	idxm	p, a
	inc	p
	mov	a, ___fssub_sloc1_1_0+3
	idxm	p, a
;	../_fssub.c: 77: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
