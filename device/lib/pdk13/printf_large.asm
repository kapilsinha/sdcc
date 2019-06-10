;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module printf_large
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
	.globl __print_format_PARM_4
	.globl __print_format_PARM_3
	.globl __print_format_PARM_2
	.globl __print_format_PARM_1
	.globl __print_format
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_lower_case:
	.ds 1
_output_char:
	.ds 2
_p:
	.ds 2
_value:
	.ds 5
_charsOutputted:
	.ds 2
__output_char_PARM_1:
	.ds 1
_output_digit_PARM_1:
	.ds 1
_output_2digits_PARM_1:
	.ds 1
_calculate_digit_PARM_1:
	.ds 1
__print_format_PARM_1:
	.ds 2
__print_format_PARM_2:
	.ds 2
__print_format_PARM_3:
	.ds 2
__print_format_PARM_4:
	.ds 2
__print_format_store_262144_84:
	.ds 6
__print_format_sloc3_1_0:
	.ds 2
__print_format_sloc4_1_0:
	.ds 1
__print_format_sloc5_1_0:
	.ds 1
__print_format_sloc6_1_0:
	.ds 1
__print_format_sloc7_1_0:
	.ds 1
__print_format_sloc8_1_0:
	.ds 1
__print_format_sloc9_1_0:
	.ds 1
__print_format_sloc10_1_0:
	.ds 1
__print_format_sloc11_1_0:
	.ds 1
__print_format_sloc12_1_0:
	.ds 1
__print_format_sloc13_1_0:
	.ds 1
__print_format_sloc14_1_0:
	.ds 2
__print_format_sloc15_1_0:
	.ds 2
__print_format_sloc16_1_0:
	.ds 2
__print_format_sloc17_1_0:
	.ds 1
__print_format_sloc18_1_0:
	.ds 2
__print_format_sloc19_1_0:
	.ds 2
__print_format_sloc20_1_0:
	.ds 2
__print_format_sloc21_1_0:
	.ds 1
__print_format_sloc22_1_0:
	.ds 2
__print_format_sloc23_1_0:
	.ds 2
__print_format_sloc24_1_0:
	.ds 4
__print_format_sloc25_1_0:
	.ds 2
__print_format_sloc26_1_0:
	.ds 4
__print_format_sloc27_1_0:
	.ds 4
__print_format_sloc28_1_0:
	.ds 2
__print_format_sloc29_1_0:
	.ds 4
__print_format_sloc30_1_0:
	.ds 4
__print_format_sloc31_1_0:
	.ds 4
__print_format_sloc32_1_0:
	.ds 4
__print_format_sloc33_1_0:
	.ds 4
__print_format_sloc34_1_0:
	.ds 4
__print_format_sloc35_1_0:
	.ds 4
__print_format_sloc36_1_0:
	.ds 1
__print_format_sloc37_1_0:
	.ds 2
__print_format_sloc38_1_0:
	.ds 2
__print_format_sloc39_1_0:
	.ds 1
__print_format_sloc40_1_0:
	.ds 4
__print_format_sloc41_1_0:
	.ds 2
__print_format_sloc42_1_0:
	.ds 2
__print_format_sloc43_1_0:
	.ds 2
__print_format_sloc44_1_0:
	.ds 2
__print_format_sloc45_1_0:
	.ds 2
__print_format_sloc46_1_0:
	.ds 2
__print_format_sloc47_1_0:
	.ds 2
__print_format_sloc48_1_0:
	.ds 2
__print_format_sloc49_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_calculate_digit_sloc0_1_0:
	.ds 4
_calculate_digit_sloc1_1_0:
	.ds 1
_calculate_digit_sloc2_1_0:
	.ds 4
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
;	../printf_large.c: 105: _output_char (unsigned char c)
;	-----------------------------------------
;	 function _output_char
;	-----------------------------------------
__output_char:
;	../printf_large.c: 107: output_char( c, p );
	mov	a, _p+0
	push	af
	mov	a, sp
	add	a, #0xff
	mov	p, a
	mov	a, _p+1
	idxm	p, a
	mov	a, __output_char_PARM_1+0
	push	af
	mov	a, #<(00103$)
	push	af
	mov	a, sp
	mov	p, a
	dec	p
	mov	a, #>(00103$)
	idxm	p, a
	mov	a, _output_char+0
	push	af
	mov	a, sp
	add	a, #0xff
	mov	p, a
	mov	a, _output_char+1
	idxm	p, a
	ret
00103$:
	mov	a, sp
	add	a, #-4
	mov	sp, a
;	../printf_large.c: 108: charsOutputted++;
	inc	_charsOutputted+0
	addc	_charsOutputted+1
;	../printf_large.c: 109: }
	ret
;	../printf_large.c: 130: output_digit (unsigned char n)
;	-----------------------------------------
;	 function output_digit
;	-----------------------------------------
_output_digit:
;	../printf_large.c: 132: register unsigned char c = n + (unsigned char)'0';
	mov	a, _output_digit_PARM_1+0
	add	a, #0x30
	mov	p, a
;	../printf_large.c: 134: if (c > (unsigned char)'9')
	mov	a, #0x39
	sub	a, p
	t1sn	f, c
	goto	00104$
;	../printf_large.c: 136: c += (unsigned char)('A' - '0' - 10);
	mov	a, #0x07
	add	p, a
;	../printf_large.c: 137: if (lower_case)
	mov	a, _lower_case+0
	cneqsn	a, #0x00
	goto	00104$
;	../printf_large.c: 138: c = tolower(c);
	mov	a, #0x20
	or	p, a
00104$:
;	../printf_large.c: 140: _output_char( c );
	mov	a, p
	mov	__output_char_PARM_1+0, a
	call	__output_char
;	../printf_large.c: 141: }
	ret
;	../printf_large.c: 157: output_2digits (unsigned char b)
;	-----------------------------------------
;	 function output_2digits
;	-----------------------------------------
_output_2digits:
;	../printf_large.c: 159: output_digit( b>>4   );
	mov	a, _output_2digits_PARM_1+0
	mov	_output_digit_PARM_1+0, a
	sr	_output_digit_PARM_1+0
	sr	_output_digit_PARM_1+0
	sr	_output_digit_PARM_1+0
	sr	_output_digit_PARM_1+0
	call	_output_digit
;	../printf_large.c: 160: output_digit( b&0x0F );
	mov	a, _output_2digits_PARM_1+0
	and	a, #0x0f
	mov	_output_digit_PARM_1+0, a
	call	_output_digit
;	../printf_large.c: 161: }
	ret
;	../printf_large.c: 189: calculate_digit (unsigned char radix)
;	-----------------------------------------
;	 function calculate_digit
;	-----------------------------------------
_calculate_digit:
;	../printf_large.c: 191: register unsigned long ul = value.ul;
	mov	a, _value+0
	mov	_calculate_digit_sloc0_1_0+0, a
	mov	a, _value+1
	mov	_calculate_digit_sloc0_1_0+1, a
	mov	a, _value+2
	mov	_calculate_digit_sloc0_1_0+2, a
	mov	a, _value+3
	mov	_calculate_digit_sloc0_1_0+3, a
