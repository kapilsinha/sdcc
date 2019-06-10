;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module sprintf
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __print_format
	.globl _vsprintf_PARM_3
	.globl _vsprintf_PARM_2
	.globl _vsprintf_PARM_1
	.globl _vsprintf
	.globl _sprintf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_vsprintf_PARM_1:
	.ds 2
_vsprintf_PARM_2:
	.ds 2
_vsprintf_PARM_3:
	.ds 2
_vsprintf_sloc3_1_0:
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
;	../sprintf.c: 34: put_char_to_string (char c, void* p) _REENTRANT
;	-----------------------------------------
;	 function put_char_to_string
;	-----------------------------------------
_put_char_to_string:
	mov	a, sp
	add	a, #6
;	../sprintf.c: 36: char **buf = (char **)p;
	mov	sp, a
	add	a, #0xf4
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #6
	xch	a, p
	idxm	p, a
	mov	a, #-5
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #6
	xch	a, p
	idxm	p, a
;	../sprintf.c: 37: *(*buf)++ = c;
	idxm	a, p
	push	af
	dec	p
	idxm	a, p
	mov	p, a
	pop	af
	call	__gptrget2
	push	af
	mov	a, sp
	add	a, #0xfb
	xch	a, p
	idxm	p, a
	pop	af
	dec	p
	idxm	p, a
	idxm	a, p
	add	a, #0x01
	push	af
	inc	p
	inc	p
	pop	af
	idxm	p, a
	push	af
	dec	p
	pop	af
	idxm	a, p
	addc	a
	inc	p
	inc	p
	idxm	p, a
	dec	p
	idxm	a, p
	push	af
	mov	a, #-4
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	idxm	p, a
	mov	a, sp
	add	a, #0xff
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-5
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xf6
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #6
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	idxm	p, a
;	../sprintf.c: 38: }
	mov	a, sp
	add	a, #-6
	mov	sp, a
	ret
;	../sprintf.c: 41: vsprintf (char *buf, const char *format, va_list ap)
;	-----------------------------------------
;	 function vsprintf
;	-----------------------------------------
_vsprintf:
;	../sprintf.c: 44: i = _print_format (put_char_to_string, &buf, format, ap);
	mov	a, #(_vsprintf_PARM_1 + 0)
	mov	__print_format_PARM_2+0, a
	clear	__print_format_PARM_2+1
	mov	a, #<(_put_char_to_string + 0)
	mov	__print_format_PARM_1+0, a
	mov	a, #>(_put_char_to_string + 0)
	mov	__print_format_PARM_1+1, a
	mov	a, _vsprintf_PARM_2+0
	mov	__print_format_PARM_3+0, a
	mov	a, _vsprintf_PARM_2+1
	mov	__print_format_PARM_3+1, a
	mov	a, _vsprintf_PARM_3+0
	mov	__print_format_PARM_4+0, a
	mov	a, _vsprintf_PARM_3+1
	mov	__print_format_PARM_4+1, a
	call	__print_format
	mov	_vsprintf_sloc3_1_0+0, a
	mov	a, p
	mov	_vsprintf_sloc3_1_0+1, a
;	../sprintf.c: 45: *buf = 0;
	mov	a, _vsprintf_PARM_1+0
	mov	p, a
	mov	a, _vsprintf_PARM_1+1
	mov	a, #0x00
	idxm	p, a
;	../sprintf.c: 46: return i;
	mov	a, _vsprintf_sloc3_1_0+1
	mov	p, a
	mov	a, _vsprintf_sloc3_1_0+0
;	../sprintf.c: 47: }
	ret
;	../sprintf.c: 50: sprintf (char *buf, const char *format, ...)
;	-----------------------------------------
;	 function sprintf
;	-----------------------------------------
_sprintf:
	push	af
;	../sprintf.c: 55: va_start (arg, format);
	mov	a, sp
	add	a, #0xf8
	mov	__print_format_PARM_4+0, a
	clear	__print_format_PARM_4+1
;	../sprintf.c: 56: i = _print_format (put_char_to_string, &buf, format, arg);
	mov	a, sp
	add	a, #0xfa
	mov	__print_format_PARM_2+0, a
	clear	__print_format_PARM_2+1
	mov	a, #<(_put_char_to_string + 0)
	mov	__print_format_PARM_1+0, a
	mov	a, #>(_put_char_to_string + 0)
	mov	__print_format_PARM_1+1, a
	mov	a, sp
	add	a, #0xf8
	mov	p, a
	idxm	a, p
	mov	__print_format_PARM_3+0, a
	inc	p
	idxm	a, p
	mov	__print_format_PARM_3+1, a
	call	__print_format
	xch	a, p
	mov	a, p
	xch	a, p
	mov	a, sp
	add	a, #0xfe
	xch	a, p
	idxm	p, a
	inc	p
	idxm	p, a
;	../sprintf.c: 57: *buf = 0;
	mov	a, #-4
	add	p, a
	idxm	a, p
	push	af
	dec	p
	idxm	a, p
	mov	p, a
	pop	af
	mov	a, #0x00
	idxm	p, a
;	../sprintf.c: 60: return i;
	mov	a, sp
	add	a, #0xfe
	mov	p, a
	idxm	a, p
	push	af
	inc	p
	idxm	a, p
	mov	p, a
	pop	af
;	../sprintf.c: 61: }
	push	af
	mov	a, p
	push	af
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	dec	p
	dec	p
	idxm	p, a
	mov	a, #3
	add	p, a
	idxm	a, p
	dec	p
	dec	p
	idxm	p, a
	mov	a, #3
	add	p, a
	idxm	a, p
	dec	p
	dec	p
	idxm	p, a
	mov	a, #3
	add	p, a
	idxm	a, p
	dec	p
	dec	p
	idxm	p, a
	mov	a, sp
	add	a, #-2
	mov	sp, a
	pop	af
	mov	p, a
	pop	af
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
