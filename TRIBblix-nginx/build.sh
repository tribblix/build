#!/bin/sh
#
#
#
${THOME}/build/dobuild nginx-1.12.0 -P /opt/tribblix/nginx -C "--user=nginx --group=nginx --with-cc=gcc --with-http_ssl_module --with-http_v2_module --with-http_stub_status_module"
${THOME}/build/genpkg TRIBblix-nginx nginx-1.12.0
