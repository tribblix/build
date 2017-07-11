#!/bin/sh
#
# this is used for the illumos build
#
${THOME}/build/dobuild httpd-2.2.34 -P /opt/tribblix/apache22 -C "--enable-mods-shared=most --with-expat=builtin --enable-ssl --enable-proxy --enable-proxy-ajp"
${THOME}/build/genpkg TRIBblix-apache-22 httpd-2.2.34
