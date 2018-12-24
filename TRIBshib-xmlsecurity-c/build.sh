#!/bin/sh
#
# shibboleth stack requires boost ssl curl apache
#
env PKG_CONFIG_PATH=/opt/tribblix/shibboleth-sp/lib/pkgconfig:/usr/lib/pkgconfig ${THOME}/build/dobuild xml-security-c-2.0.2 -P /opt/tribblix/shibboleth-sp -C "--disable-static --without-xalan"
${THOME}/build/genpkg TRIBshib-xmlsecurity-c xml-security-c-2.0.2
