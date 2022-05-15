This is originally derived from the pkgsrc-joyent set for openjdk11,
considerably modified. Cut from the jdk15 patches as of jdk15+32.

See also README-zero.txt for patches to build a project zero variant.

Most patches -p0

JDK 19 now that jdk18 has been forked off.

19-22

This includes Project Loom aka virtual threads.

New DefaultPollerProvider; create a DevPollPoller stub that throws 
UnsupportedOperationException similar to the way that the AIX
implementation does. This is enought to make the code compile, and
things like jkstat work, but jshell doesn't present a prompt (it was
fine in 19+21). So this will need a working implementation to fix
jshell and Loom.

19-21

Quite a bit of noise; stack management rework.

19-20

Remove os::available() as it's unused
Remove local os::pause() is it's centralized

19-19

SafeFetch handling completely reworked. Remove it from
src/hotspot/os_cpu/solaris_x86/os_solaris_x86.cpp, and copy
the assember from the linux x86_64 implementation (as we are the same
toolchain and cpu that seems the obvious choice)
Removed illumos-port-13.patch as it's now irrelevant

19-18

Minor patch noise.

19-17

Now needs jdk18 as the boot jdk.

19-16

Minor patch noise.

19-15

FontConfiguration was broken. The build doesn't generate the fontconfig
files in ${JAVA_HOME}/lib; the file
make/modules/java.desktop/gendata/GendataFontConfig.gmk
is rather different, as the fontconfig.properties files have moved from
make/data/fontconfig to src/java.desktop/`platform`/data/fontconfig


19-14

In src/java.base/solaris/classes/sun/nio/fs, needed to catch
UnixException in close() in SolarisAclFileAttributeView.java,
SolarisUserDefinedFileAttributeView.java and SolarisWatchService.java,
using new close(fd, e -> null) rather than just close().

19-13

Minor patch noise.

19-12

ThreadCritical has been merged into Posix. I've simply deleted
the Solaris one. I'm not 100% sure this is correct as the Solaris
implementation uses Solaris threads as opposed to Posix threads, and
has a bunch of caveats around it, but testing hasn't shown any problem
yet.

Removed the INCLUDE_NMT patch for init.cpp

19-11

Needed to restore src/hotspot/share/services/dtraceAttacher.hpp
See illumos-port-17.patch.
This file should have been removed in the original solaris
deprecation along with the corresponding cpp file, but was forgoteen
about, and has recently been cleaned up. As we still #include it, we
need to put it back. As we disable DTrace in any case, it would be
cleaner to simply remove all of it.

19-8,19-9,19-10

Minor patch noise.

19-7

Don't patch update_copyright_year.sh, our awk is now nawk anyway
Fair amount of patch noise.

java.lang.ProcessImpl.java has some SunOS-specific code, and there's
other code we rely on that got removed; I've reverted that in
illumos-port-16.patch so we can get the build to complete, but need to
go back and look at it to see if we actually need the
platform-specific wreckage here.

19-6

Minor patch noise.

19-5

The copy_x86 implementation has been centralised, so
copy_solaris_x86.hpp is now essentially empty

19-4

Minor patch noise

19-3

Minor patch noise
FilterSpuriousWakeups removed

19-2

vm_version rework
new OSThread() signature change

Build:

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk18 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-dtrace \
--disable-warnings-as-errors \
--enable-deprecated-ports=yes \
--with-jobs=3

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all
