#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# patches and support files taken from OmniOS
#
${THOME}/build/dobuild -64only chrony-4.5 -C "--sysconfdir=/etc/inet --with-user=chrony --enable-ntp-signd"
${THOME}/build/genpkg TRIBchrony chrony-4.5
