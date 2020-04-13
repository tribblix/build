This is derived from the pkgsrc-joyent set for openjdk11, building on
my openjdk13 set.

All patches -p0

JDK14:
openjdk14 fixes (besides fixing line number noise)

remove:

patch-make_launcher_Launcher-jdk.pack.gmk
tribblix-Launcher-jdk.patch
  patched file no longer exists

modified:

patch-make_autoconf_flags-ldflags.m4
  remove hunk1

tribblix-flags-cflags.patch
  surrounds changed

add:


tribblix-flags-ldflags.patch

tribblix-wait.patch
  wait() is a standard function, it's asking for trouble to define
  your own with the same name
