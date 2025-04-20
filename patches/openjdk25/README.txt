JDK 25 now that jdk24 has been branched off.

IMPORTANT: note that the build target has changed, from 'all' to
'product-images', as 'all' tries to build a static image which doesn't
work.

Cleanup: more dtrace fixes.

Cleanup: Correct DTRACE_INSTRUMENTED_OBJS.

Cleanup: NULL in os/solaris.

Fix: Correct type argument to sema_init.

Cleanup: Duplicate check for SC_CLK_TCK.

Cleanup: Trust gethostname rather than second-guessing.

Cleanup: Remove unused OPENJDK_$1_CPU_ISADIR.

25+19

Minor patch noise.

Rework jvm_path() to match other platforms, as sun_java_launcher_is_altjvm()
has been removed.

Cleanup: Remove more Studio-specific flags, still present in
DTrace. This doesn't make DTrace build, but is one problem less.

25+18

Minor patch noise.

Cleanup: Remove the use of lp rather than lpr; all supported systems
can or even should be using CUPS rather than legacy lp.

Cleanup: Remove /usr/bin/sh override in PrintServiceLookupProvider.java.

Cleanup: nullptr in solaris_x86.

Cleanup: remove unused first argument to mpss_sanity_check().

Cleanup: remove unused large_page_range.

Cleanup: remove cond_init and friends. They were defined as the
pthread equivalents but aren't used anywhere any more.

25+17

Minor patch noise.

Boot jdk is now jdk24.

Cleanup: Define -D_REENTRANT for non-gcc (ie clang) builds

Cleanup: Replacing usage of NULL with nullptr.

25+16

Minor patch noise.

25+15

More mucking about with Makefiles

Removed AttachOperationFunctionInfo and enable_dprobes from
attachListener, failed to compile.

25+14

The Makefiles around threading libraries were reworked. While tidying
that up, as all current versions of Solaris and illumos don't need any
explicit threading libraries at all, it's all in libc, remove use of
-lthread.

25+13

Trivial patch noise.

Removal of c1 and c2 in src/hotspot/os/solaris/vmStructs_solaris.hpp.

25+12

Trivial patch noise.

Cleanup: remove unused register stack functions. See the bug
8253457: Remove unimplemented register stack functions
The change for that not only removed the itanium only register
stack functions, but also the base_of_stack_pointer routines
which I keep for now as they were implemented and used on sparc.

Cleanup: closer alignment of formatting in os and os_cpu with the
corresponding linux files, to make it easier to identify genuine
differences between the port.

Cleanup: Remove unused global UseOSErrorReporting.

Cleanup: Remove the mapfile fragments in make/hotspots/symbols;
they're in the wrong place and no longer used as of 23+12.

25+11

Minor patch noise.

Needed to fix pipewire, add an extra hunk to illumos-port-27.patch

25+10

Much patch noise, it appears there's an attempt to guard Makefiles
against multiple inclusion.

Cleanup: Remove long unused sysThreadAvailableStackWithSlack()

Cleanup: Remove Execution protection violation code, which was only
for 32-bit, guarded on other platforms, and disabled by default.

Cleanup: configure by forcing LOCALE to /bin/true, rather than setting
SORT. This falls back to the C locale (the configure emits a warning
to say so), which works on both illumos and Solaris 11, unlike the
SORT fix which only works on illumos.

Cleanup: Remove 32-bit x86 paths.

25+9

Trivial patch noise.

Fix: align default_stack_size() with other platforms

Cleanup: remove Solaris 2.6 libthread check

Cleanup: remove print_libversion_info(), it's really a no-op as
everything now uses the "new" libthread

Cleanup: drop 2 unnecessary patches
patch-src_hotspot_share_gc_g1_g1Analytics.cpp
patch-make_autoconf_jdk-options.m4

25+8

Trivial patch noise.

Cleanup: fix an assert in fastdebug builds

25+7

Quite a lot of simple patch noise, often a 1 line offset due to
precompiled.hpp no longer being included. Remove the include from our
code too.

More format changes SIZE_FORMAT->%zu

25+6

Quite a lot of rework to fix patch noise.

In ProcessHandleImpl, the old unix_getchildren has been moved to a
local implementation os_getchildren in the os-specific file. And also
getParentPidAndTimings() and getCmdlineAndUserInfo().

String format changes UINTX_FORMAT->%zu INTX_FORMAT->%zd

The deprecation message in libjsig wants a new array
deprecated_usage[] which needs handling like sact; I punted and used
_SIGRTMAX rather than SIGRTMAX, but left sact dynamic.

25+4, 25+5

Trivial patch noise.

25+3

Modest patch noise.

25+2

ReservedSpace::page_align_size_down() replaced by os::align_down_vm_page_size()

25+0, 25+1

Start with no changes from 24+27.

Build:

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk24 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-dtrace \
--disable-warnings-as-errors \
--with-source-date=current \
--with-jobs=4 \
DATE=/usr/gnu/bin/date \
LOCALE=/bin/true \
STRIP=/usr/gnu/bin/strip

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake product-images
