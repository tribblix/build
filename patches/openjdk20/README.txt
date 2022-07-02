This is originally derived from the pkgsrc-joyent set for openjdk11,
considerably modified. Cut from the jdk15 patches as of jdk15+32.

See also README-zero.txt for patches to build a project zero variant.

Most patches -p0

JDK 20 now that jdk19 has been forked off.

20+4

os::infinite_sleep() has been centralised

Build failure in
src/java.base/solaris/classes/sun/nio/fs/SolarisUserDefinedFileAttributeView.java
Looking at the various implementations of this, the solaris one
appears to be old and could simply be updated to use common code like
linux and bsd do.

The file
src/jdk.hotspot.agent/share/classes/sun/jvm/hotspot/debugger/proc/ProcAddress.java
removed getValue(), so use asLongValue() in
src/jdk.hotspot.agent/share/classes/sun/jvm/hotspot/debugger/proc/ProcDebuggerLocal.java

The reproducible builds by default stuff breaks us because it assumes
it will always be enabled and appears not to be. Needs
--with-source-date=current
and also gnu date, so add DATE=/usr/gnu/bin/date to configure

Setting --with-source-date also breaks copyright year generation which
also needs gnu date.

No need to have a Solaris switch to force fork1(), as of S10 that's
the default behaviour.

20+3

Build broken by https://www.illumos.org/issues/14418. That did 2
things -  (1) exposed memcntl and meminfo by default, and (2) changed
the signature for memcntl from caddr_t to void so there's a
mismatch. The fix adopted is to modify the internal java signature for
memcntl to the new version, which still allows builds on older
releases as the old definition in sys/mman.h was effectively invisible
there.

Rename thread_solaris_x86.{c,h}pp -> javaThread_solaris_x86.{c,h}pp
mv thread_solaris_x86.cpp javaThread_solaris_x86.cpp
mv thread_solaris_x86.hpp javaThread_solaris_x86.hpp
sed -i s:_THREAD_:_JAVATHREAD_: javaThread_solaris_x86.hpp
sed -i s:runtime/thread.inline.hpp:runtime/javaThread.hpp:
javaThread_solaris_x86.cpp
and fix up includes in os_solaris.cpp

The checkedNatives stuff now causes compilation failures, so remove it
wholesale.

20+2

Trivial patch noise

20+1

Starting fairly clean

Build:

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk18 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-dtrace \
--disable-warnings-as-errors \
--enable-deprecated-ports=yes \
--with-source-date=current \
--with-jobs=3 \
DATE=/usr/gnu/bin/date

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all
