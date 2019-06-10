;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module realloc
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___memcpy
	.globl _memmove
	.globl _free
	.globl _malloc
	.globl _realloc_PARM_2
	.globl _realloc_PARM_1
	.globl _realloc
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_realloc_PARM_1:
	.ds 2
_realloc_PARM_2:
	.ds 2
_realloc_sloc0_1_0:
	.ds 1
_realloc_sloc1_1_0:
	.ds 1
_realloc_sloc2_1_0:
	.ds 1
_realloc_sloc3_1_0:
	.ds 1
_realloc_sloc4_1_0:
	.ds 1
_realloc_sloc5_1_0:
	.ds 2
_realloc_sloc6_1_0:
	.ds 2
_realloc_sloc7_1_0:
	.ds 1
_realloc_sloc8_1_0:
	.ds 1
_realloc_sloc9_1_0:
	.ds 1
_realloc_sloc10_1_0:
	.ds 2
_realloc_sloc11_1_0:
	.ds 2
_realloc_sloc12_1_0:
	.ds 2
_realloc_sloc13_1_0:
	.ds 2
_realloc_sloc14_1_0:
	.ds 2
_realloc_sloc15_1_0:
	.ds 2
_realloc_sloc16_1_0:
	.ds 1
_realloc_sloc17_1_0:
	.ds 1
_realloc_sloc18_1_0:
	.ds 2
_realloc_sloc19_1_0:
	.ds 2
_realloc_sloc20_1_0:
	.ds 2
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
;	../realloc.c: 56: void *realloc(void *ptr, size_t size)
;	-----------------------------------------
;	 function realloc
;	-----------------------------------------
_realloc:
;	../realloc.c: 69: if(!ptr)
	mov	a, _realloc_PARM_1+0
	or	a, _realloc_PARM_1+1
	ceqsn	a, #0x00
	goto	00102$
;	../realloc.c: 70: return(malloc(size));
	mov	a, _realloc_PARM_2+0
	mov	_malloc_PARM_1+0, a
	mov	a, _realloc_PARM_2+1
	mov	_malloc_PARM_1+1, a
	call	_malloc
	ret
00102$:
;	../realloc.c: 72: if(!size)
	mov	a, _realloc_PARM_2+0
	or	a, _realloc_PARM_2+1
	ceqsn	a, #0x00
	goto	00104$
;	../realloc.c: 74: free(ptr);
	mov	a, _realloc_PARM_1+0
	mov	_free_PARM_1+0, a
	mov	a, _realloc_PARM_1+1
	mov	_free_PARM_1+1, a
	call	_free
;	../realloc.c: 75: return(0);
	clear	p
	ret	#0x00
00104$:
;	../realloc.c: 78: prev_free = 0, pf = 0;
	clear	_realloc_sloc0_1_0+0
	clear	_realloc_sloc1_1_0+0
;	../realloc.c: 79: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h && h < ptr; prev_free = h, pf = f, f = &(h->next_free), h = h->next_free); // Find adjacent blocks in free list
	mov	a, ___sdcc_heap_free+0
	mov	p, a
	mov	a, #(___sdcc_heap_free + 0)
	mov	_realloc_sloc2_1_0+0, a
00130$:
	mov	a, p
	cneqsn	a, #0x00
	goto	00105$
	mov	a, _realloc_PARM_1+0
	mov	_realloc_sloc3_1_0+0, a
	mov	a, p
	sub	a, _realloc_sloc3_1_0+0
	t1sn	f, c
	goto	00105$
	mov	a, p
	mov	_realloc_sloc0_1_0+0, a
	mov	a, _realloc_sloc2_1_0+0
	mov	_realloc_sloc1_1_0+0, a
	inc	p
	mov	a, p
	mov	_realloc_sloc2_1_0+0, a
	idxm	a, p
	mov	p, a
	goto	00130$
00105$:
;	../realloc.c: 80: next_free = h;
	mov	a, p
	mov	_realloc_sloc4_1_0+0, a
;	../realloc.c: 82: if(!size || size + offsetof(struct header, next_free) < size)
	mov	a, _realloc_PARM_2+0
	or	a, _realloc_PARM_2+1
	cneqsn	a, #0x00
	goto	00106$
	mov	a, _realloc_PARM_2+0
	add	a, #0x01
	mov	_realloc_sloc5_1_0+0, a
	mov	a, _realloc_PARM_2+1
	addc	a
	mov	_realloc_sloc5_1_0+1, a
	mov	a, _realloc_sloc5_1_0+0
	sub	a, _realloc_PARM_2+0
	mov	a, _realloc_sloc5_1_0+1
	subc	a, _realloc_PARM_2+1
	t1sn	f, c
	goto	00107$
