#!/usr/bin/env bash
set -e

TOOLCHAINS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

TARGET=i686-linux
ADDRM=32
MTUNE=generic

export CC=gcc-10
export CFLAGS="-m32"
export CXX=g++-10
export CXXFLAGS="-m32"
export STRIP=strip
export CMAKE_TOOLCHAIN_FILE="${TOOLCHAINS_DIR}/${TARGET}-gcc10.cmake"
