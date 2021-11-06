#!/bin/bash

# 2.1

pwd
ls
ls -a
cd /
cd /home/achao
cd ../..
cd bin
ls
ls -l ls

# 2.2

ls -l /etc
cat /etc/sudoers
groups root achao
sudo cat /etc/sudoers

# 2.3

cat /etc/shells
cat /etc/ssh/ssh_config
head /etc/ssh/ssh_config
tail /etc/ssh/ssh_config
wc -l /etc/ssh/ssh_config
cat /bin/ls
file /etc/ssh/ssh_config
file /bin/ls
ls /bin > ~/file_list.txt
cat ~/file_list.txt
less ~/file_list.txt
head ~/file_list.txt
tail ~/file_list.txt
wc -l ~/file_list.txt
ls /bin | wc -l

# 2.4

cd ~
mkdir demo
ls -l
mkdir -v demo2

vi demo/afile.txt
# 上面的命令打开了 vim 编辑器
# 输入 i 进入插入模型然后输入：
  echo "hello world"
# 按 ESC 退出插入模式，输入 :wq 退出 vim

cat demo/afile.txt

# 2.5

cd demo
cp afile.txt hw.sh
ls
cat hw.sh
cd ..
cp -r demo backup
ls
mv demo/hw.sh backup/
mv demo2 bak
ls
ls backup

# 2.6

rm demo/afile.txt
rm -r bak
ls
rm -ri backup
rm abc
rm -f abc
touch abc.txt afile.txt xyz.txt
ls
rm a*
ls
rm nofile.txt
echo $?
rm -f nofile.txt
echo $?

