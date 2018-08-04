#!/bin/sh
#
# shibboleth stack requires boost ssl curl apache
#
${THOME}/build/dobuild log4shib-2.0.0 -P /opt/tribblix/shibboleth-sp -C --disable-static
${THOME}/build/genpkg TRIBshib-log4shib log4shib-2.0.0
