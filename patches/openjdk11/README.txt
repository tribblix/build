This is dervied from the pkgsrc-joyent set for openjdk11

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

