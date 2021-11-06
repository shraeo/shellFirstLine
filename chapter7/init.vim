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

" ctrlp
let g:ctrlp_custom_ignore = { 'dir': 'node_modules\|.git\|.env' }    // <1>
nnoremap <C-n> :CtrlPBuffer<CR>
nnoremap <C-m> :CtrlPMRU<CR>

cd ~/.local/share/nvim/site/pack/text/start
git clone https://github.com/preservim/nerdtree.git

" nerdtree
nnoremap <C-i> :NERDTreeToggle<CR>    // <1>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif    // <2>

" ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

