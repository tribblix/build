#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# (Steel Bank Common Lisp)
#
# The build creates a 64-bit version by default, set SBCL_ARCH to x86
# to create a 32-bit build
#
# initially we needed a binary bootstrap
#
#${THOME}/build/unpack sbcl-1.2.7-x86-solaris-binary
#cd sbcl-1.2.7-x86-solaris
#env INSTALL_ROOT=/tmp/l sh install.sh
#cd ..
#env GNUMAKE=gmake SBCL_HOME=/tmp/l/lib/sbcl PATH=/tmp/l/bin:$PATH sh make.sh --prefix=/usr/versions/sbcl-XXX
#
#${THOME}/build/unpack sbcl-2.0.4-sparc-solaris-binary
#cd sbcl-2.0.4-sparc-solaris
#env INSTALL_ROOT=/tmp/l sh install.sh
#cd ..
#env GNUMAKE=gmake SBCL_HOME=/tmp/l/lib/sbcl PATH=/tmp/l/bin:$PATH sh make.sh --prefix=/usr/versions/sbcl-XXX

#
# subsequent updates are a lot simpler, but you have to make
# sure the previous package is installed
#
# must rebuild maxima if sbcl is updated
#
${THOME}/build/unpack sbcl-2.5.8-source
cd sbcl-2.5.8
env GNUMAKE=gmake sh make.sh --prefix=/usr/versions/sbcl-2.5.8
rm -fr /tmp/l2
env INSTALL_ROOT=/tmp/l2/usr/versions/sbcl-2.5.8 sh install.sh
${THOME}/build/create_pkg TRIBsbcl /tmp/l2
rm -fr /tmp/l2
cd ..
