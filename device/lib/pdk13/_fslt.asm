;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _fslt
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fslt_PARM_2
	.globl ___fslt_PARM_1
	.globl ___fslt
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
___fslt_PARM_1:
	.ds 4
___fslt_PARM_2:
	.ds 4
___fslt_fl1_65536_21:
	.ds 4
___fslt_fl2_65536_21:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
___fslt_sloc0_1_0:
	.ds 4
___fslt_sloc1_1_0:
	.ds 4
___fslt_sloc2_1_0:
	.ds 4
___fslt_sloc3_1_0:
	.ds 4
___fslt_sloc4_1_0:
	.ds 4
___fslt_sloc5_1_0:
	.ds 4
___fslt_sloc6_1_0:
	.ds 4
___fslt_sloc7_1_0:
	.ds 4
___fslt_sloc8_1_0:
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
;	../_fslt.c: 108: char __fslt (float a1, float a2)
;	-----------------------------------------
;	 function __fslt
;	-----------------------------------------
___fslt:
;	../_fslt.c: 112: fl1.f = a1;
	mov	a, ___fslt_PARM_1+0
	mov	___fslt_fl1_65536_21+0, a
	mov	a, ___fslt_PARM_1+1
	mov	___fslt_fl1_65536_21+1, a
	mov	a, ___fslt_PARM_1+2
	mov	___fslt_fl1_65536_21+2, a
	mov	a, ___fslt_PARM_1+3
	mov	___fslt_fl1_65536_21+3, a
;	../_fslt.c: 113: fl2.f = a2;
	mov	a, ___fslt_PARM_2+0
	mov	___fslt_fl2_65536_21+0, a
	mov	a, ___fslt_PARM_2+1
	mov	___fslt_fl2_65536_21+1, a
	mov	a, ___fslt_PARM_2+2
	mov	___fslt_fl2_65536_21+2, a
	mov	a, ___fslt_PARM_2+3
	mov	___fslt_fl2_65536_21+3, a
;	../_fslt.c: 115: if (((fl1.l | fl2.l) & 0x7FFFFFFF) == 0)
	mov	a, ___fslt_fl1_65536_21+0
	mov	___fslt_sloc0_1_0+0, a
	mov	a, ___fslt_fl1_65536_21+1
	mov	___fslt_sloc0_1_0+1, a
	mov	a, ___fslt_fl1_65536_21+2
	mov	___fslt_sloc0_1_0+2, a
	mov	a, ___fslt_fl1_65536_21+3
	mov	___fslt_sloc0_1_0+3, a
	mov	a, ___fslt_fl2_65536_21+0
	mov	___fslt_sloc1_1_0+0, a
	mov	a, ___fslt_fl2_65536_21+1
	mov	___fslt_sloc1_1_0+1, a
	mov	a, ___fslt_fl2_65536_21+2
	mov	___fslt_sloc1_1_0+2, a
	mov	a, ___fslt_fl2_65536_21+3
	mov	___fslt_sloc1_1_0+3, a
	mov	a, ___fslt_sloc0_1_0+0
	or	a, ___fslt_sloc1_1_0+0
	mov	___fslt_sloc2_1_0+0, a
	mov	a, ___fslt_sloc0_1_0+1
	or	a, ___fslt_sloc1_1_0+1
	mov	___fslt_sloc2_1_0+1, a
	mov	a, ___fslt_sloc0_1_0+2
	or	a, ___fslt_sloc1_1_0+2
	mov	___fslt_sloc2_1_0+2, a
	mov	a, ___fslt_sloc0_1_0+3
	or	a, ___fslt_sloc1_1_0+3
	mov	___fslt_sloc2_1_0+3, a
	mov	a, ___fslt_sloc2_1_0+0
	ceqsn	a, #0x00
	goto	00102$
	mov	a, ___fslt_sloc2_1_0+1
	ceqsn	a, #0x00
	goto	00102$
	mov	a, ___fslt_sloc2_1_0+2
	ceqsn	a, #0x00
	goto	00102$
	mov	a, ___fslt_sloc2_1_0+3
	and	a, #0x7f
	ceqsn	a, #0x00
	goto	00102$
;	../_fslt.c: 116: return (0);
	ret	#0x00