;	../printf_large.c: 192: register unsigned char b4 = value.byte[4];
	mov	a, _value+4
	mov	p, a
;	../printf_large.c: 193: register unsigned char i = 32;
	mov	a, #0x20
	mov	_calculate_digit_sloc1_1_0+0, a
;	../printf_large.c: 195: do
00103$:
;	../printf_large.c: 197: b4 = (b4 << 1);
	sl	p
;	../printf_large.c: 198: b4 |= (ul >> 31) & 0x01;
	mov	a, _calculate_digit_sloc0_1_0+3
	mov	_calculate_digit_sloc2_1_0+0, a
	clear	_calculate_digit_sloc2_1_0+1
	clear	_calculate_digit_sloc2_1_0+2
	clear	_calculate_digit_sloc2_1_0+3
	mov	a, #7
00123$:
	sr	_calculate_digit_sloc2_1_0+0
	dzsn	a
	goto	00123$
	mov	a, _calculate_digit_sloc2_1_0+0
	and	a, #0x01
	or	p, a
;	../printf_large.c: 199: ul <<= 1;
	sl	_calculate_digit_sloc0_1_0+0
	slc	_calculate_digit_sloc0_1_0+1
	slc	_calculate_digit_sloc0_1_0+2
	slc	_calculate_digit_sloc0_1_0+3
;	../printf_large.c: 201: if (radix <= b4 )
	mov	a, p
	sub	a, _calculate_digit_PARM_1+0
	t0sn	f, c
	goto	00104$
;	../printf_large.c: 203: b4 -= radix;
	mov	a, _calculate_digit_PARM_1+0
	sub	p, a
;	../printf_large.c: 204: ul |= 1;
	mov	a, #0x01
	or	_calculate_digit_sloc0_1_0+0, a
00104$:
;	../printf_large.c: 206: } while (--i);
	mov	a, _calculate_digit_sloc1_1_0+0
	sub	a, #0x01
	mov	_calculate_digit_sloc1_1_0+0, a
	ceqsn	a, #0x00
	goto	00103$
;	../printf_large.c: 207: value.ul = ul;
	mov	a, _calculate_digit_sloc0_1_0+0
	mov	_value+0, a
	mov	a, _calculate_digit_sloc0_1_0+1
	mov	_value+1, a
	mov	a, _calculate_digit_sloc0_1_0+2
	mov	_value+2, a
	mov	a, _calculate_digit_sloc0_1_0+3
	mov	_value+3, a
;	../printf_large.c: 208: value.byte[4] = b4;
	mov	a, p
	mov	_value+4, a
;	../printf_large.c: 209: }
	ret
;	../printf_large.c: 434: _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
;	-----------------------------------------
;	 function _print_format
;	-----------------------------------------
__print_format:
;	../printf_large.c: 461: output_char = pfn;
	mov	a, __print_format_PARM_1+0
	mov	_output_char+0, a
	mov	a, __print_format_PARM_1+1
	mov	_output_char+1, a
;	../printf_large.c: 462: p = pvoid;
	mov	a, __print_format_PARM_2+0
	mov	_p+0, a
	mov	a, __print_format_PARM_2+1
	mov	_p+1, a
;	../printf_large.c: 466: charsOutputted = 0;
	clear	_charsOutputted+0
	clear	_charsOutputted+1
;	../printf_large.c: 475: while( c=*format++ )
00231$:
	mov	a, __print_format_PARM_3+0
	mov	__print_format_sloc3_1_0+0, a
	mov	a, __print_format_PARM_3+1
	mov	__print_format_sloc3_1_0+1, a
	mov	a, __print_format_sloc3_1_0+0
	mov	p, a
	mov	a, __print_format_sloc3_1_0+1
	call	__gptrget
	push	af
	mov	a, __print_format_sloc3_1_0+0
	add	a, #0x01
	mov	__print_format_PARM_3+0, a
	mov	a, __print_format_sloc3_1_0+1
	addc	a
	mov	__print_format_PARM_3+1, a
	pop	af
	mov	__print_format_sloc4_1_0+0, a
	cneqsn	a, #0x00
	goto	00233$
;	../printf_large.c: 477: if ( c=='%' )
	mov	a, __print_format_sloc4_1_0+0
	ceqsn	a, #0x25
	goto	00229$
;	../printf_large.c: 479: left_justify    = 0;
	clear	__print_format_sloc5_1_0+0
;	../printf_large.c: 480: zero_padding    = 0;
	clear	__print_format_sloc6_1_0+0
;	../printf_large.c: 481: prefix_sign     = 0;
	clear	__print_format_sloc7_1_0+0
;	../printf_large.c: 482: prefix_space    = 0;
	clear	__print_format_sloc8_1_0+0
;	../printf_large.c: 483: signed_argument = 0;
	clear	__print_format_sloc9_1_0+0
;	../printf_large.c: 484: char_argument   = 0;
	clear	__print_format_sloc10_1_0+0
;	../printf_large.c: 485: long_argument   = 0;
	clear	__print_format_sloc11_1_0+0
;	../printf_large.c: 486: float_argument  = 0;
	clear	__print_format_sloc12_1_0+0
;	../printf_large.c: 487: radix           = 0;
	clear	__print_format_sloc13_1_0+0
;	../printf_large.c: 488: width           = 0;
	clear	__print_format_sloc14_1_0+0
	clear	__print_format_sloc14_1_0+1
;	../printf_large.c: 489: decimals        = -1;
	mov	a, #0xff
	mov	__print_format_sloc15_1_0+0, a
	mov	a, #0xff
	mov	__print_format_sloc15_1_0+1, a
;	../printf_large.c: 491: get_conversion_spec:
	mov	a, __print_format_PARM_3+0
	mov	__print_format_sloc16_1_0+0, a
	mov	a, __print_format_PARM_3+1
	mov	__print_format_sloc16_1_0+1, a
00101$:
;	../printf_large.c: 493: c = *format++;
	mov	a, __print_format_sloc16_1_0+0
	mov	p, a
	mov	a, __print_format_sloc16_1_0+1
	call	__gptrget
	mov	__print_format_sloc17_1_0+0, a
	inc	__print_format_sloc16_1_0+0
	addc	__print_format_sloc16_1_0+1
	mov	a, __print_format_sloc16_1_0+0
	mov	__print_format_PARM_3+0, a
	mov	a, __print_format_sloc16_1_0+1
	mov	__print_format_PARM_3+1, a
;	../printf_large.c: 495: if (c=='%')
	mov	a, __print_format_sloc17_1_0+0
	ceqsn	a, #0x25
	goto	00103$
;	../printf_large.c: 497: OUTPUT_CHAR(c, p);
	mov	a, __print_format_sloc17_1_0+0
	mov	__output_char_PARM_1+0, a
	call	__output_char
;	../printf_large.c: 498: continue;
	goto	00231$
