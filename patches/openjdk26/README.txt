JDK 26 now that jdk25 has been branched off.

IMPORTANT: note that the build target has changed, from 'all' to
'product-images', as 'all' tries to build a static image which doesn't
work.

26+1

No changes needed.

26+0

Start with no changes from 25+26. (Still reports as 25.)

Build:

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk24 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-warnings-as-errors \
--with-source-date=current \
--with-jobs=4 \
DATE=/usr/gnu/bin/date \
LOCALE=/bin/true \
STRIP=/usr/gnu/bin/strip

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake product-images
