#!/bin/sh
#
# we need a temporary copy of libevent
# avoid tying it to the normal preconf as it's only relevant for the server
#
${THOME}/build/patches/zabbix-server.preconf
${THOME}/build/dobuild zabbix-4.0.22 -P /opt/tribblix/zabbix -C "--enable-server --with-libcurl --with-postgresql=/opt/tribblix/postgres11/bin/pg_config --with-libpcre-include=/usr/include/pcre --with-libevent=/tmp/mc"
${THOME}/build/genpkg TRIBblix-zabbix zabbix-4.0.22
rm -fr /tmp/mc
