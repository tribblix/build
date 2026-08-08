#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# now in maintenance mode, we're supposed to use TRIBawscli-v2
#
# as of 1.46.0, vendors botocore and s3transfer
#
${THOME}/build/pkg_pep518 -N TRIBawscli-python-313 awscli-1.46.0
