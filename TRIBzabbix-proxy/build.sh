#!/bin/sh
#
${THOME}/build/dobuild zabbix-2.4.8 -P /opt/tribblix/zabbix -C "--sysconfdir=/etc --localstatedir=/var --enable-proxy --with-sqlite3 --with-libcurl"
${THOME}/build/genpkg TRIBzabbix-proxy zabbix-2.4.8
