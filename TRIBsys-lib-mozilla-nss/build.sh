#!/bin/sh
#
# we build nss and nspr together
#
${THOME}/build/unpack nss-3.22.1-with-nspr-4.12
cd nss-3.22.1
cd nss
gmake BUILD_OPT=1 NS_USE_GCC=1 NO_MDUPDATE=1 NSDISTMODE=copy nss_build_all
gmake BUILD_OPT=1 NS_USE_GCC=1 NO_MDUPDATE=1 NSDISTMODE=copy USE_64=1 nss_build_all
${THOME}/build/genpkg TRIBlib-nspr
${THOME}/build/genpkg TRIBsys-lib-mozilla-nss
