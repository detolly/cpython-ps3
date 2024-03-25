#!/bin/bash

CELLSDK=/usr/local/cell
CELLPPU=$CELLSDK/target/ppu
CELLHOST=$CELLSDK/host-win32/ppu

source $CELLSDK/ps3toolchain.sh

FLAGS="-I$CELLPPU/include -I$CELLPPU/../common/include -L$CELLPPU/lib --sysroot $CELLPPU -mcpu=cell -nostdlibinc -Werror"

CONFIG_SITE=config.site ./configure \
CFLAGS="$FLAGS" \
CXXFLAGS="$FLAGS" \
LDFLAGS="$LD_FLAGS" \
CXX=ppu-lv2-cpp \
CC=ppu-lv2-gcc \
--prefix=/dev_hdd0/python/lib \
--exec-prefix=/dev_hdd0/python/lib \
--host=ppu-lv2 \
--build=x86-64-linux \
--with-build-python=python3.6 \
--without-threads \
--with-config-site

echo "[!] config done"

./compile_commands.sh