00106$:
;	../realloc.c: 83: return(0);
	clear	p
	ret	#0x00
00107$:
;	../realloc.c: 84: blocksize = size + offsetof(struct header, next_free);
	mov	a, _realloc_sloc5_1_0+0
	mov	_realloc_sloc6_1_0+0, a
	mov	a, _realloc_sloc5_1_0+1
	mov	_realloc_sloc6_1_0+1, a
;	../realloc.c: 85: if(blocksize < sizeof(struct header)) // Requiring a minimum size makes it easier to implement free(), and avoid memory leaks.
	mov	a, _realloc_sloc6_1_0+0
	sub	a, #0x02
	mov	a, _realloc_sloc6_1_0+1
	subc	a
	t1sn	f, c
	goto	00110$
;	../realloc.c: 86: blocksize = sizeof(struct header);
	mov	a, #0x02
	mov	_realloc_sloc6_1_0+0, a
	clear	_realloc_sloc6_1_0+1
00110$:
;	../realloc.c: 88: h = (void HEAPSPACE *)((char HEAPSPACE *)(ptr) - offsetof(struct header, next_free));
	mov	a, _realloc_PARM_1+0
	sub	a, #0x01
;	../realloc.c: 89: oldblocksize = (char HEAPSPACE *)(h->next) - (char HEAPSPACE *)h;
	mov	_realloc_sloc7_1_0+0, a
	mov	p, a
	idxm	a, p
	mov	_realloc_sloc8_1_0+0, a
	mov	p, a
	mov	a, _realloc_sloc7_1_0+0
	mov	_realloc_sloc9_1_0+0, a
	mov	a, p
	sub	a, _realloc_sloc9_1_0+0
	mov	_realloc_sloc10_1_0+0, a
	mov	a, #0x00
	subc	a
	mov	_realloc_sloc10_1_0+1, a
;	../realloc.c: 91: maxblocksize = oldblocksize;
	mov	a, _realloc_sloc10_1_0+0
	mov	_realloc_sloc11_1_0+0, a
	mov	a, _realloc_sloc10_1_0+1
	mov	_realloc_sloc11_1_0+1, a
;	../realloc.c: 92: if(prev_free && prev_free->next == h) // Can merge with previous block
	mov	a, _realloc_sloc0_1_0+0
	cneqsn	a, #0x00
	goto	00112$
	mov	a, _realloc_sloc0_1_0+0
	mov	p, a
	idxm	a, p
	ceqsn	a, _realloc_sloc7_1_0+0
	goto	00112$
;	../realloc.c: 93: maxblocksize += (char HEAPSPACE *)h - (char HEAPSPACE *)prev_free;
	mov	a, _realloc_sloc0_1_0+0
	mov	p, a
	mov	a, _realloc_sloc9_1_0+0
	sub	a, p
	mov	p, a
	mov	a, #0x00
	subc	a
	xch	a, p
	add	a, _realloc_sloc10_1_0+0
	mov	_realloc_sloc11_1_0+0, a
	mov	a, _realloc_sloc10_1_0+1
	addc	a, p
	mov	_realloc_sloc11_1_0+1, a
00112$:
;	../realloc.c: 94: if(next_free == h->next) // Can merge with next block
	mov	a, _realloc_sloc4_1_0+0
	ceqsn	a, _realloc_sloc8_1_0+0
	goto	00115$
;	../realloc.c: 95: maxblocksize += (char HEAPSPACE *)(next_free->next) - (char HEAPSPACE *)next_free;
	mov	a, _realloc_sloc4_1_0+0
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _realloc_sloc4_1_0+0
	sub	p, a
	mov	a, #0x00
	subc	a
	xch	a, p
	add	a, _realloc_sloc11_1_0+0
	mov	_realloc_sloc11_1_0+0, a
	mov	a, _realloc_sloc11_1_0+1
	addc	a, p
	mov	_realloc_sloc11_1_0+1, a
00115$:
;	../realloc.c: 97: if(blocksize <= maxblocksize) // Can resize in place.
	mov	a, _realloc_sloc11_1_0+0
	sub	a, _realloc_sloc6_1_0+0
	mov	a, _realloc_sloc11_1_0+1
	subc	a, _realloc_sloc6_1_0+1
	t0sn	f, c
	goto	00125$
