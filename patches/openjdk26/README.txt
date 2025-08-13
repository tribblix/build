JDK 26 now that jdk25 has been branched off.

IMPORTANT: note that the build target has changed, from 'all' to
'product-images', as 'all' tries to build a static image which doesn't
work.

Cleanup: remove custom redefinition of NULL (as NULL has been replaced
by nullptr everywhere in hotspot).

Cleanup: last mention of STACK_BIAS.

Cleanup: Tidy up attach code.

26+10

Trivial patch noise.

26+9

Minor patch noise, due to header order shuffling.

26+6, 26+7, 26+8

Trivial patch noise.

26+5

Remove os::elapsedVTime() and hrtime_hz.

26+4

Removed c{1,2}_globals_solaris.hpp like the other oses did.

26+3

Minor patch noise.

Unfortunately, NMT has started to use variable names like  _B and ES
that conflict with common macro names in our headers. For now, undef
them in globalDefinitions_gcc.hpp.

26+2

os::jvm_path has been centralized.

Cleanup: remove SPARC-only pack64/unpack64.

Cleanup: tidy away legacy code from NetworkInterface.

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
