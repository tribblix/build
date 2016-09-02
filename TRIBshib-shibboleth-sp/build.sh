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
env TRIBBLIX_CXXFLAGS=-fpermissive ${THOME}/build/dobuild shibboleth-sp-2.6.0 -P /opt/tribblix/shibboleth-sp -C "--disable-static --with-log4shib=/opt/tribblix/shibboleth-sp --enable-apache-24 --with-apxs24=/opt/tribblix/apache2/bin/apxs"
${THOME}/build/genpkg TRIBshib-shibboleth-sp shibboleth-sp-2.6.0
