;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module __assert
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___assert
	.globl _printf
	.globl ___assert_PARM_4
	.globl ___assert_PARM_3
	.globl ___assert_PARM_2
	.globl ___assert_PARM_1
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
___assert_PARM_1:
	.ds 2
___assert_PARM_2:
	.ds 2
___assert_PARM_3:
	.ds 2
___assert_PARM_4:
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
;	../__assert.c: 32: void __assert(const char *expression, const char *functionname, const char *filename, unsigned int linenumber)
;	-----------------------------------------
;	 function __assert
;	-----------------------------------------
___assert:
;	../__assert.c: 34: printf("Assert(%s) failed in function %s at line %u in file %s.\n",
	mov	a, ___assert_PARM_3+0
	push	af
	mov	a, sp
	add	a, #0xff
	mov	p, a
	mov	a, ___assert_PARM_3+1
	idxm	p, a
	mov	a, ___assert_PARM_4+0
	push	af
	inc	p
	inc	p
	mov	a, ___assert_PARM_4+1
	idxm	p, a
	mov	a, ___assert_PARM_2+0
	push	af
	inc	p
	inc	p
	mov	a, ___assert_PARM_2+1
	idxm	p, a
	mov	a, ___assert_PARM_1+0
	push	af
	inc	p
	inc	p
	mov	a, ___assert_PARM_1+1
	idxm	p, a
	mov	a, #<(___str_0 + 0)
	push	af
	inc	p
	inc	p
	mov	a, #>(___str_0 + 0x8000 + 0)
	idxm	p, a
	call	_printf
	mov	a, sp
	add	a, #-10
	mov	sp, a
00103$:
	goto	00103$
;	../__assert.c: 37: }
	ret
	.area CODE
	.area CONST
	.area CONST
___str_0:
	ret #0x41	; A
	ret #0x73	; s
	ret #0x73	; s
	ret #0x65	; e
	ret #0x72	; r
	ret #0x74	; t
	ret #0x28	; (
	ret #0x25	; %
	ret #0x73	; s
	ret #0x29	; )
	ret #0x20	;  
	ret #0x66	; f
	ret #0x61	; a
	ret #0x69	; i
	ret #0x6c	; l
	ret #0x65	; e
	ret #0x64	; d
	ret #0x20	;  
	ret #0x69	; i
	ret #0x6e	; n
	ret #0x20	;  
	ret #0x66	; f
	ret #0x75	; u
	ret #0x6e	; n
	ret #0x63	; c
	ret #0x74	; t
	ret #0x69	; i
	ret #0x6f	; o
	ret #0x6e	; n
	ret #0x20	;  
	ret #0x25	; %
	ret #0x73	; s
	ret #0x20	;  
	ret #0x61	; a
	ret #0x74	; t
	ret #0x20	;  
	ret #0x6c	; l
	ret #0x69	; i
	ret #0x6e	; n
	ret #0x65	; e
	ret #0x20	;  
	ret #0x25	; %
	ret #0x75	; u
	ret #0x20	;  
	ret #0x69	; i
	ret #0x6e	; n
	ret #0x20	;  
	ret #0x66	; f
	ret #0x69	; i
	ret #0x6c	; l
	ret #0x65	; e
	ret #0x20	;  
	ret #0x25	; %
	ret #0x73	; s
	ret #0x2e	; .
	ret #0x0a
	ret #0x00
	.area CODE
	.area CABS (ABS)
