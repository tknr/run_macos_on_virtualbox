#!/bin/bash -x
export IFS=$'\n'

DATE=`date +%Y_%m_%d`
argv=("$@")
CMDNAME=`basename $0`

if [ $# -eq 0 ]; then
	echo "Usage : ${CMDNAME} [vboxname]"
	VBoxManage list vms
	exit 1
fi
VBOX=$1

## https://daimaohsx.dip.jp/wordpress/2021/04/30/easy-how-to-install-and-enjoy-macos-big-sur-in-virtualbox-on-windows/

VBoxManage modifyvm "${VBOX}" --cpu-profile "Intel Core i7-6700K"
VBoxManage setextradata "${VBOX}" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac19,1"
VBoxManage setextradata "${VBOX}" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata "${VBOX}" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Mac-AA95B1DDAB278B95"
VBoxManage setextradata "${VBOX}" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata "${VBOX}" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 

## VirtualBoxの OS Xの解像度の変更方法 
## 0  640 x  480
## 1  800 x  600
## 2 1024 x  768
## 3 1280 x 1024
## 4 1440 x  900
## 5 1900 x 1200
#VBoxManage setextradata "$VBOX" "VBoxInternal2/EfiGopMode" 4

## VirtualBoxの OS Xを任意の解像度にする方法
#VBoxManage setextradata "$VBOX" "CustomVideoMode1" "1920x1080x32"
#VBoxManage setextradata "$VBOX" "GUI/CustomVideoMode1" "1920x1080x32"


