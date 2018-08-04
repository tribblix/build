#!/bin/sh
#
# shibboleth stack requires boost ssl curl apache
#
# build and install components in order:
#
# TRIBshib-log4shib
# TRIBshib-xerces-c
# TRIBshib-xmlsecurity-c
# TRIBshib-xmltooling-c
# TRIBshib-opensaml-c
#
env PKG_CONFIG_PATH=/opt/tribblix/shibboleth-sp/lib/pkgconfig:/usr/lib/pkgconfig TRIBBLIX_CXXFLAGS=-fpermissive ${THOME}/build/dobuild shibboleth-sp-3.0.2 -P /opt/tribblix/shibboleth-sp -C "--disable-static --enable-apache-24 --with-apxs24=/opt/tribblix/apache2/bin/apxs --localstatedir=/var --disable-dependency-tracking"
${THOME}/build/genpkg TRIBshib-shibboleth-sp shibboleth-sp-3.0.2
