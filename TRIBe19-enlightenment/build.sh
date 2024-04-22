#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only enlightenment-0.22.4 -C "--disable-connman --disable-cpufreq --disable-battery --disable-mixer --disable-bluez4 --disable-temperature --disable-device-udev --disable-mount-udisks --disable-device-hal --disable-sysinfo"
${THOME}/build/genpkg TRIBe19-enlightenment enlightenment-0.22.4
