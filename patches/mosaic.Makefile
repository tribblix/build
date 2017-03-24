##
## Toplevel Makefile for all Makefiles
##

##
## Scott Powers
## Cameron Kaiser
## and a cast of probably two or three people
##

CKVERS=27ck9

all: dev_$(DEV_ARCH)

list: dev_
help: dev_
dev_::
	@echo "You must specify one of the following or set the environment variable"
	@echo "[DEV_ARCH] to one of the following:"
	@echo "-- CURRENTLY SUPPORTED --"
	@echo "  ppcmt -- PowerPC running Power MachTen 4.1.4 or higher"
	@echo "  osx -- Mac OS X 10.4+ PPC OR x86 (earlier possible but unsupported)"
	@echo "  linux -- Current Linux 2.x"
	@echo "  illumos -- Modern Solaris/OpenSolaris/illumos"
	@echo "-- USE SOMETHING ELSE UNLESS YOU KNOW WHAT YOU'RE DOING --"
	@echo "  uosx -- Universal Binary Mac OS X 10.4+"
	@echo "-- ARCHIVAL (AT YOUR OWN RISK) --"
	@echo "  alpha -- DEC Alpha AXP running OSF/1"
	@echo "  bsdi -- x86 running BSDI BSD/OS 2.1"
	@echo "  dec -- DEC 2100 running Ultrix 4.3"
	@echo "  hp -- HP 9000/735 running HP-UX A.09.01"
	@echo "  ibm -- IBM RS6000 running AIX 4.4 BSD"
	@echo "  indy -- SGI Indy running IRIX 5.3"
	@echo "  linux1 -- x86 running Linux 1.2.13 DYNAMIC"
	@echo "  linux1-static -- x86 running Linux 1.2.13 ALL STATIC"
	@echo "  linux1-static-motif -- x86 running Linux 1.2.13 STATIC MOTIF"
	@echo "  sco -- x86 running SCO System V 3.2"
	@echo "  sgi -- SGI Iris running IRIS 4.0.2"
	@echo "  solaris-23 -- SPARCstation 20 running Solaris 2.3"
	@echo "  solaris-24 -- SPARCstation 20 running Solaris 2.4"
	@echo "  solaris-24-x86 -- x86 running Solaris 2.4 for x86"
	@echo "  sun -- SPARCserver 690MP running SunOS 4.1.3"
	@echo "  sun-lresolv -- SPARCserver 690MP running SunOS 4.1.3"
	@echo " "
	@echo "To make a Purify or Quantify version of Mosaic, put a 'p_' or"
	@echo "  'q_' in front of the platform. (NOT SUPPORTED EITHER)"
	@echo "If your OS is not listed, you will need to copy one of the"
	@echo "  the Makefiles.OS in the 'makefiles' directory, edit it for"
	@echo "  your system, edit this Makefile to add your system, compile,"
	@echo "  and send in your changes to: ckaiser@floodgap.com."

purifyd:
	$(MAKE) p_$(DEV_ARCH)

quantifyd:
	$(MAKE) q_$(DEV_ARCH)

rm_and_touch:
	@rm -f config.h
	@touch config.h

####### THESE ARE THE SUPPORTED TARGETS! #######

dev_uosx: rm_and_touch uosx
uosx: rm_and_touch
	$(MAKE) -f makefiles/Makefile.uosx DEV_ARCH=uosx
p_uosx: rm_and_touch
	$(MAKE) -f makefiles/Makefile.uosx purifyd DEV_ARCH=uosx
q_uosx: rm_and_touch
	$(MAKE) -f makefiles/Makefile.uosx quantifyd DEV_ARCH=uosx

dev_osx: rm_and_touch osx
osx: rm_and_touch
	$(MAKE) -f makefiles/Makefile.osx DEV_ARCH=osx
p_osx: rm_and_touch
	$(MAKE) -f makefiles/Makefile.osx purifyd DEV_ARCH=osx
q_osx: rm_and_touch
	$(MAKE) -f makefiles/Makefile.osx quantifyd DEV_ARCH=osx

dev_ppcmt: rm_and_touch ppcmt
ppcmt: rm_and_touch
	$(MAKE) -f makefiles/Makefile.ppcmt DEV_ARCH=ppcmt
p_ppcmt: rm_and_touch
	$(MAKE) -f makefiles/Makefile.ppcmt purifyd DEV_ARCH=ppcmt
q_ppcmt: rm_and_touch
	$(MAKE) -f makefiles/Makefile.ppcmt quantifyd DEV_ARCH=ppcmt

