#!/bin/sh
#
# we need a temporary copy of libevent
# avoid tying it to the normal preconf as it's not relevant for the agent
#
${THOME}/build/patches/zabbix-server.preconf
${THOME}/build/dobuild -64only zabbix-6.0.26 -P /opt/tribblix/zabbix -C "--sysconfdir=/etc --localstatedir=/var --enable-proxy --with-sqlite3 --with-libcurl --with-libpcre2 --with-libevent=/tmp/mc"
${THOME}/build/genpkg TRIBzabbix-proxy zabbix-6.0.26
rm -fr /tmp/mc
