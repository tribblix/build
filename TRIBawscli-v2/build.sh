#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# package awscli v2 and its dependencies (some of which are downrev)
# in an isolated venv
#
# currently experimental, but will become the preferred mechanism to deliver
# the aws cli as the v1 modules will be deprecated
#
# fails to build on sparc as the s2n build in awscrt passes flags to
# /usr/ccs/bin/as that it doesn't understand
#

VENV=t1-$$
PVENV=/tmp/venv.${VENV}
DESTENV=/usr/versions/aws
BROOT="/tmp/pct"
PKGNAME="TRIBawscli-v2"

#
# for performance reasons build in /tmp
#
TDIR=$(mktemp -d -p /tmp)
cd $TDIR || exit 0

#
# first create the venv with the basic dependencies; these come
# from awscli, not all are current (by putting everything in a venv
# we don't pollute the regular modules with incompatible versions)
#
${THOME}/build/venv-install -v 3.13 -p "colorama<0.4.7 docutils<0.20.0 ruamel_yaml<=0.19.1 ruamel_yaml_clib<=0.2.15 prompt_toolkit<3.0.52 distro<1.9.0 python-dateutil<=2.9.0 jmespath<1.1.0 urllib3<=2.6.3 wcwidth<0.3.0" -n "${VENV}"

#
# we're going to build awscrt using setup.py, so we need setuptools
#
${PVENV}/bin/pip install setuptools

#
# the awscrt version is pinned by awscli
#
# awscrt has a patch, it's a pretty non-portable ball of wax
#
# we need to pass -z rescan otherwise it misses most of the symbols
# we need explicit -lm to pick up round() correctly
# unfortunately pep518 doesn't seem to pass LDFLAGS through
# use the system libcrypto, the inbuilt one won't compile
#
$THOME/build/unpack awscrt-0.32.2
cd awscrt-0.32.2
env AWS_CRT_BUILD_USE_SYSTEM_LIBCRYPTO=1 ASFLAGS=-64 CFLAGS=-m64 CXXFLAGS=-m64 LDFLAGS="-m64 -lm -z rescan" ${PVENV}/bin/python setup.py build
env AWS_CRT_BUILD_USE_SYSTEM_LIBCRYPTO=1 ASFLAGS=-64 CFLAGS=-m64 CXXFLAGS=-m64 LDFLAGS="-m64 -lm -z rescan" ${PVENV}/bin/python setup.py install

#
# now need to make sure we've resolved all the symbols
#
# using
# ldd -urv build/lib.solaris-2.11-i86pc.64bit-cpython-313/_awscrt.abi3.so
# which will pop up a number of python symbols, that's OK because they'll
# be present in the python process that dlopen's the so, but anything else
# is an error (seen MIN MAX round())
#
ldd -urv build/lib.solaris-2.11-*.64bit-cpython-313/_awscrt.abi3.so | grep 'not found' | grep -v Py
cd ..

#
# now we have awscrt, we can install awscli itself - note that awscli
# has awscrt as a build-time dependency
#
# awscli uses flit_core
#
${PVENV}/bin/pip install "flit_core<3.12.1"
$THOME/build/unpack aws-cli-2.34.57
cd aws-cli-2.34.57
#
# we definitely need no-build-isolation, because we need to use the
# patched awscrt we've just installed
#
${PVENV}/bin/python -mpip install --no-deps --isolated --no-input --exists-action=a --disable-pip-version-check --no-warn-script-location --no-compile --no-build-isolation -I .
cd ..

#
# clean up, we don't need the build modules in the package
#
${PVENV}/bin/pip uninstall -y setuptools
${PVENV}/bin/pip uninstall -y flit_core

#
# we need to recompile everything to remove the pathnames from the pyc files
#
${PVENV}/bin/python -m compileall -f -p / -s "${PVENV}" --invalidation-mode unchecked-hash "${PVENV}"

#
# now we need to relocate the paths embedded in the scripts
#
sed -i "s:${PVENV}:${DESTENV}:g" $(find ${PVENV}/bin -type f -maxdepth 1)

#
# Now we need to relocate the venv itself
#
BDIR="${TDIR}/pkg-venv.$$"
mkdir -p "${BDIR}/${DESTENV}"
# remove the last component
rmdir "${BDIR}/${DESTENV}"
# and relocate
mv "${PVENV}" "${BDIR}/${DESTENV}"

#
# and now package
#
$THOME/build/create_pkg "${PKGNAME}" "${BDIR}" "${BROOT}"

#
# remind user to clean up
#
echo "Now clean up $TDIR"
