$NetBSD$

Support SunOS/gcc.

--- make/autoconf/flags-ldflags.m4.orig	2019-01-08 09:40:27.000000000 +0000
+++ make/autoconf/flags-ldflags.m4
@@ -72,7 +72,9 @@ AC_DEFUN([FLAGS_SETUP_LDFLAGS_HELPER],
     # Add -z defs, to forbid undefined symbols in object files.
     BASIC_LDFLAGS="$BASIC_LDFLAGS -Wl,-z,defs"
 
+   if test "x$OPENJDK_TARGET_OS" != xsolaris; then
     BASIC_LDFLAGS_JVM_ONLY="-Wl,-O1 -Wl,-z,relro"
+   fi
 
   elif test "x$TOOLCHAIN_TYPE" = xclang; then
     BASIC_LDFLAGS_JVM_ONLY="-mno-omit-leaf-frame-pointer -mstack-alignment=16 \
