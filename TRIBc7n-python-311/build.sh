#!/bin/sh
#
# get the tarball from https://github.com/cloud-custodian/cloud-custodian
# rather than PyPi, which only has the wheel and not source
#
# note also that the version on PyPi may differ from that here
# as it may omit the last .0
#
# c7n has a number of pinned dependencies that conflict with other modules
# the other modules always take precedence, because the pins in c7n are
# often for its submodules rather than for c7n core
#
${THOME}/build/pkg_pep518 TRIBc7n-python-311 cloud-custodian-0.9.35.0