00103$:
;	../printf_large.c: 501: if (isdigit(c))
	mov	a, __print_format_sloc17_1_0+0
	sub	a, #0x30
	t0sn	f, c
	goto	00110$
	mov	a, #0x39
	sub	a, __print_format_sloc17_1_0+0
	t0sn	f, c
	goto	00110$
;	../printf_large.c: 503: if (decimals==-1)
	mov	a, __print_format_sloc15_1_0+0
	ceqsn	a, #0xff
	goto	00107$
	mov	a, __print_format_sloc15_1_0+1
	ceqsn	a, #0xff
	goto	00107$
;	../printf_large.c: 505: width = 10*width + c - '0';
	mov	a, #0x0a
	mov	__mulint_PARM_1+0, a
	clear	__mulint_PARM_1+1
	mov	a, __print_format_sloc14_1_0+0
	mov	__mulint_PARM_2+0, a
	mov	a, __print_format_sloc14_1_0+1
	mov	__mulint_PARM_2+1, a
	call	__mulint
	add	a, __print_format_sloc17_1_0+0
	push	af
	addc	p
	pop	af
	sub	a, #0x30
	mov	__print_format_sloc14_1_0+0, a
	mov	a, p
	subc	a
	mov	__print_format_sloc14_1_0+1, a
;	../printf_large.c: 506: if (width == 0)
	mov	a, __print_format_sloc14_1_0+0
	or	a, __print_format_sloc14_1_0+1
	ceqsn	a, #0x00
	goto	00101$
;	../printf_large.c: 509: zero_padding = 1;
	mov	a, #0x01
	mov	__print_format_sloc6_1_0+0, a
	goto	00101$
00107$:
;	../printf_large.c: 514: decimals = 10*decimals + c - '0';
	mov	a, #0x0a
	mov	__mulint_PARM_1+0, a
	clear	__mulint_PARM_1+1
	mov	a, __print_format_sloc15_1_0+0
	mov	__mulint_PARM_2+0, a
	mov	a, __print_format_sloc15_1_0+1
	mov	__mulint_PARM_2+1, a
	call	__mulint
	add	a, __print_format_sloc17_1_0+0
	push	af
	addc	p
	pop	af
	sub	a, #0x30
	mov	__print_format_sloc15_1_0+0, a
	mov	a, p
	subc	a
	mov	__print_format_sloc15_1_0+1, a
;	../printf_large.c: 516: goto get_conversion_spec;
	goto	00101$
00110$:
;	../printf_large.c: 519: if (c=='.')
	mov	a, __print_format_sloc17_1_0+0
	ceqsn	a, #0x2e
	goto	00115$
;	../printf_large.c: 521: if (decimals==-1)
	mov	a, __print_format_sloc15_1_0+0
	ceqsn	a, #0xff
	goto	00101$
	mov	a, __print_format_sloc15_1_0+1
	ceqsn	a, #0xff
	goto	00101$
;	../printf_large.c: 522: decimals=0;
	clear	__print_format_sloc15_1_0+0
	clear	__print_format_sloc15_1_0+1
;	../printf_large.c: 525: goto get_conversion_spec;
	goto	00101$
00115$:
;	../printf_large.c: 528: if (islower(c))
	mov	a, __print_format_sloc17_1_0+0
	sub	a, #0x61
	t0sn	f, c
	goto	00117$
	mov	a, #0x7a
	sub	a, __print_format_sloc17_1_0+0
	t0sn	f, c
	goto	00117$
;	../printf_large.c: 530: c = toupper(c);
	mov	a, #0xdf
	and	__print_format_sloc17_1_0+0, a
;	../printf_large.c: 531: lower_case = 1;
	mov	a, #0x01
	mov	_lower_case+0, a
	goto	00118$
00117$:
;	../printf_large.c: 534: lower_case = 0;
	clear	_lower_case+0
00118$:
;	../printf_large.c: 536: switch( c )
	mov	a, __print_format_sloc17_1_0+0
	cneqsn	a, #0x20
	goto	00122$
	mov	a, __print_format_sloc17_1_0+0
	cneqsn	a, #0x2b
	goto	00121$
	mov	a, __print_format_sloc17_1_0+0
	cneqsn	a, #0x2d
	goto	00120$
	mov	a, __print_format_sloc17_1_0+0
	cneqsn	a, #0x42
	goto	00123$
	mov	a, __print_format_sloc17_1_0+0
	cneqsn	a, #0x43
	goto	00129$
	mov	a, __print_format_sloc17_1_0+0
	cneqsn	a, #0x44
	goto	00154$
	mov	a, __print_format_sloc17_1_0+0
	cneqsn	a, #0x46
	goto	00158$
	mov	a, __print_format_sloc17_1_0+0
	cneqsn	a, #0x48
	goto	00101$
	mov	a, __print_format_sloc17_1_0+0
	cneqsn	a, #0x49
	goto	00154$
	mov	a, __print_format_sloc17_1_0+0
	cneqsn	a, #0x4a
	goto	00101$
	mov	a, __print_format_sloc17_1_0+0
	cneqsn	a, #0x4c
	goto	00128$
	mov	a, __print_format_sloc17_1_0+0
	cneqsn	a, #0x4f
	goto	00155$
	mov	a, __print_format_sloc17_1_0+0
	cneqsn	a, #0x50
	goto	00152$
	mov	a, __print_format_sloc17_1_0+0
	cneqsn	a, #0x53
	goto	00133$
	mov	a, __print_format_sloc17_1_0+0
	cneqsn	a, #0x54
	goto	00101$
	mov	a, __print_format_sloc17_1_0+0
	cneqsn	a, #0x55
	goto	00156$
	mov	a, __print_format_sloc17_1_0+0
	cneqsn	a, #0x58
	goto	00157$
	mov	a, __print_format_sloc17_1_0+0
	cneqsn	a, #0x5a
	goto	00101$
	goto	00159$
;	../printf_large.c: 538: case '-':
00120$:
;	../printf_large.c: 539: left_justify = 1;
	mov	a, #0x01
	mov	__print_format_sloc5_1_0+0, a
;	../printf_large.c: 540: goto get_conversion_spec;
	goto	00101$
;	../printf_large.c: 541: case '+':
00121$:
;	../printf_large.c: 542: prefix_sign = 1;
	mov	a, #0x01
	mov	__print_format_sloc7_1_0+0, a
;	../printf_large.c: 543: goto get_conversion_spec;
	goto	00101$
;	../printf_large.c: 544: case ' ':
00122$:
;	../printf_large.c: 545: prefix_space = 1;
	mov	a, #0x01
	mov	__print_format_sloc8_1_0+0, a
;	../printf_large.c: 546: goto get_conversion_spec;
	goto	00101$
;	../printf_large.c: 547: case 'B': /* byte */
00123$:
;	../printf_large.c: 548: char_argument = 1;
	mov	a, #0x01
	mov	__print_format_sloc10_1_0+0, a
;	../printf_large.c: 549: goto get_conversion_spec;
	goto	00101$
;	../printf_large.c: 556: case 'L': /* long */
00128$:
;	../printf_large.c: 557: long_argument = 1;
	mov	a, #0x01
	mov	__print_format_sloc11_1_0+0, a
