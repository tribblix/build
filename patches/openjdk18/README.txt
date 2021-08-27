This is originally derived from the pkgsrc-joyent set for openjdk11,
considerably modified. Cut from the jdk15 patches as of jdk15+32.

See also README-zero.txt for patches to build a project zero variant.

Most patches -p0

Version bump at jdk17+25 when jdk17 was forked into rampdown phase 1.

JDK18:

18-12

Fix src/jdk.jlink/share/classes/jdk/tools/jlink/internal/Platform.java

18-10, 18-11

No changes

18-9

ResolverConfigurationImpl.java uses ArrayList, not LinkedList

18-8

A little patch noise.

18-7

Remove unused create_detachall_operation() that the build keeps
complaining about.

18-6

A bunch of Socket stuff appears to have been removed.

18-5

Remove os::bind_to_processor

18-4

A little patch noise.

The linker check has been hardened. It was always done wrong (it's using
gcc to get the linker version when it's actually looking for the as
version), but it now needs working around. We have the right assembler
in any case.

18-1, 18-2

No changes

18-0

rename bytes_solaris_x86.inline.hpp to bytes_solaris_x86.hpp
rename copy_solaris_x86.inline.hpp to copy_solaris_x86.hpp

Build:

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk16 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-dtrace \
--disable-warnings-as-errors \
--enable-deprecated-ports=yes \
--with-jobs=3

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all
