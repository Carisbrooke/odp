#!/bin/bash

./bootstrap
./configure --enable-dpdk --disable-static-applications --with-dpdk-path=/root/dpdk/dpdk/x86_64-native-linuxapp-gcc/
make && echo "success" || echo "fail"
make install
ldconfig
