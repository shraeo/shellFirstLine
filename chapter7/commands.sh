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

# 7.4

set et
set sw=2
set ts=2
set nowrap
set number
set clipboard+=unnamedplus
set nobackup
set noswapfile
set splitbelow
set splitright
set incsearch
let mapleader=","    // <1>

nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
nnoremap <leader>e :e $MYVIMRC<CR>    // <2>
nnoremap <leader>s :so $MYVIMRC<CR>    // <3>
nnoremap <C-J> <C-W><C-J>    // <4>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <F2> :set wrap!<CR>

filetype indent plugin on
syntax on
colorscheme ron

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

# Ctrlp 配置
" ctrlp
let g:ctrlp_custom_ignore = { 'dir': 'node_modules\|.git\|.env' }    // <1>
nnoremap <C-n> :CtrlPBuffer<CR>
nnoremap <C-m> :CtrlPMRU<CR>

cd ~/.local/share/nvim/site/pack/text/start
git clone https://github.com/preservim/nerdtree.git

# nerdtree 配置
" nerdtree
nnoremap <C-i> :NERDTreeToggle<CR>    // <1>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif    // <2>

cd ~/.local/share/nvim/site/pack/text/start
git clone https://github.com/mileszs/ack.vim.git

# ack 配置
" ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

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

