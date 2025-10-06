JDK 26 now that jdk25 has been branched off.

IMPORTANT: note that the build target has changed, from 'all' to
'product-images', as 'all' tries to build a static image which doesn't
work.

Cleanup: the masking of _B (see 26+3) didn't work on all systems, so
add illumos-vmatree.patch to fix it where it's actually a problem and
don't put it in globalDefinitions_gcc.hpp where it can break something
else.

26+18

Memory types (see 26+14 notes) have changed again. The attempt to
use size_t now replaced by a specific physical_memory_size_type.

os::numa_has_group_homing() has been removed

26+17

Moderate patch noise.

Now assumes a sufficiently modern ld that understands -soname as
equivalent to -h.

The --disable-new-dtags nonsense has moved around.

26+16

Rename of atomic -> atomicaccess, Atomic:: -> AtomicAccess::

26+15

Minor patch noise.

Remove unused numa_topology_changed().

26+14

Needed to include <thread.h> in osThread_solaris.hpp

Types of physical_memory, free_memory, available_memory have changed.
physical_memory() and _physical_memory are now size_t rather than
julong.
free_memory() is now a bool free_memory(&value), likewise
available_memory, total_swap_space, free_swap_space

bare snprintf() is deprecated and breaks the build; replace by either
os::snprintf_checked(), or use os::snprintf and don't ignore the return

26+13

Trivial patch noise.

26+12

Minor patch noise.

26+11

Cleanup: remove custom redefinition of NULL (as NULL has been replaced
by nullptr everywhere in hotspot).

Cleanup: last mention of STACK_BIAS.

Cleanup: Tidy up attach code.

26+10

Trivial patch noise.

26+9

Minor patch noise, due to header order shuffling.

26+6, 26+7, 26+8

Trivial patch noise.

26+5

Remove os::elapsedVTime() and hrtime_hz.

26+4

Removed c{1,2}_globals_solaris.hpp like the other oses did.

26+3

Minor patch noise.

Unfortunately, NMT has started to use variable names like  _B and ES
that conflict with common macro names in our headers. For now, undef
them in globalDefinitions_gcc.hpp.

26+2

os::jvm_path has been centralized.

Cleanup: remove SPARC-only pack64/unpack64.

Cleanup: tidy away legacy code from NetworkInterface.

26+1

No changes needed.

26+0

Start with no changes from 25+26. (Still reports as 25.)

Build:

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk24 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-warnings-as-errors \
--with-source-date=current \
--with-jobs=4 \
DATE=/usr/gnu/bin/date \
LOCALE=/bin/true \
STRIP=/usr/gnu/bin/strip

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake product-images
