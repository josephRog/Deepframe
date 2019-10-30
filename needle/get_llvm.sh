#!/bin/bash
# Edit the following vars to be correct for your setup

# Can check different LLVM versions on llvm.org
OS_VERSION=x86_64-linux-gnu-ubuntu-16.04
LLVM_SOURCE=http://releases.llvm.org/3.8.1/clang+llvm-3.8.1-${OS_VERSION}.tar.xz


echo "Starting get LLVM for needle script"
echo "OS_VERSION set as: ${OS_VERSION}"
echo "LLVM_SOURCE set as: ${LLVM_SOURCE}"

if [ ! -d "llvm-3.8" ]; then
    echo "Downloading LLVM (145M)"
    wget $LLVM_SOURCE
    echo -n "Unpacking LLVM, this can take some time ... "
    tar xf clang+llvm-3.8.1-${OS_VERSION}.tar.xz
    echo "Done"
    
    # Move LLVM things around
    mv clang+llvm-3.8.1-${OS_VERSION} llvm-3.8
    mv clang+llvm-3.8.1-${OS_VERSION}.tar.xz llvm-3.8
else
    echo "llvm-3.8 directory already exists, please remove to redownload LLVM"
fi
