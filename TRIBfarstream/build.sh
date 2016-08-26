#!/bin/sh
#
${THOME}/build/dobuild farstream-0.2.8 -C "--disable-python"
${THOME}/build/genpkg TRIBfarstream farstream-0.2.8
