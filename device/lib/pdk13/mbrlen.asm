;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module mbrlen
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _mbrtowc
	.globl _mbrlen_PARM_3
	.globl _mbrlen_PARM_2
	.globl _mbrlen_PARM_1
	.globl _mbrlen
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_mbrlen_PARM_1:
	.ds 2
_mbrlen_PARM_2:
	.ds 2
_mbrlen_PARM_3:
	.ds 2
_mbrlen_sps_65536_10:
	.ds 3
_mbrlen_sloc0_1_0:
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
;	../mbrlen.c: 31: size_t mbrlen(const char *restrict s, size_t n, mbstate_t *restrict ps)
;	-----------------------------------------
;	 function mbrlen
;	-----------------------------------------
_mbrlen:
;	../mbrlen.c: 35: return(mbrtowc(0, s, n, ps ? ps : &sps));
	mov	a, _mbrlen_PARM_3+0
	or	a, _mbrlen_PARM_3+1
	cneqsn	a, #0x00
	goto	00103$
	mov	a, _mbrlen_PARM_3+0
	mov	_mbrlen_sloc0_1_0+0, a
	mov	a, _mbrlen_PARM_3+1
	mov	_mbrlen_sloc0_1_0+1, a
	goto	00104$
00103$:
	mov	a, #(_mbrlen_sps_65536_10 + 0)
	mov	_mbrlen_sloc0_1_0+0, a
	clear	_mbrlen_sloc0_1_0+1
00104$:
	clear	_mbrtowc_PARM_1+0
	clear	_mbrtowc_PARM_1+1
	mov	a, _mbrlen_PARM_1+0
	mov	_mbrtowc_PARM_2+0, a
	mov	a, _mbrlen_PARM_1+1
	mov	_mbrtowc_PARM_2+1, a
	mov	a, _mbrlen_PARM_2+0
	mov	_mbrtowc_PARM_3+0, a
	mov	a, _mbrlen_PARM_2+1
	mov	_mbrtowc_PARM_3+1, a
	mov	a, _mbrlen_sloc0_1_0+0
	mov	_mbrtowc_PARM_4+0, a
	mov	a, _mbrlen_sloc0_1_0+1
	mov	_mbrtowc_PARM_4+1, a
	call	_mbrtowc
;	../mbrlen.c: 36: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
