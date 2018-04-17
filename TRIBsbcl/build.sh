#!/bin/sh
#
# (Steel Bank Common Lisp)
#
# The build creates a 64-bit version by default, hence SBCL_ARCH
#
# initially we needed a binary bootstrap
#
#${THOME}/build/unpack sbcl-1.2.7-x86-solaris-binary
#${THOME}/build/unpack sbcl-1.3.20-source
#cd sbcl-1.2.7-x86-solaris
#env INSTALL_ROOT=/tmp/l sh install.sh
#cd ..
#cd sbcl-1.3.20
#env SBCL_ARCH=x86 GNUMAKE=gmake SBCL_HOME=/tmp/l/lib/sbcl PATH=/tmp/l/bin:$PATH sh make.sh --prefix=/usr/versions/sbcl-1.3.20
#env INSTALL_ROOT=/tmp/l2/usr/versions/sbcl-1.3.20 sh install.sh
#${THOME}/build/create_pkg TRIBsbcl /tmp/l2

#
# subsequent updates are a lot simpler, but you have to make
# sure the previous package is installed
#
${THOME}/build/unpack sbcl-1.4.6-source
cd sbcl-1.4.6
env PATH=/usr/versions/sbcl-1.3.20/bin:$PATH SBCL_ARCH=x86 GNUMAKE=gmake sh make.sh --prefix=/usr/versions/sbcl-1.4.6
rm -fr /tmp/l2
env INSTALL_ROOT=/tmp/l2/usr/versions/sbcl-1.4.6 sh install.sh
${THOME}/build/create_pkg TRIBsbcl /tmp/l2
rm -fr /tmp/l2
cd ..
