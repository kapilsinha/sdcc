;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _uchar2fs
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
	.globl ___uchar2fs_PARM_1
	.globl ___uchar2fs
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
___uchar2fs_PARM_1:
	.ds 1
___uchar2fs_sloc0_1_0:
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
;	../_uchar2fs.c: 55: float __uchar2fs (unsigned char uc) {
;	-----------------------------------------
;	 function __uchar2fs
;	-----------------------------------------
___uchar2fs:
;	../_uchar2fs.c: 56: return __ulong2fs(uc);
	mov	a, ___uchar2fs_PARM_1+0
	mov	___ulong2fs_PARM_1+0, a
	clear	___ulong2fs_PARM_1+1
	clear	___ulong2fs_PARM_1+2
	clear	___ulong2fs_PARM_1+3
	mov	a, #___uchar2fs_sloc0_1_0
	push	af
	call	___ulong2fs
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, ___uchar2fs_sloc0_1_0+0
	idxm	p, a
	inc	p
	mov	a, ___uchar2fs_sloc0_1_0+1
	idxm	p, a
	inc	p
	mov	a, ___uchar2fs_sloc0_1_0+2
	idxm	p, a
	inc	p
	mov	a, ___uchar2fs_sloc0_1_0+3
	idxm	p, a
;	../_uchar2fs.c: 57: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
