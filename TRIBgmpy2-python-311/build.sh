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
#

${THOME}/build/patches/gmpy2.conf gmpy2-2.1.5

#
# this is manual because it's a slightly different path to pick up the
# static mpc and mpfr
#
PYVER="3.11"
BUILD="${THOME}/build"
BDIR="/tmp/pct/pkg.$$"
rm -fr ${BDIR}
$THOME/build/unpack gmpy2-2.1.5
cd gmpy2-2.1.5
python${PYVER} setup.py build_ext --static-dir=/tmp/.gmpy2static

python${PYVER} setup.py install --no-compile --root="${BDIR}"
cd ..

python${PYVER} -m compileall -f -p / -s "${BDIR}" --invalidation-mode unchecked-hash "${BDIR}/usr/versions/python-${PYVER}/lib/python${PYVER}/site-packages"

"${BUILD}/create_pkg" TRIBgmpy2-python-311 "${BDIR}" /tmp/pct

rm -fr "${BDIR}"
rm -fr /tmp/.gmpy2static
