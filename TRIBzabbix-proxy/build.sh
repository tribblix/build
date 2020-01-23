#!/bin/sh
#
${THOME}/build/dobuild zabbix-4.0.16 -P /opt/tribblix/zabbix -C "--sysconfdir=/etc --localstatedir=/var --enable-proxy --with-sqlite3 --with-libcurl --with-libpcre-include=/usr/include/pcre"
${THOME}/build/genpkg TRIBzabbix-proxy zabbix-4.0.16
