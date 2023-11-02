This is originally derived from the pkgsrc-joyent set for openjdk11,
considerably modified. Cut from the jdk15 patches as of jdk15+32.

See also README-zero.txt for note on a project zero variant.

JDK 22 now that jdk21 has been forked off.

Issues known that indicate serious bugs, likely due to not integrating
loom correctly as they date back to that change. Specifically, I
suspect we need to provide a working DefaultPoller implementation
rather than the current stub.
* jshell doesn't work
* illuminate doesn't work

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
