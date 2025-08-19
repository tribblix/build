#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# in addition to the mandatory dependencies, we add PySocks, as
# httpie requires the socks extra
#
${THOME}/build/pkg_setup_py TRIBrequests-python-312 requests-2.32.5
