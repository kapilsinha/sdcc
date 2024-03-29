# libc/r3ka Makefile


srcdir = .
top_builddir = ../../..

LIB_TYPE     = RANLIB

SCC = $(top_builddir)/bin/sdcc -mr3ka
SAS = $(top_builddir)/bin/sdasrab

# override PORTDIR defined by super (parent) makefile
override PORTDIR = ../build/r3ka

include $(srcdir)/../incl.mk

Z80_FLOAT = $(COMMON_FLOAT)

Z80_INT = $(COMMON_INT)

Z80_LONG = $(COMMON_LONG) \
  _divulong.c \
  _mullong.c

Z80_LONGLONG = $(COMMON_LONGLONG) \
  _mullonglong.c \
  _divslonglong.c \
  _divulonglong.c \
  _modslonglong.c \
  _modulonglong.c

Z80_SDCC = $(COMMON_SDCC) \
  _itoa.c \
  _ltoa.c \
  _startup.c \
  sprintf.c \
  vprintf.c \
  _strlen.c \
  _strcmp.c \
  __memcpy.c \
  memcpy.c

Z80SOURCES = $(addprefix ../,$(Z80_FLOAT) $(Z80_INT) $(Z80_LONG) $(Z80_LONGLONG) $(Z80_SDCC))
Z8OBJECTS = $(patsubst %.c,%.rel,$(Z80_FLOAT) $(Z80_INT) $(Z80_LONG) $(Z80_LONGLONG) $(Z80_SDCC))

OBJ = divunsigned.rel divsigned.rel divmixed.rel modunsigned.rel modsigned.rel modmixed.rel mul.rel mulchar.rel \
      heap.rel memmove.rel strcpy.rel abs.rel __sdcc_call_hl.rel __sdcc_call_iy.rel crtenter.rel \
      setjmp.rel

LIB = r3ka.lib
CC = $(SCC)
AS = $(SAS)
ASFLAGS = -plosgff

CFLAGS = -I$(srcdir)/../../include -I. --std-c11

all: $(PORTDIR)/$(LIB) $(PORTDIR)/crt0.rel

$(PORTDIR)/crt0.rel: crt0.rel
	cp crt0.rel $(PORTDIR)/crt0.rel

$(PORTDIR)/$(LIB): $(OBJ) $(Z8OBJECTS) Makefile
ifeq ($(LIB_TYPE), SDCCLIB)
	rm -f $@; \
	$(top_builddir)/bin/sdcclib -a $@ $(OBJ) $(Z8OBJECTS)
else
  ifeq ($(LIB_TYPE), AR)
	$(top_builddir)/bin/sdar -rcSD $@ $(OBJ) $(Z8OBJECTS)
  else
    ifeq ($(LIB_TYPE), RANLIB)
	$(top_builddir)/bin/sdar -rcD $@ $(OBJ) $(Z8OBJECTS)
    else
	rm -f $@; \
	for i in $(basename $(OBJ) $(Z8OBJECTS)); do echo $$i >>$@; done
	cp $(OBJ) $(Z8OBJECTS) $(PORTDIR)
    endif
  endif
endif

%.rel: %.c
	$(CC) $(CFLAGS) -c $<

%.rel: %.s
	@# TODO: sdas should place it\'s output in the current dir
	test $(srcdir) = . || cp $< .
	-$(AS) $(ASFLAGS) $(notdir $<)
	test $(srcdir) = . || rm $(notdir $<)

%.rel: ../%.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f *.rel *.sym *.lst *~ $(CLEANSPEC) *.dump* *.asm *.lib

distclean: clean
	rm -f Makefile
