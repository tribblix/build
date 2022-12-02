#!/bin/sh
#
# we need a temporary copy of libevent
# avoid tying it to the normal preconf as it's not relevant for the agent
#
${THOME}/build/patches/zabbix-server.preconf
${THOME}/build/dobuild -64only zabbix-6.0.11 -P /opt/tribblix/zabbix -C "--enable-server --with-libcurl --with-postgresql=/opt/tribblix/postgres13/bin/pg_config --with-libpcre-include=/usr/include/pcre --with-libevent=/tmp/mc"
${THOME}/build/genpkg TRIBblix-zabbix zabbix-6.0.11
rm -fr /tmp/mc
