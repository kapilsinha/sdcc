;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module vprintf
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putchar
	.globl __print_format
	.globl _vprintf_PARM_2
	.globl _vprintf_PARM_1
	.globl _vprintf
	.globl _printf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_vprintf_PARM_1:
	.ds 2
_vprintf_PARM_2:
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
;	../vprintf.c: 34: put_char_to_stdout (char c, void* p) _REENTRANT
;	-----------------------------------------
;	 function put_char_to_stdout
;	-----------------------------------------
_put_char_to_stdout:
;	../vprintf.c: 37: putchar (c);
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	_putchar_PARM_1+0, a
	clear	_putchar_PARM_1+1
	call	_putchar
;	../vprintf.c: 38: }
	ret
;	../vprintf.c: 41: vprintf (const char *format, va_list ap)
;	-----------------------------------------
;	 function vprintf
;	-----------------------------------------
_vprintf:
;	../vprintf.c: 43: return _print_format (put_char_to_stdout, NULL, format, ap);
	mov	a, #<(_put_char_to_stdout + 0)
	mov	__print_format_PARM_1+0, a
	mov	a, #>(_put_char_to_stdout + 0)
	mov	__print_format_PARM_1+1, a
	clear	__print_format_PARM_2+0
	clear	__print_format_PARM_2+1
	mov	a, _vprintf_PARM_1+0
	mov	__print_format_PARM_3+0, a
	mov	a, _vprintf_PARM_1+1
	mov	__print_format_PARM_3+1, a
	mov	a, _vprintf_PARM_2+0
	mov	__print_format_PARM_4+0, a
	mov	a, _vprintf_PARM_2+1
	mov	__print_format_PARM_4+1, a
	call	__print_format
;	../vprintf.c: 44: }
	ret
;	../vprintf.c: 47: printf (const char *format, ...)
;	-----------------------------------------
;	 function printf
;	-----------------------------------------
_printf:
;	../vprintf.c: 52: va_start (arg, format);
	mov	a, sp
	add	a, #0xfc
	mov	__print_format_PARM_4+0, a
	clear	__print_format_PARM_4+1
;	../vprintf.c: 53: i = _print_format (put_char_to_stdout, NULL, format, arg);
	mov	a, #<(_put_char_to_stdout + 0)
	mov	__print_format_PARM_1+0, a
	mov	a, #>(_put_char_to_stdout + 0)
	mov	__print_format_PARM_1+1, a
	clear	__print_format_PARM_2+0
	clear	__print_format_PARM_2+1
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	__print_format_PARM_3+0, a
	inc	p
	idxm	a, p
	mov	__print_format_PARM_3+1, a
	call	__print_format
;	../vprintf.c: 56: return i;
;	../vprintf.c: 57: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
