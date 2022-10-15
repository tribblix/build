#!/bin/sh
#
case `uname -p` in
sparc)
  ARCH64="sparcv9"
  ;;
i386)
  ARCH64="amd64"
  ;;
esac

${THOME}/build/unpack cffi-1.14.5
cd cffi-1.14.5
env PKG_CONFIG_PATH=/usr/lib/${ARCH64}/pkgconfig /usr/versions/python-3.10/bin/python3 setup.py build
rm -fr /tmp/pil
env PKG_CONFIG_PATH=/usr/lib/${ARCH64}/pkgconfig /usr/versions/python-3.10/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBcffi-python-310 /tmp/pil
cd ..
rm -fr /tmp/pil
