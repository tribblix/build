This is originally derived from the pkgsrc-joyent set for openjdk11,
considerably modified. Cut from the jdk15 patches as of jdk15+32.

See also README-zero.txt for note on a project zero variant.

JDK 21 now that jdk20 has been forked off.

21+5

Minor patch noise.

The JAVA_WARNINGS_ARE_ERRORS note appears to only occur on some build
machines, which is very odd.

21+4

The reorderMap in MFontConfiguration.java now needs to construct
String[] by hand rather than using FontConfiguration.split()

Something odd has changed that's broken my build; I needed to add
JAVA_WARNINGS_ARE_ERRORS=""
to the gmake command. Otherwise -Werror turns all java warnings into
errors and fails the build. The thing is that there's nothing new here.

21+2, 21+3

Trivial patch noise

21+0

Starting fairly clean.

VM_Version::page_size_count() has been removed, but it's only returning
a constant so we can easily handle that.

Build:

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk19 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-dtrace \
--disable-warnings-as-errors \
--enable-deprecated-ports=yes \
--with-source-date=current \
--with-jobs=3 \
DATE=/usr/gnu/bin/date \
STRIP=/usr/gnu/bin/strip

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all
