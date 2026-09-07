#!/bin/bash

set -exu

sh -x ./download.sh amd64
./patch.sh

mkdir -p ./libmpv/amd64-build
ln -sf ./crossfiles/amd64-crossfile-linux.ini ./libmpv/rossfile.ini
sh -x ./build.sh amd64

mkdir -p ./libmpv/arm64-build
ln -sf ./crossfiles/arm64-crossfile-linux.ini ./libmpv/rossfile.ini
sh -x ./build.sh arm64


# cd ./libmpv/arm64-build
# zip libmpv_aarch64.zip libmpv.so
