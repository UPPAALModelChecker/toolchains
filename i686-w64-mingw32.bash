#!/usr/bin/env bash
set -e

TOOLCHAINS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

TARGET=i686-w64-mingw32
ADDRM=32
MTUNE=generic

export CC="${TARGET}-gcc"
#export CFLAGS="-m32"
export CXX="${TARGET}-g++"
#export CXXFLAGS="-m32"
export STRIP="${TARGET}-strip"
export CMAKE_TOOLCHAIN_FILE="${TOOLCHAINS_DIR}/${TARGET}.cmake"
