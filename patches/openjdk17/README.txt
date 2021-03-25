This is originally derived from the pkgsrc-joyent set for openjdk11,
considerably modified. Cut from the jdk15 patches as of jdk15+32.

See also README-zero.txt for patches to build a project zero variant.

Most patches -p0

JDK17:

17-15

No changes this time

17-14

Remove patch to c1_LIRAssembler.cpp as it's only for SPARC
Maybe lir_pack/lir_unpack could go too?

Tidied up Awt2dLibraries.gmk

More centralization into os_posix: os::die() os::shutdown() os::abort()

Tidy up some of the format noise

17-13

Remove the patches for lib-X11.m4; they're actually for S10, so we
don't want them anyway. And remove the patch to XRBackendNative.c
related to it which is also an S10 fixup.

os::fork_and_exec has been centralized

MetaspaceShared::is_in_trampoline_frame() has been removed

17-12

Remove saved_rbp_address_offset() from thread_solaris_x86.hpp

There's also evidence of xattr support on some platforms having been
added; it's not needed for the build so I've ignored it for now.

17-11

Fix memTracker.hpp; signature changed
Don't patch deoptimization.cpp, it was SPARC-specific

17-10

No significant changes

17-9

No significant changes

17-8

Man os:: functions were centralized into os_posix.inline.hpp, so
needed to remove our duplicates from os_solaris.inline.hpp and
os_solaris.cpp. Mostly the central copy was identical, the only odd
one was that the Solaris os::connect had some funky error handling

17-7

CLOCK_MONOTONIC is now just on.
Needed to remove os::supports_monotonic_clock() from os_solaris.inline.hpp
Remove javaTimeMillis() and javaTimeSystemUTC() and javaTimeNanos()
and javaTimeNanos_info() from os_solaris.cpp
Parker::park and Parker::unpark no longer compile, park.hpp has been
modified so we need to make sure _counter is present in
os_solaris.hpp; that makes it compile but it then crashes the jvm in there
The posix variant removed the guarantee in PlatformParker; we need to
do the same, fix the signature, and provide an implementation.
(The PlatformParker piece took a lot of effort.)

17-6

we now have perfMemory_posix.cpp, so perfMemory_solaris.ccp should be
removed or the build fails with multiply defined symbols

17-5

make/CompileJavaModules.gmk has mostly been gutted; ignore our patch
as it seem to build fine without

os.cpp needs to include alloca.h, see illumos-port-11.patch

17-4

src/jdk.hotspot.agent/share/classes/sun/jvm/hotspot/asm/Disassembler.java
has been refactored, but the new version appears to do the same thing
as we need in a platform-independent manner, so drop our patch

17-3

make/common/Modules.gmk has been completely redone; remove our patch

17-2

More memory stuff; pd_uncommit_memory pd_reserve_memory
pd_attempt_reserve_memory_at have changed signatures, with an extra
bool argument (that appears to be unused, at least linux and aix
don't make any use of it; this appears to be a Mac thing)

17-0/17-1

Quite a lot of refactoring of the toolchain stuff.

The page_size rework is really quite massive. The old _page_sizes was
an array you manipulated directly. It's now a set. This needs various
changes:

os::Solaris::is_valid_page_size() is just _page_sizes.contains()

Not strictly broken, but easy to fix: in mpss_sanity_check, we can
simplify the getpagesizes() stuff as we know we're modern

Rework listing of valid page sizes

This is a bit ugly because we don't really end up using the new
_page_sizes, but instead emulate the old array. Still, I can't find
examples of how the new way is supposed to work on any other platform.

Also need to implement print_memory_mappings, as a no-op (like AIX is)

That's enough to make it compile; it blows up with an arithmetic
exception, apparently inside apply_ergo(). In mpss_sanity_check, we
need to make sure page_size (which is really a pointer to
_large_page_size) is initialized to the largest valid page size.

Build:

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk15 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-dtrace \
--disable-warnings-as-errors \
--enable-deprecated-ports=yes \
--with-jobs=3

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all