;	../printf_large.c: 558: goto get_conversion_spec;
	goto	00101$
;	../printf_large.c: 560: case 'C':
00129$:
;	../printf_large.c: 561: if( char_argument )
	mov	a, __print_format_sloc10_1_0+0
	cneqsn	a, #0x00
	goto	00131$
;	../printf_large.c: 562: c = va_arg(ap,char);
	mov	a, __print_format_PARM_4+0
	sub	a, #0x01
	mov	p, a
	mov	a, __print_format_PARM_4+1
	subc	a
	mov	__print_format_PARM_4+1, a
	xch	a, p
	mov	__print_format_PARM_4+0, a
	xch	a, p
	call	__gptrget
	goto	00132$
00131$:
;	../printf_large.c: 564: c = va_arg(ap,int);
	mov	a, __print_format_PARM_4+0
	sub	a, #0x02
	mov	p, a
	mov	a, __print_format_PARM_4+1
	subc	a
	mov	__print_format_PARM_4+1, a
	xch	a, p
	mov	__print_format_PARM_4+0, a
	xch	a, p
	call	__gptrget
00132$:
;	../printf_large.c: 565: OUTPUT_CHAR( c, p );
	mov	__output_char_PARM_1+0, a
	call	__output_char
;	../printf_large.c: 566: break;
	goto	00160$
;	../printf_large.c: 568: case 'S':
00133$:
;	../printf_large.c: 569: PTR = va_arg(ap,ptr_t);
	mov	a, __print_format_PARM_4+0
	sub	a, #0x02
	mov	p, a
	mov	a, __print_format_PARM_4+1
	subc	a
	mov	__print_format_PARM_4+1, a
	xch	a, p
	mov	__print_format_PARM_4+0, a
	xch	a, p
	call	__gptrget2
	xch	a, p
	mov	_value+1, a
	xch	a, p
	mov	_value+0, a
	xch	a, p
;	../printf_large.c: 582: length = strlen(PTR);
	mov	_strlen_PARM_1+1, a
	mov	a, p
	mov	_strlen_PARM_1+0, a
	call	_strlen
	mov	__print_format_sloc18_1_0+0, a
	mov	a, p
	mov	__print_format_sloc18_1_0+1, a
;	../printf_large.c: 584: if ( decimals == -1 )
	mov	a, __print_format_sloc15_1_0+0
	ceqsn	a, #0xff
	goto	00135$
	mov	a, __print_format_sloc15_1_0+1
	ceqsn	a, #0xff
	goto	00135$
;	../printf_large.c: 586: decimals = length;
	mov	a, __print_format_sloc18_1_0+0
	mov	__print_format_sloc15_1_0+0, a
	mov	a, __print_format_sloc18_1_0+1
	mov	__print_format_sloc15_1_0+1, a
00135$:
;	../printf_large.c: 588: if ( ( !left_justify ) && (length < width) )
	mov	a, __print_format_sloc5_1_0+0
	ceqsn	a, #0x00
	goto	00277$
	mov	a, __print_format_sloc18_1_0+0
	sub	a, __print_format_sloc14_1_0+0
	mov	a, __print_format_sloc18_1_0+1
	subc	a, __print_format_sloc14_1_0+1
	t1sn	f, c
	goto	00277$
;	../printf_large.c: 590: width -= length;
	mov	a, __print_format_sloc14_1_0+0
	sub	a, __print_format_sloc18_1_0+0
	mov	__print_format_sloc19_1_0+0, a
	mov	a, __print_format_sloc14_1_0+1
	subc	a, __print_format_sloc18_1_0+1
	mov	__print_format_sloc19_1_0+1, a
;	../printf_large.c: 591: while( width-- != 0 )
00136$:
	mov	a, __print_format_sloc19_1_0+1
	mov	p, a
	mov	a, __print_format_sloc19_1_0+0
	dec	__print_format_sloc19_1_0+0
	subc	__print_format_sloc19_1_0+1
	or	a, p
	cneqsn	a, #0x00
	goto	00312$
;	../printf_large.c: 593: OUTPUT_CHAR( ' ', p );
	mov	a, #0x20
	mov	__output_char_PARM_1+0, a
	call	__output_char
	goto	00136$
;	../printf_large.c: 597: while ( (c = *PTR)  && (decimals-- > 0))
00312$:
	mov	a, __print_format_sloc19_1_0+0
	mov	__print_format_sloc14_1_0+0, a
	mov	a, __print_format_sloc19_1_0+1
	mov	__print_format_sloc14_1_0+1, a
00277$:
	mov	a, __print_format_sloc15_1_0+0
	mov	__print_format_sloc20_1_0+0, a
	mov	a, __print_format_sloc15_1_0+1
	mov	__print_format_sloc20_1_0+1, a
00143$:
	mov	a, _value+0
	mov	p, a
	mov	a, _value+1
	call	__gptrget
	mov	__print_format_sloc21_1_0+0, a
	cneqsn	a, #0x00
	goto	00145$
	mov	a, #0x00
	sub	a, __print_format_sloc20_1_0+0
	mov	a, #0x00
	subc	a, __print_format_sloc20_1_0+1
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t1sn	f, c
	goto	00145$
	dec	__print_format_sloc20_1_0+0
	subc	__print_format_sloc20_1_0+1
;	../printf_large.c: 599: OUTPUT_CHAR( c, p );
	mov	a, __print_format_sloc21_1_0+0
	mov	__output_char_PARM_1+0, a
	call	__output_char
;	../printf_large.c: 600: PTR++;
	mov	a, _value+0
	push	af
	mov	a, _value+1
	mov	p, a
	pop	af
	add	a, #0x01
	xch	a, p
	addc	a
	mov	_value+1, a
	mov	a, p
	mov	_value+0, a
	goto	00143$
00145$:
;	../printf_large.c: 603: if ( left_justify && (length < width))
	mov	a, __print_format_sloc5_1_0+0
	cneqsn	a, #0x00
	goto	00160$
	mov	a, __print_format_sloc18_1_0+0
	sub	a, __print_format_sloc14_1_0+0
	mov	a, __print_format_sloc18_1_0+1
	subc	a, __print_format_sloc14_1_0+1
	t1sn	f, c
	goto	00160$
;	../printf_large.c: 605: width -= length;
	mov	a, __print_format_sloc14_1_0+0
	sub	a, __print_format_sloc18_1_0+0
	mov	__print_format_sloc22_1_0+0, a
	mov	a, __print_format_sloc14_1_0+1
	subc	a, __print_format_sloc18_1_0+1
	mov	__print_format_sloc22_1_0+1, a
;	../printf_large.c: 606: while( width-- != 0 )
00146$:
	mov	a, __print_format_sloc22_1_0+1
	mov	p, a
	mov	a, __print_format_sloc22_1_0+0
	dec	__print_format_sloc22_1_0+0
	subc	__print_format_sloc22_1_0+1
	or	a, p
	cneqsn	a, #0x00
	goto	00314$
