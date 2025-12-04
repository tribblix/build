#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a preconf file to unpack apr
#
# explicitly disable md to avoid pulling in jansson and curl
#
${THOME}/build/dobuild +64only httpd-2.4.66 -P /opt/tribblix/apache2 -C "--enable-mods-shared=most --disable-md --enable-ssl --enable-proxy --enable-proxy-ajp"
${THOME}/build/genpkg TRIBblix-apache-24 httpd-2.4.66
