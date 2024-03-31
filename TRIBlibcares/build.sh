#!/bin/sh
#
# 64-bit only, as is only consumer (wireshark)
#
$THOME/build/dobuild +64 c-ares-1.28.0
$THOME/build/genpkg TRIBlibcares c-ares-1.28.0
