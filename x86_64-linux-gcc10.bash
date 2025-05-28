#!/usr/bin/env bash
set -e

TOOLCHAINS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

TARGET=x86_64-linux
ADDRM=64
MTUNE=generic

export CC=gcc-10
export CFLAGS="-m64"
export CXX=g++-10
export CXXFLAGS="-m64"
export STRIP=strip
export CMAKE_TOOLCHAIN_FILE="${TOOLCHAINS_DIR}/${TARGET}-gcc10.cmake"
