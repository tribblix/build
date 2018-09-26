#!/bin/sh
#
${THOME}/build/dobuild zabbix-3.0.22 -P /opt/tribblix/zabbix -C "--enable-server --with-libcurl --with-postgresql=/opt/tribblix/postgres96/bin/pg_config"
${THOME}/build/genpkg TRIBblix-zabbix zabbix-3.0.22
