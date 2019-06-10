;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _itoa
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __itoa
	.globl __uitoa
	.globl __itoa_PARM_3
	.globl __itoa_PARM_2
	.globl __itoa_PARM_1
	.globl __uitoa_PARM_3
	.globl __uitoa_PARM_2
	.globl __uitoa_PARM_1
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__uitoa_PARM_1:
	.ds 2
__uitoa_PARM_2:
	.ds 2
__uitoa_PARM_3:
	.ds 1
__uitoa_sloc0_1_0:
	.ds 1
__uitoa_sloc1_1_0:
	.ds 2
__uitoa_sloc2_1_0:
	.ds 2
__uitoa_sloc3_1_0:
	.ds 2
__uitoa_sloc4_1_0:
	.ds 1
__uitoa_sloc5_1_0:
	.ds 2
__uitoa_sloc6_1_0:
	.ds 1
__uitoa_sloc7_1_0:
	.ds 2
__uitoa_sloc8_1_0:
	.ds 2
__uitoa_sloc9_1_0:
	.ds 1
__uitoa_sloc10_1_0:
	.ds 2
__uitoa_sloc11_1_0:
	.ds 2
__itoa_PARM_1:
	.ds 2
__itoa_PARM_2:
	.ds 2
__itoa_PARM_3:
	.ds 1
