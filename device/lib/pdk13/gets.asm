;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module gets
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _gets
	.globl _putchar
	.globl _getchar
	.globl _gets_PARM_1
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_gets_PARM_1:
	.ds 2
_gets_sloc0_1_0:
	.ds 2
_gets_sloc1_1_0:
	.ds 1
_gets_sloc2_1_0:
	.ds 2
_gets_sloc3_1_0:
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
;	../gets.c: 32: gets (char *s)
;	-----------------------------------------
;	 function gets
;	-----------------------------------------
_gets:
;	../gets.c: 35: unsigned int count = 0;
	clear	_gets_sloc0_1_0+0
	clear	_gets_sloc0_1_0+1
;	../gets.c: 37: while (1)
00109$:
;	../gets.c: 39: c = getchar ();
	call	_getchar
;	../gets.c: 40: switch(c)
	mov	_gets_sloc1_1_0+0, a
	cneqsn	a, #0x08
	goto	00101$
	mov	a, _gets_sloc1_1_0+0
	cneqsn	a, #0x0a
	goto	00105$
	mov	a, _gets_sloc1_1_0+0
	cneqsn	a, #0x0d
	goto	00105$
	goto	00106$
;	../gets.c: 42: case '\b': /* backspace */
00101$:
;	../gets.c: 43: if (count)
	mov	a, _gets_sloc0_1_0+0
	or	a, _gets_sloc0_1_0+1
	cneqsn	a, #0x00
	goto	00109$
;	../gets.c: 45: putchar ('\b');
	mov	a, #0x08
	mov	_putchar_PARM_1+0, a
	clear	_putchar_PARM_1+1
	call	_putchar
;	../gets.c: 46: putchar (' ');
	mov	a, #0x20
	mov	_putchar_PARM_1+0, a
	clear	_putchar_PARM_1+1
	call	_putchar
;	../gets.c: 47: putchar ('\b');
	mov	a, #0x08
	mov	_putchar_PARM_1+0, a
	clear	_putchar_PARM_1+1
	call	_putchar
;	../gets.c: 48: --s;
	dec	_gets_PARM_1+0
	subc	_gets_PARM_1+1
;	../gets.c: 49: --count;
	dec	_gets_sloc0_1_0+0
	subc	_gets_sloc0_1_0+1
;	../gets.c: 51: break;
	goto	00109$
;	../gets.c: 54: case '\r': /* CR or LF */
00105$:
;	../gets.c: 55: putchar ('\r');
	mov	a, #0x0d
	mov	_putchar_PARM_1+0, a
	clear	_putchar_PARM_1+1
	call	_putchar
;	../gets.c: 56: putchar ('\n');
	mov	a, #0x0a
	mov	_putchar_PARM_1+0, a
	clear	_putchar_PARM_1+1
	call	_putchar
;	../gets.c: 57: *s = 0;
	mov	a, _gets_PARM_1+0
	mov	_gets_sloc2_1_0+0, a
	mov	a, _gets_PARM_1+1
	mov	_gets_sloc2_1_0+1, a
	mov	a, _gets_sloc2_1_0+0
	mov	p, a
	mov	a, #0x00
	idxm	p, a
;	../gets.c: 58: return s;
	mov	a, _gets_sloc2_1_0+1
	mov	p, a
	mov	a, _gets_sloc2_1_0+0
	ret
;	../gets.c: 60: default:
00106$:
;	../gets.c: 61: *s++ = c;
	mov	a, _gets_PARM_1+0
	mov	_gets_sloc3_1_0+0, a
	mov	a, _gets_PARM_1+1
	mov	_gets_sloc3_1_0+1, a
	mov	a, _gets_sloc3_1_0+0
	mov	p, a
	mov	a, _gets_sloc1_1_0+0
	idxm	p, a
	mov	a, _gets_sloc3_1_0+0
	add	a, #0x01
	mov	_gets_PARM_1+0, a
	mov	a, _gets_sloc3_1_0+1
	addc	a
	mov	_gets_PARM_1+1, a
;	../gets.c: 62: ++count;
	inc	_gets_sloc0_1_0+0
	addc	_gets_sloc0_1_0+1
;	../gets.c: 63: putchar (c);
	mov	a, _gets_sloc1_1_0+0
	mov	_putchar_PARM_1+0, a
	clear	_putchar_PARM_1+1
	call	_putchar
;	../gets.c: 65: }
	goto	00109$
;	../gets.c: 67: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
