#!/bin/sh
#
${THOME}/build/dobuild enlightenment-0.19.3 -C "--disable-connman --disable-cpufreq --disable-battery --disable-mixer --disable-bluez4 --disable-temperature --disable-device-udev --disable-mount-udisks --disable-device-hal"
${THOME}/build/genpkg TRIBe19-enlightenment enlightenment-0.19.3