__itoa_sloc12_1_0:
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
;	../_itoa.c: 40: void _uitoa(unsigned int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function _uitoa
;	-----------------------------------------
__uitoa:
;	../_itoa.c: 45: do {
	clear	__uitoa_sloc0_1_0+0
00103$:
;	../_itoa.c: 46: string[index] = '0' + (value % radix);
	mov	a, __uitoa_sloc0_1_0+0
	mov	__uitoa_sloc1_1_0+0, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	__uitoa_sloc1_1_0+1, a
	mov	a, __uitoa_PARM_2+0
	add	a, __uitoa_sloc1_1_0+0
	mov	__uitoa_sloc2_1_0+0, a
	mov	a, __uitoa_PARM_2+1
	addc	a, __uitoa_sloc1_1_0+1
	mov	__uitoa_sloc2_1_0+1, a
	mov	a, __uitoa_PARM_3+0
	mov	__uitoa_sloc3_1_0+0, a
	clear	__uitoa_sloc3_1_0+1
	mov	a, __uitoa_PARM_1+0
	mov	__moduint_PARM_1+0, a
	mov	a, __uitoa_PARM_1+1
	mov	__moduint_PARM_1+1, a
	mov	a, __uitoa_sloc3_1_0+0
	mov	__moduint_PARM_2+0, a
	mov	a, __uitoa_sloc3_1_0+1
	mov	__moduint_PARM_2+1, a
	call	__moduint
	add	a, #0x30
	mov	p, a
	mov	a, __uitoa_sloc2_1_0+0
	xch	a, p
	idxm	p, a
;	../_itoa.c: 47: if (string[index] > '9')
	mov	a, __uitoa_sloc2_1_0+0
	mov	p, a
	mov	a, __uitoa_sloc2_1_0+1
	call	__gptrget
	ceqsn	a, #0x3a
	nop
	t0sn	f, c
	goto	00102$
;	../_itoa.c: 48: string[index] += 'A' - '9' - 1;
	mov	a, __uitoa_sloc2_1_0+0
	mov	p, a
	mov	a, __uitoa_sloc2_1_0+1
	call	__gptrget
	add	a, #0x07
	mov	p, a
	mov	a, __uitoa_sloc2_1_0+0
	xch	a, p
	idxm	p, a
00102$:
;	../_itoa.c: 49: value /= radix;
	mov	a, __uitoa_PARM_1+0
	mov	__divuint_PARM_1+0, a
	mov	a, __uitoa_PARM_1+1
	mov	__divuint_PARM_1+1, a
	mov	a, __uitoa_sloc3_1_0+0
	mov	__divuint_PARM_2+0, a
	mov	a, __uitoa_sloc3_1_0+1
	mov	__divuint_PARM_2+1, a
	call	__divuint
	mov	__uitoa_PARM_1+0, a
	mov	a, p
	mov	__uitoa_PARM_1+1, a
;	../_itoa.c: 50: ++index;
	inc	__uitoa_sloc0_1_0+0
;	../_itoa.c: 51: } while (value != 0);
	mov	a, __uitoa_PARM_1+0
	or	a, __uitoa_PARM_1+1
	ceqsn	a, #0x00
	goto	00103$
;	../_itoa.c: 54: string[index--] = '\0';
	mov	a, __uitoa_sloc0_1_0+0
	sub	a, #0x01
	mov	__uitoa_sloc4_1_0+0, a
	mov	a, __uitoa_sloc0_1_0+0
	mov	__uitoa_sloc5_1_0+0, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	__uitoa_sloc5_1_0+1, a
	mov	a, __uitoa_PARM_2+0
	add	a, __uitoa_sloc5_1_0+0
	mov	p, a
	mov	a, __uitoa_PARM_2+1
	addc	a, __uitoa_sloc5_1_0+1
	mov	a, #0x00
	idxm	p, a
;	../_itoa.c: 57: while (index > i) {
	clear	__uitoa_sloc6_1_0+0
00106$:
	mov	a, __uitoa_sloc6_1_0+0
	sub	a, __uitoa_sloc4_1_0+0
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t1sn	f, c
	goto	00109$
;	../_itoa.c: 58: char tmp = string[i];
	mov	a, __uitoa_sloc6_1_0+0
	mov	__uitoa_sloc7_1_0+0, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	__uitoa_sloc7_1_0+1, a
	mov	a, __uitoa_PARM_2+0
	add	a, __uitoa_sloc7_1_0+0
	mov	__uitoa_sloc8_1_0+0, a
	mov	a, __uitoa_PARM_2+1
	addc	a, __uitoa_sloc7_1_0+1
	mov	__uitoa_sloc8_1_0+1, a
	mov	a, __uitoa_sloc8_1_0+0
	mov	p, a
	mov	a, __uitoa_sloc8_1_0+1
	call	__gptrget
	mov	__uitoa_sloc9_1_0+0, a
;	../_itoa.c: 59: string[i] = string[index];
	mov	a, __uitoa_sloc4_1_0+0
	mov	__uitoa_sloc10_1_0+0, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	__uitoa_sloc10_1_0+1, a
	mov	a, __uitoa_PARM_2+0
	add	a, __uitoa_sloc10_1_0+0
	mov	__uitoa_sloc11_1_0+0, a
	mov	a, __uitoa_PARM_2+1
	addc	a, __uitoa_sloc10_1_0+1
	mov	__uitoa_sloc11_1_0+1, a
	mov	a, __uitoa_sloc11_1_0+0
	mov	p, a
	mov	a, __uitoa_sloc11_1_0+1
	call	__gptrget
	mov	p, a
	mov	a, __uitoa_sloc8_1_0+0
	xch	a, p
	idxm	p, a
;	../_itoa.c: 60: string[index] = tmp;
	mov	a, __uitoa_sloc11_1_0+0
	mov	p, a
	mov	a, __uitoa_sloc9_1_0+0
	idxm	p, a
;	../_itoa.c: 61: ++i;
	inc	__uitoa_sloc6_1_0+0
;	../_itoa.c: 62: --index;
	dec	__uitoa_sloc4_1_0+0
	goto	00106$
00109$:
;	../_itoa.c: 64: }
	ret
;	../_itoa.c: 66: void _itoa(int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function _itoa
;	-----------------------------------------
__itoa:
;	../_itoa.c: 68: if (value < 0 && radix == 10) {
	mov	a, __itoa_PARM_1+1
	sub	a, #0x80
	t0sn	f, c
	goto	00102$
	mov	a, __itoa_PARM_3+0
	ceqsn	a, #0x0a
	goto	00102$
;	../_itoa.c: 69: *string++ = '-';
	mov	a, __itoa_PARM_2+0
	mov	__itoa_sloc12_1_0+0, a
	mov	a, __itoa_PARM_2+1
	mov	__itoa_sloc12_1_0+1, a
	mov	a, __itoa_sloc12_1_0+0
	mov	p, a
	mov	a, #0x2d
	idxm	p, a
	mov	a, __itoa_sloc12_1_0+0
	add	a, #0x01
	mov	__itoa_PARM_2+0, a
	mov	a, __itoa_sloc12_1_0+1
	addc	a
	mov	__itoa_PARM_2+1, a
;	../_itoa.c: 70: value = -value;
	mov	a, #0x00
	sub	a, __itoa_PARM_1+0
	mov	__itoa_PARM_1+0, a
	mov	a, #0x00
	subc	a, __itoa_PARM_1+1
	mov	__itoa_PARM_1+1, a
00102$:
;	../_itoa.c: 72: _uitoa(value, string, radix);
	mov	a, __itoa_PARM_1+0
	mov	__uitoa_PARM_1+0, a
	mov	a, __itoa_PARM_1+1
	mov	__uitoa_PARM_1+1, a
	mov	a, __itoa_PARM_2+0
	mov	__uitoa_PARM_2+0, a
	mov	a, __itoa_PARM_2+1
	mov	__uitoa_PARM_2+1, a
	mov	a, __itoa_PARM_3+0
	mov	__uitoa_PARM_3+0, a
	call	__uitoa
;	../_itoa.c: 73: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
