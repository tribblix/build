#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# orjson needs rust, but is now an optional dependency (not
# even declared)
#
${THOME}/build/pkg_pep518 -N TRIBglances-python-312 glances-4.3.0.4
