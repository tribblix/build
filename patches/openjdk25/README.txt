JDK 25 now that jdk24 has been branched off.

IMPORTANT: note that the build target has changed, from 'all' to
'product-images', as 'all' tries to build a static image which doesn't
work.

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
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk23 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-dtrace \
--disable-warnings-as-errors \
--with-source-date=current \
--with-jobs=4 \
DATE=/usr/gnu/bin/date \
SORT=/usr/gnu/bin/sort \
STRIP=/usr/gnu/bin/strip

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake product-images
