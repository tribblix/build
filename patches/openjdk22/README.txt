This is originally derived from the pkgsrc-joyent set for openjdk11,
considerably modified. Cut from the jdk15 patches as of jdk15+32.

See also README-zero.txt for note on a project zero variant.

Fix: restore support for extended attributes - see xattrs.patch

JDK 22 now switched to the jdk22 stabilisation repo

Cleanup: remove unused check_addr0_done.

Cleanup: remove the Studio type linkage block from the gcc header.

Cleanup: remove the unshuffle_list.txt hunk.

Cleanup: more dtrace fixes.

Cleanup: Correct DTRACE_INSTRUMENTED_OBJS.

Fix: Correct type argument to sema_init.

Cleanup: Duplicate check for SC_CLK_TCK.

Cleanup: Remove more Studio-specific flags, still present in
DTrace. This doesn't make DTrace build, but is one problem less.

Cleanup: Move the mapfiles (symbol files) to the right place.

Cleanup: Remove the use of lp rather than lpr; all supported systems
can or even should be using CUPS rather than legacy lp.

Cleanup: Remove /usr/bin/sh override in PrintServiceLookupProvider.java.

Cleanup: Define -D_REENTRANT for non-gcc (ie clang) builds

Cleanup: remove unused register stack functions. See the bug
8253457: Remove unimplemented register stack functions
The change for that not only removed the itanium only register
stack functions, but also the base_of_stack_pointer routines
which I keep for now as they were implemented and used on sparc.

Cleanup: Remove unused global UseOSErrorReporting.

Cleanup: Remove long unused sysThreadAvailableStackWithSlack()

Cleanup: remove audio solaris 7 compatibility code

Cleanup: use pset_getloadavg() directly

Cleanup: Remove SolarisX86JavaThreadPDAccess, it's for 32-bit.

Cleanup: allow fastdebug builds, see fastdebug.patch

Cleanup: remove unused JSIG_VERSION_1_4_1 define

Cleanup: remove unused SOLARIS_MUTATOR_LIBTHREAD hunk

Cleanup: jdk.internal.vm.ci/share/classes/jdk/vm/ci/services/Services.java
needs to know about Solaris.

Cleanup: remove the epoll provider code, it wasn't used on illumos and
doesn't compile on Solaris.

22.0.2

Removed last remnants of extended_FILE_stdio, it's unused as 32-bit
only, and the code to enable it had already been removed.

Remove local copies of os::dont_yield() os::naked_yield()

Centralization of breakpoint()

Cleanup: switch to SolarisEventPortPoller

22.0.1 respin 1

Fixed the patch for src/java.base/unix/classes/java/lang/ProcessImpl.java
which fixes the startup hang in jshell and illuminate (and hopefully
the minecraft reports)

22.0.1

New undefined symbol os::pd_dll_unload; copy the implementation from
os_linux.cpp

Cleanup: missed the dropping of TIERED in 17+8, it's now
COMPILER1_AND_COMPILER2

22+34, 22+35, 22+36

No changes.

22+33

No changes.

Tidied up the fatal(dlerror()) warning.

22+28, 22+29, 22+30, 22+31, 22+32

No changes.

22+27

Trivial patch noise

Switch to jdk22 stabilisation repo

22+26

Don't patch make/autoconf/spec.gmk.in any more, the variable added is
no longer used

os::scan_pages() has been removed

os::prepare_native_symbols() has been added, provide a no-op implementation

Cleanup: we always have dladdr1() on all supported releases, so don't
check for it or work around its potential absence

22+25

Revised illumos-pollerprovider.patch for signature change in
EPollPoller.implDeregister()

22+24

Trivial patch noise.

22+23

Signature change in DefaultPoller.java, the whole of Poller has been
reworked. As our DevPollPoller was a stub and never worked, delete and
replace with a copy of EPollPoller from Linux:

cp src/java.base/linux/classes/sun/nio/ch/EPoll* src/java.base/solaris/classes/sun/nio/ch
cp src/java.base/linux/classes/sun/nio/ch/EventFD.java src/java.base/solaris/classes/sun/nio/ch
cp src/java.base/linux/native/libnio/ch/EPoll.c src/java.base/solaris/native/libnio/ch/EPoll.c

See revised illumos-pollerprovider.patch

22+22

memTracker was moved from src/hotspot/share/services to
src/hotspot/share/nmt

22+21

Trivial patch noise

22+20

Larger changes to src/java.base/unix/native/libnet/net_util_md.c

Need to #include sys/filio.h in
src/java.base/unix/native/libnio/ch/Net.c so that FIONREAD is defined

22+19

Trivial patch noise.

22+18

Boot jdk bumped to 21

22+17

With the removal of ArrayAllocatorMallocLimit, don't patch
globals.hpp, and remove the comment-only hunk too.

os::numa_get_leaf groups signature change

22+15, 22+16

Trivial patch noise.

22+14

New function os::vm_min_address() needs an implementation. Provide a
very basic one.

22+13

Minor patch noise.

#include "utilities/checkedCast.hpp" in os_solaris.cpp

current_stack_base() and current_stack_size() have been merged into a
single current_stack_base_and_size()

As we make some use of the old functions, move them into os::Solaris,
and implement the new merged function by calling them.

22+12

Remove AttachListener::pd_set_flag()

22+11

Remove AttachListener::pd_find_operation()
Merge and delete tribblix-attachListener_solaris.patch

22+9, 22+10

Trivial patch noise.

22+8

Fix zero port; see Atomic and print_register_info change in jdk 21+23

Needed to add stubs for can_trim_native_heap() and trim_native_heap()
to os_solaris.inline.hpp

22+7

Trivial patch noise.

22+6

Trivial patch noise.
Dropped the old make/autoconf/lib-freetype.m4 patch, as it's
not relevant to us.
Fix format warning in print_memory_info()

22+4, 22+5

Trivial patch noise.

22+3

Minor patch noise.

22+2

Some patch noise, especially Awt2dLibraries.gmk and static linking.

22+1

No changes needed, identical to 21+26.

Build:

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk21 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-dtrace \
--disable-warnings-as-errors \
--with-source-date=current \
--with-jobs=3 \
DATE=/usr/gnu/bin/date \
STRIP=/usr/gnu/bin/strip

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all
