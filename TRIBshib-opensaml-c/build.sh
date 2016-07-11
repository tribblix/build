#!/bin/sh
#
# shibboleth stack requires boost ssl curl apache
#
${THOME}/build/dobuild opensaml-2.5.5 -P /opt/tribblix/shibboleth-sp -C "--disable-static --with-log4shib=/opt/tribblix/shibboleth-sp"
${THOME}/build/genpkg TRIBshib-opensaml-c opensaml-2.5.5
