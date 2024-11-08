 This is originally derived from the pkgsrc-joyent set for openjdk11,
considerably modified. Cut from the jdk15 patches as of jdk15+32.

See also README-zero.txt for note on a project zero variant.

JDK 24 now that jdk23 has been branched off.

24+23

Trivial patch noise

24+22

Cleanup: remove the historic OPENWIN font locations from fontpath.c

Dropped the png patch, like we did with all the other releases this
update cycle.

Minor noise in UnixNativeDispatcher.c

In src/jdk.attach/solaris/classes/sun/tools/attach/VirtualMachineImpl.java
readErrorMessage() has been renamed readMessage()

Need to include sys/filio.h for FIONREAD in
src/java.base/unix/native/libnio/ch/UnixFileDispatcherImpl.c 
see illumos-port-29.patch

24+21

No changes.

24+20

os::Posix::realpath() is now just os::realpath()

Remove our copies of os::current_file_offset() and os::seek_to_file_offset()
as they have been centralised.

Cleanup: remove unused JSIG_VERSION_1_4_1 define

Cleanup: remove unused SOLARIS_MUTATOR_LIBTHREAD hunk

24+19

Needs jdk23 as the boot jdk now.

osThread has been completely restructured. This splats 3 places:
osThread_solaris.{c,h}pp os_solaris.cpp vmStructs_solaris.hpp
I've ignored the os_solaris.cpp because in Linux they only changed the cast
type, and we don't have that at all.
I've ignored vmStructs for now as I don't quite follow what's needed.
I've followed the Linux changes up to a point, but different platforms
are quite divergent.

24+17, 24+18

Trivial patch noise

Cleanup: Fix TestMemoryAllocationLogging failures. The tests were
looking for specific output for mmap and munmap failures.

Cleanup: jdk.internal.vm.ci/share/classes/jdk/vm/ci/services/Services.java
needs to know about Solaris.

Cleanup: remove the epoll provider code, it wasn't used on illumos and
doesn't compile on Solaris.

24+16

Trivial patch noise

Cleanup: src/hotspot/os/solaris and src/hotspot/os_cpu/solaris_x86
split out into separate restore patches.

24+15

Tiny amount of patch noise.

24+14

A lot of patch noise, mostly due to a lot of Makefiles having clang
warnings tweaked, and some whitespace cleanup.

24+13

In src/jdk.attach/solaris/classes/sun/tools/attach/VirtualMachineImpl.java:270: warning: [restricted] System.loadLibrary(String) is a restricted method.
        System.loadLibrary("attach");

Needed to add
@SuppressWarnings("restricted")
like other platforms have.

24+9, 24+10, 24+11, 24+12

Trivial patch noise.

24+8

In os_solaris.cpp, os::pd_free_memory() has been removed and
os::pd_disclaim_memory() added. Looking at AIX, both were no-ops. On
Linux, they're quite different. On BSD, the implementation is
identical. So what I'll do is keep the same implementation, just
changing the name and signature.

24+7

No changes.

Cleanup: Removed last remnants of extended_FILE_stdio, it's unused as 32-bit
only, and the code to enable it had already been removed.

24+6

No changes.

24+5

Trivial patch noise.

24+4

Offsets due to os::committed_in_range() implementation. The guards
are plain wrong, so needed to correct them in illumos-port-28.patch

24+3

Wants an os::rss() implementation; return 0 for now, just like AIX does
(and other platforms return 0 as the "don't know" answer).

24+2

Trivial patch noise.

24+0, 24+1

Start with no changes from 23+26.

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
STRIP=/usr/gnu/bin/strip

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all