####### THESE ARE NOT! #######

dev_alpha: rm_and_touch alpha
alpha: rm_and_touch
	$(MAKE) -f makefiles/Makefile.alpha DEV_ARCH=alpha
p_alpha: rm_and_touch
	$(MAKE) -f makefiles/Makefile.alpha purifyd DEV_ARCH=alpha
q_alpha: rm_and_touch
	$(MAKE) -f makefiles/Makefile.alpha quantifyd DEV_ARCH=alpha

dev_bsdi: rm_and_touch bsdi
bsdi: rm_and_touch
	$(MAKE) -f makefiles/Makefile.bsdi DEV_ARCH=bsdi
p_bsdi: rm_and_touch
	$(MAKE) -f makefiles/Makefile.bsdi purifyd DEV_ARCH=bsdi
q_bsdi: rm_and_touch
	$(MAKE) -f makefiles/Makefile.bsdi quantifyd DEV_ARCH=bsdi

dev_dec: rm_and_touch dec
dec: rm_and_touch
	$(MAKE) -f makefiles/Makefile.dec DEV_ARCH=dec
p_dec: rm_and_touch
	$(MAKE) -f makefiles/Makefile.dec purifyd DEV_ARCH=dec
q_dec: rm_and_touch
	$(MAKE) -f makefiles/Makefile.dec quantifyd DEV_ARCH=dec

dev_hp: rm_and_touch hp
hp: rm_and_touch
	$(MAKE) -f makefiles/Makefile.hp DEV_ARCH=hp
p_hp: rm_and_touch
	$(MAKE) -f makefiles/Makefile.hp purifyd DEV_ARCH=hp
q_hp: rm_and_touch
	$(MAKE) -f makefiles/Makefile.hp quantifyd DEV_ARCH=hp

dev_ibm: rm_and_touch ibm
ibm: rm_and_touch
	$(MAKE) -f makefiles/Makefile.ibm DEV_ARCH=ibm
p_ibm: rm_and_touch
	$(MAKE) -f makefiles/Makefile.ibm purifyd DEV_ARCH=ibm
q_ibm: rm_and_touch
	$(MAKE) -f makefiles/Makefile.ibm quantifyd DEV_ARCH=ibm

dev_indy: rm_and_touch indy
indy: rm_and_touch
	$(MAKE) -f makefiles/Makefile.indy DEV_ARCH=indy
p_indy: rm_and_touch
	$(MAKE) -f makefiles/Makefile.indy purifyd DEV_ARCH=indy
q_indy: rm_and_touch
	$(MAKE) -f makefiles/Makefile.indy quantifyd DEV_ARCH=indy

dev_linux: rm_and_touch linux
linux: rm_and_touch
	$(MAKE) -f makefiles/Makefile.linux DEV_ARCH=linux
p_linux: rm_and_touch
	$(MAKE) -f makefiles/Makefile.linux purifyd DEV_ARCH=linux
q_linux: rm_and_touch
	$(MAKE) -f makefiles/Makefile.linux quantifyd DEV_ARCH=linux

dev_linux1: rm_and_touch linux1
linux1: rm_and_touch
	$(MAKE) -f makefiles/Makefile.linux1 DEV_ARCH=linux
p_linux1: rm_and_touch
	$(MAKE) -f makefiles/Makefile.linux1 purifyd DEV_ARCH=linux
q_linux1: rm_and_touch
	$(MAKE) -f makefiles/Makefile.linux1 quantifyd DEV_ARCH=linux

dev_linux1_static: rm_and_touch linux1_static
linux1_static: rm_and_touch
	$(MAKE) -f makefiles/Makefile.linux1 staticd DEV_ARCH=linux
p_linux1_static: rm_and_touch
	$(MAKE) -f makefiles/Makefile.linux1 p_staticd DEV_ARCH=linux
q_linux1_static: rm_and_touch
	$(MAKE) -f makefiles/Makefile.linux1 q_staticd DEV_ARCH=linux

dev_linux1_static_motif: rm_and_touch linux1_static_motif
linux1_static_motif: rm_and_touch
	$(MAKE) -f makefiles/Makefile.linux1 static_motifd DEV_ARCH=linux
p_linux1_static_motif: rm_and_touch
	$(MAKE) -f makefiles/Makefile.linux1 p_static_motifd DEV_ARCH=linux
q_linux1_static_motif: rm_and_touch
	$(MAKE) -f makefiles/Makefile.linux1 q_static_motifd DEV_ARCH=linux

