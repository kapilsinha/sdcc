;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module rand
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _srand_PARM_1
	.globl _rand
	.globl _srand
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_s:
	.ds 4
_srand_PARM_1:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_rand_sloc0_1_0:
	.ds 4
_rand_sloc1_1_0:
	.ds 4
_rand_sloc2_1_0:
	.ds 4
_rand_sloc3_1_0:
	.ds 4
_rand_sloc4_1_0:
	.ds 4
_rand_sloc5_1_0:
	.ds 4
_rand_sloc6_1_0:
	.ds 4
_rand_sloc7_1_0:
	.ds 2
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
;	../rand.c: 38: static uint32_t s = 0x80000001;
	mov	a, #0x01
	mov	_s+0, a
	clear	_s+1
	clear	_s+2
	mov	a, #0x80
	mov	_s+3, a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	../rand.c: 40: int rand(void)
;	-----------------------------------------
;	 function rand
;	-----------------------------------------
_rand:
;	../rand.c: 42: register unsigned long t = s;
	mov	a, _s+0
	mov	_rand_sloc0_1_0+0, a
	mov	a, _s+1
	mov	_rand_sloc0_1_0+1, a
	mov	a, _s+2
	mov	_rand_sloc0_1_0+2, a
	mov	a, _s+3
	mov	_rand_sloc0_1_0+3, a
;	../rand.c: 44: t ^= t >> 10;
	mov	a, _rand_sloc0_1_0+1
	mov	_rand_sloc1_1_0+0, a
	mov	a, _rand_sloc0_1_0+2
	mov	_rand_sloc1_1_0+1, a
	mov	a, _rand_sloc0_1_0+3
	mov	_rand_sloc1_1_0+2, a
	clear	_rand_sloc1_1_0+3
	sr	_rand_sloc1_1_0+2
	src	_rand_sloc1_1_0+1
	src	_rand_sloc1_1_0+0
	sr	_rand_sloc1_1_0+2
	src	_rand_sloc1_1_0+1
	src	_rand_sloc1_1_0+0
	mov	a, _rand_sloc0_1_0+0
	xor	a, _rand_sloc1_1_0+0
	mov	_rand_sloc2_1_0+0, a
	mov	a, _rand_sloc0_1_0+1
	xor	a, _rand_sloc1_1_0+1
	mov	_rand_sloc2_1_0+1, a
	mov	a, _rand_sloc0_1_0+2
	xor	a, _rand_sloc1_1_0+2
	mov	_rand_sloc2_1_0+2, a
	mov	a, _rand_sloc0_1_0+3
	xor	a, _rand_sloc1_1_0+3
	mov	_rand_sloc2_1_0+3, a
;	../rand.c: 45: t ^= t << 9;
	mov	a, _rand_sloc2_1_0+0
	mov	_rand_sloc3_1_0+1, a
	mov	a, _rand_sloc2_1_0+1
	mov	_rand_sloc3_1_0+2, a
	mov	a, _rand_sloc2_1_0+2
	mov	_rand_sloc3_1_0+3, a
	clear	_rand_sloc3_1_0+0
	sl	_rand_sloc3_1_0+1
	slc	_rand_sloc3_1_0+2
	slc	_rand_sloc3_1_0+3
	mov	a, _rand_sloc2_1_0+0
	xor	a, _rand_sloc3_1_0+0
	mov	_rand_sloc4_1_0+0, a
	mov	a, _rand_sloc2_1_0+1
	xor	a, _rand_sloc3_1_0+1
	mov	_rand_sloc4_1_0+1, a
	mov	a, _rand_sloc2_1_0+2
	xor	a, _rand_sloc3_1_0+2
	mov	_rand_sloc4_1_0+2, a
	mov	a, _rand_sloc2_1_0+3
	xor	a, _rand_sloc3_1_0+3
;	../rand.c: 46: t ^= t >> 25;
	mov	_rand_sloc4_1_0+3, a
	mov	_rand_sloc5_1_0+0, a
	clear	_rand_sloc5_1_0+1
	clear	_rand_sloc5_1_0+2
	clear	_rand_sloc5_1_0+3
	sr	_rand_sloc5_1_0+0
	mov	a, _rand_sloc4_1_0+0
	xor	a, _rand_sloc5_1_0+0
	mov	_rand_sloc6_1_0+0, a
	mov	a, _rand_sloc4_1_0+1
	xor	a, _rand_sloc5_1_0+1
	mov	_rand_sloc6_1_0+1, a
	mov	a, _rand_sloc4_1_0+2
	xor	a, _rand_sloc5_1_0+2
	mov	_rand_sloc6_1_0+2, a
	mov	a, _rand_sloc4_1_0+3
	xor	a, _rand_sloc5_1_0+3
	mov	_rand_sloc6_1_0+3, a
;	../rand.c: 48: s = t;
	mov	a, _rand_sloc6_1_0+0
	mov	_s+0, a
	mov	a, _rand_sloc6_1_0+1
	mov	_s+1, a
	mov	a, _rand_sloc6_1_0+2
	mov	_s+2, a
	mov	a, _rand_sloc6_1_0+3
	mov	_s+3, a
;	../rand.c: 50: return(t & RAND_MAX);
	mov	a, _rand_sloc6_1_0+0
	mov	_rand_sloc7_1_0+0, a
	mov	a, _rand_sloc6_1_0+1
	mov	_rand_sloc7_1_0+1, a
	mov	a, _rand_sloc7_1_0+0
	mov	p, a
	mov	a, _rand_sloc7_1_0+1
	and	a, #0x7f
	xch	a, p
;	../rand.c: 51: }
	ret
;	../rand.c: 53: void srand(unsigned int seed)
;	-----------------------------------------
;	 function srand
;	-----------------------------------------
_srand:
;	../rand.c: 55: s = seed | 0x80000000; /* s shall not become 0 */
	mov	a, _srand_PARM_1+0
	mov	_s+0, a
	mov	a, _srand_PARM_1+1
	mov	_s+1, a
	clear	_s+2
	mov	a, #0x00
	or	a, #0x80
	mov	_s+3, a
;	../rand.c: 56: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
