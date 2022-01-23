#!/bin/sh
#
${THOME}/build/dobuild itstool-2.0.7 -C PYTHON=/usr/versions/python-3.9/bin/python3
${THOME}/build/genpkg TRIBitstool itstool-2.0.7
