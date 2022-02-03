This is originally derived from the pkgsrc-joyent set for openjdk11,
considerably modified. Cut from the jdk15 patches as of jdk15+32.

See also README-zero.txt for patches to build a project zero variant.

Most patches -p0

JDK 19 now that jdk18 has been forked off.

19-8

Minor patch noise.

19-7

Don't patch update_copyright_year.sh, our awk is now nawk anyway
Fair amount of patch noise.

java.lang.ProcessImpl.java has some SunOS-specific code, and there's
other code we rely on that got removed; I've reverted that in
illumos-port-16.patch so we can get the build to complete, but need to
go back and look at it to see if we actually need the
platform-specific wreckage here.

19-6

Minor patch noise.

19-5

The copy_x86 implementation has been centralised, so
copy_solaris_x86.hpp is now essentially empty

19-4

Minor patch noise

19-3

Minor patch noise
FilterSpuriousWakeups removed

19-2

vm_version rework
new OSThread() signature change

Build:

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk17 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-dtrace \
--disable-warnings-as-errors \
--enable-deprecated-ports=yes \
--with-jobs=3

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all
