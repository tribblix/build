This is derived from the pkgsrc-joyent set for openjdk11
https://github.com/joyent/pkgsrc-joyent/tree/master/openjdk11

All patches -p0

Removed:

patch-make_autoconf_flags-other.m4 - breaks as
patch-make_autoconf_lib-bundled.m4 - breaks zlib
patch-make_lib_Lib-java.instrument.gmk - remove -liconv
patch-make_lib_Lib-jdk.jdwp.agent.gmk - remove -liconv

Modified:

patch-make_lib_Awt2dLibraries.gmk - remove -liconv
patch-make_launcher_LauncherCommon.gmk - breaks zlib
patch-make_launcher_Launcher-jdk.pack.gmk - breaks zlib

Anything named tribblix* is my additional patches:

tribblix-attachListener_solaris.patch
  fixes incorrect arguments

tribblix-flags-cflags.patch 
  remove SSP

tribblix-Launcher-jdk.patch
tribblix-LauncherCommon.patch
  KPIC -> fPIC

tribblix-agent-mt.patch
  remove -mt

Build:


env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk10 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-hotspot-gtest --disable-dtrace \
--disable-warnings-as-errors

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all
