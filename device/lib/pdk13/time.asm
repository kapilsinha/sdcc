;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.1 #11255 (Linux)
;--------------------------------------------------------
	.module time
	.optsdcc -mpdk13
	

; default segment ordering in RAM for linker
	.area DATA
	.area OSEG (OVR,DATA)

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___day
	.globl ___month
	.globl _RtcRead
	.globl _sprintf
	.globl _mktime_PARM_1
	.globl _gmtime_PARM_1
	.globl _localtime_PARM_1
	.globl _ctime_PARM_1
	.globl _asctime_PARM_1
	.globl _time_PARM_1
	.globl _RtcRead_PARM_1
	.globl _time
	.globl _asctime
	.globl _ctime
	.globl _localtime
	.globl _gmtime
	.globl _mktime
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_RtcRead_PARM_1:
	.ds 2
_time_PARM_1:
	.ds 2
_time_now_65536_20:
	.ds 12
_time_sloc0_1_0:
	.ds 4
_time_sloc1_1_0:
	.ds 4
_time_sloc2_1_0:
	.ds 2
_ascTimeBuffer:
	.ds 32
_CheckTime_PARM_1:
	.ds 2
_asctime_PARM_1:
	.ds 2
_asctime_sloc10_1_0:
	.ds 2
_asctime_sloc11_1_0:
	.ds 2
_asctime_sloc12_1_0:
	.ds 2
_asctime_sloc13_1_0:
	.ds 2
_asctime_sloc14_1_0:
	.ds 2
_asctime_sloc15_1_0:
	.ds 2
_asctime_sloc16_1_0:
	.ds 2
_asctime_sloc17_1_0:
	.ds 2
_ctime_PARM_1:
	.ds 2
_lastTime:
	.ds 12
_localtime_PARM_1:
	.ds 2
_gmtime_PARM_1:
	.ds 2
_gmtime_sloc18_1_0:
	.ds 4
_gmtime_sloc19_1_0:
	.ds 4
_gmtime_sloc20_1_0:
	.ds 4
_gmtime_sloc21_1_0:
	.ds 4
_gmtime_sloc22_1_0:
	.ds 4
_gmtime_sloc23_1_0:
	.ds 4
_gmtime_sloc24_1_0:
	.ds 4
_gmtime_sloc25_1_0:
	.ds 2
_gmtime_sloc26_1_0:
	.ds 4
_gmtime_sloc27_1_0:
	.ds 4
_gmtime_sloc28_1_0:
	.ds 4
_gmtime_sloc29_1_0:
	.ds 4
_gmtime_sloc30_1_0:
	.ds 4
_gmtime_sloc31_1_0:
	.ds 2
_gmtime_sloc32_1_0:
	.ds 2
_gmtime_sloc33_1_0:
	.ds 4
_gmtime_sloc34_1_0:
	.ds 4
_gmtime_sloc35_1_0:
	.ds 2
_gmtime_sloc36_1_0:
	.ds 2
_gmtime_sloc37_1_0:
	.ds 4
_gmtime_sloc38_1_0:
	.ds 4
_gmtime_sloc39_1_0:
	.ds 4
_gmtime_sloc40_1_0:
	.ds 1
_gmtime_sloc41_1_0:
	.ds 4
_mktime_PARM_1:
	.ds 2
_mktime_sloc42_1_0:
	.ds 4
_mktime_sloc43_1_0:
	.ds 4
_mktime_sloc44_1_0:
	.ds 4
_mktime_sloc45_1_0:
	.ds 4
_mktime_sloc46_1_0:
	.ds 2
_mktime_sloc47_1_0:
	.ds 2
_mktime_sloc48_1_0:
	.ds 2
_mktime_sloc49_1_0:
	.ds 4
_mktime_sloc50_1_0:
	.ds 2
_mktime_sloc51_1_0:
	.ds 4
_mktime_sloc52_1_0:
	.ds 2
_mktime_sloc53_1_0:
	.ds 2
_mktime_sloc54_1_0:
	.ds 2
_mktime_sloc55_1_0:
	.ds 2
_mktime_sloc56_1_0:
	.ds 4
_mktime_sloc57_1_0:
	.ds 4
_mktime_sloc58_1_0:
	.ds 4
_mktime_sloc59_1_0:
	.ds 4
_mktime_sloc60_1_0:
	.ds 4
_mktime_sloc61_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG (OVR,DATA)
_CheckTime_sloc3_1_0:
	.ds 2
_CheckTime_sloc4_1_0:
	.ds 2
_CheckTime_sloc5_1_0:
	.ds 2
_CheckTime_sloc6_1_0:
	.ds 2
_CheckTime_sloc7_1_0:
	.ds 2
_CheckTime_sloc8_1_0:
	.ds 2
_CheckTime_sloc9_1_0:
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
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	../time.c: 42: unsigned char RtcRead(struct tm *timeptr) {
;	-----------------------------------------
;	 function RtcRead
;	-----------------------------------------
_RtcRead:
;	../time.c: 45: return 0;
	ret	#0x00
;	../time.c: 46: }
	ret
