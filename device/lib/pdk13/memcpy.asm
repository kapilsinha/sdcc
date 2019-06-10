;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module memcpy
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___memcpy
	.globl _memcpy_PARM_3
	.globl _memcpy_PARM_2
	.globl _memcpy_PARM_1
	.globl _memcpy
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_memcpy_PARM_1:
	.ds 2
_memcpy_PARM_2:
	.ds 2
_memcpy_PARM_3:
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
;	../memcpy.c: 35: void *memcpy (void *dst, const void *src, size_t n)
;	-----------------------------------------
;	 function memcpy
;	-----------------------------------------
_memcpy:
;	../memcpy.c: 37: return __memcpy (dst, src, n);
	mov	a, _memcpy_PARM_1+0
	mov	___memcpy_PARM_1+0, a
	mov	a, _memcpy_PARM_1+1
	mov	___memcpy_PARM_1+1, a
	mov	a, _memcpy_PARM_2+0
	mov	___memcpy_PARM_2+0, a
	mov	a, _memcpy_PARM_2+1
	mov	___memcpy_PARM_2+1, a
	mov	a, _memcpy_PARM_3+0
	mov	___memcpy_PARM_3+0, a
	mov	a, _memcpy_PARM_3+1
	mov	___memcpy_PARM_3+1, a
	call	___memcpy
;	../memcpy.c: 38: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
