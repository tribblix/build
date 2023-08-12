#!/bin/sh
#
# leptonica is needed by tesseract
#
${THOME}/build/dobuild -64only leptonica-1.82.0
${THOME}/build/genpkg TRIBleptonica leptonica-1.82.0
