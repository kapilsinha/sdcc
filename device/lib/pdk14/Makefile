# libc/pdk14 Makefile


srcdir = .
top_builddir = ../../..

LIB_TYPE     = RANLIB

SCC = $(top_builddir)/bin/sdcc -mpdk14
SAS = $(top_builddir)/bin/sdaspdk14

# override PORTDIR defined by super (parent) makefile
override PORTDIR = ../build/pdk14

include $(srcdir)/../incl.mk

PDK14_FLOAT = $(COMMON_FLOAT)

PDK14_INT = $(COMMON_INT) \
  _muluchar.c \
  _mulschar.c \
  _mulint.c \
  _divuchar.c \
  _divschar.c \
  _divuint.c \
  _divsint.c \
  _moduchar.c \
  _modschar.c \
  _moduint.c \
  _modsint.c

PDK14_LONG = $(COMMON_LONG) \
  _divulong.c \
  _mullong.c

PDK14_LONGLONG = $(COMMON_LONGLONG) \
  _rrulonglong.c \
  _rrslonglong.c \
  _rlulonglong.c \
  _rlslonglong.c \
  _mullonglong.c \
  _divslonglong.c \
  _divulonglong.c \
  _modslonglong.c \
  _modulonglong.c

PDK14_SDCC = $(COMMON_SDCC) \
  _itoa.c \
  _startup.c \
  _strcmp.c \
  _strcpy.c \
  _strlen.c \
  _memmove.c \
  __memcpy.c \
  memcpy.c \
  sprintf.c \
  vprintf.c

PDK14SOURCES = $(addprefix ../,$(PDK14_FLOAT) $(PDK14_INT) $(PDK14_LONG) $(PDK14_LONGLONG) $(PDK14_SDCC))
PDK14OBJECTS = $(patsubst %.c,%.rel,$(PDK14_FLOAT) $(PDK14_INT) $(PDK14_LONG) $(PDK14_LONGLONG) $(PDK14_SDCC))

OBJ = __gptrget.rel __gptrget2.rel heap.rel __setjmp.rel

LIB = pdk14.lib
CC = $(SCC)
AS = $(SAS)
ASFLAGS = -plosgff

CFLAGS = -I$(srcdir)/../../include -I. --std-c11

all: $(PORTDIR)/$(LIB)

$(PORTDIR)/$(LIB): $(OBJ) $(PDK14OBJECTS) Makefile
ifeq ($(LIB_TYPE), SDCCLIB)
	rm -f $@; \
	$(top_builddir)/bin/sdcclib -a $@ $(OBJ) $(PDK14OBJECTS)
else
  ifeq ($(LIB_TYPE), AR)
	$(top_builddir)/bin/sdar -rcSD $@ $(OBJ) $(PDK14OBJECTS)
  else
    ifeq ($(LIB_TYPE), RANLIB)
	$(top_builddir)/bin/sdar -rcD $@ $(OBJ) $(PDK14OBJECTS)
    else
	rm -f $@
	for i in $(basename $(OBJ) $(PDK14OBJECTS)); do echo $$i >>$@; done
	cp $(OBJ) $(PDK14OBJECTS) $(PORTDIR)
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

