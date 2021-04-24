#!/bin/sh
#
# leptonica is needed by tesseract
#
${THOME}/build/dobuild -64 leptonica-1.74.4
${THOME}/build/genpkg TRIBleptonica leptonica-1.74.4
