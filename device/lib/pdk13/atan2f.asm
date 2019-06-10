;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module atan2f
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _atanf
	.globl _atan2f_PARM_2
	.globl _atan2f_PARM_1
	.globl _atan2f
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_atan2f_PARM_1:
	.ds 4
_atan2f_PARM_2:
	.ds 4
_atan2f_sloc0_1_0:
	.ds 4
_atan2f_sloc1_1_0:
	.ds 4
_atan2f_sloc2_1_0:
	.ds 4
_atan2f_sloc3_1_0:
	.ds 4
_atan2f_sloc4_1_0:
	.ds 4
_atan2f_sloc5_1_0:
	.ds 4
_atan2f_sloc6_1_0:
	.ds 4
_atan2f_sloc7_1_0:
	.ds 4
_atan2f_sloc8_1_0:
	.ds 4
_atan2f_sloc9_1_0:
	.ds 4
_atan2f_sloc10_1_0:
	.ds 4
_atan2f_sloc11_1_0:
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
;	../atan2f.c: 34: float atan2f(float x, float y)
;	-----------------------------------------
;	 function atan2f
;	-----------------------------------------
_atan2f:
;	../atan2f.c: 38: if ((x==0.0) && (y==0.0))
	mov	a, _atan2f_PARM_1+3
	and	a, #0x7f
	or	a, _atan2f_PARM_1+0
	or	a, _atan2f_PARM_1+1
	or	a, _atan2f_PARM_1+2
	ceqsn	a, #0x00
	goto	00102$
	mov	a, _atan2f_PARM_2+3
	and	a, #0x7f
	or	a, _atan2f_PARM_2+0
	or	a, _atan2f_PARM_2+1
	or	a, _atan2f_PARM_2+2
	ceqsn	a, #0x00
	goto	00102$
;	../atan2f.c: 40: errno=EDOM;
	mov	a, #0x21
	mov	_errno+0, a
	clear	_errno+1
;	../atan2f.c: 41: return 0.0;
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
00102$:
;	../atan2f.c: 44: if(fabsf(y)>=fabsf(x))
	mov	a, sp
	mov	p, a
	push	af
	push	af
	mov	a, _atan2f_PARM_2+0
	idxm	p, a
	inc	p
	mov	a, _atan2f_PARM_2+1
	idxm	p, a
	inc	p
	mov	a, _atan2f_PARM_2+2
	idxm	p, a
	inc	p
	mov	a, _atan2f_PARM_2+3
	idxm	p, a
	mov	a, #_atan2f_sloc0_1_0
	push	af
	call	_fabsf
	mov	a, sp
	add	a, #-6
	mov	sp, a
	mov	p, a
	push	af
	push	af
	mov	a, _atan2f_PARM_1+0
	idxm	p, a
	inc	p
	mov	a, _atan2f_PARM_1+1
	idxm	p, a
	inc	p
	mov	a, _atan2f_PARM_1+2
	idxm	p, a
	inc	p
	mov	a, _atan2f_PARM_1+3
	idxm	p, a
	mov	a, #_atan2f_sloc1_1_0
	push	af
	call	_fabsf
	mov	a, sp
	add	a, #-6
	mov	sp, a
	mov	a, _atan2f_sloc0_1_0+0
	mov	___fslt_PARM_1+0, a
	mov	a, _atan2f_sloc0_1_0+1
	mov	___fslt_PARM_1+1, a
	mov	a, _atan2f_sloc0_1_0+2
	mov	___fslt_PARM_1+2, a
	mov	a, _atan2f_sloc0_1_0+3
	mov	___fslt_PARM_1+3, a
	mov	a, _atan2f_sloc1_1_0+0
	mov	___fslt_PARM_2+0, a
	mov	a, _atan2f_sloc1_1_0+1
	mov	___fslt_PARM_2+1, a
	mov	a, _atan2f_sloc1_1_0+2
	mov	___fslt_PARM_2+2, a
	mov	a, _atan2f_sloc1_1_0+3
	mov	___fslt_PARM_2+3, a
	call	___fslt
	ceqsn	a, #0x00
	goto	00107$
