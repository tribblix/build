#!/bin/sh
#
${THOME}/build/dobuild zabbix-2.4.8 -P /opt/tribblix/zabbix -C "--sysconfdir=/etc --localstatedir=/var --enable-agent"
${THOME}/build/genpkg TRIBzabbix-agent zabbix-2.4.8
