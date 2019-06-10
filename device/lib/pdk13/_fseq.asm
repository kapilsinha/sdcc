;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module _fseq
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fseq_PARM_2
	.globl ___fseq_PARM_1
	.globl ___fseq
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
___fseq_PARM_1:
	.ds 4
___fseq_PARM_2:
	.ds 4
___fseq_fl1_65536_21:
	.ds 4
___fseq_fl2_65536_21:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
___fseq_sloc0_1_0:
	.ds 4
___fseq_sloc1_1_0:
	.ds 4
___fseq_sloc2_1_0:
	.ds 4
___fseq_sloc3_1_0:
	.ds 4
___fseq_sloc4_1_0:
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
;	../_fseq.c: 83: __fseq (float a1, float a2)
;	-----------------------------------------
;	 function __fseq
;	-----------------------------------------
___fseq:
;	../_fseq.c: 87: fl1.f = a1;
	mov	a, ___fseq_PARM_1+0
	mov	___fseq_fl1_65536_21+0, a
	mov	a, ___fseq_PARM_1+1
	mov	___fseq_fl1_65536_21+1, a
	mov	a, ___fseq_PARM_1+2
	mov	___fseq_fl1_65536_21+2, a
	mov	a, ___fseq_PARM_1+3
	mov	___fseq_fl1_65536_21+3, a
;	../_fseq.c: 88: fl2.f = a2;
	mov	a, ___fseq_PARM_2+0
	mov	___fseq_fl2_65536_21+0, a
	mov	a, ___fseq_PARM_2+1
	mov	___fseq_fl2_65536_21+1, a
	mov	a, ___fseq_PARM_2+2
	mov	___fseq_fl2_65536_21+2, a
	mov	a, ___fseq_PARM_2+3
	mov	___fseq_fl2_65536_21+3, a
;	../_fseq.c: 90: if (fl1.l == fl2.l)
	mov	a, ___fseq_fl1_65536_21+0
	mov	___fseq_sloc0_1_0+0, a
	mov	a, ___fseq_fl1_65536_21+1
	mov	___fseq_sloc0_1_0+1, a
	mov	a, ___fseq_fl1_65536_21+2
	mov	___fseq_sloc0_1_0+2, a
	mov	a, ___fseq_fl1_65536_21+3
	mov	___fseq_sloc0_1_0+3, a
	mov	a, ___fseq_fl2_65536_21+0
	mov	___fseq_sloc1_1_0+0, a
	mov	a, ___fseq_fl2_65536_21+1
	mov	___fseq_sloc1_1_0+1, a
	mov	a, ___fseq_fl2_65536_21+2
	mov	___fseq_sloc1_1_0+2, a
	mov	a, ___fseq_fl2_65536_21+3
	mov	___fseq_sloc1_1_0+3, a
	mov	a, ___fseq_sloc0_1_0+0
	ceqsn	a, ___fseq_sloc1_1_0+0
	goto	00102$
	mov	a, ___fseq_sloc0_1_0+1
	ceqsn	a, ___fseq_sloc1_1_0+1
	goto	00102$
	mov	a, ___fseq_sloc0_1_0+2
	ceqsn	a, ___fseq_sloc1_1_0+2
	goto	00102$
	mov	a, ___fseq_sloc0_1_0+3
	ceqsn	a, ___fseq_sloc1_1_0+3
	goto	00102$
;	../_fseq.c: 91: return (1);
	ret	#0x01
00102$:
;	../_fseq.c: 92: if (((fl1.l | fl2.l) & 0x7FFFFFFF) == 0)
	mov	a, ___fseq_fl1_65536_21+0
	mov	___fseq_sloc2_1_0+0, a
	mov	a, ___fseq_fl1_65536_21+1
	mov	___fseq_sloc2_1_0+1, a
	mov	a, ___fseq_fl1_65536_21+2
	mov	___fseq_sloc2_1_0+2, a
	mov	a, ___fseq_fl1_65536_21+3
	mov	___fseq_sloc2_1_0+3, a
	mov	a, ___fseq_fl2_65536_21+0
	mov	___fseq_sloc3_1_0+0, a
	mov	a, ___fseq_fl2_65536_21+1
	mov	___fseq_sloc3_1_0+1, a
	mov	a, ___fseq_fl2_65536_21+2
	mov	___fseq_sloc3_1_0+2, a
	mov	a, ___fseq_fl2_65536_21+3
	mov	___fseq_sloc3_1_0+3, a
	mov	a, ___fseq_sloc2_1_0+0
	or	a, ___fseq_sloc3_1_0+0
	mov	___fseq_sloc4_1_0+0, a
	mov	a, ___fseq_sloc2_1_0+1
	or	a, ___fseq_sloc3_1_0+1
	mov	___fseq_sloc4_1_0+1, a
	mov	a, ___fseq_sloc2_1_0+2
	or	a, ___fseq_sloc3_1_0+2
	mov	___fseq_sloc4_1_0+2, a
	mov	a, ___fseq_sloc2_1_0+3
	or	a, ___fseq_sloc3_1_0+3
	mov	___fseq_sloc4_1_0+3, a
	mov	a, ___fseq_sloc4_1_0+0
	ceqsn	a, #0x00
	goto	00104$
	mov	a, ___fseq_sloc4_1_0+1
	ceqsn	a, #0x00
	goto	00104$
	mov	a, ___fseq_sloc4_1_0+2
	ceqsn	a, #0x00
	goto	00104$
	mov	a, ___fseq_sloc4_1_0+3
	and	a, #0x7f
	ceqsn	a, #0x00
	goto	00104$
;	../_fseq.c: 93: return (1);
	ret	#0x01
00104$:
;	../_fseq.c: 94: return (0);
	ret	#0x00
;	../_fseq.c: 95: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
