#!/bin/bash

FLAGS="-I/opt/ps3dev/ppu/include -L/opt/ps3dev/ppu/lib -Werror=implicit-function-declaration"

CONFIG_SITE=config.site ./configure CFLAGS="$FLAGS" CXXFLAGS="$FLAGS" CXX=powerpc64-ps3-elf-cpp CC=powerpc64-ps3-elf-gcc --host=powerpc64-ps3-elf --build=x86-64-linux --with-build-python=python3.6 READELF=powerpc64-ps3-elf-readelf AR=powerpc64-ps3-elf-ar NM=powerpc64-ps3-elf-gcc-nm LD=powerpc64-ps3-elf-ld --without-threads --with-config-site --without-libc --without-libm