;	../realloc.c: 99: if(prev_free && prev_free->next == h) // Always move into previous block to defragment
	mov	a, _realloc_sloc0_1_0+0
	cneqsn	a, #0x00
	goto	00117$
	mov	a, _realloc_sloc0_1_0+0
	mov	p, a
	idxm	a, p
	ceqsn	a, _realloc_sloc7_1_0+0
	goto	00117$
;	../realloc.c: 101: memmove(prev_free, h, blocksize <= oldblocksize ? blocksize : oldblocksize);
	mov	a, _realloc_sloc0_1_0+0
	mov	_realloc_sloc12_1_0+0, a
	clear	_realloc_sloc12_1_0+1
	mov	a, _realloc_sloc7_1_0+0
	mov	_realloc_sloc13_1_0+0, a
	clear	_realloc_sloc13_1_0+1
	mov	a, _realloc_sloc10_1_0+0
	sub	a, _realloc_sloc6_1_0+0
	mov	a, _realloc_sloc10_1_0+1
	subc	a, _realloc_sloc6_1_0+1
	t0sn	f, c
	goto	00134$
	mov	a, _realloc_sloc6_1_0+0
	mov	_realloc_sloc14_1_0+0, a
	mov	a, _realloc_sloc6_1_0+1
	mov	_realloc_sloc14_1_0+1, a
	goto	00135$
00134$:
	mov	a, _realloc_sloc10_1_0+0
	mov	_realloc_sloc14_1_0+0, a
	mov	a, _realloc_sloc10_1_0+1
	mov	_realloc_sloc14_1_0+1, a
00135$:
	mov	a, _realloc_sloc12_1_0+0
	mov	_memmove_PARM_1+0, a
	mov	a, _realloc_sloc12_1_0+1
	mov	_memmove_PARM_1+1, a
	mov	a, _realloc_sloc13_1_0+0
	mov	_memmove_PARM_2+0, a
	mov	a, _realloc_sloc13_1_0+1
	mov	_memmove_PARM_2+1, a
	mov	a, _realloc_sloc14_1_0+0
	mov	_memmove_PARM_3+0, a
	mov	a, _realloc_sloc14_1_0+1
	mov	_memmove_PARM_3+1, a
	call	_memmove
;	../realloc.c: 102: h = prev_free;
	mov	a, _realloc_sloc0_1_0+0
	mov	_realloc_sloc7_1_0+0, a
;	../realloc.c: 103: *pf = next_free;
	mov	a, _realloc_sloc1_1_0+0
	mov	p, a
	mov	a, _realloc_sloc4_1_0+0
	idxm	p, a
;	../realloc.c: 104: f = pf;
	mov	a, _realloc_sloc1_1_0+0
	mov	_realloc_sloc2_1_0+0, a
00117$:
;	../realloc.c: 107: if(next_free && next_free == h->next) // Merge with following block
	mov	a, _realloc_sloc4_1_0+0
	cneqsn	a, #0x00
	goto	00120$
	mov	a, _realloc_sloc7_1_0+0
	mov	p, a
	idxm	a, p
	ceqsn	a, _realloc_sloc4_1_0+0
	goto	00120$
;	../realloc.c: 109: h->next = next_free->next;
	mov	a, _realloc_sloc4_1_0+0
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _realloc_sloc7_1_0+0
	xch	a, p
	idxm	p, a
;	../realloc.c: 110: *f = next_free->next_free;
	mov	a, _realloc_sloc4_1_0+0
	add	a, #0x01
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _realloc_sloc2_1_0+0
	xch	a, p
	idxm	p, a
00120$:
;	../realloc.c: 113: if(maxblocksize >= blocksize + sizeof(struct header)) // Create new block from free space
	mov	a, _realloc_sloc6_1_0+0
	add	a, #0x02
	mov	_realloc_sloc15_1_0+0, a
	mov	a, _realloc_sloc6_1_0+1
	addc	a
	mov	_realloc_sloc15_1_0+1, a
	mov	a, _realloc_sloc11_1_0+0
	sub	a, _realloc_sloc15_1_0+0
	mov	a, _realloc_sloc11_1_0+1
	subc	a, _realloc_sloc15_1_0+1
	t0sn	f, c
	goto	00123$
