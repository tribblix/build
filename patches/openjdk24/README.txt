 This is originally derived from the pkgsrc-joyent set for openjdk11,
considerably modified. Cut from the jdk15 patches as of jdk15+32.

See also README-zero.txt for note on a project zero variant.

JDK 24 now that jdk23 has been branched off.

24+5

Trivial patch noise.

24+4

Offsets due to os::committed_in_range() implementation. The guards
are plain wrong, so needed to correct them in illumos-port-28.patch

24+3

Wants an os::rss() implementation; return 0 for now, just like AIX does
(and other platforms return 0 as the "don't know" answer).

24+2

Trivial patch noise.

24+0, 24+1

Start with no changes from 23+26.

Build:

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk22 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-dtrace \
--disable-warnings-as-errors \
--with-source-date=current \
--with-jobs=4 \
DATE=/usr/gnu/bin/date \
STRIP=/usr/gnu/bin/strip

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all
