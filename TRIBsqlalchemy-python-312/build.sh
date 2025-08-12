#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# it does depend on greenlet, although pip doesn't pick that up as
# there's an architecture switch that doesn't work the way they
# expect on solaris
#
${THOME}/build/pkg_pep518 -N TRIBsqlalchemy-python-312 sqlalchemy-2.0.43
