#!/bin/sh
#
# shibboleth stack requires boost ssl curl apache
#
${THOME}/build/dobuild xmltooling-1.6.3 -P /opt/tribblix/shibboleth-sp -C "--disable-static --with-log4shib=/opt/tribblix/shibboleth-sp"
${THOME}/build/genpkg TRIBshib-xmltooling-c xmltooling-1.6.3
