#!/bin/sh
#
# shibboleth stack requires boost ssl curl apache
#
env PKG_CONFIG_PATH=/opt/tribblix/shibboleth-sp/lib/pkgconfig:/usr/lib/pkgconfig ${THOME}/build/dobuild xmltooling-3.0.2 -P /opt/tribblix/shibboleth-sp -C "--disable-static --disable-dependency-tracking"
${THOME}/build/genpkg TRIBshib-xmltooling-c xmltooling-3.0.2
