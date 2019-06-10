;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _rlulonglong
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rlulonglong_PARM_2
	.globl __rlulonglong_PARM_1
	.globl __rlulonglong
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
__rlulonglong_PARM_1:
	.ds 8
__rlulonglong_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
__rlulonglong_sloc0_1_0:
	.ds 4
__rlulonglong_sloc1_1_0:
	.ds 1
__rlulonglong_sloc2_1_0:
	.ds 4
__rlulonglong_sloc3_1_0:
	.ds 2
__rlulonglong_sloc4_1_0:
	.ds 4
__rlulonglong_sloc5_1_0:
	.ds 4
__rlulonglong_sloc6_1_0:
	.ds 4
__rlulonglong_sloc7_1_0:
	.ds 4
__rlulonglong_sloc8_1_0:
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
;	../_rlulonglong.c: 61: unsigned long long _rlulonglong(unsigned long long l, char s)
;	-----------------------------------------
;	 function _rlulonglong
;	-----------------------------------------
__rlulonglong:
;	../_rlulonglong.c: 63: uint32_t *const top = (uint32_t *)((char *)(&l) + 4);
;	../_rlulonglong.c: 64: uint16_t *const middle = (uint16_t *)((char *)(&l) + 2);
;	../_rlulonglong.c: 65: uint32_t *const bottom = (uint32_t *)(&l);
;	../_rlulonglong.c: 66: uint16_t *const b = (uint16_t *)(&l);
;	../_rlulonglong.c: 76: (*top) <<= s;
00103$:
;	../_rlulonglong.c: 68: for(;s >= 16; s-= 16)
	mov	a, __rlulonglong_PARM_2+0
	sub	a, #0x10
	t0sn	f, c
	goto	00101$
;	../_rlulonglong.c: 70: b[3] = b[2];
	mov	a, __rlulonglong_PARM_1+4
	mov	p, a
	mov	a, __rlulonglong_PARM_1+5
	mov	__rlulonglong_PARM_1+7, a
	mov	a, p
	mov	__rlulonglong_PARM_1+6, a
;	../_rlulonglong.c: 71: b[2] = b[1];
	mov	a, __rlulonglong_PARM_1+2
	mov	p, a
	mov	a, __rlulonglong_PARM_1+3
	mov	__rlulonglong_PARM_1+5, a
	mov	a, p
	mov	__rlulonglong_PARM_1+4, a
;	../_rlulonglong.c: 72: b[1] = b[0];
	mov	a, __rlulonglong_PARM_1+0
	mov	p, a
	mov	a, __rlulonglong_PARM_1+1
	mov	__rlulonglong_PARM_1+3, a
	mov	a, p
	mov	__rlulonglong_PARM_1+2, a
;	../_rlulonglong.c: 73: b[0] = 0;
	clear	__rlulonglong_PARM_1+0
	clear	__rlulonglong_PARM_1+1
;	../_rlulonglong.c: 68: for(;s >= 16; s-= 16)
	mov	a, #0x10
	sub	__rlulonglong_PARM_2+0, a
	goto	00103$
00101$:
;	../_rlulonglong.c: 76: (*top) <<= s;
	mov	a, __rlulonglong_PARM_1+4
	mov	__rlulonglong_sloc0_1_0+0, a
	mov	a, __rlulonglong_PARM_1+5
	mov	__rlulonglong_sloc0_1_0+1, a
	mov	a, __rlulonglong_PARM_1+6
	mov	__rlulonglong_sloc0_1_0+2, a
	mov	a, __rlulonglong_PARM_1+7
	mov	__rlulonglong_sloc0_1_0+3, a
	mov	a, __rlulonglong_PARM_2+0
	mov	__rlulonglong_sloc1_1_0+0, a
	mov	a, __rlulonglong_sloc0_1_0+0
	mov	__rlulonglong_sloc2_1_0+0, a
	mov	a, __rlulonglong_sloc0_1_0+1
	mov	__rlulonglong_sloc2_1_0+1, a
	mov	a, __rlulonglong_sloc0_1_0+2
	mov	__rlulonglong_sloc2_1_0+2, a
	mov	a, __rlulonglong_sloc0_1_0+3
	mov	__rlulonglong_sloc2_1_0+3, a
	mov	a, __rlulonglong_sloc1_1_0+0
00115$:
	sub	a, #1
	t0sn	f, c
	goto	00116$
	sl	__rlulonglong_sloc2_1_0+0
	slc	__rlulonglong_sloc2_1_0+1
	slc	__rlulonglong_sloc2_1_0+2
	slc	__rlulonglong_sloc2_1_0+3
	goto	00115$
00116$:
	mov	a, __rlulonglong_sloc2_1_0+0
	mov	__rlulonglong_PARM_1+4, a
	mov	a, __rlulonglong_sloc2_1_0+1
	mov	__rlulonglong_PARM_1+5, a
	mov	a, __rlulonglong_sloc2_1_0+2
	mov	__rlulonglong_PARM_1+6, a
	mov	a, __rlulonglong_sloc2_1_0+3
	mov	__rlulonglong_PARM_1+7, a
