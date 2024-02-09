#!/bin/sh
#
${THOME}/build/dobuild -64only zabbix-6.0.26 -P /opt/tribblix/zabbix -C "--sysconfdir=/etc --localstatedir=/var --enable-agent --with-libpcre2"
${THOME}/build/genpkg TRIBzabbix-agent zabbix-6.0.26
