;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module powf
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _logf
	.globl _expf
	.globl _powf_PARM_2
	.globl _powf_PARM_1
	.globl _powf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_powf_PARM_1:
	.ds 4
_powf_PARM_2:
	.ds 4
_powf_sloc0_1_0:
	.ds 4
_powf_sloc1_1_0:
	.ds 4
_powf_sloc2_1_0:
	.ds 4
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
;	../powf.c: 35: float powf(float x, float y)
;	-----------------------------------------
;	 function powf
;	-----------------------------------------
_powf:
;	../powf.c: 37: if(y == 0.0) return 1.0;
	mov	a, _powf_PARM_2+3
	and	a, #0x7f
	or	a, _powf_PARM_2+0
	or	a, _powf_PARM_2+1
	or	a, _powf_PARM_2+2
	ceqsn	a, #0x00
	goto	00102$
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x80
	idxm	p, a
	inc	p
	mov	a, #0x3f
	idxm	p, a
	ret
00102$:
;	../powf.c: 38: if(y == 1.0) return x;
	mov	a, _powf_PARM_2+0
	mov	___fseq_PARM_1+0, a
	mov	a, _powf_PARM_2+1
	mov	___fseq_PARM_1+1, a
	mov	a, _powf_PARM_2+2
	mov	___fseq_PARM_1+2, a
	mov	a, _powf_PARM_2+3
	mov	___fseq_PARM_1+3, a
	clear	___fseq_PARM_2+0
	clear	___fseq_PARM_2+1
	mov	a, #0x80
	mov	___fseq_PARM_2+2, a
	mov	a, #0x3f
	mov	___fseq_PARM_2+3, a
	call	___fseq
	cneqsn	a, #0x00
	goto	00104$
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _powf_PARM_1+0
	idxm	p, a
	inc	p
	mov	a, _powf_PARM_1+1
	idxm	p, a
	inc	p
	mov	a, _powf_PARM_1+2
	idxm	p, a
	inc	p
	mov	a, _powf_PARM_1+3
	idxm	p, a
	ret
00104$:
;	../powf.c: 39: if(x <= 0.0) return 0.0;
	clear	___fslt_PARM_1+0
	clear	___fslt_PARM_1+1
	clear	___fslt_PARM_1+2
	clear	___fslt_PARM_1+3
	mov	a, _powf_PARM_1+0
	mov	___fslt_PARM_2+0, a
	mov	a, _powf_PARM_1+1
	mov	___fslt_PARM_2+1, a
	mov	a, _powf_PARM_1+2
	mov	___fslt_PARM_2+2, a
	mov	a, _powf_PARM_1+3
	mov	___fslt_PARM_2+3, a
	call	___fslt
	ceqsn	a, #0x00
	goto	00106$
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
	ret
00106$:
;	../powf.c: 40: return expf(logf(x) * y);
	mov	a, sp
	mov	p, a
	push	af
	push	af
	mov	a, _powf_PARM_1+0
	idxm	p, a
	inc	p
	mov	a, _powf_PARM_1+1
	idxm	p, a
	inc	p
	mov	a, _powf_PARM_1+2
	idxm	p, a
	inc	p
	mov	a, _powf_PARM_1+3
	idxm	p, a
	mov	a, #_powf_sloc0_1_0
	push	af
	call	_logf
	mov	a, sp
	add	a, #-6
	mov	sp, a
	mov	a, _powf_sloc0_1_0+0
	mov	___fsmul_PARM_1+0, a
	mov	a, _powf_sloc0_1_0+1
	mov	___fsmul_PARM_1+1, a
	mov	a, _powf_sloc0_1_0+2
	mov	___fsmul_PARM_1+2, a
	mov	a, _powf_sloc0_1_0+3
	mov	___fsmul_PARM_1+3, a
	mov	a, _powf_PARM_2+0
	mov	___fsmul_PARM_2+0, a
	mov	a, _powf_PARM_2+1
	mov	___fsmul_PARM_2+1, a
	mov	a, _powf_PARM_2+2
	mov	___fsmul_PARM_2+2, a
	mov	a, _powf_PARM_2+3
	mov	___fsmul_PARM_2+3, a
	mov	a, #_powf_sloc1_1_0
	push	af
	call	___fsmul
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	p, a
	push	af
	push	af
	mov	a, _powf_sloc1_1_0+0
	idxm	p, a
	inc	p
	mov	a, _powf_sloc1_1_0+1
	idxm	p, a
	inc	p
	mov	a, _powf_sloc1_1_0+2
	idxm	p, a
	inc	p
	mov	a, _powf_sloc1_1_0+3
	idxm	p, a
	mov	a, #_powf_sloc2_1_0
	push	af
	call	_expf
	mov	a, sp
	add	a, #-6
	mov	sp, a
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _powf_sloc2_1_0+0
	idxm	p, a
	inc	p
	mov	a, _powf_sloc2_1_0+1
	idxm	p, a
	inc	p
	mov	a, _powf_sloc2_1_0+2
	idxm	p, a
	inc	p
	mov	a, _powf_sloc2_1_0+3
	idxm	p, a
;	../powf.c: 41: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
