#!/bin/sh
#
# System perl (to replace 510), flags from omnios (so we're as
# compatible as possible)
#
${THOME}/build/unpack perl-5.22.0
cd perl-5.22.0
./Configure -Dusethreads -Duseshrplib -Dusemultiplicity -Duselargefiles \
-Duse64bitint -Dmyhostname="tribblix" \
-Dcc=gcc -Dld=/usr/bin/ld -Dccflags="-D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -D_TS_ERRNO" \
-Doptimize="-O3" \
-Dvendorprefix=/usr/perl5/5.22.0 -Dprefix=/usr/perl5/5.22.0 \
-Dbin=/usr/perl5/5.22.0/bin \
-Dsitebin=/usr/perl5/5.22.0/bin \
-Dvendorbin=/usr/perl5/5.22.0/bin \
-Dscriptdir=/usr/perl5/5.22.0/bin \
-Dsitescript=/usr/perl5/5.22.0/bin \
-Dvendorscript=/usr/perl5/5.22.0/bin \
-Dprivlib=/usr/perl5/5.22.0/lib \
-Dsitelib=/usr/perl5/site_perl/5.22.0 \
-Dvendorlib=/usr/perl5/vendor_perl/5.22.0 \
-des
gmake -j 8
gmake test
rm -fr /tmp/pp ; gmake install DESTDIR=/tmp/pp
${THOME}/build/create_pkg TRIBperl-522 /tmp/pp
