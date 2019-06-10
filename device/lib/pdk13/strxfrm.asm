;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module strxfrm
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
	.globl _strncpy
	.globl _strxfrm_PARM_3
	.globl _strxfrm_PARM_2
	.globl _strxfrm_PARM_1
	.globl _strxfrm
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_strxfrm_PARM_1:
	.ds 2
_strxfrm_PARM_2:
	.ds 2
_strxfrm_PARM_3:
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
;	../strxfrm.c: 31: size_t strxfrm(char *dest, const char *src, size_t n)
;	-----------------------------------------
;	 function strxfrm
;	-----------------------------------------
_strxfrm:
;	../strxfrm.c: 33: strncpy(dest, src, n);
	mov	a, _strxfrm_PARM_1+0
	mov	_strncpy_PARM_1+0, a
	mov	a, _strxfrm_PARM_1+1
	mov	_strncpy_PARM_1+1, a
	mov	a, _strxfrm_PARM_2+0
	mov	_strncpy_PARM_2+0, a
	mov	a, _strxfrm_PARM_2+1
	mov	_strncpy_PARM_2+1, a
	mov	a, _strxfrm_PARM_3+0
	mov	_strncpy_PARM_3+0, a
	mov	a, _strxfrm_PARM_3+1
	mov	_strncpy_PARM_3+1, a
	call	_strncpy
;	../strxfrm.c: 34: return(strlen(src) + 1);
	mov	a, _strxfrm_PARM_2+0
	mov	_strlen_PARM_1+0, a
	mov	a, _strxfrm_PARM_2+1
	mov	_strlen_PARM_1+1, a
	call	_strlen
	add	a, #0x01
	push	af
	addc	p
	pop	af
;	../strxfrm.c: 35: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