;	../atan2f.c: 46: r=atanf(x/y);
	mov	a, _atan2f_PARM_1+0
	mov	___fsdiv_PARM_1+0, a
	mov	a, _atan2f_PARM_1+1
	mov	___fsdiv_PARM_1+1, a
	mov	a, _atan2f_PARM_1+2
	mov	___fsdiv_PARM_1+2, a
	mov	a, _atan2f_PARM_1+3
	mov	___fsdiv_PARM_1+3, a
	mov	a, _atan2f_PARM_2+0
	mov	___fsdiv_PARM_2+0, a
	mov	a, _atan2f_PARM_2+1
	mov	___fsdiv_PARM_2+1, a
	mov	a, _atan2f_PARM_2+2
	mov	___fsdiv_PARM_2+2, a
	mov	a, _atan2f_PARM_2+3
	mov	___fsdiv_PARM_2+3, a
	mov	a, #_atan2f_sloc2_1_0
	push	af
	call	___fsdiv
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	p, a
	push	af
	push	af
	mov	a, _atan2f_sloc2_1_0+0
	idxm	p, a
	inc	p
	mov	a, _atan2f_sloc2_1_0+1
	idxm	p, a
	inc	p
	mov	a, _atan2f_sloc2_1_0+2
	idxm	p, a
	inc	p
	mov	a, _atan2f_sloc2_1_0+3
	idxm	p, a
	mov	a, #_atan2f_sloc3_1_0
	push	af
	call	_atanf
	mov	a, sp
	add	a, #-6
	mov	sp, a
	mov	a, _atan2f_sloc3_1_0+0
	mov	_atan2f_sloc8_1_0+0, a
	mov	a, _atan2f_sloc3_1_0+1
	mov	_atan2f_sloc8_1_0+1, a
	mov	a, _atan2f_sloc3_1_0+2
	mov	_atan2f_sloc8_1_0+2, a
	mov	a, _atan2f_sloc3_1_0+3
	mov	_atan2f_sloc8_1_0+3, a
;	../atan2f.c: 47: if(y<0.0) r+=(x>=0?PI:-PI);
	mov	a, _atan2f_PARM_2+0
	mov	___fslt_PARM_1+0, a
	mov	a, _atan2f_PARM_2+1
	mov	___fslt_PARM_1+1, a
	mov	a, _atan2f_PARM_2+2
	mov	___fslt_PARM_1+2, a
	mov	a, _atan2f_PARM_2+3
	mov	___fslt_PARM_1+3, a
	clear	___fslt_PARM_2+0
	clear	___fslt_PARM_2+1
	clear	___fslt_PARM_2+2
	clear	___fslt_PARM_2+3
	call	___fslt
	cneqsn	a, #0x00
	goto	00108$
	mov	a, _atan2f_PARM_1+0
	mov	___fslt_PARM_1+0, a
	mov	a, _atan2f_PARM_1+1
	mov	___fslt_PARM_1+1, a
	mov	a, _atan2f_PARM_1+2
	mov	___fslt_PARM_1+2, a
	mov	a, _atan2f_PARM_1+3
	mov	___fslt_PARM_1+3, a
	clear	___fslt_PARM_2+0
	clear	___fslt_PARM_2+1
	clear	___fslt_PARM_2+2
	clear	___fslt_PARM_2+3
	call	___fslt
	ceqsn	a, #0x00
	goto	00111$
	mov	a, #0xdb
	mov	_atan2f_sloc9_1_0+0, a
	mov	a, #0x0f
	mov	_atan2f_sloc9_1_0+1, a
	mov	a, #0x49
	mov	_atan2f_sloc9_1_0+2, a
	mov	a, #0x40
	mov	_atan2f_sloc9_1_0+3, a
	goto	00112$
00111$:
	mov	a, #0xdb
	mov	_atan2f_sloc9_1_0+0, a
	mov	a, #0x0f
	mov	_atan2f_sloc9_1_0+1, a
	mov	a, #0x49
	mov	_atan2f_sloc9_1_0+2, a
	mov	a, #0xc0
	mov	_atan2f_sloc9_1_0+3, a
00112$:
	mov	a, _atan2f_sloc8_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _atan2f_sloc8_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _atan2f_sloc8_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _atan2f_sloc8_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, _atan2f_sloc9_1_0+0
	mov	___fsadd_PARM_2+0, a
	mov	a, _atan2f_sloc9_1_0+1
	mov	___fsadd_PARM_2+1, a
	mov	a, _atan2f_sloc9_1_0+2
	mov	___fsadd_PARM_2+2, a
	mov	a, _atan2f_sloc9_1_0+3
	mov	___fsadd_PARM_2+3, a
	mov	a, #_atan2f_sloc4_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _atan2f_sloc4_1_0+0
	mov	_atan2f_sloc8_1_0+0, a
	mov	a, _atan2f_sloc4_1_0+1
	mov	_atan2f_sloc8_1_0+1, a
	mov	a, _atan2f_sloc4_1_0+2
	mov	_atan2f_sloc8_1_0+2, a
	mov	a, _atan2f_sloc4_1_0+3
	mov	_atan2f_sloc8_1_0+3, a
	goto	00108$
