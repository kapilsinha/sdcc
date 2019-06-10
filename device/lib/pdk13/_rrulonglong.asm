;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _rrulonglong
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rrulonglong_PARM_2
	.globl __rrulonglong_PARM_1
	.globl __rrulonglong
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__rrulonglong_PARM_1:
	.ds 8
__rrulonglong_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
__rrulonglong_sloc0_1_0:
	.ds 4
__rrulonglong_sloc1_1_0:
	.ds 4
__rrulonglong_sloc2_1_0:
	.ds 2
__rrulonglong_sloc3_1_0:
	.ds 4
__rrulonglong_sloc4_1_0:
	.ds 4
__rrulonglong_sloc5_1_0:
	.ds 2
__rrulonglong_sloc6_1_0:
	.ds 4
__rrulonglong_sloc7_1_0:
	.ds 4
__rrulonglong_sloc8_1_0:
	.ds 4
__rrulonglong_sloc9_1_0:
	.ds 4
__rrulonglong_sloc10_1_0:
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
;	../_rrulonglong.c: 62: unsigned long long _rrulonglong(unsigned long long l, char s)
;	-----------------------------------------
;	 function _rrulonglong
;	-----------------------------------------
__rrulonglong:
;	../_rrulonglong.c: 64: uint32_t *const top = (uint32_t *)((char *)(&l) + 4);
;	../_rrulonglong.c: 65: uint16_t *const middle = (uint16_t *)((char *)(&l) + 4);
;	../_rrulonglong.c: 66: uint32_t *const bottom = (uint32_t *)(&l);
;	../_rrulonglong.c: 67: uint16_t *const b = (uint16_t *)(&l);
;	../_rrulonglong.c: 77: (*bottom) >>= s;
00103$:
;	../_rrulonglong.c: 69: for(;s >= 16; s -= 16)
	mov	a, __rrulonglong_PARM_2+0
	sub	a, #0x10
	t0sn	f, c
	goto	00101$
;	../_rrulonglong.c: 71: b[0] = b[1];
	mov	a, __rrulonglong_PARM_1+2
	mov	p, a
	mov	a, __rrulonglong_PARM_1+3
	mov	__rrulonglong_PARM_1+1, a
	mov	a, p
	mov	__rrulonglong_PARM_1+0, a
;	../_rrulonglong.c: 72: b[1] = b[2];
	mov	a, __rrulonglong_PARM_1+4
	mov	p, a
	mov	a, __rrulonglong_PARM_1+5
	mov	__rrulonglong_PARM_1+3, a
	mov	a, p
	mov	__rrulonglong_PARM_1+2, a
;	../_rrulonglong.c: 73: b[2] = b[3];
	mov	a, __rrulonglong_PARM_1+6
	mov	p, a
	mov	a, __rrulonglong_PARM_1+7
	mov	__rrulonglong_PARM_1+5, a
	mov	a, p
	mov	__rrulonglong_PARM_1+4, a
;	../_rrulonglong.c: 74: b[3] = 0x000000;
	clear	__rrulonglong_PARM_1+6
	clear	__rrulonglong_PARM_1+7
;	../_rrulonglong.c: 69: for(;s >= 16; s -= 16)
	mov	a, #0x10
	sub	__rrulonglong_PARM_2+0, a
	goto	00103$
00101$:
;	../_rrulonglong.c: 77: (*bottom) >>= s;
	mov	a, __rrulonglong_PARM_1+0
	mov	__rrulonglong_sloc0_1_0+0, a
	mov	a, __rrulonglong_PARM_1+1
	mov	__rrulonglong_sloc0_1_0+1, a
	mov	a, __rrulonglong_PARM_1+2
	mov	__rrulonglong_sloc0_1_0+2, a
	mov	a, __rrulonglong_PARM_1+3
	mov	__rrulonglong_sloc0_1_0+3, a
	mov	a, __rrulonglong_sloc0_1_0+0
	mov	__rrulonglong_sloc1_1_0+0, a
	mov	a, __rrulonglong_sloc0_1_0+1
	mov	__rrulonglong_sloc1_1_0+1, a
	mov	a, __rrulonglong_sloc0_1_0+2
	mov	__rrulonglong_sloc1_1_0+2, a
	mov	a, __rrulonglong_sloc0_1_0+3
	mov	__rrulonglong_sloc1_1_0+3, a
	mov	a, __rrulonglong_PARM_2+0
