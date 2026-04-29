#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# System perl (to replace 5.34), flags from omnios (so we're as
# compatible as possible)
#
${THOME}/build/unpack perl-5.42.2
cd perl-5.42.2
./Configure \
-Dusethreads \
-Duseshrplib \
-Dusemultiplicity \
-Duselargefiles \
-Duse64bitall \
-Dmyhostname="tribblix" \
-Umydomain \
-Dmyuname=sunos \
-Dcf_by=tribblix \
-Dcf_email=tribblix@gmail.com \
-Dcc="gcc -m64" \
-Dld=/usr/bin/ld \
-Doptimize="-O3" \
-Dvendorprefix=/usr/perl5/5.42 \
-Dprefix=/usr/perl5/5.42 \
-Dbin=/usr/perl5/5.42/bin \
-Dsitebin=/usr/perl5/5.42/bin \
-Dvendorbin=/usr/perl5/5.42/bin \
-Dscriptdir=/usr/perl5/5.42/bin \
-Dsitescript=/usr/perl5/5.42/bin \
-Dvendorscript=/usr/perl5/5.42/bin \
-Dprivlib=/usr/perl5/5.42/lib \
-Dsitelib=/usr/perl5/site_perl/5.42 \
-Dvendorlib=/usr/perl5/vendor_perl/5.42 \
-Ulocincpth= \
-Uloclibpth= \
-Dlibpth="/lib/amd64 /usr/lib/amd64" \
-Dlibs="-lsocket -lnsl -lm -lc" \
-des
gmake -j 8
gmake test
${THOME}/build/genpkg TRIBperl-542
cd ..
