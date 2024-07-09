#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# 2.23.0 needed urllib3 <2, 2.23.1 needed urllib3>=2
# current have urllib3 as optional but support all versions
#
${THOME}/build/pkg_setup_py TRIBgoogle-auth-python-312 google_auth-2.32.0
