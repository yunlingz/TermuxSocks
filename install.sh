#!/data/data/com.termux/files/usr/bin/sh

pkg upgrade
pkg install python
pkg install llvm
pkg install clang
pkg install vim

TOPDIR=$(pwd)

cd "$TOPDIR/proxychains-ng"
./configure --prefix=$HOME/pc
make
make install
cd $TOPDIR

mkdir -p "$HOME/.proxychains"
cp "$TOPDIR/proxychains-ng/src/proxychains.conf" "$HOME/.proxychains/proxychains.conf"


