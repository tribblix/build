#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the first time through, we need to bootstrap pip, as normally we need
# pip installed already to install modules
#
# run this exactly once, install the resulting package, then use the regular
# build.sh to create the final package that gets pushed to the repo
#
/usr/versions/python-3.13/bin/python3.13 -m ensurepip --altinstall --root=/tmp/bs-pip-313
${THOME}/build/create_pkg TRIBpip-python-313 /tmp/bs-pip-313