00115$:
	sub	a, #1
	t0sn	f, c
	goto	00116$
	sr	__rrulonglong_sloc1_1_0+3
	src	__rrulonglong_sloc1_1_0+2
	src	__rrulonglong_sloc1_1_0+1
	src	__rrulonglong_sloc1_1_0+0
	goto	00115$
00116$:
	mov	a, __rrulonglong_sloc1_1_0+0
	mov	__rrulonglong_PARM_1+0, a
	mov	a, __rrulonglong_sloc1_1_0+1
	mov	__rrulonglong_PARM_1+1, a
	mov	a, __rrulonglong_sloc1_1_0+2
	mov	__rrulonglong_PARM_1+2, a
	mov	a, __rrulonglong_sloc1_1_0+3
	mov	__rrulonglong_PARM_1+3, a
;	../_rrulonglong.c: 78: (*middle) |= (uint16_t)(((uint32_t)(*middle) << 16) >> s);
	mov	a, __rrulonglong_PARM_1+4
	mov	__rrulonglong_sloc2_1_0+0, a
	mov	a, __rrulonglong_PARM_1+5
	mov	__rrulonglong_sloc2_1_0+1, a
	mov	a, __rrulonglong_sloc2_1_0+0
	mov	__rrulonglong_sloc3_1_0+2, a
	mov	a, __rrulonglong_sloc2_1_0+1
	mov	__rrulonglong_sloc3_1_0+3, a
	clear	__rrulonglong_sloc3_1_0+0
	clear	__rrulonglong_sloc3_1_0+1
	mov	a, __rrulonglong_sloc3_1_0+0
	mov	__rrulonglong_sloc4_1_0+0, a
	mov	a, __rrulonglong_sloc3_1_0+1
	mov	__rrulonglong_sloc4_1_0+1, a
	mov	a, __rrulonglong_sloc3_1_0+2
	mov	__rrulonglong_sloc4_1_0+2, a
	mov	a, __rrulonglong_sloc3_1_0+3
	mov	__rrulonglong_sloc4_1_0+3, a
	mov	a, __rrulonglong_PARM_2+0
00117$:
	sub	a, #1
	t0sn	f, c
	goto	00118$
	sr	__rrulonglong_sloc4_1_0+3
	src	__rrulonglong_sloc4_1_0+2
	src	__rrulonglong_sloc4_1_0+1
	src	__rrulonglong_sloc4_1_0+0
	goto	00117$
00118$:
	mov	a, __rrulonglong_sloc4_1_0+1
	mov	p, a
	mov	a, __rrulonglong_sloc4_1_0+0
	or	a, __rrulonglong_sloc2_1_0+0
	mov	__rrulonglong_sloc5_1_0+0, a
	mov	a, p
	or	a, __rrulonglong_sloc2_1_0+1
	mov	__rrulonglong_sloc5_1_0+1, a
	mov	a, __rrulonglong_sloc5_1_0+0
	mov	__rrulonglong_PARM_1+4, a
	mov	a, __rrulonglong_sloc5_1_0+1
	mov	__rrulonglong_PARM_1+5, a
