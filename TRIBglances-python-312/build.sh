#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# orjson needs rust, but is now an optional dependency (not
# even declared)
#
# the "ip" extra declares a dependency on netifaces2 which is
# non-portable and doesn't work, but netifaces might actually
# work well enough
#
${THOME}/build/pkg_pep518 -N TRIBglances-python-312 glances-4.4.1
