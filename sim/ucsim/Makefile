#
# uCsim Makefile
#
# (c) Drotos Daniel, Talker Bt. 1997,99
#

STARTYEAR	= 1997

SHELL		= /bin/sh

include packages.mk
#PKGS		= cmd.src sim.src gui.src s51.src avr.src z80.src pdk.src doc


srcdir		= .

top_builddir	= .
top_srcdir	= .

# Compiling entire program or any subproject
# ------------------------------------------
all: checkconf #libs apps
	$(MAKE) libs
	$(MAKE) apps

libs: main_all cmd_src_all sim_src_all gui_src_all

main_all:
	$(MAKE) -f main.mk all

cmd_src_all:
	$(MAKE) -C cmd.src cmd.src

sim_src_all:
	$(MAKE) -C sim.src sim.src

gui_src_all:
	$(MAKE) -C gui.src gui.src


apps: $(PKGS) main_app

main_app:
	$(MAKE) -f main.mk main_app


.PHONY: $(PKGS)

$(PKGS):
	$(MAKE) -C $@ $@

#main_libs: main.mk
#	$(MAKE) -f main.mk libs


# Compiling and installing everything and runing test
# ---------------------------------------------------
.PHONY: install INSTALL Install
install:
	$(MAKE) -f main.mk install
	@for pkg in $(PKGS); do\
	  $(MAKE) -C $$pkg install ;\
	done


# Deleting all the installed files
# --------------------------------
uninstall:
	$(MAKE) -f main.mk uninstall
	@for pkg in $(PKGS); do\
	  $(MAKE) -C $$pkg uninstall ;\
	done


# Deleting all files created by building the program
# --------------------------------------------------
clean:
	$(MAKE) -f $(srcdir)/clean.mk clean EXEEXT=$(EXEEXT)
	@for pkg in $(PKGS_ALL); do\
	  $(MAKE) -C $$pkg -f ../$(srcdir)/$$pkg/clean.mk clean EXEEXT=$(EXEEXT) ;\
	done


# Deleting all files created by configuring or building the program
# -----------------------------------------------------------------
distclean: clean
	$(MAKE) -f $(srcdir)/clean.mk distclean
	@for pkg in $(PKGS_ALL); do\
	  $(MAKE) -C $$pkg -f ../$(srcdir)/$$pkg/clean.mk distclean ;\
	done
	rm -rf doc/*~ doc/*.bak Makefile packages.mk libtool
	$(MAKE) -C example clean
	$(MAKE) -C s51.src/test clean
	$(MAKE) -C stm8.src/test clean
	$(MAKE) -C tlcs.src/test clean
	$(MAKE) -C z80.src/test clean


# Like clean but some files may still exist
# -----------------------------------------
mostlyclean: clean
	$(MAKE) -f clean.mk mostlyclean
	@for pkg in $(PKGS_ALL); do\
	  $(MAKE) -C $$pkg -f ../$(srcdir)/$$pkg/clean.mk mostlyclean ;\
	done


# Deleting everything that can reconstructed by this Makefile. It deletes
# everything deleted by distclean plus files created by bison, stc.
# -----------------------------------------------------------------------
realclean: distclean
	$(MAKE) -f clean.mk realclean
	@for pkg in $(PKGS_ALL); do\
	  $(MAKE) -C $$pkg -f ../$(srcdir)/$$pkg/clean.mk realclean ;\
	done


# Performing self-test
# --------------------
check:
	$(MAKE) -f main.mk check
	@for pkg in $(PKGS); do\
	  $(MAKE) -C $$pkg check ;\
	done

test:
	$(MAKE) -f main.mk test
	@for pkg in $(PKGS); do\
	  $(MAKE) -C $$pkg test ;\
	done


# Performing installation test
# ----------------------------
installcheck:


# Creating dependencies
# ---------------------
dep:
	$(MAKE) -f main.mk dep
	@for pkg in $(PKGS); do\
	  $(MAKE) -C $$pkg dep ;\
	done


# My rules
# --------
putcopyright:
	'./put(c)' -s $(STARTYEAR) *.cc *.h *.y *.l


# Remaking configuration
# ----------------------
configure: configure.ac
	@$(top_srcdir)/mkecho $(top_builddir) "RE-CREATING CONFIGURE"
	autoconf configure.ac >configure
	chmod 755 configure

config.status: configure
	@$(top_srcdir)/mkecho $(top_builddir) "RE-CHECKING CONFIGURATION (re-creating config.status from configure)"
	@if [ -x ./config.status ]; then \
	  ./config.status -recheck;\
	else\
	  if [ -x ./conf ]; then\
	    ./conf;\
	  else\
	    ./configure;\
	  fi\
	fi

makefiles: config.status
	@$(top_srcdir)/mkecho $(top_builddir) "RE-MAKING MAKEFILES"
	$(SHELL) ./config.status

main.mk: $(srcdir)/main_in.mk config.status
	@$(top_srcdir)/mkecho $(top_builddir) "RE-MAKING MAIN.MK"
	$(SHELL) ./config.status

freshconf: echo_freshconf configure main.mk ddconfig.h

ddconfig.h: ddconfig_in.h config.status
	$(SHELL) ./config.status

echo_freshconf:
	@$(top_srcdir)/mkecho $(top_builddir) "FRESHCONF"

checkconf:
	@$(top_srcdir)/mkecho $(top_builddir) "CHECKCONF"
	@if [ -f devel ]; then $(MAKE) freshconf; fi

# End of Makefile