;	../_rrulonglong.c: 79: (*top) |= (((*middle) & 0xffff0000ul) >> s);
	mov	a, __rrulonglong_PARM_1+4
	mov	__rrulonglong_sloc6_1_0+0, a
	mov	a, __rrulonglong_PARM_1+5
	mov	__rrulonglong_sloc6_1_0+1, a
	mov	a, __rrulonglong_PARM_1+6
	mov	__rrulonglong_sloc6_1_0+2, a
	mov	a, __rrulonglong_PARM_1+7
	mov	__rrulonglong_sloc6_1_0+3, a
	mov	a, __rrulonglong_sloc5_1_0+0
	mov	__rrulonglong_sloc7_1_0+0, a
	mov	a, __rrulonglong_sloc5_1_0+1
	mov	__rrulonglong_sloc7_1_0+1, a
	clear	__rrulonglong_sloc7_1_0+2
	clear	__rrulonglong_sloc7_1_0+3
	clear	__rrulonglong_sloc8_1_0+0
	clear	__rrulonglong_sloc8_1_0+1
	mov	a, __rrulonglong_sloc7_1_0+2
	mov	__rrulonglong_sloc8_1_0+2, a
	mov	a, __rrulonglong_sloc7_1_0+3
	mov	__rrulonglong_sloc8_1_0+3, a
	mov	a, __rrulonglong_sloc8_1_0+0
	mov	__rrulonglong_sloc9_1_0+0, a
	mov	a, __rrulonglong_sloc8_1_0+1
	mov	__rrulonglong_sloc9_1_0+1, a
	mov	a, __rrulonglong_sloc8_1_0+2
	mov	__rrulonglong_sloc9_1_0+2, a
	mov	a, __rrulonglong_sloc8_1_0+3
	mov	__rrulonglong_sloc9_1_0+3, a
	mov	a, __rrulonglong_PARM_2+0
00119$:
	sub	a, #1
	t0sn	f, c
	goto	00120$
	sr	__rrulonglong_sloc9_1_0+3
	src	__rrulonglong_sloc9_1_0+2
	src	__rrulonglong_sloc9_1_0+1
	src	__rrulonglong_sloc9_1_0+0
	goto	00119$
00120$:
	mov	a, __rrulonglong_sloc6_1_0+0
	or	a, __rrulonglong_sloc9_1_0+0
	mov	__rrulonglong_sloc10_1_0+0, a
	mov	a, __rrulonglong_sloc6_1_0+1
	or	a, __rrulonglong_sloc9_1_0+1
	mov	__rrulonglong_sloc10_1_0+1, a
	mov	a, __rrulonglong_sloc6_1_0+2
	or	a, __rrulonglong_sloc9_1_0+2
	mov	__rrulonglong_sloc10_1_0+2, a
	mov	a, __rrulonglong_sloc6_1_0+3
	or	a, __rrulonglong_sloc9_1_0+3
	mov	__rrulonglong_sloc10_1_0+3, a
	mov	a, __rrulonglong_sloc10_1_0+0
	mov	__rrulonglong_PARM_1+4, a
	mov	a, __rrulonglong_sloc10_1_0+1
	mov	__rrulonglong_PARM_1+5, a
	mov	a, __rrulonglong_sloc10_1_0+2
	mov	__rrulonglong_PARM_1+6, a
	mov	a, __rrulonglong_sloc10_1_0+3
	mov	__rrulonglong_PARM_1+7, a
;	../_rrulonglong.c: 81: return(l);
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, __rrulonglong_PARM_1+0
	idxm	p, a
	inc	p
	mov	a, __rrulonglong_PARM_1+1
	idxm	p, a
	inc	p
	mov	a, __rrulonglong_PARM_1+2
	idxm	p, a
	inc	p
	mov	a, __rrulonglong_PARM_1+3
	idxm	p, a
	inc	p
	mov	a, __rrulonglong_PARM_1+4
	idxm	p, a
	inc	p
	mov	a, __rrulonglong_PARM_1+5
	idxm	p, a
	inc	p
	mov	a, __rrulonglong_PARM_1+6
	idxm	p, a
	inc	p
	mov	a, __rrulonglong_PARM_1+7
	idxm	p, a
;	../_rrulonglong.c: 82: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
