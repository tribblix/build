This is derived from the pkgsrc-joyent set for openjdk11
building on my openjdk11 set.

Note: to build this on current systems requires a couple of changes
so you can either go downrev, or apply fixes/workarounds
1. It isn't compatible with gmake 4.3, using 4.2.1 is fine if you can
or look at the bug https://bugs.openjdk.org/browse/JDK-8237879 and apply
https://hg.openjdk.org/jdk/jdk/rev/0743e1d49930. This is now fixed
with jdk12-make.patch
2. It isn't compatible by default with gcc10, gcc7 is fine but with gcc10
you'll need to add -fcommon (the problem is that -fno-common is the default)

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
