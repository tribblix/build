#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# we need a temporary copy of libevent
# avoid tying it to the normal preconf as it's not relevant for the agent
#
# needs a server with php, but the packages for that are declared as
# part of the zabbix-server overlay rather than as dependencies here
#
${THOME}/build/patches/zabbix-server.preconf
${THOME}/build/dobuild -64only zabbix-7.0.23 -P /opt/tribblix/zabbix -C "--enable-server --with-libcurl --with-postgresql=/opt/tribblix/postgres17/bin/pg_config --with-libpcre2 --with-libevent=/tmp/mc"
${THOME}/build/genpkg TRIBblix-zabbix zabbix-7.0.23
rm -fr /tmp/mc