;	../_rlulonglong.c: 77: (*top) |= (((uint32_t)((*middle) & 0xffffu) << s) >> 16);
	mov	a, __rlulonglong_PARM_1+2
	mov	__rlulonglong_sloc3_1_0+0, a
	mov	a, __rlulonglong_PARM_1+3
	mov	__rlulonglong_sloc3_1_0+1, a
	mov	a, __rlulonglong_sloc3_1_0+0
	mov	__rlulonglong_sloc4_1_0+0, a
	mov	a, __rlulonglong_sloc3_1_0+1
	mov	__rlulonglong_sloc4_1_0+1, a
	clear	__rlulonglong_sloc4_1_0+2
	clear	__rlulonglong_sloc4_1_0+3
	mov	a, __rlulonglong_sloc1_1_0+0
00117$:
	sub	a, #1
	t0sn	f, c
	goto	00118$
	sl	__rlulonglong_sloc4_1_0+0
	slc	__rlulonglong_sloc4_1_0+1
	slc	__rlulonglong_sloc4_1_0+2
	slc	__rlulonglong_sloc4_1_0+3
	goto	00117$
00118$:
	mov	a, __rlulonglong_sloc4_1_0+2
	mov	__rlulonglong_sloc5_1_0+0, a
	mov	a, __rlulonglong_sloc4_1_0+3
	mov	__rlulonglong_sloc5_1_0+1, a
	clear	__rlulonglong_sloc5_1_0+2
	clear	__rlulonglong_sloc5_1_0+3
	mov	a, __rlulonglong_sloc2_1_0+0
	or	a, __rlulonglong_sloc5_1_0+0
	mov	__rlulonglong_sloc6_1_0+0, a
	mov	a, __rlulonglong_sloc2_1_0+1
	or	a, __rlulonglong_sloc5_1_0+1
	mov	__rlulonglong_sloc6_1_0+1, a
	mov	a, __rlulonglong_sloc2_1_0+2
	or	a, __rlulonglong_sloc5_1_0+2
	mov	__rlulonglong_sloc6_1_0+2, a
	mov	a, __rlulonglong_sloc2_1_0+3
	or	a, __rlulonglong_sloc5_1_0+3
	mov	__rlulonglong_sloc6_1_0+3, a
	mov	a, __rlulonglong_sloc6_1_0+0
	mov	__rlulonglong_PARM_1+4, a
	mov	a, __rlulonglong_sloc6_1_0+1
	mov	__rlulonglong_PARM_1+5, a
	mov	a, __rlulonglong_sloc6_1_0+2
	mov	__rlulonglong_PARM_1+6, a
	mov	a, __rlulonglong_sloc6_1_0+3
	mov	__rlulonglong_PARM_1+7, a
;	../_rlulonglong.c: 78: (*bottom) <<= s;
	mov	a, __rlulonglong_PARM_1+0
	mov	__rlulonglong_sloc7_1_0+0, a
	mov	a, __rlulonglong_PARM_1+1
	mov	__rlulonglong_sloc7_1_0+1, a
	mov	a, __rlulonglong_PARM_1+2
	mov	__rlulonglong_sloc7_1_0+2, a
	mov	a, __rlulonglong_PARM_1+3
	mov	__rlulonglong_sloc7_1_0+3, a
	mov	a, __rlulonglong_sloc7_1_0+0
	mov	__rlulonglong_sloc8_1_0+0, a
	mov	a, __rlulonglong_sloc7_1_0+1
	mov	__rlulonglong_sloc8_1_0+1, a
	mov	a, __rlulonglong_sloc7_1_0+2
	mov	__rlulonglong_sloc8_1_0+2, a
	mov	a, __rlulonglong_sloc7_1_0+3
	mov	__rlulonglong_sloc8_1_0+3, a
	mov	a, __rlulonglong_sloc1_1_0+0
00119$:
	sub	a, #1
	t0sn	f, c
	goto	00120$
	sl	__rlulonglong_sloc8_1_0+0
	slc	__rlulonglong_sloc8_1_0+1
	slc	__rlulonglong_sloc8_1_0+2
	slc	__rlulonglong_sloc8_1_0+3
	goto	00119$
00120$:
	mov	a, __rlulonglong_sloc8_1_0+0
	mov	__rlulonglong_PARM_1+0, a
	mov	a, __rlulonglong_sloc8_1_0+1
	mov	__rlulonglong_PARM_1+1, a
	mov	a, __rlulonglong_sloc8_1_0+2
	mov	__rlulonglong_PARM_1+2, a
	mov	a, __rlulonglong_sloc8_1_0+3
	mov	__rlulonglong_PARM_1+3, a
;	../_rlulonglong.c: 80: return(l);
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, __rlulonglong_PARM_1+0
	idxm	p, a
	inc	p
	mov	a, __rlulonglong_PARM_1+1
	idxm	p, a
	inc	p
	mov	a, __rlulonglong_PARM_1+2
	idxm	p, a
	inc	p
	mov	a, __rlulonglong_PARM_1+3
	idxm	p, a
	inc	p
	mov	a, __rlulonglong_PARM_1+4
	idxm	p, a
	inc	p
	mov	a, __rlulonglong_PARM_1+5
	idxm	p, a
	inc	p
	mov	a, __rlulonglong_PARM_1+6
	idxm	p, a
	inc	p
	mov	a, __rlulonglong_PARM_1+7
	idxm	p, a
;	../_rlulonglong.c: 81: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
