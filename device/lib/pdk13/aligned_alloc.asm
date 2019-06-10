;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module aligned_alloc
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _malloc
	.globl _aligned_alloc_PARM_2
	.globl _aligned_alloc_PARM_1
	.globl _aligned_alloc
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_aligned_alloc_PARM_1:
	.ds 2
_aligned_alloc_PARM_2:
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
;	./../../include/stdlib.h: 86: inline void *aligned_alloc(size_t alignment, size_t size)
;	-----------------------------------------
;	 function aligned_alloc
;	-----------------------------------------
_aligned_alloc:
;	./../../include/stdlib.h: 89: return malloc(size);
	mov	a, _aligned_alloc_PARM_2+0
	mov	_malloc_PARM_1+0, a
	mov	a, _aligned_alloc_PARM_2+1
	mov	_malloc_PARM_1+1, a
	call	_malloc
;	./../../include/stdlib.h: 90: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
