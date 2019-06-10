;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _strtok
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strtok_PARM_2
	.globl _strtok_PARM_1
	.globl _strtok
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_strtok_PARM_1:
	.ds 2
_strtok_PARM_2:
	.ds 2
_strtok_s_65536_24:
	.ds 2
_strtok_sloc0_1_0:
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
;	../_strtok.c: 36: char * strtok ( char * str, const char * control )
;	-----------------------------------------
;	 function strtok
;	-----------------------------------------
_strtok:
;	../_strtok.c: 41: if ( str )
	mov	a, _strtok_PARM_1+0
	or	a, _strtok_PARM_1+1
	cneqsn	a, #0x00
	goto	00102$
;	../_strtok.c: 42: s = str;
	mov	a, _strtok_PARM_1+0
	mov	_strtok_s_65536_24+0, a
	mov	a, _strtok_PARM_1+1
	mov	_strtok_s_65536_24+1, a
00102$:
;	../_strtok.c: 43: if ( !s )
	mov	a, _strtok_s_65536_24+0
	or	a, _strtok_s_65536_24+1
	ceqsn	a, #0x00
	goto	00108$
;	../_strtok.c: 44: return NULL;
	clear	p
	ret	#0x00
;	../_strtok.c: 46: while (*s) {
00108$:
	mov	a, _strtok_s_65536_24+0
	mov	p, a
	mov	a, _strtok_s_65536_24+1
	call	__gptrget
	cneqsn	a, #0x00
	goto	00110$
;	../_strtok.c: 47: if (strchr(control,*s))
	mov	a, _strtok_s_65536_24+0
	mov	p, a
	mov	a, _strtok_s_65536_24+1
	call	__gptrget
	mov	_strchr_PARM_2+0, a
	clear	_strchr_PARM_2+1
	mov	a, _strtok_PARM_2+0
	mov	_strchr_PARM_1+0, a
	mov	a, _strtok_PARM_2+1
	mov	_strchr_PARM_1+1, a
	call	_strchr
	or	a, p
	cneqsn	a, #0x00
	goto	00110$
;	../_strtok.c: 48: s++;
	inc	_strtok_s_65536_24+0
	addc	_strtok_s_65536_24+1
	goto	00108$
;	../_strtok.c: 50: break;
00110$:
;	../_strtok.c: 53: s1 = s;
	mov	a, _strtok_s_65536_24+0
	mov	_strtok_sloc0_1_0+0, a
	mov	a, _strtok_s_65536_24+1
	mov	_strtok_sloc0_1_0+1, a
;	../_strtok.c: 55: while (*s) {
00113$:
	mov	a, _strtok_s_65536_24+0
	mov	p, a
	mov	a, _strtok_s_65536_24+1
	call	__gptrget
	cneqsn	a, #0x00
	goto	00115$
;	../_strtok.c: 56: if (strchr(control,*s)) {
	mov	a, _strtok_s_65536_24+0
	mov	p, a
	mov	a, _strtok_s_65536_24+1
	call	__gptrget
	mov	_strchr_PARM_2+0, a
	clear	_strchr_PARM_2+1
	mov	a, _strtok_PARM_2+0
	mov	_strchr_PARM_1+0, a
	mov	a, _strtok_PARM_2+1
	mov	_strchr_PARM_1+1, a
	call	_strchr
	or	a, p
	cneqsn	a, #0x00
	goto	00112$
;	../_strtok.c: 57: *s++ = '\0';
	mov	a, _strtok_s_65536_24+0
	mov	p, a
	mov	a, #0x00
	idxm	p, a
	inc	_strtok_s_65536_24+0
	addc	_strtok_s_65536_24+1
;	../_strtok.c: 58: return s1;
	mov	a, _strtok_sloc0_1_0+1
	mov	p, a
	mov	a, _strtok_sloc0_1_0+0
	ret
00112$:
;	../_strtok.c: 60: s++ ;
	inc	_strtok_s_65536_24+0
	addc	_strtok_s_65536_24+1
	goto	00113$
00115$:
;	../_strtok.c: 63: s = NULL;
	clear	_strtok_s_65536_24+0
	clear	_strtok_s_65536_24+1
;	../_strtok.c: 65: if (*s1)
	mov	a, _strtok_sloc0_1_0+0
	mov	p, a
	mov	a, _strtok_sloc0_1_0+1
	call	__gptrget
	cneqsn	a, #0x00
	goto	00117$
;	../_strtok.c: 66: return s1;
	mov	a, _strtok_sloc0_1_0+1
	mov	p, a
	mov	a, _strtok_sloc0_1_0+0
	ret
00117$:
;	../_strtok.c: 68: return NULL;
	clear	p
	ret	#0x00
;	../_strtok.c: 69: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
