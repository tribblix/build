This is derived from the pkgsrc-joyent set for openjdk11
building on my openjdk11 set.

All patches -p0

JDK12:

openjdk12 fixes (besides fixing line number noise)

Do we really need the shell portability patches?

patch-make_autoconf_flags-ldflags.m4 - the file has changed, still
need to ifdef away the -O1 -relro

patch-make_lib_Lib-jdk.crypto.ec.gmk - again, the file is completely
different; just delete it as it works fine without

Build:

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk11 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-hotspot-gtest --disable-dtrace \
--disable-warnings-as-errors

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all
