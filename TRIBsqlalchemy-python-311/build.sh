#!/bin/sh
#
# it does depend on greenlet, although pip doesn't pick that up as
# there's an architecture switch that doesn't work the way they
# expect on solaris
#
${THOME}/build/pkg_pep518 TRIBsqlalchemy-python-311 SQLAlchemy-2.0.28
