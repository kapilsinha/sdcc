;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _sint2fs
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___slong2fs
	.globl ___sint2fs_PARM_1
	.globl ___sint2fs
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
___sint2fs_PARM_1:
	.ds 2
___sint2fs_sloc0_1_0:
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
;	../_sint2fs.c: 54: float __sint2fs (signed int si) {
;	-----------------------------------------
;	 function __sint2fs
;	-----------------------------------------
___sint2fs:
;	../_sint2fs.c: 55: return __slong2fs(si);
	mov	a, ___sint2fs_PARM_1+0
	mov	___slong2fs_PARM_1+0, a
	mov	a, ___sint2fs_PARM_1+1
	mov	___slong2fs_PARM_1+1, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	___slong2fs_PARM_1+2, a
	mov	___slong2fs_PARM_1+3, a
	mov	a, #___sint2fs_sloc0_1_0
	push	af
	call	___slong2fs
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, ___sint2fs_sloc0_1_0+0
	idxm	p, a
	inc	p
	mov	a, ___sint2fs_sloc0_1_0+1
	idxm	p, a
	inc	p
	mov	a, ___sint2fs_sloc0_1_0+2
	idxm	p, a
	inc	p
	mov	a, ___sint2fs_sloc0_1_0+3
	idxm	p, a
;	../_sint2fs.c: 56: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
