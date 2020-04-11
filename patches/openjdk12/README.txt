This is derived from the pkgsrc-joyent set for openjdk11

All patches -p0

Removed:

patch-make_autoconf_flags-other.m4 - breaks as
patch-make_autoconf_lib-bundled.m4 - breaks zlib
patch-make_lib_Lib-java.instrument.gmk - remove -liconv
patch-make_lib_Lib-jdk.jdwp.agent.gmk - remove -liconv

Modified:

patch-make_lib_Awt2dLibraries.gmk - remove -liconv
patch-make_launcher_LauncherCommon.gmk - breaks zlib
patch-make_launcher_Launcher-jdk.pack.gmk - breaks zlib

Anything named tribblix* is my additional patches

tribblix-attachListener_solaris.patch
  fixes incorrect arguments

tribblix-flags-cflags.patch 
  remove SSP

tribblix-Launcher-jdk.patch
tribblix-LauncherCommon.patch <<<<< FIXME !!!!!!! name and reversed
  KPIC -> fPIC

tribblix-agent-mt.patch
  remove -mt

JDK12:
openjdk12 fixes (besides fixing line number noise)

Do we really need the shell portability patches?

patch-make_autoconf_flags-ldflags.m4 - the file has changed, still
need to ifdef away the -O1 -relro

patch-make_lib_Lib-jdk.crypto.ec.gmk - again, the file is completely
different; just delete it as it works fine without
