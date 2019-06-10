;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _rrslonglong
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rrslonglong_PARM_2
	.globl __rrslonglong_PARM_1
	.globl __rrslonglong
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__rrslonglong_PARM_1:
	.ds 8
__rrslonglong_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
__rrslonglong_sloc0_1_0:
	.ds 4
__rrslonglong_sloc1_1_0:
	.ds 4
__rrslonglong_sloc2_1_0:
	.ds 2
__rrslonglong_sloc3_1_0:
	.ds 2
__rrslonglong_sloc4_1_0:
	.ds 4
__rrslonglong_sloc5_1_0:
	.ds 4
__rrslonglong_sloc6_1_0:
	.ds 4
__rrslonglong_sloc7_1_0:
	.ds 4
__rrslonglong_sloc8_1_0:
	.ds 4
__rrslonglong_sloc9_1_0:
	.ds 4
__rrslonglong_sloc10_1_0:
	.ds 4
__rrslonglong_sloc11_1_0:
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
;	../_rrslonglong.c: 62: long long _rrslonglong(long long l, char s)
;	-----------------------------------------
;	 function _rrslonglong
;	-----------------------------------------
__rrslonglong:
;	../_rrslonglong.c: 64: int32_t *top = (uint32_t *)((char *)(&l) + 4);
;	../_rrslonglong.c: 65: uint16_t *middle = (uint16_t *)((char *)(&l) + 3);
;	../_rrslonglong.c: 66: uint32_t *bottom = (uint32_t *)(&l);
;	../_rrslonglong.c: 67: uint16_t *b = (uint16_t *)(&l);
;	../_rrslonglong.c: 77: (*bottom) >>= s;
00103$:
;	../_rrslonglong.c: 69: for(;s >= 16; s-= 16)
	mov	a, __rrslonglong_PARM_2+0
	sub	a, #0x10
	t0sn	f, c
	goto	00101$
;	../_rrslonglong.c: 71: b[0] = b[1];
	mov	a, __rrslonglong_PARM_1+2
	mov	p, a
	mov	a, __rrslonglong_PARM_1+3
	mov	__rrslonglong_PARM_1+1, a
	mov	a, p
	mov	__rrslonglong_PARM_1+0, a
;	../_rrslonglong.c: 72: b[1] = b[2];
	mov	a, __rrslonglong_PARM_1+4
	mov	p, a
	mov	a, __rrslonglong_PARM_1+5
	mov	__rrslonglong_PARM_1+3, a
	mov	a, p
	mov	__rrslonglong_PARM_1+2, a
;	../_rrslonglong.c: 73: b[2] = b[3];
	mov	a, __rrslonglong_PARM_1+6
	mov	p, a
	mov	a, __rrslonglong_PARM_1+7
	mov	__rrslonglong_PARM_1+5, a
	mov	a, p
	mov	__rrslonglong_PARM_1+4, a
;	../_rrslonglong.c: 74: b[3] = (b[3] & 0x8000) ? 0xffff : 0x000000;
	mov	a, __rrslonglong_PARM_1+6
	push	af
	mov	a, __rrslonglong_PARM_1+7
	mov	p, a
	pop	af
	t1sn	p, #7
	goto	00107$
	mov	a, #0xff
	mov	p, a
	mov	a, #0xff
	goto	00108$
00107$:
	clear	p
	mov	a, #0x00
00108$:
	mov	__rrslonglong_PARM_1+7, a
	mov	a, p
	mov	__rrslonglong_PARM_1+6, a
;	../_rrslonglong.c: 69: for(;s >= 16; s-= 16)
	mov	a, #0x10
	sub	__rrslonglong_PARM_2+0, a
	goto	00103$
00101$:
;	../_rrslonglong.c: 77: (*bottom) >>= s;
	mov	a, __rrslonglong_PARM_1+0
	mov	__rrslonglong_sloc0_1_0+0, a
	mov	a, __rrslonglong_PARM_1+1
	mov	__rrslonglong_sloc0_1_0+1, a
	mov	a, __rrslonglong_PARM_1+2
	mov	__rrslonglong_sloc0_1_0+2, a
	mov	a, __rrslonglong_PARM_1+3
	mov	__rrslonglong_sloc0_1_0+3, a
	mov	a, __rrslonglong_sloc0_1_0+0
	mov	__rrslonglong_sloc1_1_0+0, a
	mov	a, __rrslonglong_sloc0_1_0+1
	mov	__rrslonglong_sloc1_1_0+1, a
	mov	a, __rrslonglong_sloc0_1_0+2
	mov	__rrslonglong_sloc1_1_0+2, a
	mov	a, __rrslonglong_sloc0_1_0+3
	mov	__rrslonglong_sloc1_1_0+3, a
	mov	a, __rrslonglong_PARM_2+0
