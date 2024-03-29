#
#
#

srcdir          = .
top_srcdir      = ..
top_builddir    = ..


include $(top_builddir)/Makefile.common

USE_ALT_LEX     = 0

PORTS           = $(shell cat ../ports.build)
ALLPORTS        = $(shell cat ../ports.all)
PORT_LIBS       = $(PORTS:%=%/port.a)

LIBS            = -lm 

CFLAGS          =  -pipe -ggdb -g -O2 -Wall -Wno-parentheses
CXXFLAGS        = -pipe -ggdb -g -O2 -Wall -Wno-parentheses
CPPFLAGS        += -I$(srcdir)
LDFLAGS         = 

ifdef SDCC_SUB_VERSION
CFLAGS          += -DSDCC_SUB_VERSION_STR=\"$(SDCC_SUB_VERSION)\"
endif

SLIBOBJS        = NewAlloc.o dbuf.o dbuf_string.o findme.o

OBJECTS         = SDCCy.o SDCChasht.o SDCCmain.o \
                  SDCCsymt.o SDCCopt.o SDCCast.o SDCCmem.o SDCCval.o \
                  SDCCicode.o SDCCbitv.o SDCCset.o SDCClabel.o \
                  SDCCBBlock.o SDCCloop.o SDCCcse.o SDCCcflow.o SDCCdflow.o \
                  SDCClrange.o SDCCptropt.o SDCCpeeph.o SDCCglue.o \
                  SDCCasm.o SDCCmacro.o SDCCutil.o SDCCdebug.o cdbFile.o SDCCdwarf2.o\
                  SDCCerr.o SDCCsystem.o SDCCgen.o

SPECIAL         = SDCCy.h 
ifeq ($(USE_ALT_LEX), 1)
OBJECTS         += altlex.o
SPECIAL         += reswords.h
else
OBJECTS         += SDCClex.o
endif

SLIBSOURCES     = $(patsubst %.o,$(SLIB)/%.c,$(SLIBOBJS))
SOURCES         := $(patsubst %.o,%.c,$(OBJECTS))

# C++ sources (.cc extension)
CXXSOURCES      += $(sort $(notdir $(wildcard $(srcdir)/*.cc)))
OBJECTS         += $(patsubst %.cc,%.o,$(CXXSOURCES))

TARGET          = $(top_builddir)/bin/sdcc$(EXEEXT)

# Compiling entire program or any subproject
# ------------------------------------------
all: checkconf version.h $(TARGET)

$(PORT_LIBS): FORCE 
	$(MAKE) -C $(dir $@)

FORCE:

$(top_builddir)/support/gc/libgc.a:
	$(MAKE) -C $(top_builddir)/support/gc

# Compiling and installing everything and runing test
# ---------------------------------------------------
install: all installdirs
	$(INSTALL) $(TARGET) $(DESTDIR)$(bindir)/`echo sdcc|sed '$(transform)'`$(EXEEXT)
	$(STRIP) $(DESTDIR)$(bindir)/`echo sdcc|sed '$(transform)'`$(EXEEXT)


# Deleting all the installed files
# --------------------------------
uninstall:
	rm -f $(DESTDIR)$(bindir)/`echo sdcc|sed '$(transform)'`$(EXEEXT)

# Performing self-test
# --------------------
check:


# Performing installation test
# ----------------------------
installcheck:


# Creating installation directories
# ---------------------------------
installdirs:
	$(INSTALL) -d $(DESTDIR)$(bindir)


# Creating dependencies
# ---------------------
dep: version.h Makefile.dep

Makefile.dep: version.h $(SOURCES) $(CXXSOURCES) $(SLIBSOURCES) $(SPECIAL)
	$(MAKEDEP) $(CPPFLAGS) $(filter %.c,$^) $(filter %.cc,$^) >Makefile.dep

# don't include Makefile.dep for the listed targets:
ifeq "$(findstring $(MAKECMDGOALS),uninstall check installcheck installdirs checkconf \
                                   clean distclean mostlyclean realclean)" ""
  -include Makefile.dep
endif
include $(srcdir)/clean.mk


# My rules
# --------
$(TARGET): $(SLIBOBJS) $(OBJECTS) $(PORT_LIBS)
	$(CXX) $(LDFLAGS) -o $@ $(SLIBOBJS) $(OBJECTS) $(PORT_LIBS) $(LIBDIRS) $(LIBS)

.c.o:
	$(CC) $(CFLAGS) $(CPPFLAGS) -c $< -o $@

$(SLIBOBJS):%.o:$(SLIB)/%.c
	$(CC) $(CFLAGS) $(CPPFLAGS) -c $< -o $@

reswords.h: reswords.gperf Makefile
	gperf -o -k1,2,4 -t -C -N is_reserved_word $< > $@

altlex.o: altlex.c SDCCy.h reswords.h

SDCCy.h: SDCCy.c

SDCCy.c: SDCC.y
	$(YACC) -d $<
	mv y.tab.c $*.c
	mv y.tab.h $*.h

SDCClex.c: SDCC.lex SDCCy.h
	$(LEX) -8 -f -t $< >$@

version.h: ../ChangeLog
	$(AWK) -f $(srcdir)/version.awk $< > $@

.l.c:
	rm -f $*.cc
	$(LEX) -t $< >$*.cc


# Remaking configuration
# ----------------------
checkconf:
	@if [ -f $(top_builddir)/devel ]; then\
	  $(MAKE) -f $(srcdir)/conf.mk srcdir="$(srcdir)" top_builddir="$(top_builddir)" \
	  freshconf;\
	fi

# End of main_in.mk/main.mk
