#!/bin/bash
#本脚本为实现快速部署vm-box所需要的环境
echo -e "----------------------------------------------------------------------------------------------
""\033[33m""系统磁盘镜像目录(/var/lib/libvirt/images/)文件：""\033[39m"
ls /var/lib/libvirt/images/
echo "----------------------------------------------------------------------------------------------"
read -p "请选择一个干净的磁盘镜像文件(*.img)做为模板(建议使用全新虚拟机的)，并输入该文件全名：" img
cp /var/lib/libvirt/images/{${img},qemu-demo.img}
cp /root/Scripts-vm-copy/qemu-demo.xml /root/.qemu-demo.xml
ln -s /root/Scripts-vm-copy/vm-box /usr/bin/
ln -s /root/Scripts-vm-copy/vm-copy /usr/bin/
echo -e "\033[33m""'vm-box|vm-copy'环境部署完成！可直接在命令行执行""\033[39m"


