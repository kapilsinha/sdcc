;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _slong2fs
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
	.globl ___slong2fs_PARM_1
	.globl ___slong2fs
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
___slong2fs_PARM_1:
	.ds 4
___slong2fs_sloc0_1_0:
	.ds 4
___slong2fs_sloc1_1_0:
	.ds 4
___slong2fs_sloc2_1_0:
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
;	../_slong2fs.c: 79: float __slong2fs (signed long sl) {
;	-----------------------------------------
;	 function __slong2fs
;	-----------------------------------------
___slong2fs:
;	../_slong2fs.c: 80: if (sl<0) 
	mov	a, ___slong2fs_PARM_1+3
	sub	a, #0x80
	t0sn	f, c
	goto	00102$
;	../_slong2fs.c: 81: return -__ulong2fs(-sl);
	mov	a, #0x00
	sub	a, ___slong2fs_PARM_1+0
	mov	___ulong2fs_PARM_1+0, a
	mov	a, #0x00
	subc	a, ___slong2fs_PARM_1+1
	mov	___ulong2fs_PARM_1+1, a
	mov	a, #0x00
	subc	a, ___slong2fs_PARM_1+2
	mov	___ulong2fs_PARM_1+2, a
	mov	a, #0x00
	subc	a, ___slong2fs_PARM_1+3
	mov	___ulong2fs_PARM_1+3, a
	mov	a, #___slong2fs_sloc0_1_0
	push	af
	call	___ulong2fs
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, ___slong2fs_sloc0_1_0+0
	mov	___slong2fs_sloc2_1_0+0, a
	mov	a, ___slong2fs_sloc0_1_0+1
	mov	___slong2fs_sloc2_1_0+1, a
	mov	a, ___slong2fs_sloc0_1_0+2
	mov	___slong2fs_sloc2_1_0+2, a
	mov	a, ___slong2fs_sloc0_1_0+3
	xor	a, #0x80
	mov	___slong2fs_sloc2_1_0+3, a
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, ___slong2fs_sloc2_1_0+0
	idxm	p, a
	inc	p
	mov	a, ___slong2fs_sloc2_1_0+1
	idxm	p, a
	inc	p
	mov	a, ___slong2fs_sloc2_1_0+2
	idxm	p, a
	inc	p
	mov	a, ___slong2fs_sloc2_1_0+3
	idxm	p, a
	ret
00102$:
;	../_slong2fs.c: 83: return __ulong2fs(sl);
	mov	a, ___slong2fs_PARM_1+0
	mov	___ulong2fs_PARM_1+0, a
	mov	a, ___slong2fs_PARM_1+1
	mov	___ulong2fs_PARM_1+1, a
	mov	a, ___slong2fs_PARM_1+2
	mov	___ulong2fs_PARM_1+2, a
	mov	a, ___slong2fs_PARM_1+3
	mov	___ulong2fs_PARM_1+3, a
	mov	a, #___slong2fs_sloc1_1_0
	push	af
	call	___ulong2fs
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, ___slong2fs_sloc1_1_0+0
	idxm	p, a
	inc	p
	mov	a, ___slong2fs_sloc1_1_0+1
	idxm	p, a
	inc	p
	mov	a, ___slong2fs_sloc1_1_0+2
	idxm	p, a
	inc	p
	mov	a, ___slong2fs_sloc1_1_0+3
	idxm	p, a
;	../_slong2fs.c: 84: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
