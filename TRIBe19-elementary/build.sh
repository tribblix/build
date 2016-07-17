#!/bin/sh
#
env LDFLAGS="-lnsl -lsocket" ${THOME}/build/dobuild elementary-1.12.4
${THOME}/build/genpkg TRIBe19-elementary elementary-1.12.4
