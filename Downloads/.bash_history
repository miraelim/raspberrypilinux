sudo passwd
mkdir test
tpm2_getrandom 4
sudo chmod g+rw /dev/tpm0
sudo chgrp $USER /dev/tpm0
tpm2_getrandom 4
sudo service ssh restart
tpm2_load 
tpm2_load -h
tpm2_createprimary 
tpm2_createprimary -h
cp tpm/tpm2-tools/test/system/test_tpm2_verifysignature.sh test/.
cd test/
./test_tpm2_verifysignature.sh 
sudo tpm2-abrmd
sudo udevadm control --reload-rules && sudo udevadm trigger\
sudo udevadm control --reload-rules && sudo udevadm trigger
sudo mkdir -p /var/lib/tpm
sudo groupadd tss && sudo useradd -M -d /var/lib/tpm -s /bin/false -g tss tss
sudo pkill -HUP dbus-daemon
sudo -u tss tpm2-abrmd --tcti=device
sudo -u tss tpm2-abrmd 
cat /usr/local/lib/udev/rules.d/tpm-udev.rules
sudo systemctl status tpm2-abrmd.service
clear
sudo systemctl  tpm2-abrmd.service enabled
sudo systemctl enabled  tpm2-abrmd.service 
claer
sudo –u tss ./tpm2-abrmd\
sudo –u tss ./tpm2-abrmd
journalctl -xe
clera
clear
systemctl start tpm2-abrmd
systemctl status tpm2-abrmd.service"
systemctl status tpm2-abrmd.service
cd ../tpm
cd tpm2-abrmd/
git branch 
WantedBy=multi-user.target
systemctl start tpm2-abrmd
systemctl status tpm2-abrmd.service
sudo apt install selinux-utils
systemctl status tpm2-abrmd.service
systemctl start tpm2-abrmd
clear
systemctl status tpm2-abrmd.service
make -C selinux install
restorecon /usr/local/sbin/tpm2-abrmd
sudo apt install policycoreutils
sudo vim ~/.bashrc 
source ~/.bashrc 
cp tpm/tpm2-tools/test/system/test_all.sh .
./test_all.sh 
cd tpm/tpm2-tools/test/system/
./test_all.sh 
sudo apt install policycoreutils
sudo rm /var/lib/dpkg/
sudo rm /var/lib/dpkg/lock 
sudo apt install policycoreutils
restorecon /usr/local/sbin/tpm2-abrmd
systemctl start tpm2-abrmd
systemctl status tpm2-abrmd.service
udevadm control --reload-rules && sudo udevadm trigger
sudo udevadm control --reload-rules && sudo udevadm trigger
lear
clear
systemctl start tpm2-abrmd
systemctl status tpm2-abrmd.service
 ls -Z $(which tpm2-abrmd)
ps auxZ | grep tpm2-abrmd
echo $setenforce
setenforce 0
sudo apt-get install selinux-utils
출처: http://minimonk.net/6087 [구차니의 잡동사니 모음]
selinuxenabled
setenforce
selinuxenabled && echo enabled
setenforce 0
 vi /etc/selinux/config
sudo  vi /etc/selinux/config
sudo  vi /etc/selinux/config
sudo  vi /etc/selinux/config
setenforce 0
sudo  vi /etc/selinux/config
setenforce 1 
sudo  vi /etc/selinux/config
setenforce 1 
sudo  vi /etc/selinux/config
reboot
