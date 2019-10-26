#!/bin/sh
#
#
#
${THOME}/build/dobuild tengine-2.3.2 -P /opt/tribblix/tengine -C "--user=tengine --group=tengine --with-cc=gcc --with-http_ssl_module --with-http_v2_module --with-http_stub_status_module --with-http_realip_module"
${THOME}/build/genpkg TRIBblix-tengine tengine-2.3.2
