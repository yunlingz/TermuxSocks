#!/data/data/com.termux/files/usr/bin/sh

pkg upgrade
pkg install python
pkg install llvm
pkg install clang
pkg install vim

TOPDIR=$(pwd)

cd "$TOPDIR/proxychains-ng" || return
./configure --prefix="$HOME/pc"
make
make install
make install-config
cd "$TOPDIR" || return

echo "export PATH=\"$HOME/pc/bin:$PATH\"" >> "$HOME/.bash_profile"
. "$HOME/.bash_profile"
