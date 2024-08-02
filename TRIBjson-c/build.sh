#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# updates bump the SONAME
#
${THOME}/build/cmbuild +64 json-c-json-c-0.17-20230812
${THOME}/build/genpkg TRIBjson-c json-c-json-c-0.17-20230812
