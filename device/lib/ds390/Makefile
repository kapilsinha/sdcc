# libc/ds390 Makefile


srcdir = .
top_builddir = ../../..

LIB_TYPE     = RANLIB

CC = $(top_builddir)/bin/sdcc

# override PORTDIR defined by super (parent) makefile
override PORTDIR = ../build/ds390

#VERBOSE = --verbose

OBJECTS = tinibios.rel memcpyx.rel lcd390.rel i2c390.rel rtc390.rel putchar.rel gptr_cmp.rel

SOURCES = $(patsubst %.rel,%.c,$(OBJECTS))

CPPFLAGS = -I$(srcdir)/../../include
CFLAGS = -mds390 $(CPPFLAGS) $(VERBOSE) --std-c11

all: $(OBJECTS) $(PORTDIR)/libds390.lib

clean:
	rm -f *.lst *.rel *.sym *.cdb *.asm \#* *~ *.rst *.hex
	rm -f *.ihx temp.lnk *.map *.lib

distclean: clean
	rm -f Makefile Makefile.dep

$(PORTDIR)/libds390.lib: $(OBJECTS)
ifeq ($(LIB_TYPE), SDCCLIB)
	rm -f $@; \
	$(top_builddir)/bin/sdcclib -a $@ $(OBJECTS)
else
  ifeq ($(LIB_TYPE), AR)
	$(top_builddir)/bin/sdar -rcSD $@ $(OBJECTS)
  else
    ifeq ($(LIB_TYPE), RANLIB)
	$(top_builddir)/bin/sdar -rcD $@ $(OBJECTS)
    else
	rm -f $@;
	for libfile in $(basename $(OBJECTS)); do echo $$libfile >>$@; done
	cp $(OBJECTS) $(PORTDIR)
    endif
  endif
endif

%.rel: %.c
	$(CC) -c $(CFLAGS) $<

# Creating dependencies
# ---------------------
depend: Makefile.dep

Makefile.dep: $(SOURCES)
	rm -f Makefile.dep
	for i in $^; do \
	  $(CC) -M $(CPPFLAGS) $$i >$${i}.dep; \
	  cat $${i}.dep >>Makefile.dep; \
	  rm $${i}.dep; \
	done

ifeq "$(findstring $(MAKECMDGOALS),clean distclean)" ""
  -include Makefile.dep
endif
