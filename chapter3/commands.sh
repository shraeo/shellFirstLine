#!/bin/bash

# 3.2

apt list --installed
apt list --installed | less -N
apt list --installed | grep '^apt' > apt_related_pkgs
wc -l apt_related_pkgs
sudo apt update
apt search git
apt search '^git'
apt search '^git$'
sudo apt install git
git --version
sudo apt update
apt list --upgradable
sudo apt upgrade
sudo apt remove git

cat /etc/upstream-release/lsb-release
wget https://github.com/jarun/googler/releases/download/v4.3.1/googler_4.3.1-1_ubuntu20.04.amd64.deb
dpkg -I googler_4.3.1-1_ubuntu20.04.amd64.deb
dpkg -c googler_4.3.1-1_ubuntu20.04.amd64.deb
sudo dpkg -i googler_4.3.1-1_ubuntu20.04.amd64.deb
googler -v
dpkg -L googler

file /usr/bin/googler
head /usr/bin/googler
dpkg -l | head
dpkg -l googler
dpkg -S /usr/bin/googler
which ls
dpkg -S /bin/ls
dpkg -S $(which ls)
sudo dpkg -r googler
dpkg -l googler

# 3.3

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
sudo apt install build-essential
echo 'eval $(/home/achao/.linuxbrew/bin/brew shellenv)' >> /home/achao/.profile
eval $(/home/achao/.linuxbrew/bin/brew shellenv)

brew help
brew search coreutils
brew info coreutils
brew install coreutils
brew list
brew outdated
brew upgrade coreutils
brew uninstall coreutils
brew list
brew update
# 下面是卸载 homebrew 命令，如果不想卸载，请跳过此命令，或者在确认是否卸载时输入 N
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh)"

# 3.4

echo 'echo "hello world"' > hw
cat hw
ls -l hw
hw
chmod u+x hw
ls -l hw
hw

echo $PATH
echo PATH
which cat ls vi head less
./hw

sudo cp hw /usr/local/bin
hw
cd /opt
hw
which hw

cat << EOF > printTime
#!/usr/bin/python3
from datetime import datetime
print('现在时刻：%s' % datetime.now())
EOF

chmod u+x printTime
./printTime

cat << EOF > printTime
from datetime import datetime
print('现在时刻：%s' % datetime.now())
EOF

/usr/bin/python3 printTime

cat << EOF > hw.c
#include <stdio.h>
int main() {
    printf("hello world from gcc\n");
    return 0;
}
EOF

gcc -o hello hw.c
file hello
./hello

echo $PATH
echo 'PATH=$PATH:$HOME/.local/bin' >> ~/.bashrc
. ~/.bashrc
echo $PATH

wget git.io/trans
chmod u+x trans
mv trans ~/.local/bin
trans -t zh -b wonderful
trans -t en 精彩

which hw
sudo rm /usr/local/bin/hw

# 3.5

date
man date
date +%d%m%Y
date +%Y/%m/%d
date +%Y/%-m/%-d

wget http://eradman.com/entrproject/code/entr-4.6.tar.gz
tar xf entr-4.6.tar.gz
cd entr-4.6
less README.md

sudo apt update -y
sudo apt install -y checkinstall
./configure
make test
sudo checkinstall

dpkg -l entr
dpkg -L entr

cat << EOF > comp_run
gcc -o hello hw.c && ./hello
EOF
ls hw.c | entr bash comp_run

# 3.6

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
. ~/.bashrc
asdf update

asdf plugin-list-all
asdf plugin-list-all | wc -l
asdf plugin-list-all | grep -i python
asdf plugin-add python
asdf list-all python
asdf list-all python | wc -l

sudo apt install libsqlite3-dev zlib1g-dev libssl-dev \
  libffi-dev libbz2-dev libreadline-dev readline-doc bzip2-doc \
  libncurses5 libncurses5-dev libncursesw5 libncursesw5-dev
asdf install python 3.8.1
asdf list python
python -V
asdf global python 3.8.1
python -V

pip search csvkit
pip install csvkit
pip search visidata
pip install visidata
asdf reshim python

csv  # 然后按两次 <TAB> 键
csvcut --version
csvcut -h

asdf plugin-add rust
asdf list-all rust
asdf install rust stable
asdf global rust stable
cargo search xsv
cargo install xsv
asdf reshim rust

which xsv
file $(which xsv)
cat $(which xsv)
asdf which xsv
file $(asdf which xsv)

