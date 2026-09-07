#!/bin/bash

set -eu
arch=$1
# ffmpeg
ARCH=${arch} ./scripts/mbedtls.sh build
ARCH=${arch} ./scripts/dav1d.sh build

ARCH=${arch} ./scripts/ffmpeg.sh build

# fontconfig
ARCH=${arch} ./scripts/libxml2.sh build

# libass
ARCH=${arch} ./scripts/fribidi.sh build
ARCH=${arch} ./scripts/freetype.sh build
ARCH=${arch} ./scripts/harfbuzz.sh build
ARCH=${arch}./scripts/fontconfig.sh build
ARCH=${arch} ./scripts/libass.sh build

# libplacebo
ARCH=${arch} ./scripts/dovi_tools.sh build
ARCH=${arch} ./scripts/lcms.sh build
ARCH=${arch} ./scripts/shaderc.sh build
ARCH=${arch} ./scripts/libplacebo.sh build

# mpv
ARCH=${arch} ./scripts/lua.sh build
ARCH=${arch} ./scripts/mpv.sh build
