PRJDIR          = ../..

srcdir          = .
top_builddir    = .

include $(PRJDIR)/$(top_builddir)/Makefile.common

OBJECTS 	= packihx.o

SOURCES		= $(patsubst %.o,%.c,$(OBJECTS))

TARGET		= $(PRJDIR)/$(top_builddir)/bin/packihx$(EXEEXT)

all: $(TARGET)

install: all installdirs
	$(INSTALL) $(TARGET) $(DESTDIR)$(bindir)/`echo packihx|sed '$(transform)'`$(EXEEXT)
	$(STRIP) $(DESTDIR)$(bindir)/`echo packihx|sed '$(transform)'`$(EXEEXT)

# Deleting all the installed files
# --------------------------------
uninstall:
	rm -f $(DESTDIR)$(bindir)/`echo packihx|sed '$(transform)'`$(EXEEXT)

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
dep:

$(TARGET): $(OBJECTS)
	$(CC) $(LDFLAGS) -o $@ $(OBJECTS)

.c.o:
	$(CC) $(CFLAGS) $(CPPFLAGS) -c $< -o $@


checkconf:

include $(srcdir)/clean.mk
