#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# PYTOKENS_USE_MYPYC turns off mypyc which doesn't build
#
env PYTOKENS_USE_MYPYC=0 ${THOME}/build/pkg_pep518 -N TRIBpytokens-python-312 pytokens-0.4.1