;	../printf_large.c: 608: OUTPUT_CHAR( ' ', p );
	mov	a, #0x20
	mov	__output_char_PARM_1+0, a
	call	__output_char
	goto	00146$
;	../printf_large.c: 613: case 'P':
00152$:
;	../printf_large.c: 614: PTR = va_arg(ap,ptr_t);
	mov	a, __print_format_PARM_4+0
	sub	a, #0x02
	mov	p, a
	mov	a, __print_format_PARM_4+1
	subc	a
	mov	__print_format_PARM_4+1, a
	xch	a, p
	mov	__print_format_PARM_4+0, a
	xch	a, p
	call	__gptrget2
	mov	_value+0, a
	mov	a, p
	mov	_value+1, a
;	../printf_large.c: 658: OUTPUT_CHAR('0', p);
	mov	a, #0x30
	mov	__output_char_PARM_1+0, a
	call	__output_char
;	../printf_large.c: 659: OUTPUT_CHAR('x', p);
	mov	a, #0x78
	mov	__output_char_PARM_1+0, a
	call	__output_char
;	../printf_large.c: 660: OUTPUT_2DIGITS( value.byte[1] );
	mov	a, _value+1
	mov	_output_2digits_PARM_1+0, a
	call	_output_2digits
;	../printf_large.c: 661: OUTPUT_2DIGITS( value.byte[0] );
	mov	a, _value+0
	mov	_output_2digits_PARM_1+0, a
	call	_output_2digits
;	../printf_large.c: 663: break;
	goto	00160$
;	../printf_large.c: 666: case 'I':
00154$:
;	../printf_large.c: 667: signed_argument = 1;
	mov	a, #0x01
	mov	__print_format_sloc9_1_0+0, a
;	../printf_large.c: 668: radix = 10;
	mov	a, #0x0a
	mov	__print_format_sloc13_1_0+0, a
;	../printf_large.c: 669: break;
	goto	00160$
;	../printf_large.c: 671: case 'O':
00155$:
;	../printf_large.c: 672: radix = 8;
	mov	a, #0x08
	mov	__print_format_sloc13_1_0+0, a
;	../printf_large.c: 673: break;
	goto	00160$
;	../printf_large.c: 675: case 'U':
00156$:
;	../printf_large.c: 676: radix = 10;
	mov	a, #0x0a
	mov	__print_format_sloc13_1_0+0, a
;	../printf_large.c: 677: break;
	goto	00160$
;	../printf_large.c: 679: case 'X':
00157$:
;	../printf_large.c: 680: radix = 16;
	mov	a, #0x10
	mov	__print_format_sloc13_1_0+0, a
;	../printf_large.c: 681: break;
	goto	00160$
;	../printf_large.c: 683: case 'F':
00158$:
;	../printf_large.c: 684: float_argument=1;
	mov	a, #0x01
	mov	__print_format_sloc12_1_0+0, a
;	../printf_large.c: 685: break;
	goto	00160$
;	../printf_large.c: 687: default:
00159$:
;	../printf_large.c: 689: OUTPUT_CHAR( c, p );
	mov	a, __print_format_sloc17_1_0+0
	mov	__output_char_PARM_1+0, a
	call	__output_char
;	../printf_large.c: 872: return charsOutputted;
	goto	00160$
;	../printf_large.c: 691: }
00314$:
	mov	a, __print_format_sloc22_1_0+0
	mov	__print_format_sloc14_1_0+0, a
	mov	a, __print_format_sloc22_1_0+1
	mov	__print_format_sloc14_1_0+1, a
00160$:
;	../printf_large.c: 693: if (float_argument)
	mov	a, __print_format_sloc12_1_0+0
	cneqsn	a, #0x00
	goto	00226$
;	../printf_large.c: 695: value.f = va_arg(ap, float);
	mov	a, __print_format_PARM_4+0
	sub	a, #0x04
	mov	p, a
	mov	a, __print_format_PARM_4+1
	subc	a
	mov	__print_format_PARM_4+1, a
	xch	a, p
	mov	__print_format_PARM_4+0, a
	xch	a, p
	mov	__print_format_sloc23_1_0+1, a
	mov	a, p
	mov	__print_format_sloc23_1_0+0, a
	mov	p, a
	mov	a, __print_format_sloc23_1_0+1
	call	__gptrget
	mov	__print_format_sloc24_1_0+0, a
	mov	a, __print_format_sloc23_1_0+0
	mov	p, a
	mov	a, __print_format_sloc23_1_0+1
	inc	p
	addc	a
	call	__gptrget
	mov	__print_format_sloc24_1_0+1, a
	mov	a, __print_format_sloc23_1_0+0
	mov	p, a
	mov	a, __print_format_sloc23_1_0+1
	inc	p
	addc	a
	inc	p
	addc	a
	call	__gptrget
	mov	__print_format_sloc24_1_0+2, a
	mov	a, __print_format_sloc23_1_0+0
	mov	p, a
	mov	a, __print_format_sloc23_1_0+1
	xch	a, p
	add	a, #3
	xch	a, p
	addc	a
	call	__gptrget
	mov	__print_format_sloc24_1_0+3, a
	mov	a, __print_format_sloc24_1_0+0
	mov	_value+0, a
	mov	a, __print_format_sloc24_1_0+1
	mov	_value+1, a
	mov	a, __print_format_sloc24_1_0+2
	mov	_value+2, a
	mov	a, __print_format_sloc24_1_0+3
	mov	_value+3, a
;	../printf_large.c: 697: PTR="<NO FLOAT>";
	mov	a, #<(___str_0 + 0)
	mov	_value+0, a
	mov	a, #>(___str_0 + 0x8000 + 0)
	mov	_value+1, a
;	../printf_large.c: 698: while (c=*PTR++)
00161$:
	mov	a, _value+0
	mov	__print_format_sloc25_1_0+0, a
	mov	a, _value+1
	mov	__print_format_sloc25_1_0+1, a
	mov	a, __print_format_sloc25_1_0+0
	add	a, #0x01
	mov	p, a
	mov	a, __print_format_sloc25_1_0+1
	addc	a
	mov	_value+1, a
	mov	a, p
	mov	_value+0, a
	mov	a, __print_format_sloc25_1_0+0
	mov	p, a
	mov	a, __print_format_sloc25_1_0+1
	call	__gptrget
	mov	p, a
	cneqsn	a, #0x00
	goto	00231$
;	../printf_large.c: 700: OUTPUT_CHAR (c, p);
	mov	a, p
	mov	__output_char_PARM_1+0, a
	call	__output_char
	goto	00161$
00226$:
;	../printf_large.c: 718: else if (radix != 0)
	mov	a, __print_format_sloc13_1_0+0
	cneqsn	a, #0x00
	goto	00231$
;	../printf_large.c: 723: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
;	../printf_large.c: 726: if (char_argument)
	mov	a, __print_format_sloc10_1_0+0
	cneqsn	a, #0x00
	goto	00172$
