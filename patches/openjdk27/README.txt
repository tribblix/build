JDK 27 now that jdk26 has been branched off.

Cleanup: errno alignment with 8366272

27+1

No changes.

27+0

Start with no changes from 26+27. (Still reports as 26.)

Patch cleanup, merged all the flags-ldflags patch hunks into a single
file, and all patches now -p1.

Build:

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk25 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-warnings-as-errors \
--with-source-date=current \
--with-jobs=4 \
DATE=/usr/gnu/bin/date \
LOCALE=/bin/true \
STRIP=/usr/gnu/bin/strip

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake product-images