;	../time.c: 50: time_t time(time_t *timeptr) {
;	-----------------------------------------
;	 function time
;	-----------------------------------------
_time:
;	../time.c: 52: time_t t=(time_t) -1;
	mov	a, #0xff
	mov	_time_sloc1_1_0+0, a
	mov	a, #0xff
	mov	_time_sloc1_1_0+1, a
	mov	a, #0xff
	mov	_time_sloc1_1_0+2, a
	mov	a, #0xff
	mov	_time_sloc1_1_0+3, a
;	../time.c: 54: if (RtcRead(&now)) {
	mov	a, #(_time_now_65536_20 + 0)
	mov	_RtcRead_PARM_1+0, a
	clear	_RtcRead_PARM_1+1
	call	_RtcRead
	cneqsn	a, #0x00
	goto	00102$
;	../time.c: 55: t=mktime(&now);
	mov	a, #(_time_now_65536_20 + 0)
	mov	_mktime_PARM_1+0, a
	clear	_mktime_PARM_1+1
	mov	a, #_time_sloc0_1_0
	push	af
	call	_mktime
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _time_sloc0_1_0+0
	mov	_time_sloc1_1_0+0, a
	mov	a, _time_sloc0_1_0+1
	mov	_time_sloc1_1_0+1, a
	mov	a, _time_sloc0_1_0+2
	mov	_time_sloc1_1_0+2, a
	mov	a, _time_sloc0_1_0+3
	mov	_time_sloc1_1_0+3, a
00102$:
;	../time.c: 57: if (timeptr) {
	mov	a, _time_PARM_1+0
	or	a, _time_PARM_1+1
	cneqsn	a, #0x00
	goto	00104$
;	../time.c: 58: *timeptr=t;
	mov	a, _time_PARM_1+0
	mov	_time_sloc2_1_0+0, a
	mov	a, _time_PARM_1+1
	mov	_time_sloc2_1_0+1, a
	mov	a, _time_sloc2_1_0+0
	mov	p, a
	mov	a, _time_sloc1_1_0+0
	idxm	p, a
	inc	p
	mov	a, _time_sloc1_1_0+1
	idxm	p, a
	inc	p
	mov	a, _time_sloc1_1_0+2
	idxm	p, a
	inc	p
	mov	a, _time_sloc1_1_0+3
	idxm	p, a
00104$:
;	../time.c: 60: return t;
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _time_sloc1_1_0+0
	idxm	p, a
	inc	p
	mov	a, _time_sloc1_1_0+1
	idxm	p, a
	inc	p
	mov	a, _time_sloc1_1_0+2
	idxm	p, a
	inc	p
	mov	a, _time_sloc1_1_0+3
	idxm	p, a
;	../time.c: 61: }
	ret
;	../time.c: 73: static void CheckTime(struct tm *timeptr) {
;	-----------------------------------------
;	 function CheckTime
;	-----------------------------------------
_CheckTime:
;	../time.c: 84: if (timeptr->tm_sec>59) timeptr->tm_sec=59;
	mov	a, _CheckTime_PARM_1+0
	mov	_CheckTime_sloc3_1_0+0, a
	mov	a, _CheckTime_PARM_1+1
	mov	_CheckTime_sloc3_1_0+1, a
	mov	a, _CheckTime_sloc3_1_0+0
	mov	p, a
	mov	a, _CheckTime_sloc3_1_0+1
	call	__gptrget
	ceqsn	a, #0x3c
	nop
	t0sn	f, c
	goto	00102$
	mov	a, _CheckTime_sloc3_1_0+0
	mov	p, a
	mov	a, #0x3b
	idxm	p, a
00102$:
;	../time.c: 85: if (timeptr->tm_min>59) timeptr->tm_min=59;
	mov	a, _CheckTime_sloc3_1_0+0
	add	a, #0x01
	mov	_CheckTime_sloc4_1_0+0, a
	mov	a, _CheckTime_sloc3_1_0+1
	addc	a
	mov	_CheckTime_sloc4_1_0+1, a
	mov	a, _CheckTime_sloc4_1_0+0
	mov	p, a
	mov	a, _CheckTime_sloc4_1_0+1
	call	__gptrget
	ceqsn	a, #0x3c
	nop
	t0sn	f, c
	goto	00104$
	mov	a, _CheckTime_sloc4_1_0+0
	mov	p, a
	mov	a, #0x3b
	idxm	p, a
00104$:
;	../time.c: 86: if (timeptr->tm_hour>23) timeptr->tm_hour=23;
	mov	a, _CheckTime_sloc3_1_0+0
	add	a, #0x02
	mov	_CheckTime_sloc5_1_0+0, a
	mov	a, _CheckTime_sloc3_1_0+1
	addc	a
	mov	_CheckTime_sloc5_1_0+1, a
	mov	a, _CheckTime_sloc5_1_0+0
	mov	p, a
	mov	a, _CheckTime_sloc5_1_0+1
	call	__gptrget
	ceqsn	a, #0x18
	nop
	t0sn	f, c
	goto	00106$
	mov	a, _CheckTime_sloc5_1_0+0
	mov	p, a
	mov	a, #0x17
	idxm	p, a
00106$:
;	../time.c: 87: if (timeptr->tm_wday>6) timeptr->tm_wday=6;
	mov	a, _CheckTime_sloc3_1_0+0
	add	a, #0x07
	mov	_CheckTime_sloc6_1_0+0, a
	mov	a, _CheckTime_sloc3_1_0+1
	addc	a
	mov	_CheckTime_sloc6_1_0+1, a
	mov	a, _CheckTime_sloc6_1_0+0
	mov	p, a
	mov	a, _CheckTime_sloc6_1_0+1
	call	__gptrget
	ceqsn	a, #0x07
	nop
	t0sn	f, c
	goto	00108$
	mov	a, _CheckTime_sloc6_1_0+0
	mov	p, a
	mov	a, #0x06
	idxm	p, a
00108$:
;	../time.c: 88: if (timeptr->tm_mday<1) timeptr->tm_mday=1;
	mov	a, _CheckTime_sloc3_1_0+0
	add	a, #0x03
	mov	_CheckTime_sloc7_1_0+0, a
	mov	a, _CheckTime_sloc3_1_0+1
	addc	a
	mov	_CheckTime_sloc7_1_0+1, a
	mov	a, _CheckTime_sloc7_1_0+0
	mov	p, a
	mov	a, _CheckTime_sloc7_1_0+1
	call	__gptrget
	ceqsn	a, #0x01
	t1sn	f, c
	goto	00112$
	mov	a, _CheckTime_sloc7_1_0+0
	mov	p, a
	mov	a, #0x01
	idxm	p, a
	goto	00113$
00112$:
;	../time.c: 89: else if (timeptr->tm_mday>31) timeptr->tm_mday=31;
	ceqsn	a, #0x20
	nop
	t0sn	f, c
	goto	00113$
	mov	a, _CheckTime_sloc7_1_0+0
	mov	p, a
	mov	a, #0x1f
	idxm	p, a
00113$:
;	../time.c: 90: if (timeptr->tm_mon>11) timeptr->tm_mon=11;
	mov	a, _CheckTime_sloc3_1_0+0
	add	a, #0x04
	mov	_CheckTime_sloc8_1_0+0, a
	mov	a, _CheckTime_sloc3_1_0+1
	addc	a
	mov	_CheckTime_sloc8_1_0+1, a
	mov	a, _CheckTime_sloc8_1_0+0
	mov	p, a
	mov	a, _CheckTime_sloc8_1_0+1
	call	__gptrget
	ceqsn	a, #0x0c
	nop
	t0sn	f, c
	goto	00115$
	mov	a, _CheckTime_sloc8_1_0+0
	mov	p, a
	mov	a, #0x0b
	idxm	p, a
00115$:
;	../time.c: 91: if (timeptr->tm_year<0) timeptr->tm_year=0;
	mov	a, _CheckTime_sloc3_1_0+0
	add	a, #0x05
	mov	_CheckTime_sloc9_1_0+0, a
	mov	a, _CheckTime_sloc3_1_0+1
	addc	a
	mov	_CheckTime_sloc9_1_0+1, a
	mov	a, _CheckTime_sloc9_1_0+0
	mov	p, a
	mov	a, _CheckTime_sloc9_1_0+1
	call	__gptrget2
	mov	a, p
	sub	a, #0x80
	t0sn	f, c
	goto	00118$
	mov	a, _CheckTime_sloc9_1_0+0
	mov	p, a
	mov	a, #0x00
	idxm	p, a
	inc	p
	mov	a, #0x00
	idxm	p, a
00118$:
;	../time.c: 92: }
	ret
;	../time.c: 95: char *asctime(struct tm *timeptr) {
;	-----------------------------------------
;	 function asctime
;	-----------------------------------------
_asctime:
;	../time.c: 96: CheckTime(timeptr);
	mov	a, _asctime_PARM_1+0
	mov	_CheckTime_PARM_1+0, a
	mov	a, _asctime_PARM_1+1
	mov	_CheckTime_PARM_1+1, a
	call	_CheckTime
;	../time.c: 100: timeptr->tm_year+1900);
	mov	a, _asctime_PARM_1+0
	mov	_asctime_sloc10_1_0+0, a
	mov	a, _asctime_PARM_1+1
	mov	_asctime_sloc10_1_0+1, a
	mov	a, _asctime_sloc10_1_0+0
	add	a, #0x05
	mov	p, a
	mov	a, _asctime_sloc10_1_0+1
	addc	a
	call	__gptrget2
	add	a, #0x6c
	mov	_asctime_sloc11_1_0+0, a
	mov	a, #0x07
	addc	a, p
	mov	_asctime_sloc11_1_0+1, a
;	../time.c: 99: timeptr->tm_hour, timeptr->tm_min, timeptr->tm_sec, 
	mov	a, _asctime_sloc10_1_0+0
	mov	p, a
	mov	a, _asctime_sloc10_1_0+1
	call	__gptrget
	mov	_asctime_sloc12_1_0+0, a
	clear	_asctime_sloc12_1_0+1
	mov	a, _asctime_sloc10_1_0+0
	add	a, #0x01
	mov	p, a
	mov	a, _asctime_sloc10_1_0+1
	addc	a
	call	__gptrget
	mov	_asctime_sloc13_1_0+0, a
	clear	_asctime_sloc13_1_0+1
	mov	a, _asctime_sloc10_1_0+0
	add	a, #0x02
	mov	p, a
	mov	a, _asctime_sloc10_1_0+1
	addc	a
	call	__gptrget
	mov	_asctime_sloc14_1_0+0, a
	clear	_asctime_sloc14_1_0+1
;	../time.c: 98: __day[timeptr->tm_wday], __month[timeptr->tm_mon], timeptr->tm_mday,
	mov	a, _asctime_sloc10_1_0+0
	add	a, #0x03
	mov	p, a
	mov	a, _asctime_sloc10_1_0+1
	addc	a
	call	__gptrget
	mov	_asctime_sloc15_1_0+0, a
	clear	_asctime_sloc15_1_0+1
	mov	a, _asctime_sloc10_1_0+0
	add	a, #0x04
	mov	p, a
	mov	a, _asctime_sloc10_1_0+1
	addc	a
	call	__gptrget
	mov	__muluchar_PARM_1+0, a
	mov	a, #0x02
	mov	__muluchar_PARM_2+0, a
	call	__muluchar
	add	a, #<(___month + 0)
	xch	a, p
	addc	a
	add	a, #>(___month + 0x8000 + 0)
	call	__gptrget2
	mov	_asctime_sloc16_1_0+0, a
	mov	a, p
	mov	_asctime_sloc16_1_0+1, a
	mov	a, _asctime_sloc10_1_0+0
	add	a, #0x07
	mov	p, a
	mov	a, _asctime_sloc10_1_0+1
	addc	a
	call	__gptrget
	mov	__muluchar_PARM_1+0, a
	mov	a, #0x02
	mov	__muluchar_PARM_2+0, a
	call	__muluchar
	add	a, #<(___day + 0)
	xch	a, p
	addc	a
	add	a, #>(___day + 0x8000 + 0)
	call	__gptrget2
	mov	_asctime_sloc17_1_0+0, a
	mov	a, p
	mov	_asctime_sloc17_1_0+1, a
;	../time.c: 97: sprintf (ascTimeBuffer, "%s %s %2d %02d:%02d:%02d %04d\n",
	mov	a, _asctime_sloc11_1_0+0
	push	af
	mov	a, sp
	add	a, #0xff
	mov	p, a
	mov	a, _asctime_sloc11_1_0+1
	idxm	p, a
	mov	a, _asctime_sloc12_1_0+0
	push	af
	inc	p
	inc	p
	mov	a, _asctime_sloc12_1_0+1
	idxm	p, a
	mov	a, _asctime_sloc13_1_0+0
	push	af
	inc	p
	inc	p
	mov	a, _asctime_sloc13_1_0+1
	idxm	p, a
	mov	a, _asctime_sloc14_1_0+0
	push	af
	inc	p
	inc	p
	mov	a, _asctime_sloc14_1_0+1
	idxm	p, a
	mov	a, _asctime_sloc15_1_0+0
	push	af
	inc	p
	inc	p
	mov	a, _asctime_sloc15_1_0+1
	idxm	p, a
	mov	a, _asctime_sloc16_1_0+0
	push	af
	inc	p
	inc	p
	mov	a, _asctime_sloc16_1_0+1
	idxm	p, a
	mov	a, _asctime_sloc17_1_0+0
	push	af
	inc	p
	inc	p
	mov	a, _asctime_sloc17_1_0+1
	idxm	p, a
	mov	a, #<(___str_0 + 0)
	push	af
	inc	p
	inc	p
	mov	a, #>(___str_0 + 0x8000 + 0)
	idxm	p, a
	mov	a, #(_ascTimeBuffer + 0)
	push	af
	inc	p
	inc	p
	mov	a, #0
	idxm	p, a
	call	_sprintf
	mov	a, sp
	add	a, #-18
	mov	sp, a
;	../time.c: 101: return ascTimeBuffer;
	mov	a, #(_ascTimeBuffer + 0)
	clear	p
;	../time.c: 102: }
	ret
;	../time.c: 104: char *ctime(time_t *timep) {
;	-----------------------------------------
;	 function ctime
;	-----------------------------------------
_ctime:
;	../time.c: 105: return asctime(localtime(timep));
	mov	a, _ctime_PARM_1+0
	mov	_localtime_PARM_1+0, a
	mov	a, _ctime_PARM_1+1
	mov	_localtime_PARM_1+1, a
	call	_localtime
	mov	_asctime_PARM_1+0, a
	mov	a, p
	mov	_asctime_PARM_1+1, a
	call	_asctime
;	../time.c: 106: }
	ret
;	../time.c: 121: struct tm *localtime(time_t *timep) {
;	-----------------------------------------
;	 function localtime
;	-----------------------------------------
_localtime:
;	../time.c: 122: return gmtime(timep);
	mov	a, _localtime_PARM_1+0
	mov	_gmtime_PARM_1+0, a
	mov	a, _localtime_PARM_1+1
	mov	_gmtime_PARM_1+1, a
	call	_gmtime
;	../time.c: 123: }
	ret
;	../time.c: 125: struct tm *gmtime(time_t *timep) {
;	-----------------------------------------
;	 function gmtime
;	-----------------------------------------
_gmtime:
;	../time.c: 126: unsigned long epoch=*timep;
	mov	a, _gmtime_PARM_1+0
	mov	_gmtime_sloc25_1_0+0, a
	mov	a, _gmtime_PARM_1+1
	mov	_gmtime_sloc25_1_0+1, a
	mov	a, _gmtime_sloc25_1_0+0
	mov	p, a
	mov	a, _gmtime_sloc25_1_0+1
	call	__gptrget
	mov	_gmtime_sloc26_1_0+0, a
	mov	a, _gmtime_sloc25_1_0+0
	mov	p, a
	mov	a, _gmtime_sloc25_1_0+1
	inc	p
	addc	a
	call	__gptrget
	mov	_gmtime_sloc26_1_0+1, a
	mov	a, _gmtime_sloc25_1_0+0
	mov	p, a
	mov	a, _gmtime_sloc25_1_0+1
	inc	p
	addc	a
	inc	p
	addc	a
	call	__gptrget
	mov	_gmtime_sloc26_1_0+2, a
	mov	a, _gmtime_sloc25_1_0+0
	mov	p, a
	mov	a, _gmtime_sloc25_1_0+1
	xch	a, p
	add	a, #3
	xch	a, p
	addc	a
	call	__gptrget
	mov	_gmtime_sloc26_1_0+3, a
;	../time.c: 131: lastTime.tm_sec=epoch%60;
	mov	a, _gmtime_sloc26_1_0+0
	mov	__modulong_PARM_1+0, a
	mov	a, _gmtime_sloc26_1_0+1
	mov	__modulong_PARM_1+1, a
	mov	a, _gmtime_sloc26_1_0+2
	mov	__modulong_PARM_1+2, a
	mov	a, _gmtime_sloc26_1_0+3
	mov	__modulong_PARM_1+3, a
	mov	a, #0x3c
	mov	__modulong_PARM_2+0, a
	clear	__modulong_PARM_2+1
	clear	__modulong_PARM_2+2
	clear	__modulong_PARM_2+3
	mov	a, #_gmtime_sloc18_1_0
	push	af
	call	__modulong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _gmtime_sloc18_1_0+0
	mov	_lastTime+0, a
;	../time.c: 132: epoch/=60; // now it is minutes
	mov	a, _gmtime_sloc26_1_0+0
	mov	__divulong_PARM_1+0, a
	mov	a, _gmtime_sloc26_1_0+1
	mov	__divulong_PARM_1+1, a
	mov	a, _gmtime_sloc26_1_0+2
	mov	__divulong_PARM_1+2, a
	mov	a, _gmtime_sloc26_1_0+3
	mov	__divulong_PARM_1+3, a
	mov	a, #0x3c
	mov	__divulong_PARM_2+0, a
	clear	__divulong_PARM_2+1
	clear	__divulong_PARM_2+2
	clear	__divulong_PARM_2+3
	mov	a, #_gmtime_sloc19_1_0
	push	af
	call	__divulong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _gmtime_sloc19_1_0+0
	mov	_gmtime_sloc27_1_0+0, a
	mov	a, _gmtime_sloc19_1_0+1
	mov	_gmtime_sloc27_1_0+1, a
	mov	a, _gmtime_sloc19_1_0+2
	mov	_gmtime_sloc27_1_0+2, a
	mov	a, _gmtime_sloc19_1_0+3
	mov	_gmtime_sloc27_1_0+3, a
;	../time.c: 133: lastTime.tm_min=epoch%60;
	mov	a, _gmtime_sloc27_1_0+0
	mov	__modulong_PARM_1+0, a
	mov	a, _gmtime_sloc27_1_0+1
	mov	__modulong_PARM_1+1, a
	mov	a, _gmtime_sloc27_1_0+2
	mov	__modulong_PARM_1+2, a
	mov	a, _gmtime_sloc27_1_0+3
	mov	__modulong_PARM_1+3, a
	mov	a, #0x3c
	mov	__modulong_PARM_2+0, a
	clear	__modulong_PARM_2+1
	clear	__modulong_PARM_2+2
	clear	__modulong_PARM_2+3
	mov	a, #_gmtime_sloc20_1_0
	push	af
	call	__modulong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _gmtime_sloc20_1_0+0
	mov	_lastTime+1, a
;	../time.c: 134: epoch/=60; // now it is hours
	mov	a, _gmtime_sloc27_1_0+0
	mov	__divulong_PARM_1+0, a
	mov	a, _gmtime_sloc27_1_0+1
	mov	__divulong_PARM_1+1, a
	mov	a, _gmtime_sloc27_1_0+2
	mov	__divulong_PARM_1+2, a
	mov	a, _gmtime_sloc27_1_0+3
	mov	__divulong_PARM_1+3, a
	mov	a, #0x3c
	mov	__divulong_PARM_2+0, a
	clear	__divulong_PARM_2+1
	clear	__divulong_PARM_2+2
	clear	__divulong_PARM_2+3
	mov	a, #_gmtime_sloc21_1_0
	push	af
	call	__divulong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _gmtime_sloc21_1_0+0
	mov	_gmtime_sloc28_1_0+0, a
	mov	a, _gmtime_sloc21_1_0+1
	mov	_gmtime_sloc28_1_0+1, a
	mov	a, _gmtime_sloc21_1_0+2
	mov	_gmtime_sloc28_1_0+2, a
	mov	a, _gmtime_sloc21_1_0+3
	mov	_gmtime_sloc28_1_0+3, a
;	../time.c: 135: lastTime.tm_hour=epoch%24;
	mov	a, _gmtime_sloc28_1_0+0
	mov	__modulong_PARM_1+0, a
	mov	a, _gmtime_sloc28_1_0+1
	mov	__modulong_PARM_1+1, a
	mov	a, _gmtime_sloc28_1_0+2
	mov	__modulong_PARM_1+2, a
	mov	a, _gmtime_sloc28_1_0+3
	mov	__modulong_PARM_1+3, a
	mov	a, #0x18
	mov	__modulong_PARM_2+0, a
	clear	__modulong_PARM_2+1
	clear	__modulong_PARM_2+2
	clear	__modulong_PARM_2+3
	mov	a, #_gmtime_sloc22_1_0
	push	af
	call	__modulong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _gmtime_sloc22_1_0+0
	mov	_lastTime+2, a
;	../time.c: 136: epoch/=24; // now it is days
	mov	a, _gmtime_sloc28_1_0+0
	mov	__divulong_PARM_1+0, a
	mov	a, _gmtime_sloc28_1_0+1
	mov	__divulong_PARM_1+1, a
	mov	a, _gmtime_sloc28_1_0+2
	mov	__divulong_PARM_1+2, a
	mov	a, _gmtime_sloc28_1_0+3
	mov	__divulong_PARM_1+3, a
	mov	a, #0x18
	mov	__divulong_PARM_2+0, a
	clear	__divulong_PARM_2+1
	clear	__divulong_PARM_2+2
	clear	__divulong_PARM_2+3
	mov	a, #_gmtime_sloc23_1_0
	push	af
	call	__divulong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _gmtime_sloc23_1_0+0
	mov	_gmtime_sloc29_1_0+0, a
	mov	a, _gmtime_sloc23_1_0+1
	mov	_gmtime_sloc29_1_0+1, a
	mov	a, _gmtime_sloc23_1_0+2
	mov	_gmtime_sloc29_1_0+2, a
	mov	a, _gmtime_sloc23_1_0+3
	mov	_gmtime_sloc29_1_0+3, a
;	../time.c: 137: lastTime.tm_wday=(epoch+4)%7;
	mov	a, _gmtime_sloc29_1_0+0
	add	a, #0x04
	mov	__modulong_PARM_1+0, a
	mov	a, _gmtime_sloc29_1_0+1
	addc	a
	mov	__modulong_PARM_1+1, a
	mov	a, _gmtime_sloc29_1_0+2
	addc	a
	mov	__modulong_PARM_1+2, a
	mov	a, _gmtime_sloc29_1_0+3
	addc	a
	mov	__modulong_PARM_1+3, a
	mov	a, #0x07
	mov	__modulong_PARM_2+0, a
	clear	__modulong_PARM_2+1
	clear	__modulong_PARM_2+2
	clear	__modulong_PARM_2+3
	mov	a, #_gmtime_sloc24_1_0
	push	af
	call	__modulong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _gmtime_sloc24_1_0+0
	mov	_lastTime+7, a
;	../time.c: 140: days=0;
	clear	_gmtime_sloc30_1_0+0
	clear	_gmtime_sloc30_1_0+1
	clear	_gmtime_sloc30_1_0+2
	clear	_gmtime_sloc30_1_0+3
;	../time.c: 141: while((days += (LEAP_YEAR(year) ? 366 : 365)) <= epoch) {
	mov	a, #0xb2
	mov	_gmtime_sloc31_1_0+0, a
	mov	a, #0x07
	mov	_gmtime_sloc31_1_0+1, a
00101$:
	mov	a, _gmtime_sloc31_1_0+0
	and	a, #0x03
	ceqsn	a, #0x00
	goto	00118$
	mov	a, #0x6e
	mov	_gmtime_sloc32_1_0+0, a
	mov	a, #0x01
	mov	_gmtime_sloc32_1_0+1, a
	goto	00119$
00118$:
	mov	a, #0x6d
	mov	_gmtime_sloc32_1_0+0, a
	mov	a, #0x01
	mov	_gmtime_sloc32_1_0+1, a
00119$:
	mov	a, _gmtime_sloc32_1_0+0
	mov	_gmtime_sloc33_1_0+0, a
	mov	a, _gmtime_sloc32_1_0+1
	mov	_gmtime_sloc33_1_0+1, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	_gmtime_sloc33_1_0+2, a
	mov	_gmtime_sloc33_1_0+3, a
	mov	a, _gmtime_sloc30_1_0+0
	add	a, _gmtime_sloc33_1_0+0
	mov	_gmtime_sloc34_1_0+0, a
	mov	a, _gmtime_sloc30_1_0+1
	addc	a, _gmtime_sloc33_1_0+1
	mov	_gmtime_sloc34_1_0+1, a
	mov	a, _gmtime_sloc30_1_0+2
	addc	a, _gmtime_sloc33_1_0+2
	mov	_gmtime_sloc34_1_0+2, a
	mov	a, _gmtime_sloc30_1_0+3
	addc	a, _gmtime_sloc33_1_0+3
	mov	_gmtime_sloc34_1_0+3, a
	mov	a, _gmtime_sloc34_1_0+0
	mov	_gmtime_sloc30_1_0+0, a
	mov	a, _gmtime_sloc34_1_0+1
	mov	_gmtime_sloc30_1_0+1, a
	mov	a, _gmtime_sloc34_1_0+2
	mov	_gmtime_sloc30_1_0+2, a
	mov	a, _gmtime_sloc34_1_0+3
	mov	_gmtime_sloc30_1_0+3, a
	mov	a, _gmtime_sloc29_1_0+0
	sub	a, _gmtime_sloc34_1_0+0
	mov	a, _gmtime_sloc29_1_0+1
	subc	a, _gmtime_sloc34_1_0+1
	mov	a, _gmtime_sloc29_1_0+2
	subc	a, _gmtime_sloc34_1_0+2
	mov	a, _gmtime_sloc29_1_0+3
	subc	a, _gmtime_sloc34_1_0+3
	t0sn	f, c
	goto	00103$
;	../time.c: 142: year++;
	inc	_gmtime_sloc31_1_0+0
	addc	_gmtime_sloc31_1_0+1
	goto	00101$
00103$:
;	../time.c: 144: lastTime.tm_year=year-1900;
	mov	a, _gmtime_sloc31_1_0+0
	sub	a, #0x6c
	mov	p, a
	mov	a, _gmtime_sloc31_1_0+1
	subc	a
	sub	a, #0x07
	mov	_lastTime+6, a
	mov	a, p
	mov	_lastTime+5, a
;	../time.c: 146: days -= LEAP_YEAR(year) ? 366 : 365;
	mov	a, _gmtime_sloc31_1_0+0
	and	a, #0x03
	mov	_gmtime_sloc35_1_0+0, a
	clear	_gmtime_sloc35_1_0+1
	mov	a, _gmtime_sloc35_1_0+0
	or	a, _gmtime_sloc35_1_0+1
	ceqsn	a, #0x00
	goto	00120$
	mov	a, #0x6e
	mov	_gmtime_sloc36_1_0+0, a
	mov	a, #0x01
	mov	_gmtime_sloc36_1_0+1, a
	goto	00121$
00120$:
	mov	a, #0x6d
	mov	_gmtime_sloc36_1_0+0, a
	mov	a, #0x01
	mov	_gmtime_sloc36_1_0+1, a
00121$:
	mov	a, _gmtime_sloc36_1_0+0
	mov	_gmtime_sloc37_1_0+0, a
	mov	a, _gmtime_sloc36_1_0+1
	mov	_gmtime_sloc37_1_0+1, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	_gmtime_sloc37_1_0+2, a
	mov	_gmtime_sloc37_1_0+3, a
	mov	a, _gmtime_sloc30_1_0+0
	sub	a, _gmtime_sloc37_1_0+0
	mov	_gmtime_sloc38_1_0+0, a
	mov	a, _gmtime_sloc30_1_0+1
	subc	a, _gmtime_sloc37_1_0+1
	mov	_gmtime_sloc38_1_0+1, a
	mov	a, _gmtime_sloc30_1_0+2
	subc	a, _gmtime_sloc37_1_0+2
	mov	_gmtime_sloc38_1_0+2, a
	mov	a, _gmtime_sloc30_1_0+3
	subc	a, _gmtime_sloc37_1_0+3
	mov	_gmtime_sloc38_1_0+3, a
;	../time.c: 147: epoch -= days; // now it is days in this year, starting at 0
	mov	a, _gmtime_sloc29_1_0+0
	sub	a, _gmtime_sloc38_1_0+0
	mov	_gmtime_sloc39_1_0+0, a
	mov	a, _gmtime_sloc29_1_0+1
	subc	a, _gmtime_sloc38_1_0+1
	mov	_gmtime_sloc39_1_0+1, a
	mov	a, _gmtime_sloc29_1_0+2
	subc	a, _gmtime_sloc38_1_0+2
	mov	_gmtime_sloc39_1_0+2, a
	mov	a, _gmtime_sloc29_1_0+3
	subc	a, _gmtime_sloc38_1_0+3
	mov	_gmtime_sloc39_1_0+3, a
;	../time.c: 148: lastTime.tm_yday=epoch;
	mov	a, _gmtime_sloc39_1_0+1
	mov	p, a
	mov	a, _gmtime_sloc39_1_0+0
	mov	_lastTime+8, a
	mov	a, p
	mov	_lastTime+9, a
;	../time.c: 153: for (month=0; month<12; month++) {
	clear	_gmtime_sloc40_1_0+0
00114$:
;	../time.c: 154: if (month==1) { // februari
	mov	a, _gmtime_sloc40_1_0+0
	ceqsn	a, #0x01
	goto	00108$
;	../time.c: 155: if (LEAP_YEAR(year)) {
	mov	a, _gmtime_sloc35_1_0+0
	or	a, _gmtime_sloc35_1_0+1
	ceqsn	a, #0x00
	goto	00105$
;	../time.c: 156: monthLength=29;
	mov	a, #0x1d
	goto	00109$
00105$:
;	../time.c: 158: monthLength=28;
	mov	a, #0x1c
	goto	00109$
00108$:
;	../time.c: 161: monthLength = monthDays[month];
	mov	a, #<(_monthDays + 0)
	add	a, _gmtime_sloc40_1_0+0
	mov	p, a
	mov	a, #>(_monthDays + 0x8000 + 0)
	addc	a
	call	__gptrget
00109$:
;	../time.c: 164: if (epoch>=monthLength) {
	mov	_gmtime_sloc41_1_0+0, a
	clear	_gmtime_sloc41_1_0+1
	clear	_gmtime_sloc41_1_0+2
	clear	_gmtime_sloc41_1_0+3
	mov	a, _gmtime_sloc39_1_0+0
	sub	a, _gmtime_sloc41_1_0+0
	mov	a, _gmtime_sloc39_1_0+1
	subc	a, _gmtime_sloc41_1_0+1
	mov	a, _gmtime_sloc39_1_0+2
	subc	a, _gmtime_sloc41_1_0+2
	mov	a, _gmtime_sloc39_1_0+3
	subc	a, _gmtime_sloc41_1_0+3
	t0sn	f, c
	goto	00113$
;	../time.c: 165: epoch-=monthLength;
	mov	a, _gmtime_sloc41_1_0+0
	sub	_gmtime_sloc39_1_0+0, a
	mov	a, _gmtime_sloc41_1_0+1
	subc	_gmtime_sloc39_1_0+1, a
	mov	a, _gmtime_sloc41_1_0+2
	subc	_gmtime_sloc39_1_0+2, a
	mov	a, _gmtime_sloc41_1_0+3
	subc	_gmtime_sloc39_1_0+3, a
;	../time.c: 153: for (month=0; month<12; month++) {
	inc	_gmtime_sloc40_1_0+0
	mov	a, _gmtime_sloc40_1_0+0
	sub	a, #0x0c
	t0sn	f, c
	goto	00114$
00113$:
;	../time.c: 170: lastTime.tm_mon=month;
	mov	a, _gmtime_sloc40_1_0+0
	mov	_lastTime+4, a
;	../time.c: 171: lastTime.tm_mday=epoch+1;
	mov	a, _gmtime_sloc39_1_0+0
	add	a, #0x01
	mov	_lastTime+3, a
;	../time.c: 173: lastTime.tm_isdst=0;
	clear	_lastTime+10
;	../time.c: 175: return &lastTime;
	clear	p
	ret	#(_lastTime + 0)
;	../time.c: 176: }
	ret
;	../time.c: 179: time_t mktime(struct tm *timeptr) {
;	-----------------------------------------
;	 function mktime
;	-----------------------------------------
_mktime:
;	../time.c: 180: int year=timeptr->tm_year+1900, month=timeptr->tm_mon, i;
	mov	a, _mktime_PARM_1+0
	mov	_mktime_sloc46_1_0+0, a
	mov	a, _mktime_PARM_1+1
	mov	_mktime_sloc46_1_0+1, a
	mov	a, _mktime_sloc46_1_0+0
	add	a, #0x05
	mov	p, a
	mov	a, _mktime_sloc46_1_0+1
	addc	a
	call	__gptrget2
	add	a, #0x6c
	mov	_mktime_sloc47_1_0+0, a
	mov	a, #0x07
	addc	a, p
	mov	_mktime_sloc47_1_0+1, a
	mov	a, _mktime_sloc46_1_0+0
	add	a, #0x04
	mov	p, a
	mov	a, _mktime_sloc46_1_0+1
	addc	a
	call	__gptrget
	mov	_mktime_sloc48_1_0+0, a
	clear	_mktime_sloc48_1_0+1
;	../time.c: 183: CheckTime(timeptr);
	mov	a, _mktime_sloc46_1_0+0
	mov	_CheckTime_PARM_1+0, a
	mov	a, _mktime_sloc46_1_0+1
	mov	_CheckTime_PARM_1+1, a
	call	_CheckTime
;	../time.c: 186: seconds= (year-1970)*(60*60*24L*365);
	mov	a, _mktime_sloc47_1_0+0
	sub	a, #0xb2
	push	af
	mov	a, _mktime_sloc47_1_0+1
	subc	a
	sub	a, #0x07
	mov	p, a
	pop	af
	mov	__mullong_PARM_2+0, a
	mov	a, p
	mov	__mullong_PARM_2+1, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	__mullong_PARM_2+2, a
	mov	__mullong_PARM_2+3, a
	mov	a, #0x80
	mov	__mullong_PARM_1+0, a
	mov	a, #0x33
	mov	__mullong_PARM_1+1, a
	mov	a, #0xe1
	mov	__mullong_PARM_1+2, a
	mov	a, #0x01
	mov	__mullong_PARM_1+3, a
	mov	a, #_mktime_sloc42_1_0
	push	af
	call	__mullong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _mktime_sloc42_1_0+0
	mov	_mktime_sloc49_1_0+0, a
	mov	a, _mktime_sloc42_1_0+1
	mov	_mktime_sloc49_1_0+1, a
	mov	a, _mktime_sloc42_1_0+2
	mov	_mktime_sloc49_1_0+2, a
	mov	a, _mktime_sloc42_1_0+3
	mov	_mktime_sloc49_1_0+3, a
;	../time.c: 189: for (i=1970; i<year; i++) {
	mov	a, #0xb2
	mov	_mktime_sloc50_1_0+0, a
	mov	a, #0x07
	mov	_mktime_sloc50_1_0+1, a
00110$:
	mov	a, _mktime_sloc50_1_0+0
	sub	a, _mktime_sloc47_1_0+0
	mov	a, _mktime_sloc50_1_0+1
	subc	a, _mktime_sloc47_1_0+1
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t1sn	f, c
	goto	00124$
;	../time.c: 190: if (LEAP_YEAR(i)) {
	mov	a, _mktime_sloc50_1_0+0
	mov	__modsint_PARM_1+0, a
	mov	a, _mktime_sloc50_1_0+1
	mov	__modsint_PARM_1+1, a
	mov	a, #0x04
	mov	__modsint_PARM_2+0, a
	clear	__modsint_PARM_2+1
	call	__modsint
	or	a, p
	ceqsn	a, #0x00
	goto	00111$
;	../time.c: 191: seconds+= 60*60*24L;
	mov	a, #0x80
	add	_mktime_sloc49_1_0+0, a
	mov	a, #0x51
	addc	_mktime_sloc49_1_0+1, a
	mov	a, #0x01
	addc	_mktime_sloc49_1_0+2, a
	addc	_mktime_sloc49_1_0+3
00111$:
;	../time.c: 189: for (i=1970; i<year; i++) {
	inc	_mktime_sloc50_1_0+0
	addc	_mktime_sloc50_1_0+1
	goto	00110$
00124$:
	mov	a, _mktime_sloc49_1_0+0
	mov	_mktime_sloc51_1_0+0, a
	mov	a, _mktime_sloc49_1_0+1
	mov	_mktime_sloc51_1_0+1, a
	mov	a, _mktime_sloc49_1_0+2
	mov	_mktime_sloc51_1_0+2, a
	mov	a, _mktime_sloc49_1_0+3
	mov	_mktime_sloc51_1_0+3, a
;	../time.c: 196: for (i=0; i<month; i++) {
	mov	a, _mktime_sloc47_1_0+0
	mov	__modsint_PARM_1+0, a
	mov	a, _mktime_sloc47_1_0+1
	mov	__modsint_PARM_1+1, a
	mov	a, #0x04
	mov	__modsint_PARM_2+0, a
	clear	__modsint_PARM_2+1
	call	__modsint
	mov	_mktime_sloc52_1_0+0, a
	mov	a, p
	mov	_mktime_sloc52_1_0+1, a
	clear	_mktime_sloc53_1_0+0
	clear	_mktime_sloc53_1_0+1
00113$:
	mov	a, _mktime_sloc53_1_0+0
	sub	a, _mktime_sloc48_1_0+0
	mov	a, _mktime_sloc53_1_0+1
	subc	a, _mktime_sloc48_1_0+1
	t0sn	f, ov
	xor	a, #0x80
	sl	a
	t1sn	f, c
	goto	00108$
;	../time.c: 197: if (i==1 && LEAP_YEAR(year)) { 
	mov	a, _mktime_sloc53_1_0+0
	ceqsn	a, #0x01
	goto	00105$
	mov	a, _mktime_sloc53_1_0+1
	ceqsn	a, #0x00
	goto	00105$
	mov	a, _mktime_sloc52_1_0+0
	or	a, _mktime_sloc52_1_0+1
	ceqsn	a, #0x00
	goto	00105$
;	../time.c: 198: seconds+= 60*60*24L*29;
	mov	a, #0x80
	add	_mktime_sloc51_1_0+0, a
	mov	a, #0x3b
	addc	_mktime_sloc51_1_0+1, a
	mov	a, #0x26
	addc	_mktime_sloc51_1_0+2, a
	addc	_mktime_sloc51_1_0+3
	goto	00114$
00105$:
;	../time.c: 200: seconds+= 60*60*24L*monthDays[i];
	mov	a, #<(_monthDays + 0)
	add	a, _mktime_sloc53_1_0+0
	mov	p, a
	mov	a, #>(_monthDays + 0x8000 + 0)
	addc	a, _mktime_sloc53_1_0+1
	call	__gptrget
	mov	__mullong_PARM_2+0, a
	clear	__mullong_PARM_2+1
	clear	__mullong_PARM_2+2
	clear	__mullong_PARM_2+3
	mov	a, #0x80
	mov	__mullong_PARM_1+0, a
	mov	a, #0x51
	mov	__mullong_PARM_1+1, a
	mov	a, #0x01
	mov	__mullong_PARM_1+2, a
	clear	__mullong_PARM_1+3
	mov	a, #_mktime_sloc43_1_0
	push	af
	call	__mullong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _mktime_sloc43_1_0+0
	add	_mktime_sloc51_1_0+0, a
	mov	a, _mktime_sloc43_1_0+1
	addc	_mktime_sloc51_1_0+1, a
	mov	a, _mktime_sloc43_1_0+2
	addc	_mktime_sloc51_1_0+2, a
	mov	a, _mktime_sloc43_1_0+3
	addc	_mktime_sloc51_1_0+3, a
00114$:
;	../time.c: 196: for (i=0; i<month; i++) {
	inc	_mktime_sloc53_1_0+0
	addc	_mktime_sloc53_1_0+1
	goto	00113$
00108$:
;	../time.c: 204: seconds+= (timeptr->tm_mday-1)*60*60*24L;
	mov	a, _mktime_PARM_1+0
	mov	_mktime_sloc54_1_0+0, a
	mov	a, _mktime_PARM_1+1
	mov	_mktime_sloc54_1_0+1, a
	mov	a, _mktime_sloc54_1_0+0
	add	a, #0x03
	mov	p, a
	mov	a, _mktime_sloc54_1_0+1
	addc	a
	call	__gptrget
	sub	a, #0x01
	mov	_mktime_sloc55_1_0+0, a
	mov	a, #0x00
	subc	a
	mov	_mktime_sloc55_1_0+1, a
	mov	a, _mktime_sloc55_1_0+0
	mov	__mullong_PARM_2+0, a
	mov	a, _mktime_sloc55_1_0+1
	mov	__mullong_PARM_2+1, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	__mullong_PARM_2+2, a
	mov	__mullong_PARM_2+3, a
	mov	a, #0x80
	mov	__mullong_PARM_1+0, a
	mov	a, #0x51
	mov	__mullong_PARM_1+1, a
	mov	a, #0x01
	mov	__mullong_PARM_1+2, a
	clear	__mullong_PARM_1+3
	mov	a, #_mktime_sloc44_1_0
	push	af
	call	__mullong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _mktime_sloc51_1_0+0
	add	a, _mktime_sloc44_1_0+0
	mov	_mktime_sloc56_1_0+0, a
	mov	a, _mktime_sloc51_1_0+1
	addc	a, _mktime_sloc44_1_0+1
	mov	_mktime_sloc56_1_0+1, a
	mov	a, _mktime_sloc51_1_0+2
	addc	a, _mktime_sloc44_1_0+2
	mov	_mktime_sloc56_1_0+2, a
	mov	a, _mktime_sloc51_1_0+3
	addc	a, _mktime_sloc44_1_0+3
	mov	_mktime_sloc56_1_0+3, a
;	../time.c: 205: seconds+= timeptr->tm_hour*60*60L;
	mov	a, _mktime_sloc54_1_0+0
	add	a, #0x02
	mov	p, a
	mov	a, _mktime_sloc54_1_0+1
	addc	a
	call	__gptrget
	mov	__mullong_PARM_2+0, a
	clear	__mullong_PARM_2+1
	clear	__mullong_PARM_2+2
	clear	__mullong_PARM_2+3
	mov	a, #0x10
	mov	__mullong_PARM_1+0, a
	mov	a, #0x0e
	mov	__mullong_PARM_1+1, a
	clear	__mullong_PARM_1+2
	clear	__mullong_PARM_1+3
	mov	a, #_mktime_sloc45_1_0
	push	af
	call	__mullong
	mov	a, sp
	add	a, #-2
	mov	sp, a
	mov	a, _mktime_sloc56_1_0+0
	add	a, _mktime_sloc45_1_0+0
	mov	_mktime_sloc57_1_0+0, a
	mov	a, _mktime_sloc56_1_0+1
	addc	a, _mktime_sloc45_1_0+1
	mov	_mktime_sloc57_1_0+1, a
	mov	a, _mktime_sloc56_1_0+2
	addc	a, _mktime_sloc45_1_0+2
	mov	_mktime_sloc57_1_0+2, a
	mov	a, _mktime_sloc56_1_0+3
	addc	a, _mktime_sloc45_1_0+3
	mov	_mktime_sloc57_1_0+3, a
;	../time.c: 206: seconds+= timeptr->tm_min*60;
	mov	a, _mktime_sloc54_1_0+0
	add	a, #0x01
	mov	p, a
	mov	a, _mktime_sloc54_1_0+1
	addc	a
	call	__gptrget
	mov	__mulint_PARM_2+0, a
	clear	__mulint_PARM_2+1
	mov	a, #0x3c
	mov	__mulint_PARM_1+0, a
	clear	__mulint_PARM_1+1
	call	__mulint
	mov	_mktime_sloc58_1_0+0, a
	mov	a, p
	mov	_mktime_sloc58_1_0+1, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	_mktime_sloc58_1_0+2, a
	mov	_mktime_sloc58_1_0+3, a
	mov	a, _mktime_sloc57_1_0+0
	add	a, _mktime_sloc58_1_0+0
	mov	_mktime_sloc59_1_0+0, a
	mov	a, _mktime_sloc57_1_0+1
	addc	a, _mktime_sloc58_1_0+1
	mov	_mktime_sloc59_1_0+1, a
	mov	a, _mktime_sloc57_1_0+2
	addc	a, _mktime_sloc58_1_0+2
	mov	_mktime_sloc59_1_0+2, a
	mov	a, _mktime_sloc57_1_0+3
	addc	a, _mktime_sloc58_1_0+3
	mov	_mktime_sloc59_1_0+3, a
;	../time.c: 207: seconds+= timeptr->tm_sec;
	mov	a, _mktime_sloc54_1_0+0
	mov	p, a
	mov	a, _mktime_sloc54_1_0+1
	call	__gptrget
	clear	p
	mov	_mktime_sloc60_1_0+0, a
	mov	a, p
	mov	_mktime_sloc60_1_0+1, a
	sl	a
	mov	a, #0x00
	subc	a
	mov	_mktime_sloc60_1_0+2, a
	mov	_mktime_sloc60_1_0+3, a
	mov	a, _mktime_sloc59_1_0+0
	add	a, _mktime_sloc60_1_0+0
	mov	_mktime_sloc61_1_0+0, a
	mov	a, _mktime_sloc59_1_0+1
	addc	a, _mktime_sloc60_1_0+1
	mov	_mktime_sloc61_1_0+1, a
	mov	a, _mktime_sloc59_1_0+2
	addc	a, _mktime_sloc60_1_0+2
	mov	_mktime_sloc61_1_0+2, a
	mov	a, _mktime_sloc59_1_0+3
	addc	a, _mktime_sloc60_1_0+3
	mov	_mktime_sloc61_1_0+3, a
;	../time.c: 208: return seconds;
	mov	a, sp
	add	a, #0xfc
	mov	p, a
	idxm	a, p
	mov	p, a
	mov	a, _mktime_sloc61_1_0+0
	idxm	p, a
	inc	p
	mov	a, _mktime_sloc61_1_0+1
	idxm	p, a
	inc	p
	mov	a, _mktime_sloc61_1_0+2
	idxm	p, a
	inc	p
	mov	a, _mktime_sloc61_1_0+3
	idxm	p, a
;	../time.c: 209: }
	ret
	.area CODE
	.area CONST
_monthDays:
	ret #0x1f	; 31
	ret #0x1c	; 28
	ret #0x1f	; 31
	ret #0x1e	; 30
	ret #0x1f	; 31
	ret #0x1e	; 30
	ret #0x1f	; 31
	ret #0x1f	; 31
	ret #0x1e	; 30
	ret #0x1f	; 31
	ret #0x1e	; 30
	ret #0x1f	; 31
___month:
	ret #<__str_1
	ret #>(__str_1 + 0x8000)
	ret #<__str_2
	ret #>(__str_2 + 0x8000)
	ret #<__str_3
	ret #>(__str_3 + 0x8000)
	ret #<__str_4
	ret #>(__str_4 + 0x8000)
	ret #<__str_5
	ret #>(__str_5 + 0x8000)
	ret #<__str_6
	ret #>(__str_6 + 0x8000)
	ret #<__str_7
	ret #>(__str_7 + 0x8000)
	ret #<__str_8
	ret #>(__str_8 + 0x8000)
	ret #<__str_9
	ret #>(__str_9 + 0x8000)
	ret #<__str_10
	ret #>(__str_10 + 0x8000)
	ret #<__str_11
	ret #>(__str_11 + 0x8000)
	ret #<__str_12
	ret #>(__str_12 + 0x8000)
___day:
	ret #<__str_13
	ret #>(__str_13 + 0x8000)
	ret #<__str_14
	ret #>(__str_14 + 0x8000)
	ret #<__str_15
	ret #>(__str_15 + 0x8000)
	ret #<__str_16
	ret #>(__str_16 + 0x8000)
	ret #<__str_17
	ret #>(__str_17 + 0x8000)
	ret #<__str_18
	ret #>(__str_18 + 0x8000)
	ret #<__str_19
	ret #>(__str_19 + 0x8000)
	.area CONST
___str_0:
	ret #0x25	; %
	ret #0x73	; s
	ret #0x20	;  
	ret #0x25	; %
	ret #0x73	; s
	ret #0x20	;  
	ret #0x25	; %
	ret #0x32	; 2
	ret #0x64	; d
	ret #0x20	;  
	ret #0x25	; %
	ret #0x30	; 0
	ret #0x32	; 2
	ret #0x64	; d
	ret #0x3a	; :
	ret #0x25	; %
	ret #0x30	; 0
	ret #0x32	; 2
	ret #0x64	; d
	ret #0x3a	; :
	ret #0x25	; %
	ret #0x30	; 0
	ret #0x32	; 2
	ret #0x64	; d
	ret #0x20	;  
	ret #0x25	; %
	ret #0x30	; 0
	ret #0x34	; 4
	ret #0x64	; d
	ret #0x0a
	ret #0x00
	.area CODE
	.area CONST
__str_1:
	ret #0x4a	; J
	ret #0x61	; a
	ret #0x6e	; n
	ret #0x00
	.area CODE
	.area CONST
__str_2:
	ret #0x46	; F
	ret #0x65	; e
	ret #0x62	; b
	ret #0x00
	.area CODE
	.area CONST
__str_3:
	ret #0x4d	; M
	ret #0x61	; a
	ret #0x72	; r
	ret #0x00
	.area CODE
	.area CONST
__str_4:
	ret #0x41	; A
	ret #0x70	; p
	ret #0x72	; r
	ret #0x00
	.area CODE
	.area CONST
__str_5:
	ret #0x4d	; M
	ret #0x61	; a
	ret #0x79	; y
	ret #0x00
	.area CODE
	.area CONST
__str_6:
	ret #0x4a	; J
	ret #0x75	; u
	ret #0x6e	; n
	ret #0x00
	.area CODE
	.area CONST
__str_7:
	ret #0x4a	; J
	ret #0x75	; u
	ret #0x6c	; l
	ret #0x00
	.area CODE
	.area CONST
__str_8:
	ret #0x41	; A
	ret #0x75	; u
	ret #0x67	; g
	ret #0x00
	.area CODE
	.area CONST
__str_9:
	ret #0x53	; S
	ret #0x65	; e
	ret #0x70	; p
	ret #0x00
	.area CODE
	.area CONST
__str_10:
	ret #0x4f	; O
	ret #0x63	; c
	ret #0x74	; t
	ret #0x00
	.area CODE
	.area CONST
__str_11:
	ret #0x4e	; N
	ret #0x6f	; o
	ret #0x76	; v
	ret #0x00
	.area CODE
	.area CONST
__str_12:
	ret #0x44	; D
	ret #0x65	; e
	ret #0x63	; c
	ret #0x00
	.area CODE
	.area CONST
__str_13:
	ret #0x53	; S
	ret #0x75	; u
	ret #0x6e	; n
	ret #0x00
	.area CODE
	.area CONST
__str_14:
	ret #0x4d	; M
	ret #0x6f	; o
	ret #0x6e	; n
	ret #0x00
	.area CODE
	.area CONST
__str_15:
	ret #0x54	; T
	ret #0x75	; u
	ret #0x65	; e
	ret #0x00
	.area CODE
	.area CONST
__str_16:
	ret #0x57	; W
	ret #0x65	; e
	ret #0x64	; d
	ret #0x00
	.area CODE
	.area CONST
__str_17:
	ret #0x54	; T
	ret #0x68	; h
	ret #0x75	; u
	ret #0x00
	.area CODE
	.area CONST
__str_18:
	ret #0x46	; F
	ret #0x72	; r
	ret #0x69	; i
	ret #0x00
	.area CODE
	.area CONST
__str_19:
	ret #0x53	; S
	ret #0x61	; a
	ret #0x74	; t
	ret #0x00
	.area CODE
	.area CABS (ABS)
