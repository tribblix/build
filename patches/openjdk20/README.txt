This is originally derived from the pkgsrc-joyent set for openjdk11,
considerably modified. Cut from the jdk15 patches as of jdk15+32.

See also README-zero.txt for patches to build a project zero variant.

JDK 20 now that jdk19 has been forked off.

TODO cleanup from the 20+5 changes:
PlatformMutex::init() - should we use the os_posix one?
Can we get rid of mutex_scope and cond_scope?
Can we get rid of the set_mutex* and set_cond* stuff?

The big diff in src/java.base/unix/native/libjava/TimeZone_md.c
appears to only be relevant to 32-bit solaris

20+6

SuspendResume is no longer in os::, needs illumos-port-19.patch

os::message_box has been centralized

Removed now unused unpackTime() and compute_Abstime().

20+5

Some big breaking changes here.

In os_posix.cpp, some things like PlatformMutex, PlatformEvent,
PlatformMonitor have dropped the os:: namespace. The definitions have
been centralized, posix uses _event whereas solaris used _Event (like
windows does). And the posix variants all use pthreads, whereas
solaris used native threads, which leads to signature mismatches.

So there are a couple of changes. First, replace mutex_t with
pthread_mutex_t. Second, assign directly rather than setting the
symbols dynamically, which used to be done as a way of switching
between thread-based and lwp-based synchronization.

And with that, in fact, we could use the central posix verions of the
Platform pieces.

And do the same for the cond_ functions as well as the mutex_ functions.

Remove illumos-port-1.patch and roll the pthreads versions in by default

ThreadCrashProtection has moved out of os_posix.{c,h}pp which means we
have to move stuff around.

mutex.hpp, park.hpp, threadCrashProtection.hpp headers reworked
-> illumos-port-18.patch

Remove RecordSynch

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