;	../printf_large.c: 728: value.l = va_arg(ap, char);
	mov	a, __print_format_PARM_4+0
	sub	a, #0x01
	mov	p, a
	mov	a, __print_format_PARM_4+1
	subc	a
	mov	__print_format_PARM_4+1, a
	xch	a, p
	mov	__print_format_PARM_4+0, a
	xch	a, p
	call	__gptrget
	mov	_value+0, a
;	../printf_large.c: 729: if (!signed_argument)
	mov	a, __print_format_sloc9_1_0+0
	ceqsn	a, #0x00
	goto	00173$
;	../printf_large.c: 731: value.l &= 0xFF;
	mov	a, _value+0
	mov	__print_format_sloc26_1_0+0, a
	mov	a, _value+1
	mov	__print_format_sloc26_1_0+1, a
	mov	a, _value+2
	mov	__print_format_sloc26_1_0+2, a
	mov	a, _value+3
	mov	__print_format_sloc26_1_0+3, a
	mov	a, __print_format_sloc26_1_0+0
	mov	__print_format_sloc27_1_0+0, a
	clear	__print_format_sloc27_1_0+1
	clear	__print_format_sloc27_1_0+2
	clear	__print_format_sloc27_1_0+3
	mov	a, __print_format_sloc27_1_0+0
	mov	_value+0, a
	mov	a, __print_format_sloc27_1_0+1
	mov	_value+1, a
	mov	a, __print_format_sloc27_1_0+2
	mov	_value+2, a
	mov	a, __print_format_sloc27_1_0+3
	mov	_value+3, a
	goto	00173$
00172$:
;	../printf_large.c: 734: else if (long_argument)
	mov	a, __print_format_sloc11_1_0+0
	cneqsn	a, #0x00
	goto	00169$
;	../printf_large.c: 736: value.l = va_arg(ap, long);
	mov	a, __print_format_PARM_4+0
	sub	a, #0x04
	mov	p, a
	mov	a, __print_format_PARM_4+1
	subc	a
	mov	__print_format_PARM_4+1, a
	xch	a, p
	mov	__print_format_PARM_4+0, a
	xch	a, p
	mov	__print_format_sloc28_1_0+1, a
	mov	a, p
	mov	__print_format_sloc28_1_0+0, a
	mov	p, a
	mov	a, __print_format_sloc28_1_0+1
	call	__gptrget
	mov	__print_format_sloc29_1_0+0, a
	mov	a, __print_format_sloc28_1_0+0
	mov	p, a
	mov	a, __print_format_sloc28_1_0+1
	inc	p
	addc	a
	call	__gptrget
	mov	__print_format_sloc29_1_0+1, a
	mov	a, __print_format_sloc28_1_0+0
	mov	p, a
	mov	a, __print_format_sloc28_1_0+1
	inc	p
	addc	a
	inc	p
	addc	a
	call	__gptrget
	mov	__print_format_sloc29_1_0+2, a
	mov	a, __print_format_sloc28_1_0+0
	mov	p, a
	mov	a, __print_format_sloc28_1_0+1
	xch	a, p
	add	a, #3
	xch	a, p
	addc	a
	call	__gptrget
	mov	__print_format_sloc29_1_0+3, a
	mov	a, __print_format_sloc29_1_0+0
	mov	_value+0, a
	mov	a, __print_format_sloc29_1_0+1
	mov	_value+1, a
	mov	a, __print_format_sloc29_1_0+2
	mov	_value+2, a
	mov	a, __print_format_sloc29_1_0+3
	mov	_value+3, a
	goto	00173$
00169$:
;	../printf_large.c: 740: value.l = va_arg(ap, int);
	mov	a, __print_format_PARM_4+0
	sub	a, #0x02
	mov	p, a
	mov	a, __print_format_PARM_4+1
	subc	a
	mov	__print_format_PARM_4+1, a
	xch	a, p
	mov	__print_format_PARM_4+0, a
	xch	a, p
	call	__gptrget2
	mov	__print_format_sloc30_1_0+0, a
	mov	a, p
	mov	__print_format_sloc30_1_0+1, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	__print_format_sloc30_1_0+2, a
	mov	__print_format_sloc30_1_0+3, a
	mov	a, __print_format_sloc30_1_0+0
	mov	_value+0, a
	mov	a, __print_format_sloc30_1_0+1
	mov	_value+1, a
	mov	a, __print_format_sloc30_1_0+2
	mov	_value+2, a
	mov	a, __print_format_sloc30_1_0+3
	mov	_value+3, a
;	../printf_large.c: 741: if (!signed_argument)
	mov	a, __print_format_sloc9_1_0+0
	ceqsn	a, #0x00
	goto	00173$
;	../printf_large.c: 743: value.l &= 0xFFFF;
	mov	a, _value+0
	mov	__print_format_sloc31_1_0+0, a
	mov	a, _value+1
	mov	__print_format_sloc31_1_0+1, a
	mov	a, _value+2
	mov	__print_format_sloc31_1_0+2, a
	mov	a, _value+3
	mov	__print_format_sloc31_1_0+3, a
	mov	a, __print_format_sloc31_1_0+0
	mov	__print_format_sloc32_1_0+0, a
	mov	a, __print_format_sloc31_1_0+1
	mov	__print_format_sloc32_1_0+1, a
	clear	__print_format_sloc32_1_0+2
	clear	__print_format_sloc32_1_0+3
	mov	a, __print_format_sloc32_1_0+0
	mov	_value+0, a
	mov	a, __print_format_sloc32_1_0+1
	mov	_value+1, a
	mov	a, __print_format_sloc32_1_0+2
	mov	_value+2, a
	mov	a, __print_format_sloc32_1_0+3
	mov	_value+3, a
00173$:
;	../printf_large.c: 747: if ( signed_argument )
	mov	a, __print_format_sloc9_1_0+0
	cneqsn	a, #0x00
	goto	00178$
;	../printf_large.c: 749: if (value.l < 0)
	mov	a, _value+0
	mov	__print_format_sloc33_1_0+0, a
	mov	a, _value+1
	mov	__print_format_sloc33_1_0+1, a
	mov	a, _value+2
	mov	__print_format_sloc33_1_0+2, a
	mov	a, _value+3
	mov	__print_format_sloc33_1_0+3, a
	sub	a, #0x80
	t0sn	f, c
	goto	00175$
;	../printf_large.c: 750: value.l = -value.l;
	mov	a, _value+0
	mov	__print_format_sloc34_1_0+0, a
	mov	a, _value+1
	mov	__print_format_sloc34_1_0+1, a
	mov	a, _value+2
	mov	__print_format_sloc34_1_0+2, a
	mov	a, _value+3
	mov	__print_format_sloc34_1_0+3, a
	mov	a, #0x00
	sub	a, __print_format_sloc34_1_0+0
	mov	__print_format_sloc35_1_0+0, a
	mov	a, #0x00
	subc	a, __print_format_sloc34_1_0+1
	mov	__print_format_sloc35_1_0+1, a
	mov	a, #0x00
	subc	a, __print_format_sloc34_1_0+2
	mov	__print_format_sloc35_1_0+2, a
	mov	a, #0x00
	subc	a, __print_format_sloc34_1_0+3
	mov	__print_format_sloc35_1_0+3, a
	mov	a, __print_format_sloc35_1_0+0
	mov	_value+0, a
	mov	a, __print_format_sloc35_1_0+1
	mov	_value+1, a
	mov	a, __print_format_sloc35_1_0+2
	mov	_value+2, a
	mov	a, __print_format_sloc35_1_0+3
	mov	_value+3, a
	goto	00178$
