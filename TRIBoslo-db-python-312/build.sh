#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# to simplify matters, bundle the 3 test modules into this packages as well,
# as nothing else (that I can see) uses them
#
${THOME}/build/pkg_pep518 -N TRIBoslo-db-python-312 oslo_db-18.0.0 testresources-2.0.2 testscenarios-0.5.0 testtools-2.8.4
