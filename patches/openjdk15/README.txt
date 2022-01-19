This is derived from the pkgsrc-joyent set for openjdk11, building on
my openjdk14 set.

Most patches -p0

JDK15:

jdk15 is likely to see more significant changes as it's cut from a
rapidly evolving trunk, whereas older versions were more static,
getting bugfixes on a relatively static base

Up to 15+24, mainline had solaris support. As of 15+25, JEP 381 has
removed that, so we have to put it back. This will have to be done far
more cleanly as things evolve, as the patches will be on an
increasingly divergent base.

As of 15+27, jdk15 is in rampdown so should be relatively stable.

This set currently based on jdk-15+33

openjdk15 fixes (besides fixing line number noise)

15.0.6

Again much patch noise.

15.0.5

Quite a lot of patch noise and failures here.
If patch noise was studio, just delete the patch entirely; some
rationalisation was beneficial.

NOTE:

make/hotspot/lib/CompileDtraceLibraries.gmk
is Studio-specific, but we disable dtrace anyway so never hit it

cc1plus: warning: unrecognized command line option '-Wno-cast-function-type'
That's to do with freetype, I think.

remove:

patch-make_autoconf_basics.m4

patch-make_autoconf_flags-ldflags.m4
  broken as of 15+19

modified:

patch-make_lib_Lib-jdk.crypto.ucrypto.gmk 
patch-make_lib_LibCommon.gmk 
tribblix-agent-mt.patch 
tribblix-demangle2.patch
patch-make_lib_Awt2dLibraries.gmk 
patch-make_launcher_LauncherCommon.gmk 
tribblix-LauncherCommon.patch 
  files moved around in 15+21

patch-make_autoconf_libraries.m4
tribblix-flags-cflags.patch
tribblix-flags-ldflags.patch
  surrounds changed

tribblix-LauncherCommon.patch

add:

tribblix-flags-ldflags3.patch
  fixes -pie and --shlib-undefined

tribblix-demangle1.patch 
tribblix-demangle2.patch 
tribblix-demangle3.patch 
tribblix-demangle4.patch 
  replace the studio demangle with the gcc one

Post JEP-381:

illumos-port-1.patch
  Drop use of UseLWPSynchronization (as opposed to restoring it)
illumos-port-2.patch
  Restore native fopen/fclose/pathconf in
  src/java.base/unix/native/libnio/fs/UnixNativeDispatcher.c
illumos-port-3.patch
  and the java counterpart
illumos-port-4.patch
  restore newFileChannel variant that solaris uses
illumos-port-5.patch
  restore isSpecial() - this is one that should be fixed at the consumer

Build:

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk14 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-dtrace \
--disable-warnings-as-errors \
--enable-deprecated-ports=yes \
--with-jobs=3

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all