00175$:
;	../printf_large.c: 752: signed_argument = 0;
	clear	__print_format_sloc9_1_0+0
00178$:
;	../printf_large.c: 756: lsd = 1;
	mov	a, #0x01
	mov	__print_format_sloc36_1_0+0, a
;	../printf_large.c: 758: do {
	mov	a, #(__print_format_store_262144_84 + 5)
	mov	__print_format_sloc37_1_0+0, a
	clear	__print_format_sloc37_1_0+1
	clear	__print_format_sloc38_1_0+0
	clear	__print_format_sloc38_1_0+1
00182$:
;	../printf_large.c: 759: value.byte[4] = 0;
	clear	_value+4
;	../printf_large.c: 763: calculate_digit(radix);
	mov	a, __print_format_sloc13_1_0+0
	mov	_calculate_digit_PARM_1+0, a
	call	_calculate_digit
;	../printf_large.c: 765: if (!lsd)
	mov	a, __print_format_sloc36_1_0+0
	ceqsn	a, #0x00
	goto	00180$
;	../printf_large.c: 767: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
	mov	a, _value+4
	swap	a
	and	a, #0xf0
	push	af
	mov	a, _value+4
	mov	p, a
	pop	af
	sr	p
	sr	p
	sr	p
	sr	p
	or	a, p
	mov	__print_format_sloc39_1_0+0, a
	mov	a, __print_format_sloc37_1_0+0
	mov	p, a
	mov	a, __print_format_sloc37_1_0+1
	call	__gptrget
	or	a, __print_format_sloc39_1_0+0
	mov	p, a
	mov	a, __print_format_sloc37_1_0+0
	xch	a, p
	idxm	p, a
;	../printf_large.c: 768: pstore--;
	dec	__print_format_sloc37_1_0+0
	subc	__print_format_sloc37_1_0+1
	goto	00181$
00180$:
;	../printf_large.c: 772: *pstore = value.byte[4];
	mov	a, _value+4
	mov	p, a
	mov	a, __print_format_sloc37_1_0+0
	xch	a, p
	idxm	p, a
00181$:
;	../printf_large.c: 774: length++;
	inc	__print_format_sloc38_1_0+0
	addc	__print_format_sloc38_1_0+1
;	../printf_large.c: 775: lsd = !lsd;
	mov	a, __print_format_sloc36_1_0+0
	sub	a, #0x01
	mov	a, #0x00
	slc	a
	mov	__print_format_sloc36_1_0+0, a
;	../printf_large.c: 776: } while( value.ul );
	mov	a, _value+0
	mov	__print_format_sloc40_1_0+0, a
	mov	a, _value+1
	mov	__print_format_sloc40_1_0+1, a
	mov	a, _value+2
	mov	__print_format_sloc40_1_0+2, a
	mov	a, _value+3
	mov	__print_format_sloc40_1_0+3, a
	mov	a, __print_format_sloc40_1_0+0
	or	a, __print_format_sloc40_1_0+1
	or	a, __print_format_sloc40_1_0+2
	or	a, __print_format_sloc40_1_0+3
	ceqsn	a, #0x00
	goto	00182$
;	../printf_large.c: 778: if (width == 0)
	mov	a, __print_format_sloc37_1_0+0
	mov	__print_format_sloc41_1_0+0, a
	mov	a, __print_format_sloc37_1_0+1
	mov	__print_format_sloc41_1_0+1, a
	mov	a, __print_format_sloc38_1_0+0
	mov	__print_format_sloc42_1_0+0, a
	mov	a, __print_format_sloc38_1_0+1
	mov	__print_format_sloc42_1_0+1, a
	mov	a, __print_format_sloc14_1_0+0
	or	a, __print_format_sloc14_1_0+1
	ceqsn	a, #0x00
	goto	00186$
;	../printf_large.c: 783: width = 1;
	mov	a, #0x01
	mov	__print_format_sloc14_1_0+0, a
	clear	__print_format_sloc14_1_0+1
00186$:
;	../printf_large.c: 787: if (!zero_padding && !left_justify)
	mov	a, __print_format_sloc6_1_0+0
	ceqsn	a, #0x00
	goto	00191$
	mov	a, __print_format_sloc5_1_0+0
	ceqsn	a, #0x00
	goto	00191$
;	../printf_large.c: 789: while ( width > (unsigned char) (length+1) )
	mov	a, __print_format_sloc14_1_0+0
	mov	__print_format_sloc43_1_0+0, a
	mov	a, __print_format_sloc14_1_0+1
	mov	__print_format_sloc43_1_0+1, a
00187$:
	mov	a, __print_format_sloc42_1_0+0
	add	a, #0x01
	clear	p
	sub	a, __print_format_sloc43_1_0+0
	mov	a, p
	subc	a, __print_format_sloc43_1_0+1
	t1sn	f, c
	goto	00316$
;	../printf_large.c: 791: OUTPUT_CHAR( ' ', p );
	mov	a, #0x20
	mov	__output_char_PARM_1+0, a
	call	__output_char
;	../printf_large.c: 792: width--;
	dec	__print_format_sloc43_1_0+0
	subc	__print_format_sloc43_1_0+1
	goto	00187$
00316$:
	mov	a, __print_format_sloc43_1_0+0
	mov	__print_format_sloc14_1_0+0, a
	mov	a, __print_format_sloc43_1_0+1
	mov	__print_format_sloc14_1_0+1, a
00191$:
;	../printf_large.c: 796: if (signed_argument) // this now means the original value was negative
	mov	a, __print_format_sloc9_1_0+0
	cneqsn	a, #0x00
	goto	00201$
;	../printf_large.c: 798: OUTPUT_CHAR( '-', p );
	mov	a, #0x2d
	mov	__output_char_PARM_1+0, a
	call	__output_char
;	../printf_large.c: 800: width--;
	dec	__print_format_sloc14_1_0+0
	subc	__print_format_sloc14_1_0+1
	goto	00202$
00201$:
;	../printf_large.c: 802: else if (length != 0)
	mov	a, __print_format_sloc42_1_0+0
	or	a, __print_format_sloc42_1_0+1
	cneqsn	a, #0x00
	goto	00202$
;	../printf_large.c: 805: if (prefix_sign)
	mov	a, __print_format_sloc7_1_0+0
	cneqsn	a, #0x00
	goto	00196$
;	../printf_large.c: 807: OUTPUT_CHAR( '+', p );
	mov	a, #0x2b
	mov	__output_char_PARM_1+0, a
	call	__output_char
;	../printf_large.c: 809: width--;
	dec	__print_format_sloc14_1_0+0
	subc	__print_format_sloc14_1_0+1
	goto	00202$