00107$:
;	../atan2f.c: 51: r=-atanf(y/x);
	mov	a, _atan2f_PARM_2+0
	mov	___fsdiv_PARM_1+0, a
	mov	a, _atan2f_PARM_2+1
	mov	___fsdiv_PARM_1+1, a
	mov	a, _atan2f_PARM_2+2
	mov	___fsdiv_PARM_1+2, a
	mov	a, _atan2f_PARM_2+3
	mov	___fsdiv_PARM_1+3, a
	mov	a, _atan2f_PARM_1+0
	mov	___fsdiv_PARM_2+0, a
	mov	a, _atan2f_PARM_1+1
	mov	___fsdiv_PARM_2+1, a
	mov	a, _atan2f_PARM_1+2
	mov	___fsdiv_PARM_2+2, a
	mov	a, _atan2f_PARM_1+3
	mov	___fsdiv_PARM_2+3, a
	mov	a, #_atan2f_sloc5_1_0
	push	af
	call	___fsdiv
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	p, a
	push	af
	push	af
	mov	a, _atan2f_sloc5_1_0+0
	idxm	p, a
	inc	p
	mov	a, _atan2f_sloc5_1_0+1
	idxm	p, a
	inc	p
	mov	a, _atan2f_sloc5_1_0+2
	idxm	p, a
	inc	p
	mov	a, _atan2f_sloc5_1_0+3
	idxm	p, a
	mov	a, #_atan2f_sloc6_1_0
	push	af
	call	_atanf
	mov	a, sp
	add	a, #-6
	mov	sp, a
	mov	a, _atan2f_sloc6_1_0+0
	mov	_atan2f_sloc10_1_0+0, a
	mov	a, _atan2f_sloc6_1_0+1
	mov	_atan2f_sloc10_1_0+1, a
	mov	a, _atan2f_sloc6_1_0+2
	mov	_atan2f_sloc10_1_0+2, a
	mov	a, _atan2f_sloc6_1_0+3
	xor	a, #0x80
	mov	_atan2f_sloc10_1_0+3, a
;	../atan2f.c: 52: r+=(x<0.0?-HALF_PI:HALF_PI);
	mov	a, _atan2f_PARM_1+0
	mov	___fslt_PARM_1+0, a
	mov	a, _atan2f_PARM_1+1
	mov	___fslt_PARM_1+1, a
	mov	a, _atan2f_PARM_1+2
	mov	___fslt_PARM_1+2, a
	mov	a, _atan2f_PARM_1+3
	mov	___fslt_PARM_1+3, a
	clear	___fslt_PARM_2+0
	clear	___fslt_PARM_2+1
	clear	___fslt_PARM_2+2
	clear	___fslt_PARM_2+3
	call	___fslt
	cneqsn	a, #0x00
	goto	00113$
	mov	a, #0xdb
	mov	_atan2f_sloc11_1_0+0, a
	mov	a, #0x0f
	mov	_atan2f_sloc11_1_0+1, a
	mov	a, #0xc9
	mov	_atan2f_sloc11_1_0+2, a
	mov	a, #0xbf
	mov	_atan2f_sloc11_1_0+3, a
	goto	00114$
00113$:
	mov	a, #0xdb
	mov	_atan2f_sloc11_1_0+0, a
	mov	a, #0x0f
	mov	_atan2f_sloc11_1_0+1, a
	mov	a, #0xc9
	mov	_atan2f_sloc11_1_0+2, a
	mov	a, #0x3f
	mov	_atan2f_sloc11_1_0+3, a
00114$:
	mov	a, _atan2f_sloc10_1_0+0
	mov	___fsadd_PARM_1+0, a
	mov	a, _atan2f_sloc10_1_0+1
	mov	___fsadd_PARM_1+1, a
	mov	a, _atan2f_sloc10_1_0+2
	mov	___fsadd_PARM_1+2, a
	mov	a, _atan2f_sloc10_1_0+3
	mov	___fsadd_PARM_1+3, a
	mov	a, _atan2f_sloc11_1_0+0
	mov	___fsadd_PARM_2+0, a
	mov	a, _atan2f_sloc11_1_0+1
	mov	___fsadd_PARM_2+1, a
	mov	a, _atan2f_sloc11_1_0+2
	mov	___fsadd_PARM_2+2, a
	mov	a, _atan2f_sloc11_1_0+3
	mov	___fsadd_PARM_2+3, a
	mov	a, #_atan2f_sloc7_1_0
	push	af
	call	___fsadd
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _atan2f_sloc7_1_0+0
	mov	_atan2f_sloc8_1_0+0, a
	mov	a, _atan2f_sloc7_1_0+1
	mov	_atan2f_sloc8_1_0+1, a
	mov	a, _atan2f_sloc7_1_0+2
	mov	_atan2f_sloc8_1_0+2, a
	mov	a, _atan2f_sloc7_1_0+3
	mov	_atan2f_sloc8_1_0+3, a
00108$:
;	../atan2f.c: 54: return r;
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _atan2f_sloc8_1_0+0
	idxm	p, a
	inc	p
	mov	a, _atan2f_sloc8_1_0+1
	idxm	p, a
	inc	p
	mov	a, _atan2f_sloc8_1_0+2
	idxm	p, a
	inc	p
	mov	a, _atan2f_sloc8_1_0+3
	idxm	p, a
;	../atan2f.c: 55: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
