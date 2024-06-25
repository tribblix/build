#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# entertainingly, the python module has a filename clash
# with the regular protobuf download
#
${THOME}/build/pkg_setup_py TRIBprotobuf-python-311 protobuf-5.27.1