00196$:
;	../printf_large.c: 811: else if (prefix_space)
	mov	a, __print_format_sloc8_1_0+0
	cneqsn	a, #0x00
	goto	00202$
;	../printf_large.c: 813: OUTPUT_CHAR( ' ', p );
	mov	a, #0x20
	mov	__output_char_PARM_1+0, a
	call	__output_char
;	../printf_large.c: 815: width--;
	dec	__print_format_sloc14_1_0+0
	subc	__print_format_sloc14_1_0+1
00202$:
;	../printf_large.c: 820: if (!left_justify)
	mov	a, __print_format_sloc5_1_0+0
	ceqsn	a, #0x00
	goto	00210$
;	../printf_large.c: 822: while ( width-- > length )
	mov	a, __print_format_sloc14_1_0+0
	mov	__print_format_sloc44_1_0+0, a
	mov	a, __print_format_sloc14_1_0+1
	mov	__print_format_sloc44_1_0+1, a
00203$:
	mov	a, __print_format_sloc44_1_0+0
	mov	__print_format_sloc45_1_0+0, a
	mov	a, __print_format_sloc44_1_0+1
	mov	__print_format_sloc45_1_0+1, a
	dec	__print_format_sloc44_1_0+0
	subc	__print_format_sloc44_1_0+1
	mov	a, __print_format_sloc42_1_0+0
	sub	a, __print_format_sloc45_1_0+0
	mov	a, __print_format_sloc42_1_0+1
	subc	a, __print_format_sloc45_1_0+1
	t1sn	f, c
	goto	00317$
;	../printf_large.c: 824: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
	mov	a, __print_format_sloc6_1_0+0
	cneqsn	a, #0x00
	goto	00236$
	mov	a, #0x30
	clear	p
	goto	00237$
00236$:
	mov	a, #0x20
	clear	p
00237$:
	mov	__output_char_PARM_1+0, a
	call	__output_char
	goto	00203$
00210$:
;	../printf_large.c: 830: if (width > length)
	mov	a, __print_format_sloc42_1_0+0
	sub	a, __print_format_sloc14_1_0+0
	mov	a, __print_format_sloc42_1_0+1
	subc	a, __print_format_sloc14_1_0+1
	t1sn	f, c
	goto	00207$
;	../printf_large.c: 831: width -= length;
	mov	a, __print_format_sloc14_1_0+0
	sub	a, __print_format_sloc42_1_0+0
	mov	__print_format_sloc46_1_0+0, a
	mov	a, __print_format_sloc14_1_0+1
	subc	a, __print_format_sloc42_1_0+1
	mov	__print_format_sloc46_1_0+1, a
	goto	00309$
00207$:
;	../printf_large.c: 833: width = 0;
	clear	__print_format_sloc46_1_0+0
	clear	__print_format_sloc46_1_0+1
;	../printf_large.c: 872: return charsOutputted;
	goto	00309$
;	../printf_large.c: 837: while( length-- )
00317$:
	mov	a, __print_format_sloc44_1_0+0
	mov	__print_format_sloc46_1_0+0, a
	mov	a, __print_format_sloc44_1_0+1
	mov	__print_format_sloc46_1_0+1, a
00309$:
	mov	a, __print_format_sloc41_1_0+0
	mov	__print_format_sloc47_1_0+0, a
	mov	a, __print_format_sloc41_1_0+1
	mov	__print_format_sloc47_1_0+1, a
	mov	a, __print_format_sloc42_1_0+0
	mov	__print_format_sloc48_1_0+0, a
	mov	a, __print_format_sloc42_1_0+1
	mov	__print_format_sloc48_1_0+1, a
00215$:
	mov	a, __print_format_sloc48_1_0+1
	mov	p, a
	mov	a, __print_format_sloc48_1_0+0
	dec	__print_format_sloc48_1_0+0
	subc	__print_format_sloc48_1_0+1
	or	a, p
	cneqsn	a, #0x00
	goto	00217$
;	../printf_large.c: 839: lsd = !lsd;
	mov	a, __print_format_sloc36_1_0+0
	sub	a, #0x01
	mov	a, #0x00
	slc	a
;	../printf_large.c: 840: if (!lsd)
	mov	__print_format_sloc36_1_0+0, a
	ceqsn	a, #0x00
	goto	00213$
;	../printf_large.c: 842: pstore++;
	inc	__print_format_sloc47_1_0+0
	addc	__print_format_sloc47_1_0+1
;	../printf_large.c: 843: value.byte[4] = *pstore >> 4;
	mov	a, __print_format_sloc47_1_0+0
	mov	p, a
	mov	a, __print_format_sloc47_1_0+1
	call	__gptrget
	swap	a
	and	a, #0x0f
	mov	_value+4, a
	goto	00214$
00213$:
;	../printf_large.c: 847: value.byte[4] = *pstore & 0x0F;
	mov	a, __print_format_sloc47_1_0+0
	mov	p, a
	mov	a, __print_format_sloc47_1_0+1
	call	__gptrget
	and	a, #0x0f
	mov	_value+4, a
00214$:
;	../printf_large.c: 853: output_digit( value.byte[4] );
	mov	a, _value+4
	mov	_output_digit_PARM_1+0, a
	call	_output_digit
	goto	00215$
00217$:
;	../printf_large.c: 856: if (left_justify)
	mov	a, __print_format_sloc5_1_0+0
	cneqsn	a, #0x00
	goto	00231$
;	../printf_large.c: 858: while (width-- > 0)
	mov	a, __print_format_sloc46_1_0+0
	mov	__print_format_sloc49_1_0+0, a
	mov	a, __print_format_sloc46_1_0+1
	mov	__print_format_sloc49_1_0+1, a
00218$:
	mov	a, __print_format_sloc49_1_0+1
	mov	p, a
	mov	a, __print_format_sloc49_1_0+0
	dec	__print_format_sloc49_1_0+0
	subc	__print_format_sloc49_1_0+1
	or	a, p
	cneqsn	a, #0x00
	goto	00231$
;	../printf_large.c: 860: OUTPUT_CHAR(' ', p);
	mov	a, #0x20
	mov	__output_char_PARM_1+0, a
	call	__output_char
	goto	00218$
00229$:
;	../printf_large.c: 868: OUTPUT_CHAR( c, p );
	mov	a, __print_format_sloc4_1_0+0
	mov	__output_char_PARM_1+0, a
	call	__output_char
	goto	00231$
00233$:
;	../printf_large.c: 872: return charsOutputted;
	mov	a, _charsOutputted+1
	mov	p, a
	mov	a, _charsOutputted+0
;	../printf_large.c: 873: }
	ret
	.area CODE
	.area CONST
	.area CONST
___str_0:
	ret #0x3c	; <
	ret #0x4e	; N
	ret #0x4f	; O
	ret #0x20	;  
	ret #0x46	; F
	ret #0x4c	; L
	ret #0x4f	; O
	ret #0x41	; A
	ret #0x54	; T
	ret #0x3e	; >
	ret #0x00
	.area CODE
	.area CABS (ABS)