00121$:
	sub	a, #1
	t0sn	f, c
	goto	00122$
	sr	__rrslonglong_sloc1_1_0+3
	src	__rrslonglong_sloc1_1_0+2
	src	__rrslonglong_sloc1_1_0+1
	src	__rrslonglong_sloc1_1_0+0
	goto	00121$
00122$:
	mov	a, __rrslonglong_sloc1_1_0+0
	mov	__rrslonglong_PARM_1+0, a
	mov	a, __rrslonglong_sloc1_1_0+1
	mov	__rrslonglong_PARM_1+1, a
	mov	a, __rrslonglong_sloc1_1_0+2
	mov	__rrslonglong_PARM_1+2, a
	mov	a, __rrslonglong_sloc1_1_0+3
;	../_rrslonglong.c: 78: (*bottom) |= ((uint32_t)((*middle) >> s) << 16);
	mov	__rrslonglong_PARM_1+3, a
	mov	__rrslonglong_sloc2_1_0+0, a
	mov	a, __rrslonglong_PARM_1+4
	mov	__rrslonglong_sloc2_1_0+1, a
	mov	a, __rrslonglong_sloc2_1_0+0
	mov	__rrslonglong_sloc3_1_0+0, a
	mov	a, __rrslonglong_sloc2_1_0+1
	mov	__rrslonglong_sloc3_1_0+1, a
	mov	a, __rrslonglong_PARM_2+0
00123$:
	sub	a, #1
	t0sn	f, c
	goto	00124$
	sr	__rrslonglong_sloc3_1_0+1
	src	__rrslonglong_sloc3_1_0+0
	goto	00123$
00124$:
	mov	a, __rrslonglong_sloc3_1_0+0
	mov	__rrslonglong_sloc4_1_0+2, a
	mov	a, __rrslonglong_sloc3_1_0+1
	mov	__rrslonglong_sloc4_1_0+3, a
	clear	__rrslonglong_sloc4_1_0+0
	clear	__rrslonglong_sloc4_1_0+1
	mov	a, __rrslonglong_sloc1_1_0+0
	or	a, __rrslonglong_sloc4_1_0+0
	mov	__rrslonglong_sloc5_1_0+0, a
	mov	a, __rrslonglong_sloc1_1_0+1
	or	a, __rrslonglong_sloc4_1_0+1
	mov	__rrslonglong_sloc5_1_0+1, a
	mov	a, __rrslonglong_sloc1_1_0+2
	or	a, __rrslonglong_sloc4_1_0+2
	mov	__rrslonglong_sloc5_1_0+2, a
	mov	a, __rrslonglong_sloc1_1_0+3
	or	a, __rrslonglong_sloc4_1_0+3
	mov	__rrslonglong_sloc5_1_0+3, a
	mov	a, __rrslonglong_sloc5_1_0+0
	mov	__rrslonglong_PARM_1+0, a
	mov	a, __rrslonglong_sloc5_1_0+1
	mov	__rrslonglong_PARM_1+1, a
	mov	a, __rrslonglong_sloc5_1_0+2
	mov	__rrslonglong_PARM_1+2, a
	mov	a, __rrslonglong_sloc5_1_0+3
	mov	__rrslonglong_PARM_1+3, a
