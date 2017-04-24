#!/bin/sh
#
# leptonica is needed by tesseract
#
${THOME}/build/dobuild leptonica-1.74.1
${THOME}/build/genpkg TRIBleptonica leptonica-1.74.1
