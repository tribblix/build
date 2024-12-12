#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# to simplify matters, bundle the 3 test modules into this packages as well,
# as nothing else (that I can see) uses them
#
# note that testtools adds setuptools as a requirement
#
${THOME}/build/pkg_pep518 TRIBoslo-db-python-312 oslo.db-17.1.0 testresources-2.0.1 testscenarios-0.5.0 testtools-2.7.2
