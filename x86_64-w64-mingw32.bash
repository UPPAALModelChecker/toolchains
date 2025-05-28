#!/usr/bin/env bash
set -e

TOOLCHAINS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

TARGET=x86_64-w64-mingw32
ADDRM=64
MTUNE=generic

export CC="${TARGET}-gcc"
#export CFLAGS="-m64"
export CXX="${TARGET}-g++"
#export CXXFLAGS="-m64"
export STRIP=strip
export CMAKE_TOOLCHAIN_FILE="${TOOLCHAINS_DIR}/${TARGET}.cmake"
