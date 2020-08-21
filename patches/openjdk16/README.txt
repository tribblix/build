This is originally derived from the pkgsrc-joyent set for openjdk11,
considerably modified. Cut from the jdk15 patches as of jdk15+32.

Most patches -p0

JDK16:

One of the reasons for removing SPARC/Solaris suport was to allow more
radical changes to the codebase. That means it's likely to be more
difficult to track changes.

openjdk16 fixes (besides fixing line number noise) below

NOTE:

cc1plus: warning: unrecognized command line option '-Wno-cast-function-type'
That's to do with freetype, I think.

Changes:

In 16+12

Fix the already defined warning for CS in
src/hotspot/share/prims/methodHandles.cpp
see illumos-port-7.patch

ForceNUMA has disappeared, so don't use it
src/hotspot/os/solaris/os_solaris.cpp

Tidy up os::find in src/hotspot/os/solaris/os_solaris.cpp
to silence format warnings (sync with linux version)

In 16+10

The ProcDebuggerLocal stuff was modified, underlying commit
http://hg.openjdk.java.net/jdk/jdk/rev/bdbb1c956626

in ProcDebuggerLocal, lookupByName() can be removed

in ProcDebuggerLocal, remove createLoadObject fillLoadObjectList0
updateLoadObjectCache reresolveLoadObjects getLoadObjectList
the only complex one is getLoadObjectList, which is required by the
parent interface. Look for FIXME-ILLUMOS, I've stubbed it out

in saproc.cpp, remove fillLoadObjectList0 createLoadObject_ID
fill_load_object_list

In 16+9

was completely broken due to a shenandoah build failure

missing symbols seen in ProcDebuggerLocal.java, but defer that to 16+10

In 16+8

No need to patch src/java.base/unix/native/libjava/jdk_util_md.h

In 16+7

There's a new os::cpu_microcode_revision()
Linux pulls this out of /proc/cpuinfo
Edit
src/hotspot/os_cpu/solaris_x86/os_solaris_x86.hpp
src/hotspot/os_cpu/solaris_x86/os_solaris_x86.cpp
To add a stub implementation which returns 0
(Other platforms return 0 on error.)
Look at ucodeadm to see how to do this properly.
See illumos-cpu_microcode_revision.patch

In 16+6

1. ExtendedPC has been removed
fetch_frame_from_context is now an address
fetch_frame_from_ucontext doesn't exist

This appears to be another studio ("Forte") remnant that got cleaned
up.
Needs updates to:
src/hotspot/os/solaris/os_solaris.hpp
  remove fetch_frame_from_ucontext prototype
  remove ucontext_get_ExtendedPC
src/hotspot/os_cpu/solaris_x86/os_solaris_x86.cpp
  remove ExtendedPC include
  remove ucontext_get_ExtendedPC
  remove fetch_frame_from_ucontext
  Things that were ExtendedPC are now address
src/hotspot/os_cpu/solaris_x86/thread_solaris_x86.cpp
  Things that were ExtendedPC are now address
src/hotspot/os/solaris/os_solaris.cpp
  comment + header

deleted
patch-src_hotspot_os__cpu_solaris__x86_os__solaris__x86.cpp
as it's merged into the main patch
(we ought to merge more of the patches)

Build:

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk14 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-dtrace \
--disable-warnings-as-errors \
--enable-deprecated-ports=yes

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all
