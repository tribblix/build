#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# simple wrapper for the clamav-rest service
#
cd /opt/tribblix/clamav-rest || exit 1
exec /usr/bin/java -jar /opt/tribblix/clamav-rest/lib/clamav-rest-1.0.2.jar --server.port=8080 --clamd.host=localhost --clamd.port=3310
