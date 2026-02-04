#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# it's not a standard configure, so a 64-bit dobuild doesn't work as
# it sets --bindir which isn't recognized
#
# while the build would pick up -m64 for CFLAGS, it doesn't pick
# it up for LDFLAGS so the link fails; hence we tell it directly
# via $CC (and don't use --with-cc any more)
#
env CC="gcc -m64" ${THOME}/build/dobuild nginx-1.28.1 -P /opt/tribblix/nginx -C "--user=nginx --group=nginx --with-http_ssl_module --with-http_v2_module --with-http_stub_status_module --with-http_realip_module --with-http_v3_module"
${THOME}/build/genpkg TRIBblix-nginx nginx-1.28.1
