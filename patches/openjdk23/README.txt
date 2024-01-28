This is originally derived from the pkgsrc-joyent set for openjdk11,
considerably modified. Cut from the jdk15 patches as of jdk15+32.

See also README-zero.txt for note on a project zero variant.

JDK 23 now that jdk22 has been forked off.

Issues known that indicate serious bugs, likely due to not integrating
loom correctly as they date back to that change.
* jshell doesn't work
* illuminate doesn't work

23+7

Tidied up the fatal(dlerror()) warning.

23+6

New undefined symbol os::pd_dll_unload; copy the implementation from
os_linux.cpp

23+5

Trivial patch noise.

23+4

Remove unused and undefined os::can_execute_large_page_memory() from
os_solaris.cpp

23+3

Trivial patch noise

23+0, 23+1, 23+2

No changes needed, identical to 22+27.

Build:

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk21 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-dtrace \
--disable-warnings-as-errors \
--with-source-date=current \
--with-jobs=3 \
DATE=/usr/gnu/bin/date \
STRIP=/usr/gnu/bin/strip

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all
