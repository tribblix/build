This is derived from the pkgsrc-joyent set for openjdk11, building on
my openjdk12 set.

13.0.12

Build broken by https://www.illumos.org/issues/14418. That did 2
things -  (1) exposed memcntl and meminfo by default, and (2) changed
the signature for memcntl from caddr_t to void so there's a
mismatch. The fix adopted is to modify the internal java signature for
memcntl to the new version, which still allows builds on older
releases as the old definition in sys/mman.h was effectively invisible
there. See illumos-port-7.patch.

13.0.10

fixed up patch-make_lib_Awt2dLibraries.gmk

13.0.9
A reasonable amount of patch noise.

Need to add illumos-port-6.patch

JDK13:
openjdk13 fixes (besides fixing line number noise)

patch-make_lib_Awt2dLibraries.gmk - first hunk already fixed

patch-make_hotspot_lib_JvmOverrideFiles.gmk
tribblix-agent-mt.patch
patch-make_lib_Lib-jdk.crypto.ucrypto.gmk
patch-make_lib_Awt2dLibraries.gmk
patch-make_hotspot_gensrc_GensrcDtrace.gmk
patch-make_hotspot_gensrc_GensrcAdlc.gmk
patch-make_hotspot_lib_CompileJvm.gmk
  $(OPENJDK_BUILD_OS) -> $(call isBuildOs, )
  $(OPENJDK_TARGET_OS) -> $(call isTargetOs, )
  and similar patterns

tribblix-flags-cflags.patch
  comment is different
  add extra patch to default to -std=gnu99 rather than c99

patch-make_autoconf_flags-ldflags.m4
  hunk 2 broken as of 13.0.3

tribblix-flags-ldflags3.patch
  fix -pie and --shlib-undefined

tribblix-demangle1.patch
tribblix-demangle2.patch
tribblix-demangle3.patch
tribblix-demangle4.patch
  use the gcc demangle rather than the Studio demangle

Build:


env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk12 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-hotspot-gtest --disable-dtrace \
--disable-warnings-as-errors

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all
