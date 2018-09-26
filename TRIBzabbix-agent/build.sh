#!/bin/sh
#
${THOME}/build/dobuild zabbix-3.0.22 -P /opt/tribblix/zabbix -C "--sysconfdir=/etc --localstatedir=/var --enable-agent"
${THOME}/build/genpkg TRIBzabbix-agent zabbix-3.0.22
