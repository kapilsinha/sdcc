;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _ulong2fs
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs_PARM_1
	.globl ___ulong2fs
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
___ulong2fs_PARM_1:
	.ds 4
___ulong2fs_fl_65536_21:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
___ulong2fs_sloc0_1_0:
	.ds 4
___ulong2fs_sloc1_1_0:
	.ds 4
___ulong2fs_sloc2_1_0:
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
;	../_ulong2fs.c: 83: float __ulong2fs (unsigned long a )
;	-----------------------------------------
;	 function __ulong2fs
;	-----------------------------------------
___ulong2fs:
;	../_ulong2fs.c: 88: if (!a)
	mov	a, ___ulong2fs_PARM_1+0
	or	a, ___ulong2fs_PARM_1+1
	or	a, ___ulong2fs_PARM_1+2
	or	a, ___ulong2fs_PARM_1+3
	ceqsn	a, #0x00
	goto	00115$
;	../_ulong2fs.c: 90: return 0.0;
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
;	../_ulong2fs.c: 93: while (a < HIDDEN)
00115$:
	mov	a, #0x96
	mov	p, a
00103$:
	mov	a, ___ulong2fs_PARM_1+2
	sub	a, #0x80
	mov	a, ___ulong2fs_PARM_1+3
	subc	a
	t1sn	f, c
	goto	00118$
;	../_ulong2fs.c: 95: a <<= 1;
	sl	___ulong2fs_PARM_1+0
	slc	___ulong2fs_PARM_1+1
	slc	___ulong2fs_PARM_1+2
	slc	___ulong2fs_PARM_1+3
;	../_ulong2fs.c: 96: exp--;
	dec	p
	goto	00103$
;	../_ulong2fs.c: 99: while (a & NORM) 
00118$:
00108$:
	mov	a, ___ulong2fs_PARM_1+3
	cneqsn	a, #0x00
	goto	00110$
;	../_ulong2fs.c: 102: if (a & 1)
	mov	a, ___ulong2fs_PARM_1+0
	and	a, #0x01
	cneqsn	a, #0x00
	goto	00107$
;	../_ulong2fs.c: 103: a += 2;
	mov	a, #0x02
	add	___ulong2fs_PARM_1+0, a
	addc	___ulong2fs_PARM_1+1
	addc	___ulong2fs_PARM_1+2
	addc	___ulong2fs_PARM_1+3
00107$:
;	../_ulong2fs.c: 104: a >>= 1;
	sr	___ulong2fs_PARM_1+3
	src	___ulong2fs_PARM_1+2
	src	___ulong2fs_PARM_1+1
	src	___ulong2fs_PARM_1+0
;	../_ulong2fs.c: 105: exp++;
	inc	p
	goto	00108$
00110$:
;	../_ulong2fs.c: 108: a &= ~HIDDEN ;
	mov	a, #0x7f
	and	___ulong2fs_PARM_1+2, a
;	../_ulong2fs.c: 110: fl.l = PACK(0,(unsigned long)exp, a);
	mov	a, p
	mov	___ulong2fs_sloc0_1_0+2, a
	clear	___ulong2fs_sloc0_1_0+3
	clear	___ulong2fs_sloc0_1_0+0
	clear	___ulong2fs_sloc0_1_0+1
	mov	a, #7
00139$:
	sl	___ulong2fs_sloc0_1_0+2
	slc	___ulong2fs_sloc0_1_0+3
	dzsn	a
	goto	00139$
	mov	a, ___ulong2fs_sloc0_1_0+0
	or	a, ___ulong2fs_PARM_1+0
	mov	___ulong2fs_sloc1_1_0+0, a
	mov	a, ___ulong2fs_sloc0_1_0+1
	or	a, ___ulong2fs_PARM_1+1
	mov	___ulong2fs_sloc1_1_0+1, a
	mov	a, ___ulong2fs_sloc0_1_0+2
	or	a, ___ulong2fs_PARM_1+2
	mov	___ulong2fs_sloc1_1_0+2, a
	mov	a, ___ulong2fs_sloc0_1_0+3
	or	a, ___ulong2fs_PARM_1+3
	mov	___ulong2fs_sloc1_1_0+3, a
	mov	a, ___ulong2fs_sloc1_1_0+0
	mov	___ulong2fs_fl_65536_21+0, a
	mov	a, ___ulong2fs_sloc1_1_0+1
	mov	___ulong2fs_fl_65536_21+1, a
	mov	a, ___ulong2fs_sloc1_1_0+2
	mov	___ulong2fs_fl_65536_21+2, a
	mov	a, ___ulong2fs_sloc1_1_0+3
	mov	___ulong2fs_fl_65536_21+3, a
;	../_ulong2fs.c: 112: return (fl.f);
	mov	a, ___ulong2fs_fl_65536_21+0
	mov	___ulong2fs_sloc2_1_0+0, a
	mov	a, ___ulong2fs_fl_65536_21+1
	mov	___ulong2fs_sloc2_1_0+1, a
	mov	a, ___ulong2fs_fl_65536_21+2
	mov	___ulong2fs_sloc2_1_0+2, a
	mov	a, ___ulong2fs_fl_65536_21+3
	mov	___ulong2fs_sloc2_1_0+3, a
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, ___ulong2fs_sloc2_1_0+0
	idxm	p, a
	inc	p
	mov	a, ___ulong2fs_sloc2_1_0+1
	idxm	p, a
	inc	p
	mov	a, ___ulong2fs_sloc2_1_0+2
	idxm	p, a
	inc	p
	mov	a, ___ulong2fs_sloc2_1_0+3
	idxm	p, a
;	../_ulong2fs.c: 113: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
