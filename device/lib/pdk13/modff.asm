;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module modff
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _modff_PARM_2
	.globl _modff_PARM_1
	.globl _modff
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_modff_PARM_1:
	.ds 4
_modff_PARM_2:
	.ds 2
_modff_sloc0_1_0:
	.ds 4
_modff_sloc1_1_0:
	.ds 4
_modff_sloc2_1_0:
	.ds 4
_modff_sloc3_1_0:
	.ds 2
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
;	../modff.c: 33: float modff(float x, float * y)
;	-----------------------------------------
;	 function modff
;	-----------------------------------------
_modff:
;	../modff.c: 35: *y=(long)x;
	mov	a, _modff_PARM_2+0
	mov	_modff_sloc3_1_0+0, a
	mov	a, _modff_PARM_2+1
	mov	_modff_sloc3_1_0+1, a
	mov	a, _modff_PARM_1+0
	mov	___fs2slong_PARM_1+0, a
	mov	a, _modff_PARM_1+1
	mov	___fs2slong_PARM_1+1, a
	mov	a, _modff_PARM_1+2
	mov	___fs2slong_PARM_1+2, a
	mov	a, _modff_PARM_1+3
	mov	___fs2slong_PARM_1+3, a
	mov	a, #_modff_sloc0_1_0
	push	af
	call	___fs2slong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _modff_sloc0_1_0+0
	mov	___slong2fs_PARM_1+0, a
	mov	a, _modff_sloc0_1_0+1
	mov	___slong2fs_PARM_1+1, a
	mov	a, _modff_sloc0_1_0+2
	mov	___slong2fs_PARM_1+2, a
	mov	a, _modff_sloc0_1_0+3
	mov	___slong2fs_PARM_1+3, a
	mov	a, #_modff_sloc1_1_0
	push	af
	call	___slong2fs
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _modff_sloc3_1_0+0
	mov	p, a
	mov	a, _modff_sloc1_1_0+0
	idxm	p, a
	inc	p
	mov	a, _modff_sloc1_1_0+1
	idxm	p, a
	inc	p
	mov	a, _modff_sloc1_1_0+2
	idxm	p, a
	inc	p
	mov	a, _modff_sloc1_1_0+3
	idxm	p, a
;	../modff.c: 36: return (x-*y);
	mov	a, _modff_PARM_1+0
	mov	___fssub_PARM_1+0, a
	mov	a, _modff_PARM_1+1
	mov	___fssub_PARM_1+1, a
	mov	a, _modff_PARM_1+2
	mov	___fssub_PARM_1+2, a
	mov	a, _modff_PARM_1+3
	mov	___fssub_PARM_1+3, a
	mov	a, _modff_sloc1_1_0+0
	mov	___fssub_PARM_2+0, a
	mov	a, _modff_sloc1_1_0+1
	mov	___fssub_PARM_2+1, a
	mov	a, _modff_sloc1_1_0+2
	mov	___fssub_PARM_2+2, a
	mov	a, _modff_sloc1_1_0+3
	mov	___fssub_PARM_2+3, a
	mov	a, #_modff_sloc2_1_0
	push	af
	call	___fssub
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _modff_sloc2_1_0+0
	idxm	p, a
	inc	p
	mov	a, _modff_sloc2_1_0+1
	idxm	p, a
	inc	p
	mov	a, _modff_sloc2_1_0+2
	idxm	p, a
	inc	p
	mov	a, _modff_sloc2_1_0+3
	idxm	p, a
;	../modff.c: 37: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
