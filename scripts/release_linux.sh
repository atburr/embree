#!/bin/bash
mkdir -p $1/bin/x64

cp build/verify $1/bin/x64
cp build/benchmark $1/bin/x64

cp build/tutorial00 $1/bin/x64
cp build/tutorial01 $1/bin/x64
cp build/tutorial02 $1/bin/x64
cp build/tutorial03 $1/bin/x64
cp build/tutorial04 $1/bin/x64
cp build/tutorial05 $1/bin/x64
cp build/tutorial06 $1/bin/x64
cp build/tutorial07 $1/bin/x64

cp build/tutorial00_ispc $1/bin/x64
cp build/tutorial01_ispc $1/bin/x64
cp build/tutorial02_ispc $1/bin/x64
cp build/tutorial03_ispc $1/bin/x64
cp build/tutorial04_ispc $1/bin/x64
cp build/tutorial05_ispc $1/bin/x64
cp build/tutorial06_ispc $1/bin/x64
cp build/tutorial07_ispc $1/bin/x64

cp build/verify_xeonphi $1/bin/x64
cp build/benchmark_xeonphi $1/bin/x64

cp build/tutorial00_xeonphi $1/bin/x64
cp build/tutorial01_xeonphi $1/bin/x64
cp build/tutorial02_xeonphi $1/bin/x64
cp build/tutorial03_xeonphi $1/bin/x64
cp build/tutorial04_xeonphi $1/bin/x64
cp build/tutorial05_xeonphi $1/bin/x64
cp build/tutorial06_xeonphi $1/bin/x64
cp build/tutorial07_xeonphi $1/bin/x64

cp build/tutorial00_xeonphi_device $1/bin/x64
cp build/tutorial01_xeonphi_device $1/bin/x64
cp build/tutorial02_xeonphi_device $1/bin/x64
cp build/tutorial03_xeonphi_device $1/bin/x64
cp build/tutorial04_xeonphi_device $1/bin/x64
cp build/tutorial05_xeonphi_device $1/bin/x64
cp build/tutorial06_xeonphi_device $1/bin/x64
cp build/tutorial07_xeonphi_device $1/bin/x64

mkdir -p $1/lib/x64
cp build/libembree.so.2.3.1 $1/lib/x64
ln -sf libembree.so.2.3.1 $1/lib/x64/libembree.so.2 
cp build/libembree_xeonphi.so.2.3.1 $1/lib/x64
ln -sf libembree_xeonphi.so.2.3.1 $1/lib/x64/libembree_xeonphi.so.2 

mkdir -p $1/include
cp -r include/embree2 $1/include

make -C doc readme_bin.txt readme_bin.pdf
cp doc/readme_bin.txt $1/readme.txt
cp doc/readme_bin.pdf $1/readme.pdf
cp scripts/install_linux/install.sh $1/
cp scripts/install_linux/paths.sh $1/
