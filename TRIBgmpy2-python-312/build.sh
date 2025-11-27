#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
# fix environment
#
LC_ALL=C
export LC_ALL
TZ=UTC
export TZ

#
# first build a static copy of mpc/mpfr
# 2.2 needs newer mpc/mpfr than prior versions
#
${THOME}/build/patches/gmpy22.preconf

#
# this is manual because it's a slightly different path to pick up the
# static mpc and mpfr
#
PYVER="3.12"
BUILD="${THOME}/build"
BDIR="/tmp/pct/pkg.$$"
rm -fr ${BDIR}
$THOME/build/unpack gmpy2-2.2.2
cd gmpy2-2.2.2
python${PYVER} setup.py build_ext --static-dir=/tmp/.gmpy22static

#
# post 2.2.0a1 broke the build by recompiling at install time (self.force = 1)
# so we have to tell it again where mpc and mpfr are to be found
#
env LDFLAGS=-L/tmp/.gmpy22static/lib CPPFLAGS=-I/tmp/.gmpy22static/include python${PYVER} setup.py install --no-compile --root="${BDIR}"
cd ..

python${PYVER} -m compileall -f -p / -s "${BDIR}" --invalidation-mode unchecked-hash "${BDIR}/usr/versions/python-${PYVER}/lib/python${PYVER}/site-packages"

"${BUILD}/create_pkg" TRIBgmpy2-python-312 "${BDIR}" /tmp/pct

rm -fr "${BDIR}"
rm -fr /tmp/.gmpy22static
