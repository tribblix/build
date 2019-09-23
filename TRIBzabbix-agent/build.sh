#!/bin/sh
#
${THOME}/build/dobuild zabbix-4.0.12 -P /opt/tribblix/zabbix -C "--sysconfdir=/etc --localstatedir=/var --enable-agent --with-libpcre-include=/usr/include/pcre"
${THOME}/build/genpkg TRIBzabbix-agent zabbix-4.0.12
