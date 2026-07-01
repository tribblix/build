#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env TRIBBLIX_CFLAGS=-Wno-incompatible-pointer-types ${THOME}/build/dobuild -64only zabbix-7.0.27 -P /opt/tribblix/zabbix -C "--sysconfdir=/etc --localstatedir=/var --enable-agent --with-libpcre2"
${THOME}/build/genpkg TRIBzabbix-agent zabbix-7.0.27
