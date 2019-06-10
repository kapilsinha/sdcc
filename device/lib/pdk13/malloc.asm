;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module malloc
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___sdcc_heap_init
	.globl _malloc_PARM_1
	.globl ___sdcc_heap_free
	.globl _malloc
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
___sdcc_heap_free::
	.ds 1
_malloc_PARM_1:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_malloc_sloc0_1_0:
	.ds 2
_malloc_sloc1_1_0:
	.ds 1
_malloc_sloc2_1_0:
	.ds 1
_malloc_sloc3_1_0:
	.ds 1
_malloc_sloc4_1_0:
	.ds 1
_malloc_sloc5_1_0:
	.ds 2
_malloc_sloc6_1_0:
	.ds 2
_malloc_sloc7_1_0:
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
;	../malloc.c: 65: void __sdcc_heap_init(void)
;	-----------------------------------------
;	 function __sdcc_heap_init
;	-----------------------------------------
___sdcc_heap_init:
;	../malloc.c: 67: __sdcc_heap_free = HEAP_START;
	mov	a, #(___sdcc_heap + 0)
;	../malloc.c: 68: __sdcc_heap_free->next = HEAP_END;
	mov	___sdcc_heap_free+0, a
	mov	p, a
	mov	a, #(___sdcc_heap_end + 0)
	idxm	p, a
;	../malloc.c: 69: __sdcc_heap_free->next_free = 0;
	mov	a, ___sdcc_heap_free+0
	add	a, #0x01
	mov	p, a
	mov	a, #0x00
	idxm	p, a
;	../malloc.c: 70: }
	ret
;	../malloc.c: 75: void *malloc(size_t size)
;	-----------------------------------------
;	 function malloc
;	-----------------------------------------
_malloc:
;	../malloc.c: 86: if(!size || size + offsetof(struct header, next_free) < size)
	mov	a, _malloc_PARM_1+0
	or	a, _malloc_PARM_1+1
	cneqsn	a, #0x00
	goto	00101$
	mov	a, _malloc_PARM_1+0
	add	a, #0x01
	mov	_malloc_sloc0_1_0+0, a
	mov	a, _malloc_PARM_1+1
	addc	a
	mov	_malloc_sloc0_1_0+1, a
	mov	a, _malloc_sloc0_1_0+0
	sub	a, _malloc_PARM_1+0
	mov	a, _malloc_sloc0_1_0+1
	subc	a, _malloc_PARM_1+1
	t1sn	f, c
	goto	00102$
00101$:
;	../malloc.c: 87: return(0);
	clear	p
	ret	#0x00
00102$:
;	../malloc.c: 88: size += offsetof(struct header, next_free);
	mov	a, _malloc_sloc0_1_0+0
	mov	_malloc_PARM_1+0, a
	mov	a, _malloc_sloc0_1_0+1
	mov	_malloc_PARM_1+1, a
;	../malloc.c: 89: if(size < sizeof(struct header)) // Requiring a minimum size makes it easier to implement free(), and avoid memory leaks.
	mov	a, _malloc_PARM_1+0
	sub	a, #0x02
	mov	a, _malloc_PARM_1+1
	subc	a
	t1sn	f, c
	goto	00105$
;	../malloc.c: 90: size = sizeof(struct header);
	mov	a, #0x02
	mov	_malloc_PARM_1+0, a
	clear	_malloc_PARM_1+1
00105$:
;	../malloc.c: 92: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h; f = &(h->next_free), h = h->next_free)
	mov	a, ___sdcc_heap_free+0
	mov	_malloc_sloc1_1_0+0, a
	mov	a, #(___sdcc_heap_free + 0)
	mov	_malloc_sloc2_1_0+0, a
00113$:
	mov	a, _malloc_sloc1_1_0+0
	cneqsn	a, #0x00
	goto	00111$
;	../malloc.c: 94: size_t blocksize = (char HEAPSPACE *)(h->next) - (char HEAPSPACE *)h;
	mov	a, _malloc_sloc1_1_0+0
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	_malloc_sloc3_1_0+0, a
	mov	a, _malloc_sloc1_1_0+0
	mov	_malloc_sloc4_1_0+0, a
	mov	a, _malloc_sloc3_1_0+0
	sub	a, _malloc_sloc4_1_0+0
	mov	_malloc_sloc5_1_0+0, a
	mov	a, #0x00
	subc	a
	mov	_malloc_sloc5_1_0+1, a
;	../malloc.c: 95: if(blocksize >= size) // Found free block of sufficient size.
	mov	a, _malloc_sloc5_1_0+0
	sub	a, _malloc_PARM_1+0
	mov	a, _malloc_sloc5_1_0+1
	subc	a, _malloc_PARM_1+1
	t0sn	f, c
	goto	00114$
;	../malloc.c: 97: if(blocksize >= size + sizeof(struct header)) // It is worth creating a new free block
	mov	a, _malloc_PARM_1+0
	add	a, #0x02
	mov	_malloc_sloc6_1_0+0, a
	mov	a, _malloc_PARM_1+1
	addc	a
	mov	_malloc_sloc6_1_0+1, a
	mov	a, _malloc_sloc5_1_0+0
	sub	a, _malloc_sloc6_1_0+0
	mov	a, _malloc_sloc5_1_0+1
	subc	a, _malloc_sloc6_1_0+1
	t0sn	f, c
	goto	00107$
;	../malloc.c: 99: header_t *const newheader = (header_t *const)((char HEAPSPACE *)h + size);
	mov	a, _malloc_sloc4_1_0+0
	add	a, _malloc_PARM_1+0
;	../malloc.c: 100: newheader->next = h->next;
	mov	_malloc_sloc7_1_0+0, a
	xch	a, p
	idxm	p, a
;	../malloc.c: 101: newheader->next_free = h->next_free;
	mov	a, _malloc_sloc7_1_0+0
	add	a, #0x01
	push	af
	mov	a, _malloc_sloc1_1_0+0
	add	a, #0x01
	mov	p, a
	pop	af
	idxm	a, p
	mov	p, a
	xch	a, p
	idxm	p, a
;	../malloc.c: 102: *f = newheader;
	mov	a, _malloc_sloc2_1_0+0
	mov	p, a
	mov	a, _malloc_sloc7_1_0+0
	idxm	p, a
;	../malloc.c: 103: h->next = newheader;
	mov	a, _malloc_sloc1_1_0+0
	mov	p, a
	mov	a, _malloc_sloc7_1_0+0
	idxm	p, a
	goto	00108$
00107$:
;	../malloc.c: 106: *f = h->next_free;
	mov	a, _malloc_sloc1_1_0+0
	add	a, #0x01
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _malloc_sloc2_1_0+0
	xch	a, p
	idxm	p, a
00108$:
;	../malloc.c: 108: return(&(h->next_free));
	mov	a, _malloc_sloc1_1_0+0
	add	a, #0x01
	mov	p, a
	mov	a, #0x00
	xch	a, p
	ret
00114$:
;	../malloc.c: 92: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h; f = &(h->next_free), h = h->next_free)
	mov	a, _malloc_sloc1_1_0+0
	add	a, #0x01
	mov	_malloc_sloc2_1_0+0, a
	mov	p, a
	idxm	a, p
	mov	_malloc_sloc1_1_0+0, a
	goto	00113$
00111$:
;	../malloc.c: 112: return(0);
	clear	p
	ret	#0x00
;	../malloc.c: 113: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
