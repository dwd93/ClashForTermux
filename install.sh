#! /usr/bin/bash
null="> /dev/null 2>&1"
g="\033[1;32m"
r="\033[1;31m"
b="\033[1;34m"
w="\033[0m"
mkdir -p $HOME/.config/clash
echo ""

echo -e $b"➤ "$w"Clash For Termux Non Root"
echo ""

echo -e $b"➤ "$w" prepare for installing dependencies ..."
echo ""

echo -e $b"➤ "$w" installing pacakge: "$g"clash"$w
pkg install clash
echo ""

echo -e $b"➤ "$w" installing pacakge: "$g"unzip"$w
pkg install unzip
echo ""

cd $HOME/ClashForTermux
sleep 2

echo -e $b"➤ "$w" coppying yacd-dashbord: "$g"yacd"$w
cp -r -f yacd-gh-pages.zip $HOME/.config/clash
echo ""

sleep 2

echo -e $b"➤ "$w" coppying DWD_vpn: "$g"vpn"$w
cp -r -f DWD_vpn.zip $HOME/.config/clash
echo ""

sleep 2

echo -e $b"➤ "$w" coppying config.yaml: "$g"config"$w
cp -r -f config.yaml $HOME/.config/clash
echo ""

sleep 2

cd $HOME/.config/clash
echo -e $b"➤ "$w" extracting yacd-dashbord: "$g"yacd"$w
unzip yacd-gh-pages.zip
echo ""

sleep 2

cd $HOME/.config/clash
echo -e $b"➤ "$w" extracting DWD_vpn: "$g"vpn"$w
unzip DWD_vpn.zip
echo ""

sleep 2
rm -r -f yacd-gh-pages.zip
sleep 2
rm -r -f DWD_vpn.zip
sleep 2
cd
rm -r -f ClashForTermux
clash
clear
