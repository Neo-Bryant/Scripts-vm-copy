# Scripts-vm-copy
on the KVM platform,
copy a vm in a very short time and meet the requirement.
.welcome to join this little project

说明：
  使用环境：KVM
  主要配置实现的命令：guestmount
  核心脚本文件：vm-copy2  qemu-demo.xml
  辅助脚本文件：vmbox  img-choose
************************************************
vm-copy2实现的功能:
  1.虚拟机名称设置
  2.主机名设置
  3.虚拟机的网卡设定
  4.为指定网卡配置IP和子掩
  5.按需配置桥接外网，实现虚拟机上网
  6.自动配置实现ssh免密登录
  7.自动搭建好yum(修改本来存在的yum配置)
  8.根据IP自动选择连接真机的网卡(KVM配置)
  9.实现与主机时间同步配置
  10.其他:
    脚本环境自动检测等
    初次使用可协助完成部署环境
    虚拟机｜主机名称检查
    网卡名称合法性判定
    子网掩码合法性判定
***********************************************
vm-box实现的功能：
  1.创建虚拟机（调用vm-copy2脚本）
  2.批量启动虚拟机
  3.批量关闭虚拟机
  4.批量重启虚拟机
  5.批量删除虚拟机
***********************************************
img-choose实现的功能：
  修改镜像磁盘文件的模板文件
注意：该操作适用于首次部署环境使用，否则可能会造成前面由vm-copy2创建虚拟机崩溃。
***********************************************
注:
  1.".qemu_base.img文件"和".qemu_base.xml文件"为虚拟机必要文件!
  2.初次运行脚本时会自动检测脚本所需要的环境，如模板文件的部署，guestmount命令检查等
  3.如想修改虚拟机的镜像磁盘文件模板（.qemu_base.img文件），可执行脚本img-choose.sh按提示进行修改。
***********************************************
2019-07-14
曾才觉(Neo-Bryant)

