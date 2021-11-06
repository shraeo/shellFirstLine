# 4.1

sudo apt install -y curl zsh zsh-doc git
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ps
echo $ZSH_THEME

# 4.2

PS1="%n@%M %~ > "
cd /usr/local/bin
head ~/.oh-my-zsh/themes/junkfood.zsh-theme

PS1="%n@%M %~ %W %t > "
PS1="%n@%M %~ %D{%Y/%-m/%-d} %t > "
PS1="%n@%M %~ %D{%Y/%-m/%-d} %t Ret: %? > "
ls
lls

# 不同系统 /var/log/journal 下子目录名可能与此处不同，请根据具体情况替换
cd /var/log/journal/f3d85c83fd6e458aba76dbf56f683032/

cd ~
cat << EOF > prompt.sh
PS1="%n@%M %~ %D{%Y/%-m/%-d} %t Ret: %?
> "
EOF
source prompt.sh
cd /var/log/journal/f3d85c83fd6e458aba76dbf56f683032/
pwd

# 4.3

ls ~

mkdir ls
ls

mkdir Downloads/aDir Documents/bDir
/usr/lib/dpkg/methods/apt
~/Downloads/aDir
/var/log/apt
~/Documents/bDir
d
1
1

which d
which 1
which 2

mkdir -p ~/Documents/python-workspace/data-science/cool-project
mkdir -p ~/Documents/R-workspace/tidyverse-environment/hot-project
~/Documents/python-workspace/data-science/cool-project
~/Documents/R-workspace/tidyverse-environment/hot-project
j cool
j hot

# 4.4

find /usr/lib -type f -name '*.conf'
find /usr/lib -type d -name tar
find /usr/lib/gcc -type f -name 'c*' -exec wc {} +

locate '/usr/*/cilk.h'
find /usr -type f -name 'cilk.h'

cd ~
Documents
ls */*/*project
ls **/*project
ls /usr/lib/**/cilk.h
wc -l /usr/lib/**/cilk.h
head /usr/lib/**/cilk.h

cd /usr
head -5 **/python3*/**/apt*/**/core*

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
cd /usr

# 4.5

git clone https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cd Documents
cat << EOF > times.csv
heredoc> 1524792961
1564762961
1582492961
1582792961
1584792961
EOF

head -5 times.csv
head -5 times.csv|xargs -I {} python -c 'from datetime import datetime;
  dt = datetime.fromtimestamp({});
  print(dt.strftime("Full date and time: %Y-%m-%d %H:%M:%S"))'

head -5 times.csv|xargs -I {} python -c 'from datetime import datetime;
  dt = datetime.fromtimestamp({});
  print(dt.strftime("Local time: %H:%M:%S"))'


git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

csvstat

# 4.6

asdf plugin-list-all|grep -i node

alias apla='asdf plugin-list-all'
apla|grep -i node
alias ehw='echo 'hello world''
ehw
alias ehw="echo 'hello world'"
ehw

alias ct="head -5 times.csv|xargs -I {} python -c 'from datetime import datetime;\
  dt = datetime.fromtimestamp({});\
  print(dt.strftime(\"Full date and time: %Y-%m-%d %H:%M:%S\"))'"
ct

alias

# 4.7

whatis whatis whereis which type file dpkg
type whatis whereis which type file dpkg
whatis python
whereis python
which python
type python
file /usr/bin/python
dpkg -l python
file /usr/bin/python2.7
file /usr/bin/python3.6

sudo apt install tldr
tldr tar
