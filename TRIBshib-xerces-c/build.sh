#!/bin/sh
#
# shibboleth stack requires boost ssl curl apache
#
${THOME}/build/dobuild xerces-c-3.1.4 -P /opt/tribblix/shibboleth-sp -C "--disable-static --enable-netaccessor-socket"
${THOME}/build/genpkg TRIBshib-xerces-c xerces-c-3.1.4
