#!/usr/bin/env bash
cd $HOME/Al-Abesi
install() {
rm -rf $HOME/.telegram-cli
sudo chmod +x tg
chmod +x Al-Abesi
chmod +x ts
./ts
}
get() {
rm -fr Al-Abesi.lua
rm -fr sudo.lua
wget "https://raw.githubusercontent.com/TAl-Abesi/Al-Abesi/master/Al-Abesi.lua"
lua start.lua
}
installall(){
apt update
}
if [ "$1" = "ins" ]; then
install
fi
if [ "$1" = "get" ]; then
get
fi
installall
cd ..
rm -rf luarocks*
cd Al-Abesi
rm -rf luarocks*
lua start.lua


