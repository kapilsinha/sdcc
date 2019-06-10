;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module floorf
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _floorf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
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
;	../floorf.c: 33: float floorf (float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function floorf
;	-----------------------------------------
_floorf:
	mov	a, sp
	add	a, #24
;	../floorf.c: 36: r=x;
	mov	sp, a
	add	a, #0xe0
	mov	p, a
	idxm	a, p
	mov	___fs2slong_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___fs2slong_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	___fs2slong_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	___fs2slong_PARM_1+3, a
	mov	a, sp
	add	a, #0xe8
	push	af
	call	___fs2slong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xe8
	mov	p, a
	idxm	a, p
	xch	a, p
	add	a, #16
	xch	a, p
	idxm	p, a
	mov	a, #-15
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #16
	xch	a, p
	idxm	p, a
	mov	a, #-15
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #16
	xch	a, p
	idxm	p, a
	mov	a, #-15
	add	p, a
	idxm	a, p
	xch	a, p
	add	a, #16
	xch	a, p
	idxm	p, a
;	../floorf.c: 37: if (r<=0)
	mov	a, #0x00
	push	af
	mov	a, #-3
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	sub	a, p
	mov	a, #0x00
	push	af
	mov	a, sp
	add	a, #0xf7
	mov	p, a
	idxm	a, p
	mov	p, a
	pop	af
	subc	a, p
	mov	a, #0x00
	push	af
	mov	a, sp
	add	a, #0xf8
	mov	p, a
	idxm	a, p
	mov	p, a
	pop	af
	subc	a, p
	mov	a, #0x00
	push	af
	mov	a, sp
	add	a, #0xf9
	mov	p, a
	idxm	a, p
	mov	p, a
	pop	af
	subc	a, p
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t0sn	f, c
	goto	00102$
;	../floorf.c: 38: return (r+((r>x)?-1:0));
	mov	a, sp
	add	a, #0xf8
	mov	p, a
	idxm	a, p
	mov	___slong2fs_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___slong2fs_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	___slong2fs_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	___slong2fs_PARM_1+3, a
	mov	a, sp
	add	a, #0xec
	push	af
	call	___slong2fs
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xe0
	mov	p, a
	idxm	a, p
	mov	___fslt_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___fslt_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	___fslt_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	___fslt_PARM_1+3, a
	mov	a, #9
	add	p, a
	idxm	a, p
	mov	___fslt_PARM_2+0, a
	inc	p
	idxm	a, p
	mov	___fslt_PARM_2+1, a
	inc	p
	idxm	a, p
	mov	___fslt_PARM_2+2, a
	inc	p
	idxm	a, p
	mov	___fslt_PARM_2+3, a
	call	___fslt
	cneqsn	a, #0x00
	goto	00106$
	mov	a, #0xff
	push	af
	mov	a, #0xff
	mov	p, a
	pop	af
	goto	00107$
00106$:
	mov	a, #0x00
	clear	p
00107$:
	push	af
	mov	a, sp
	add	a, #0xfb
	xch	a, p
	idxm	p, a
	pop	af
	dec	p
	idxm	p, a
	inc	p
	idxm	a, p
	sl	a
	mov	a, #0x00
	subc	a
	inc	p
	idxm	p, a
	inc	p
	idxm	p, a
	mov	a, #-3
	add	p, a
	idxm	a, p
	push	af
	mov	a, #-4
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	add	a, p
	mov	___slong2fs_PARM_1+0, a
	push	af
	mov	a, sp
	add	a, #0xfb
	mov	p, a
	pop	af
	idxm	a, p
	push	af
	mov	a, #-4
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	addc	a, p
	mov	___slong2fs_PARM_1+1, a
	push	af
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	pop	af
	idxm	a, p
	push	af
	mov	a, #-4
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	addc	a, p
	mov	___slong2fs_PARM_1+2, a
	push	af
	mov	a, sp
	add	a, #0xfd
	mov	p, a
	pop	af
	idxm	a, p
	push	af
	mov	a, #-4
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	addc	a, p
	mov	___slong2fs_PARM_1+3, a
	mov	a, sp
	add	a, #0xf0
	push	af
	call	___slong2fs
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xf0
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-12
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	idxm	p, a
	mov	a, sp
	add	a, #0xf1
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-13
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xf2
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-14
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xf3
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-15
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	inc	p
	idxm	p, a
	goto	00104$
00102$:
;	../floorf.c: 40: return r;
	mov	a, sp
	add	a, #0xf8
	mov	p, a
	idxm	a, p
	mov	___slong2fs_PARM_1+0, a
	inc	p
	idxm	a, p
	mov	___slong2fs_PARM_1+1, a
	inc	p
	idxm	a, p
	mov	___slong2fs_PARM_1+2, a
	inc	p
	idxm	a, p
	mov	___slong2fs_PARM_1+3, a
	mov	a, sp
	add	a, #0xf4
	push	af
	call	___slong2fs
	mov	a, sp
	add	a, #-2
	mov	sp, a
	add	a, #0xf4
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-16
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	idxm	p, a
	mov	a, sp
	add	a, #0xf5
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-17
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xf6
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-18
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	idxm	p, a
	mov	a, sp
	add	a, #0xf7
	mov	p, a
	idxm	a, p
	push	af
	mov	a, #-19
	add	p, a
	idxm	a, p
	mov	p, a
	pop	af
	inc	p
	inc	p
	inc	p
	idxm	p, a
00104$:
;	../floorf.c: 41: }
	mov	a, sp
	add	a, #-24
	mov	sp, a
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
