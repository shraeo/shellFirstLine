#!/bin/bash

# 7.1

cat << EOF > demo.txt
There are three main modes in editor area of vim. They are:

* Normal mode (default mode)
* Insert mode
* Visual mode

We use insert mode ONLY when we need insert texts,
use visual mode ONLY when we need select texts for the followed operation.
Otherwise, vim are always in normal mode.

This is a variable-with-dash in a script,
which distinguish a WORD (visual it with `vaW`) and a word (visual it with `vaw`).

The following Python code is a demonstration for different (and nested) parentheses:

print("[A demo {arithmetic expression}] with <Python syntax>: %s" % (3 * (5 + 4)))
print('This is for single quotes: %s' % (7 * 8))
EOF

vi demo.txt

# 7.5

update-alternatives --display vi

ls -l $(which vi)

ls -l /etc/alternatives/vi

vi --version | grep clipboard

vi --version | grep python

apt install -y neovim

echo "alias vi=nvim" >> ~/.zshrc

source ~/.zshrc

vi --version

mkdir -p ~/.local/share/nvim/site/pack/text/start

mkdir -p ~/.config/nvim
cp ~/.vimrc ~/.config/nvim/init.vim

cd ~/.local/share/nvim/site/pack/text/start
git clone https://github.com/itchyny/lightline.vim.git

mkdir -p ~/.local/undo
cd ~/.local/share/nvim/site/pack/text/start
git clone https://github.com/mbbill/undotree.git

cd ~/.local/share/nvim/site/pack/text/start
ls
git clone https://github.com/itchyny/lightline.vim.git    // <2>
cd lightline.vim
git pull
cd ..
rm -rf lightline.vim

cd ~/.local/share/nvim/site/pack/text/start
git clone https://github.com/kien/ctrlp.vim.git

cd ~/.local/share/nvim/site/pack/text/start
git clone https://github.com/mileszs/ack.vim.git

cat << EOF > app.html
.header h3 {
  margin-top: 0;
  margin-bottom: 0;
  line-height: 40px;
}
EOF

cat << EOF > app.css
.navbar {
  height: 20px;
  width: 40px;
}
<div class="navbar">
  This is my html file
</div>
EOF

