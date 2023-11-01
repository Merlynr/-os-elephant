#!/bin/bash
# Copyright (c) 2017, EverSec
# All rights reserved.
# 
# setup.sh
#
# author：lichaoqun
# created on：2023/11/1 16:47:13
#
# os-elephant
#
echo "check........"
if [ ! -e  /usr/local/share/bochs/keymaps/x11-pc-us.map ];then
    echo "/usr/share/bochs/keymaps/x11-pc-us.map does not exist..."
    exit 1
else
    file /usr/local/share/bochs/keymaps/x11-pc-us.map
fi

if [ ! -e  /usr/local/share/bochs/BIOS-bochs-latest ];then
    echo " /usr/share/bochs/BIOS-bochs-latest does not exist..."
    exit 1
else
    file /usr/local/share/bochs/BIOS-bochs-latest
fi

if [ ! -e  /usr/share/seavgabios/vgabios-isavga.bin ];then
    echo "/usr/share/vgabios/vgabios.bin does not exist..."
    exit 1
else
    file /usr/share/seavgabios/vgabios-isavga.bin

fi
echo "check over ...."
sleep 2
echo "run........"
bochs -f bochsrc.disk