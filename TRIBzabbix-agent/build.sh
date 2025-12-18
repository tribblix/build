#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only zabbix-6.0.43 -P /opt/tribblix/zabbix -C "--sysconfdir=/etc --localstatedir=/var --enable-agent --with-libpcre2"
${THOME}/build/genpkg TRIBzabbix-agent zabbix-6.0.43
