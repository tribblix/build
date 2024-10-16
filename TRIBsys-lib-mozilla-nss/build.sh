#!/bin/sh
#
# we build nss and nspr together
#
# IMPORTANT: you must rename (or symlink) the downloaded tarball to just
# reflect the bare nss version so it has the same name as the directory it
# unpacks into, else the patches won't get applied
#
# ln -s nss-3.93-with-nspr-4.35.tar.gz	nss-3.93.tar.gz
#
# build using the system sqlite, as the in-tree one gets built incorrectly
#
${THOME}/build/unpack nss-3.93
cd nss-3.93/nss
gmake NSS_USE_SYSTEM_SQLITE=1 BUILD_OPT=1 NS_USE_GCC=1 NO_MDUPDATE=1 NSDISTMODE=copy nss_build_all
gmake NSS_USE_SYSTEM_SQLITE=1 BUILD_OPT=1 NS_USE_GCC=1 NO_MDUPDATE=1 NSDISTMODE=copy USE_64=1 nss_build_all
${THOME}/build/genpkg TRIBlib-nspr
${THOME}/build/genpkg TRIBsys-lib-mozilla-nss
