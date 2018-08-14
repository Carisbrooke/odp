#!/bin/bash

JOBS=`nproc`

if [ $# -eq 1 ]; then
	echo "setting jobs to cmdline param"
	JOBS=$1
fi

echo "jobs number is: $JOBS"

./bootstrap
./configure --enable-dpdk --disable-static-applications --with-dpdk-path=/root/dpdk/dpdk/x86_64-native-linuxapp-gcc/
make -j${JOBS} && echo "success" || echo "fail"
make install
ldconfig
