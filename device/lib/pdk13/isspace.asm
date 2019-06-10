;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module isspace
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isspace_PARM_1
	.globl _isspace
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_isspace_PARM_1:
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
;	../isspace.c: 37: int isspace (int c)
;	-----------------------------------------
;	 function isspace
;	-----------------------------------------
_isspace:
;	../isspace.c: 39: return (c == ' ' || c == '\f' || c == '\n' || c == '\r' || c == '\t' || c == '\v');
	mov	a, _isspace_PARM_1+0
	ceqsn	a, #0x20
	goto	00142$
	mov	a, _isspace_PARM_1+1
	cneqsn	a, #0x00
	goto	00104$
00142$:
	mov	a, _isspace_PARM_1+0
	ceqsn	a, #0x0c
	goto	00143$
	mov	a, _isspace_PARM_1+1
	cneqsn	a, #0x00
	goto	00104$
00143$:
	mov	a, _isspace_PARM_1+0
	ceqsn	a, #0x0a
	goto	00144$
	mov	a, _isspace_PARM_1+1
	cneqsn	a, #0x00
	goto	00104$
00144$:
	mov	a, _isspace_PARM_1+0
	ceqsn	a, #0x0d
	goto	00145$
	mov	a, _isspace_PARM_1+1
	cneqsn	a, #0x00
	goto	00104$
00145$:
	mov	a, _isspace_PARM_1+0
	ceqsn	a, #0x09
	goto	00146$
	mov	a, _isspace_PARM_1+1
	cneqsn	a, #0x00
	goto	00104$
00146$:
	mov	a, _isspace_PARM_1+0
	ceqsn	a, #0x0b
	goto	00147$
	mov	a, _isspace_PARM_1+1
	cneqsn	a, #0x00
	goto	00104$
00147$:
	clear	p
	goto	00105$
00104$:
	mov	a, #0x01
	mov	p, a
00105$:
	mov	a, #0x00
	xch	a, p
;	../isspace.c: 40: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