dev_sco: rm_and_touch sco
sco: rm_and_touch
	$(MAKE) -f makefiles/Makefile.sco DEV_ARCH=sco
p_sco: rm_and_touch
	$(MAKE) -f makefiles/Makefile.sco purifyd DEV_ARCH=sco
q_sco: rm_and_touch
	$(MAKE) -f makefiles/Makefile.sco quantifyd DEV_ARCH=sco

dev_sgi: rm_and_touch sgi
sgi: rm_and_touch
	$(MAKE) -f makefiles/Makefile.sgi DEV_ARCH=sgi
p_sgi: rm_and_touch
	$(MAKE) -f makefiles/Makefile.sgi purifyd DEV_ARCH=sgi
q_sgi: rm_and_touch
	$(MAKE) -f makefiles/Makefile.sgi quantifyd DEV_ARCH=sgi

dev_solaris-23: rm_and_touch solaris-23
solaris-23: rm_and_touch
	$(MAKE) -f makefiles/Makefile.solaris-23 DEV_ARCH=solaris-23
p_solaris-23: rm_and_touch
	$(MAKE) -f makefiles/Makefile.solaris-23 purifyd DEV_ARCH=solaris-23
q_solaris-23: rm_and_touch
	$(MAKE) -f makefiles/Makefile.solaris-23 quantifyd DEV_ARCH=solaris-23

dev_solaris-24: rm_and_touch solaris-24
solaris-24: rm_and_touch
	$(MAKE) -f makefiles/Makefile.solaris-24 DEV_ARCH=solaris-24
p_solaris-24: rm_and_touch
	$(MAKE) -f makefiles/Makefile.solaris-24 purifyd DEV_ARCH=solaris-24
q_solaris-24: rm_and_touch
	$(MAKE) -f makefiles/Makefile.solaris-24 quantifyd DEV_ARCH=solaris-24

dev_solaris-24-x86: rm_and_touch solaris-24-x86
solaris-24-x86: rm_and_touch
	$(MAKE) -f makefiles/Makefile.solaris-24-x86 DEV_ARCH=solaris-24-x86
p_solaris-24-x86: rm_and_touch
	$(MAKE) -f makefiles/Makefile.solaris-24-x86 purifyd DEV_ARCH=solaris-24-x86
q_solaris-24-x86: rm_and_touch
	$(MAKE) -f makefiles/Makefile.solaris-24-x86 quantifyd DEV_ARCH=solaris-24-x86

dev_illumos: rm_and_touch illumos
illumos: rm_and_touch
	$(MAKE) -f makefiles/Makefile.illumos DEV_ARCH=illumos
p_illumos: rm_and_touch
	$(MAKE) -f makefiles/Makefile.illumos purifyd DEV_ARCH=illumos
q_illumos: rm_and_touch
	$(MAKE) -f makefiles/Makefile.illumos quantifyd DEV_ARCH=illumos

dev_sun: rm_and_touch sun
sun: rm_and_touch
	$(MAKE) -f makefiles/Makefile.sun DEV_ARCH=sun
p_sun: rm_and_touch
	$(MAKE) -f makefiles/Makefile.sun purifyd DEV_ARCH=sun
q_sun: rm_and_touch
	$(MAKE) -f makefiles/Makefile.sun quantifyd DEV_ARCH=sun

dev_sun-lresolv: rm_and_touch sun-lresolv
sun-lresolv: rm_and_touch
	$(MAKE) -f makefiles/Makefile.sun-lresolv DEV_ARCH=sun-lresolv
p_sun-lresolv: rm_and_touch
	$(MAKE) -f makefiles/Makefile.sun-lresolv purifyd DEV_ARCH=sun-lresolv
q_sun-lresolv: rm_and_touch
	$(MAKE) -f makefiles/Makefile.sun-lresolv quantifyd DEV_ARCH=sun-lresolv

clean:
	cd libXmx; $(MAKE) clean
	cd libdtm; $(MAKE) clean
	cd libhtmlw; $(MAKE) clean
	cd libnet; $(MAKE) clean
	cd libnut; $(MAKE) clean
	cd libwww2; $(MAKE) clean
	cd src; $(MAKE) clean MOSAIC="Mosaic"
	rm -f motifmaclauncher/mosaic-mml motifmaclauncher/mosaic-mml-wtf
	rm -rf motifmaclauncher/build
	@echo "Done cleaning..."

dist: clean targz

targz:
	cd .. ; rm -f mosaic$(CKVERS).tar* ; tar cvf mosaic$(CKVERS).tar mosaic$(CKVERS) ; gzip mosaic$(CKVERS).tar

