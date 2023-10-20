[![Anurag's github stats](https://github-readme-stats.vercel.app/api?username=Merlynr&show_icons=true&theme=synthwave)](https://github.com/anuraghazra/github-readme-stats)


# -os-elephant
操作系统真象还原

# bochs 安装

版本：2.6.2
./configure --prefix=/home/merlynr/bochs --enable-ne2000  --enable-all-optimizations --enable-cpu-level=6  --enable-x86-64 \
          --enable-vmx=2 \
          --enable-pci \
          --enable-usb \
          --enable-usb-ohci \
          --enable-e1000 \
          --enable-debugger \
          --enable-debugger-gui \
          --enable-disasm \
          --with-sdl \
          --with-x11

vim Makefile
:92
-lpthread

make -j 4
make install

**需要在窗口进行相关操作**

细看 https://www.cnblogs.com/hell0er/p/17141942.html

[//]: # (./configure --enable-ne2000  --enable-all-optimizations  --enable-cpu-level=6 --enable-x86-64 --enable-vmx=2 --enable-pci --enable-usb --enable-usb-ohci --enable-e1000 --enable-debugger --enable-debugger-gui --enable-disasm --with-sdl --with-x11)