;	../_rrslonglong.c: 79: (*top) |= (((*middle) & 0xffff0000) >> s);
	mov	a, __rrslonglong_PARM_1+4
	mov	__rrslonglong_sloc6_1_0+0, a
	mov	a, __rrslonglong_PARM_1+5
	mov	__rrslonglong_sloc6_1_0+1, a
	mov	a, __rrslonglong_PARM_1+6
	mov	__rrslonglong_sloc6_1_0+2, a
	mov	a, __rrslonglong_PARM_1+7
	mov	__rrslonglong_sloc6_1_0+3, a
	mov	a, __rrslonglong_PARM_1+3
	push	af
	mov	a, __rrslonglong_PARM_1+4
	mov	p, a
	pop	af
	mov	__rrslonglong_sloc7_1_0+0, a
	mov	a, p
	mov	__rrslonglong_sloc7_1_0+1, a
	clear	__rrslonglong_sloc7_1_0+2
	clear	__rrslonglong_sloc7_1_0+3
	clear	__rrslonglong_sloc8_1_0+0
	clear	__rrslonglong_sloc8_1_0+1
	mov	a, __rrslonglong_sloc7_1_0+2
	mov	__rrslonglong_sloc8_1_0+2, a
	mov	a, __rrslonglong_sloc7_1_0+3
	mov	__rrslonglong_sloc8_1_0+3, a
	mov	a, __rrslonglong_sloc8_1_0+0
	mov	__rrslonglong_sloc9_1_0+0, a
	mov	a, __rrslonglong_sloc8_1_0+1
	mov	__rrslonglong_sloc9_1_0+1, a
	mov	a, __rrslonglong_sloc8_1_0+2
	mov	__rrslonglong_sloc9_1_0+2, a
	mov	a, __rrslonglong_sloc8_1_0+3
	mov	__rrslonglong_sloc9_1_0+3, a
	mov	a, __rrslonglong_PARM_2+0
00125$:
	sub	a, #1
	t0sn	f, c
	goto	00126$
	sr	__rrslonglong_sloc9_1_0+3
	src	__rrslonglong_sloc9_1_0+2
	src	__rrslonglong_sloc9_1_0+1
	src	__rrslonglong_sloc9_1_0+0
	goto	00125$
00126$:
	mov	a, __rrslonglong_sloc6_1_0+0
	mov	__rrslonglong_sloc10_1_0+0, a
	mov	a, __rrslonglong_sloc6_1_0+1
	mov	__rrslonglong_sloc10_1_0+1, a
	mov	a, __rrslonglong_sloc6_1_0+2
	mov	__rrslonglong_sloc10_1_0+2, a
	mov	a, __rrslonglong_sloc6_1_0+3
	mov	__rrslonglong_sloc10_1_0+3, a
	mov	a, __rrslonglong_sloc10_1_0+0
	or	a, __rrslonglong_sloc9_1_0+0
	mov	__rrslonglong_sloc11_1_0+0, a
	mov	a, __rrslonglong_sloc10_1_0+1
	or	a, __rrslonglong_sloc9_1_0+1
	mov	__rrslonglong_sloc11_1_0+1, a
	mov	a, __rrslonglong_sloc10_1_0+2
	or	a, __rrslonglong_sloc9_1_0+2
	mov	__rrslonglong_sloc11_1_0+2, a
	mov	a, __rrslonglong_sloc10_1_0+3
	or	a, __rrslonglong_sloc9_1_0+3
	mov	__rrslonglong_sloc11_1_0+3, a
	mov	a, __rrslonglong_sloc11_1_0+0
	mov	__rrslonglong_PARM_1+4, a
	mov	a, __rrslonglong_sloc11_1_0+1
	mov	__rrslonglong_PARM_1+5, a
	mov	a, __rrslonglong_sloc11_1_0+2
	mov	__rrslonglong_PARM_1+6, a
	mov	a, __rrslonglong_sloc11_1_0+3
	mov	__rrslonglong_PARM_1+7, a
;	../_rrslonglong.c: 81: return(l);
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, __rrslonglong_PARM_1+0
	idxm	p, a
	inc	p
	mov	a, __rrslonglong_PARM_1+1
	idxm	p, a
	inc	p
	mov	a, __rrslonglong_PARM_1+2
	idxm	p, a
	inc	p
	mov	a, __rrslonglong_PARM_1+3
	idxm	p, a
	inc	p
	mov	a, __rrslonglong_PARM_1+4
	idxm	p, a
	inc	p
	mov	a, __rrslonglong_PARM_1+5
	idxm	p, a
	inc	p
	mov	a, __rrslonglong_PARM_1+6
	idxm	p, a
	inc	p
	mov	a, __rrslonglong_PARM_1+7
	idxm	p, a
;	../_rrslonglong.c: 82: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
