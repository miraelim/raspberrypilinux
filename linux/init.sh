make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- bcm2709_defconfig -j16
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- zImage modules dtbs -j16
