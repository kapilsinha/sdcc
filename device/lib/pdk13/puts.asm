;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module puts
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putchar
	.globl _puts_PARM_1
	.globl _puts
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_puts_PARM_1:
	.ds 2
_puts_sloc0_1_0:
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
;	../puts.c: 31: int puts (const char *s)
;	-----------------------------------------
;	 function puts
;	-----------------------------------------
_puts:
;	../puts.c: 33: while (*s)
	mov	a, _puts_PARM_1+0
	mov	_puts_sloc0_1_0+0, a
	mov	a, _puts_PARM_1+1
	mov	_puts_sloc0_1_0+1, a
00103$:
	mov	a, _puts_sloc0_1_0+0
	mov	p, a
	mov	a, _puts_sloc0_1_0+1
	call	__gptrget
	cneqsn	a, #0x00
	goto	00105$
;	../puts.c: 34: if (putchar(*s++) == EOF)
	inc	_puts_sloc0_1_0+0
	addc	_puts_sloc0_1_0+1
	mov	_putchar_PARM_1+0, a
	clear	_putchar_PARM_1+1
	call	_putchar
	ceqsn	a, #0xff
	goto	00103$
	mov	a, p
	ceqsn	a, #0xff
	goto	00103$
;	../puts.c: 35: return EOF;
	mov	a, #0xff
	mov	p, a
	ret	#0xff
00105$:
;	../puts.c: 36: return putchar('\n');
	mov	a, #0x0a
	mov	_putchar_PARM_1+0, a
	clear	_putchar_PARM_1+1
	call	_putchar
;	../puts.c: 37: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
