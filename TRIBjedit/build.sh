#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# note that different architectures are packaged separately as the java
# dependency differs
#
rm -fr /tmp/j1 /tmp/jEdit /tmp/man /tmp/bin
# requires java 11 or later
java -jar ${THOME}/tarballs/jedit5.7.0install.jar
# Install under /tmp instead of $HOME, not the API documentation
mkdir -p /tmp/j1/usr/lib/jEdit
mkdir -p /tmp/j1/usr/bin
mkdir -p /tmp/j1/usr/share/man/man1
mv /tmp/jEdit/5.7.0 /tmp/j1/usr/lib/jEdit
mv /tmp/man/man1/jedit.1 /tmp/j1/usr/share/man/man1
mv /tmp/bin/jedit /tmp/j1/usr/bin
#
# edit /tmp/j1/usr/bin/jedit to put
# JAVA_HOME=/usr/jdk/instances/jdk21
# or
# JAVA_HOME=/usr/jdk/instances/jdk17
# depending on platform
#
sed -i s:/tmp/jEdit/5.7.0/:/usr/lib/jEdit/5.7.0/: /tmp/j1/usr/bin/jedit
${THOME}/build/create_pkg TRIBjedit /tmp/j1
rm -fr /tmp/j1 /tmp/jEdit /tmp/man /tmp/bin
