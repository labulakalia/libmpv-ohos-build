#!/bin/bash

set -eu

mkdir -p ./libmpv/$1-build
./download/download-sdk.sh
# if [ "$(uname -s)" = "Linux" ]; then
#   if [ ! -d /sdk ]; then
#     echo "Downloading OpenHarmony SDK..."
#     ./download/download-sdk.sh
#     ln -sf ../crossfiles/${arch}-crossfile-linux.ini ./libmpv/${arch}-crossfile.ini
#   fi
# elif [ "$(uname -s)" = "Darwin" ]; then
#   echo "Using DevEco Studio for macOS, please make sure DevEco Studio is installed."
#   ln -sf ../crossfiles/arm64-crossfile-macos.ini ./libmpv/arm64-crossfile.ini
# else
#   echo "Unsupported platform." >&2
#   exit 1
# fi

./download/download-ohos-rs.sh
./download/download-deps.sh
