set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'powerline/powerline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
set background=dark
colorscheme atom-dark-256

set tabstop=4
set shiftwidth=4
" 80 characters line
"set colorcolumn=81
"execute "set colorcolumn=" . join(range(81,335), ',')
"highlight ColorColumn ctermbg=Black ctermfg=Grey
set autoindent
set showmatch
set number
set hlsearch
set relativenumber

let mapleader = "\<Space>"
inoremap {<CR>  {<CR>}<Esc>O
map <Leader>t :NERDTreeToggle<CR>
noremap <Leader>o :CtrlP<CR>
noremap <F3> :set hlsearch!<CR>
noremap <Leader>n :tabnext<CR>
noremap <Leader>p :tabprevious<CR>
noremap <Leader>wq :wq<CR>
noremap <Leader>w :w<CR>
noremap <Leader>q :q<CR>
noremap <C-t> :tabnew<CR>
cmap w!! w !sudo tee % >/dev/null
