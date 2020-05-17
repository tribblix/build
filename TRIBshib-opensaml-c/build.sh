#!/bin/sh
#
# shibboleth stack requires boost ssl curl apache
#
env PKG_CONFIG_PATH=/opt/tribblix/shibboleth-sp/lib/pkgconfig:/usr/lib/pkgconfig ${THOME}/build/dobuild opensaml-3.1.0 -P /opt/tribblix/shibboleth-sp -C "--disable-static --disable-dependency-tracking"
${THOME}/build/genpkg TRIBshib-opensaml-c opensaml-3.1.0
