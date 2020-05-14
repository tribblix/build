This is derived from the pkgsrc-joyent set for openjdk11, building on
my openjdk14 set.

Most patches -p0

JDK15:

jdk15 is likely to see more significant changes as it's cut from a
rapidly evolving trunk, whereas older versions were more static,
getting bugfixes on a relatively static base

This set currently based on jdk-15+23

openjdk15 fixes (besides fixing line number noise)

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

tribblix-main-23.patch
  The logic in Main.gmk 15+23 is broken for --disable-hotspot-gtest
  The target isn't properly guarded

Build:

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk14 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-hotspot-gtest --disable-dtrace \
--disable-warnings-as-errors \
--enable-deprecated-ports=yes

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all
