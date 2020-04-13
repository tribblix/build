$NetBSD$

Support SunOS/gcc.

--- make/autoconf/flags-ldflags.m4.orig	2019-01-08 09:40:27.000000000 +0000
+++ make/autoconf/flags-ldflags.m4
@@ -151,7 +153,9 @@ AC_DEFUN([FLAGS_SETUP_LDFLAGS_HELPER],
 
   # Setup LDFLAGS for linking executables
   if test "x$TOOLCHAIN_TYPE" = xgcc; then
+   if test "x$OPENJDK_TARGET_OS" != xsolaris; then
     EXECUTABLE_LDFLAGS="$EXECUTABLE_LDFLAGS -Wl,--allow-shlib-undefined"
+   fi
   fi
 
   # Export some intermediate variables for compatibility
