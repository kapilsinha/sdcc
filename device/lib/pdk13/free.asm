;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module free
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _free_PARM_1
	.globl _free
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_free_PARM_1:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_free_sloc0_1_0:
	.ds 1
_free_sloc1_1_0:
	.ds 1
_free_sloc2_1_0:
	.ds 1
_free_sloc3_1_0:
	.ds 1
_free_sloc4_1_0:
	.ds 1
_free_sloc5_1_0:
	.ds 1
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
;	../free.c: 50: void free(void *ptr)
;	-----------------------------------------
;	 function free
;	-----------------------------------------
_free:
;	../free.c: 55: if(!ptr)
	mov	a, _free_PARM_1+0
	or	a, _free_PARM_1+1
	ceqsn	a, #0x00
	goto	00102$
;	../free.c: 56: return;
	ret
00102$:
;	../free.c: 58: prev_free = 0;
	clear	_free_sloc0_1_0+0
;	../free.c: 59: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h && h < ptr; prev_free = h, f = &(h->next_free), h = h->next_free); // Find adjacent blocks in free list
	mov	a, ___sdcc_heap_free+0
	mov	p, a
	mov	a, #(___sdcc_heap_free + 0)
	mov	_free_sloc1_1_0+0, a
00111$:
	mov	a, p
	cneqsn	a, #0x00
	goto	00103$
	mov	a, _free_PARM_1+0
	mov	_free_sloc2_1_0+0, a
	mov	a, p
	sub	a, _free_sloc2_1_0+0
	t1sn	f, c
	goto	00103$
	mov	a, p
	mov	_free_sloc0_1_0+0, a
	inc	p
	mov	a, p
	mov	_free_sloc1_1_0+0, a
	idxm	a, p
	mov	p, a
	goto	00111$
00103$:
;	../free.c: 60: next_free = h;
	mov	a, p
	mov	_free_sloc3_1_0+0, a
;	../free.c: 62: h = (void HEAPSPACE *)((char HEAPSPACE *)(ptr) - offsetof(struct header, next_free));
	mov	a, _free_PARM_1+0
	sub	a, #0x01
;	../free.c: 65: h->next_free = next_free;
	mov	_free_sloc4_1_0+0, a
	add	a, #0x01
	mov	_free_sloc5_1_0+0, a
	mov	p, a
	mov	a, _free_sloc3_1_0+0
	idxm	p, a
;	../free.c: 66: *f = h;
	mov	a, _free_sloc1_1_0+0
	mov	p, a
	mov	a, _free_sloc4_1_0+0
	idxm	p, a
;	../free.c: 68: if(next_free == h->next) // Merge with next block
	mov	a, _free_sloc4_1_0+0
	mov	p, a
	idxm	a, p
	ceqsn	a, _free_sloc3_1_0+0
	goto	00105$
;	../free.c: 70: h->next_free = h->next->next_free;
	add	a, #0x01
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _free_sloc5_1_0+0
	xch	a, p
	idxm	p, a
;	../free.c: 71: h->next = h->next->next;
	mov	a, _free_sloc4_1_0+0
	mov	p, a
	idxm	a, p
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _free_sloc4_1_0+0
	xch	a, p
	idxm	p, a
00105$:
;	../free.c: 74: if (prev_free && prev_free->next == h) // Merge with previous block
	mov	a, _free_sloc0_1_0+0
	cneqsn	a, #0x00
	goto	00113$
	mov	a, _free_sloc0_1_0+0
	mov	p, a
	idxm	a, p
	ceqsn	a, _free_sloc4_1_0+0
	goto	00113$
;	../free.c: 76: prev_free->next = h->next;
	mov	a, _free_sloc4_1_0+0
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _free_sloc0_1_0+0
	xch	a, p
	idxm	p, a
;	../free.c: 77: prev_free->next_free = h->next_free;
	mov	a, _free_sloc0_1_0+0
	add	a, #0x01
	mov	a, _free_sloc5_1_0+0
	mov	p, a
	idxm	a, p
	mov	p, a
	xch	a, p
	idxm	p, a
00113$:
;	../free.c: 79: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
