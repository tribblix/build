#!/bin/sh
#
# the github downloads have obscure names
#
# updates bump the SONAME, forcing a rebuild of libmypaint and repmgr
#
${THOME}/build/dobuild +64 json-c-json-c-0.12.1-20160607 -J 1
${THOME}/build/genpkg TRIBjson-c json-c-json-c-0.12.1-20160607