00102$:
;	../_fslt.c: 118: if (fl1.l<0 && fl2.l<0) {
	mov	a, ___fslt_fl1_65536_21+0
	mov	___fslt_sloc3_1_0+0, a
	mov	a, ___fslt_fl1_65536_21+1
	mov	___fslt_sloc3_1_0+1, a
	mov	a, ___fslt_fl1_65536_21+2
	mov	___fslt_sloc3_1_0+2, a
	mov	a, ___fslt_fl1_65536_21+3
	mov	___fslt_sloc3_1_0+3, a
	sub	a, #0x80
	t0sn	f, c
	goto	00106$
	mov	a, ___fslt_fl2_65536_21+0
	mov	___fslt_sloc4_1_0+0, a
	mov	a, ___fslt_fl2_65536_21+1
	mov	___fslt_sloc4_1_0+1, a
	mov	a, ___fslt_fl2_65536_21+2
	mov	___fslt_sloc4_1_0+2, a
	mov	a, ___fslt_fl2_65536_21+3
	mov	___fslt_sloc4_1_0+3, a
	sub	a, #0x80
	t0sn	f, c
	goto	00106$
;	../_fslt.c: 119: if (fl2.l < fl1.l)
	mov	a, ___fslt_fl2_65536_21+0
	mov	___fslt_sloc5_1_0+0, a
	mov	a, ___fslt_fl2_65536_21+1
	mov	___fslt_sloc5_1_0+1, a
	mov	a, ___fslt_fl2_65536_21+2
	mov	___fslt_sloc5_1_0+2, a
	mov	a, ___fslt_fl2_65536_21+3
	mov	___fslt_sloc5_1_0+3, a
	mov	a, ___fslt_fl1_65536_21+0
	mov	___fslt_sloc6_1_0+0, a
	mov	a, ___fslt_fl1_65536_21+1
	mov	___fslt_sloc6_1_0+1, a
	mov	a, ___fslt_fl1_65536_21+2
	mov	___fslt_sloc6_1_0+2, a
	mov	a, ___fslt_fl1_65536_21+3
	mov	___fslt_sloc6_1_0+3, a
	mov	a, ___fslt_sloc5_1_0+0
	sub	a, ___fslt_sloc6_1_0+0
	mov	a, ___fslt_sloc5_1_0+1
	subc	a, ___fslt_sloc6_1_0+1
	mov	a, ___fslt_sloc5_1_0+2
	subc	a, ___fslt_sloc6_1_0+2
	mov	a, ___fslt_sloc5_1_0+3
	subc	a, ___fslt_sloc6_1_0+3
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t1sn	f, c
	goto	00104$
;	../_fslt.c: 120: return (1);
	ret	#0x01
00104$:
;	../_fslt.c: 121: return (0);
	ret	#0x00
00106$:
;	../_fslt.c: 124: if (fl1.l < fl2.l)
	mov	a, ___fslt_fl1_65536_21+0
	mov	___fslt_sloc7_1_0+0, a
	mov	a, ___fslt_fl1_65536_21+1
	mov	___fslt_sloc7_1_0+1, a
	mov	a, ___fslt_fl1_65536_21+2
	mov	___fslt_sloc7_1_0+2, a
	mov	a, ___fslt_fl1_65536_21+3
	mov	___fslt_sloc7_1_0+3, a
	mov	a, ___fslt_fl2_65536_21+0
	mov	___fslt_sloc8_1_0+0, a
	mov	a, ___fslt_fl2_65536_21+1
	mov	___fslt_sloc8_1_0+1, a
	mov	a, ___fslt_fl2_65536_21+2
	mov	___fslt_sloc8_1_0+2, a
	mov	a, ___fslt_fl2_65536_21+3
	mov	___fslt_sloc8_1_0+3, a
	mov	a, ___fslt_sloc7_1_0+0
	sub	a, ___fslt_sloc8_1_0+0
	mov	a, ___fslt_sloc7_1_0+1
	subc	a, ___fslt_sloc8_1_0+1
	mov	a, ___fslt_sloc7_1_0+2
	subc	a, ___fslt_sloc8_1_0+2
	mov	a, ___fslt_sloc7_1_0+3
	subc	a, ___fslt_sloc8_1_0+3
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t1sn	f, c
	goto	00109$
;	../_fslt.c: 125: return (1);
	ret	#0x01
00109$:
;	../_fslt.c: 126: return (0);
	ret	#0x00
;	../_fslt.c: 127: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
