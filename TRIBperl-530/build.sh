#!/bin/sh
#
# System perl (to replace 5.22), flags from omnios (so we're as
# compatible as possible)
#
${THOME}/build/unpack perl-5.30.1
cd perl-5.30.1
./Configure -Dusethreads -Duseshrplib -Dusemultiplicity -Duselargefiles \
-Duse64bitint -Dmyhostname="tribblix" \
-Dcc=gcc -Dld=/usr/bin/ld -Dccflags="-D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -D_TS_ERRNO" \
-Doptimize="-O3" \
-Dvendorprefix=/usr/perl5/5.30 -Dprefix=/usr/perl5/5.30 \
-Dbin=/usr/perl5/5.30/bin \
-Dsitebin=/usr/perl5/5.30/bin \
-Dvendorbin=/usr/perl5/5.30/bin \
-Dscriptdir=/usr/perl5/5.30/bin \
-Dsitescript=/usr/perl5/5.30/bin \
-Dvendorscript=/usr/perl5/5.30/bin \
-Dprivlib=/usr/perl5/5.30/lib \
-Dsitelib=/usr/perl5/site_perl/5.30 \
-Dvendorlib=/usr/perl5/vendor_perl/5.30 \
-des
gmake -j 8
gmake test
${THOME}/build/genpkg TRIBperl-530
