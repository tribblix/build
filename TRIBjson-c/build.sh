#!/bin/sh
#
# the github downloads have obscure names
#
# updates bump the SONAME, forcing a rebuild of any consumers
# so ship a copy of the previous build for compat, see fixit
#
${THOME}/build/cmbuild +64 json-c-json-c-0.17-20230812
${THOME}/build/genpkg TRIBjson-c json-c-json-c-0.17-20230812
