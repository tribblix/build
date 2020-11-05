This is originally derived from the pkgsrc-joyent set for openjdk11,
considerably modified. Cut from the jdk15 patches as of jdk15+32.

See also README-zero.txt for patches to build a project zero variant.

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

In 16+23

The last hunk for flags-cflags.m4 removed; part of it was the _LP64=1
change, the other part of the hunk was for studio

JVMFlag::ATTACH_ON_DEMAND becomes JVMFlagOrigin::ATTACH_ON_DEMAND

VMError::report_and_die() signature has changed; I can't see any
similar use of it on other platforms that matches our usage, so
easiest just to delete the code that calls it incorrectly.

In 16+22

Refactor due to
8255254: Split os::reserve_memory and os::map_memory_to_file
interfaces
In os_solaris.cpp, change the 3-argument form of:
pd_attempt_reserve_memory_at -> pd_attempt_map_memory_to_file_at

One of the spec.gmk,in hunks failed, just delete it

In 16+20

Mostly the stack overflow handlingg rorg
8254158: Consolidate per-platform stack overflow handling code
https://github.com/openjdk/jdk/commit/ba5dc67a
covered by illumos-port-9.patch, although ideally we would merge
these changes into the main patch

illumos-port-8.patch - some Linux-specific code is guarded by !bsd and
!aix

In 16+19

Quite a few changes this time, particularly the signal code merge in
os_posix.cpp as part of #8252324
https://github.com/openjdk/jdk/commit/4fe07ccc

shenandoahConcurrentRoots.cpp, just removed the patch

pd_reserve_memory loses the alignment hint (this was marked as a TODO
from 16+18 below)

In 16+18

remove src/jdk.crypto.ec/share/legal/ecc.md from the patch, as it no
longer exists

remove patch-src_jdk.crypto.ec_share_native_libsunec_ECC__JNI.cpp

In thread_solaris_x86.hpp, remove last_Java_fp and set_last_Java_fp

pd_reserve_memory and friends signatures have changed
pd_attempt_reserve_memory_at
TODO: clean up anon_mmap

Boot jdk has to be 15 as of 16+18

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
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk15 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-dtrace \
--disable-warnings-as-errors \
--enable-deprecated-ports=yes

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all
