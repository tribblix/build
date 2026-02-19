JDK 27 now that jdk26 has been branched off.

27+10

os::remove_stack_guard_pages() now returns void not bool

27+9

PollerProvider rework. This may need to be redone; I've taken the
simplistic implementation from aix, which isn't specialised for
virtual threads.

27+8

Trivial patch noise.

27+7

Rework of libjaas, drop hunk entirely.

27+6

Changes for the shuffling associated with containerization and the
os::Machine class.

27+5

Need to remove includes of runtime/prefetch.hpp

Cleanup: Fix AtomicAccess so tests build.

27+4

Trivial patch noise.

27+3

Minor patch noise.

27+2

Cleanup: errno alignment with 8366272

27+1

No changes.

27+0

Start with no changes from 26+27. (Still reports as 26.)

Patch cleanup, merged all the flags-ldflags patch hunks into a single
file, and all patches now -p1.

Build:

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk25 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-warnings-as-errors \
--with-source-date=current \
--with-jobs=4 \
DATE=/usr/gnu/bin/date \
LOCALE=/bin/true \
STRIP=/usr/gnu/bin/strip

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake product-images