;	../realloc.c: 115: header_t *const newheader = (header_t *const)((char HEAPSPACE *)h + blocksize);
	mov	a, _realloc_sloc7_1_0+0
	add	a, _realloc_sloc6_1_0+0
	mov	_realloc_sloc16_1_0+0, a
;	../realloc.c: 116: newheader->next = h->next;
	mov	a, _realloc_sloc7_1_0+0
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _realloc_sloc16_1_0+0
	xch	a, p
	idxm	p, a
;	../realloc.c: 117: newheader->next_free = *f;
	mov	a, _realloc_sloc16_1_0+0
	add	a, #0x01
	mov	a, _realloc_sloc2_1_0+0
	mov	p, a
	idxm	a, p
	mov	p, a
	xch	a, p
	idxm	p, a
;	../realloc.c: 118: *f = newheader;
	mov	a, _realloc_sloc2_1_0+0
	mov	p, a
	mov	a, _realloc_sloc16_1_0+0
	idxm	p, a
;	../realloc.c: 119: h->next = newheader;
	mov	a, _realloc_sloc7_1_0+0
	mov	p, a
	mov	a, _realloc_sloc16_1_0+0
	idxm	p, a
00123$:
;	../realloc.c: 122: return(&(h->next_free));
	mov	a, _realloc_sloc7_1_0+0
	add	a, #0x01
	mov	p, a
	mov	a, #0x00
	xch	a, p
	ret
00125$:
;	../realloc.c: 125: if(ret = malloc(size))
	mov	a, _realloc_PARM_2+0
	mov	_malloc_PARM_1+0, a
	mov	a, _realloc_PARM_2+1
	mov	_malloc_PARM_1+1, a
	call	_malloc
	mov	_realloc_sloc17_1_0+0, a
	cneqsn	a, #0x00
	goto	00127$
;	../realloc.c: 127: size_t oldsize = oldblocksize - offsetof(struct header, next_free);
	mov	a, _realloc_sloc10_1_0+0
	sub	a, #0x01
	mov	_realloc_sloc18_1_0+0, a
	mov	a, _realloc_sloc10_1_0+1
	subc	a
	mov	_realloc_sloc18_1_0+1, a
;	../realloc.c: 128: memcpy(ret, ptr, size <= oldsize ? size : oldsize);
	mov	a, _realloc_sloc17_1_0+0
	mov	_realloc_sloc19_1_0+0, a
	clear	_realloc_sloc19_1_0+1
	mov	a, _realloc_sloc18_1_0+0
	sub	a, _realloc_PARM_2+0
	mov	a, _realloc_sloc18_1_0+1
	subc	a, _realloc_PARM_2+1
	t0sn	f, c
	goto	00136$
	mov	a, _realloc_PARM_2+0
	mov	_realloc_sloc20_1_0+0, a
	mov	a, _realloc_PARM_2+1
	mov	_realloc_sloc20_1_0+1, a
	goto	00137$
00136$:
	mov	a, _realloc_sloc18_1_0+0
	mov	_realloc_sloc20_1_0+0, a
	mov	a, _realloc_sloc18_1_0+1
	mov	_realloc_sloc20_1_0+1, a
00137$:
	mov	a, _realloc_sloc19_1_0+0
	mov	___memcpy_PARM_1+0, a
	mov	a, _realloc_sloc19_1_0+1
	mov	___memcpy_PARM_1+1, a
	mov	a, _realloc_PARM_1+0
	mov	___memcpy_PARM_2+0, a
	mov	a, _realloc_PARM_1+1
	mov	___memcpy_PARM_2+1, a
	mov	a, _realloc_sloc20_1_0+0
	mov	___memcpy_PARM_3+0, a
	mov	a, _realloc_sloc20_1_0+1
	mov	___memcpy_PARM_3+1, a
	call	___memcpy
;	../realloc.c: 129: free(ptr);
	mov	a, _realloc_PARM_1+0
	mov	_free_PARM_1+0, a
	mov	a, _realloc_PARM_1+1
	mov	_free_PARM_1+1, a
	call	_free
;	../realloc.c: 130: return(ret);
	mov	a, _realloc_sloc17_1_0+0
	mov	p, a
	mov	a, #0x00
	xch	a, p
	ret
00127$:
;	../realloc.c: 133: return(0);
	clear	p
	ret	#0x00
;	../realloc.c: 134: }
	ret
	.area CODE
	.area CONST
	.area CABS (ABS)
