#!/bin/bash
echo -e "\033[31m""警告：修改磁盘镜像文件有风险，可能会导致已有的虚拟机崩溃！""\033[39m"
read -p "此命令一般在部署环境时需要修改才运行，确认执行？（y|n，默认n）：" an
an=${an:-n}
if [ "$an" == "y" ];then
	echo -n "正在准备脚本vm-copy2的磁盘镜像文件模板文件切换:"
	astr="==->"
	echo -ne "\033[40G"'['
	echo -ne "\033[85G"']'
	for i in {41..80};do
	    echo -ne "\033[${i}G${astr}"
	    sleep 0.05
	done
	echo -e "\033[33m""\033[87G"'请依照提示进行更换！'"\033[39m"
	sleep 3
	echo -e "----------------------------------------------------------------------------------------------
""\033[33m""系统磁盘镜像目录(/var/lib/libvirt/images/)文件：""\033[39m"
	ls -A /var/lib/libvirt/images/
	echo "----------------------------------------------------------------------------------------------"
	read -p "请选择一个干净的磁盘镜像文件(*.img)做为模板(建议使用全新虚拟机的)，并输入该文件全名：" img
	rm -f /var/lib/libvirt/images/.qemu_base.img &> /dev/null
#	cp /var/lib/libvirt/images/{${img},.qemu_base.img} || exit
	qemu-img create -f qcow2 -b /var/lib/libvirt/images/{${img},.qemu_base.img} &> /dev/null || exit 45
	echo -e "\033[33m""脚本vm-copy2磁盘镜像文件修改完成！""\033[39m"
elif [ "$an" == "n" ];then 
	exit 
else
	echo "错误：输入不符合要求"
	exit 11
fi

