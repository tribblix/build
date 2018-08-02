#!/bin/sh
#
# the lxadm build includes the modules it needs, so we need to
# install it somewhere isolated
#
${THOME}/build/dobuild lxadm-0.1.6 -P /usr/versions/lxadm -C --localstatedir=/var/zap/lxadm
${THOME}/build/genpkg TRIBlxadm lxadm-0.1.6
