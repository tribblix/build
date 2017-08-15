#!/bin/sh
#
# (Steel Bank Common Lisp)
#
# The build creates a 64-bit version by default, hence SBCL_ARCH
#
${THOME}/build/unpack sbcl-1.2.7-x86-solaris-binary
${THOME}/build/unpack sbcl-1.3.20-source
cd sbcl-1.2.7-x86-solaris
env INSTALL_ROOT=/tmp/l sh install.sh
cd ..
cd sbcl-1.3.20
env SBCL_ARCH=x86 GNUMAKE=gmake SBCL_HOME=/tmp/l/lib/sbcl PATH=/tmp/l/bin:$PATH sh make.sh --prefix=/usr/versions/sbcl-1.3.20
env INSTALL_ROOT=/tmp/l2/usr/versions/sbcl-1.3.20 sh install.sh
${THOME}/build/create_pkg TRIBsbcl /tmp/l2
