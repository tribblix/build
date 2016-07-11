#!/bin/sh
#
# shibboleth stack requires boost ssl curl apache
#
${THOME}/build/dobuild xml-security-c-1.7.3 -P /opt/tribblix/shibboleth-sp -C "--disable-static --without-xalan --with-xerces=/opt/tribblix/shibboleth-sp"
${THOME}/build/genpkg TRIBshib-xmlsecurity-c xml-security-c-1.7.3
