This is originally derived from the pkgsrc-joyent set for openjdk11,
considerably modified. Cut from the jdk15 patches as of jdk15+32.

See also README-zero.txt for patches to build a project zero variant.

Most patches -p0

JDK 19 now that jdk18 has been forked off.

19-13

Minor patch noise.

19-12

ThreadCritical has been merged into Posix. I've simply deleted
the Solaris one. I'm not 100% sure this is correct as the Solaris
implementation uses Solaris threads as opposed to Posix threads, and
has a bunch of caveats around it, but testing hasn't shown any problem
yet.

Removed the INCLUDE_NMT patch for init.cpp

19-11

Needed to restore src/hotspot/share/services/dtraceAttacher.hpp
See illumos-port-17.patch.
This file should have been removed in the original solaris
deprecation along with the corresponding cpp file, but was forgoteen
about, and has recently been cleaned up. As we still #include it, we
need to put it back. As we disable DTrace in any case, it would be
cleaner to simply remove all of it.

19-8,19-9,19-10

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
