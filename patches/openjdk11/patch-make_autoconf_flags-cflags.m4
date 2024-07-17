$NetBSD$

Support for SunOS/gcc.

--- make/autoconf/flags-cflags.m4.orig	2019-01-08 09:40:27.000000000 +0000
+++ make/autoconf/flags-cflags.m4
@@ -44,8 +44,15 @@ AC_DEFUN([FLAGS_SETUP_SHARED_LIBS],
     # overridden using LD_LIBRARY_PATH. See JDK-8326891 for more information.
     SET_EXECUTABLE_ORIGIN='-Wl,-rpath,\$$ORIGIN[$]1 -Wl,--disable-new-dtags'
     SET_SHARED_LIBRARY_ORIGIN="-Wl,-z,origin $SET_EXECUTABLE_ORIGIN"
+   if test "x$OPENJDK_TARGET_OS" = xsolaris; then
+    SET_EXECUTABLE_ORIGIN='-Wl,-rpath,\$$ORIGIN[$]1'
+    SET_SHARED_LIBRARY_ORIGIN="-Wl,-z,origin $SET_EXECUTABLE_ORIGIN"
+    SET_SHARED_LIBRARY_NAME='-Wl,-h,[$]1'
+    SET_SHARED_LIBRARY_MAPFILE='-Wl,-M,[$]1'
+   else
     SET_SHARED_LIBRARY_NAME='-Wl,-soname=[$]1'
     SET_SHARED_LIBRARY_MAPFILE='-Wl,-version-script=[$]1'
+   fi
 
   elif test "x$TOOLCHAIN_TYPE" = xclang; then
     C_FLAG_REORDER=''
@@ -498,6 +505,7 @@ AC_DEFUN([FLAGS_SETUP_CFLAGS_HELPER],
 
   if test "x$TOOLCHAIN_TYPE" = xgcc; then
     ALWAYS_DEFINES_JVM="-D_GNU_SOURCE -D_REENTRANT"
+    ALWAYS_DEFINES_JDK="-D_GNU_SOURCE -D_REENTRANT -D_LARGEFILE64_SOURCE"
   elif test "x$TOOLCHAIN_TYPE" = xclang; then
     ALWAYS_DEFINES_JVM="-D_GNU_SOURCE"
   elif test "x$TOOLCHAIN_TYPE" = xsolstudio; then
