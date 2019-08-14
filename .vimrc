"Configuration file for vim

set nocompatible              " be iMproved, required
filetype off                  " required
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'wesQ3/vim-windowswap'
Plugin 'tpope/vim-commentary'
Plugin 'airblade/vim-gitgutter'
Plugin 'ycm-core/YouCompleteMe'
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

set lazyredraw                  " Don't redraw while running macros
set ttyfast                     " Improve smoothness
set autoindent                  " Apply indentation of currently to next line
set expandtab                   " Insert spaces for tabs (ignore softtabstop)
set foldmethod=indent           " Fold by indentation with zc (zA to unfold)
set nofoldenable                " Do not fold when opening file
set hidden                      " Allow hiding buffer without saving
set history=50                  " Command history
set laststatus=2                " Show status bar
set scrolloff=3                 " Leaves 3 lines above and below cursor when scrolling
set shiftwidth=4                " `>>` moves line four spaces
set showcmd                     " Show command being typed
set tabstop=4                   " Set number of spaces per tab
set wrap                        " Wrap text
set textwidth=80                " Wrap text after 80 columns
set whichwrap+=<,>,[,],h,l,~    " Cursor movements wrap
set wildmenu                    " Enable command line autocomplete menu (:command)
set wildmode=list:longest,full  " Specify tab completion events
set ttimeoutlen=0               " Eliminates delay when esc to Normal
set tags+=./.tags;/,./tags;/    " Location of tags generated with ctags
set number relativenumber       " Set numbers relative to current line
set noshowmode                  " Remove -insert toolbar (using lightline)
set path+=**                    " Search parent directories recursively
set suffixes+=.pyc,.out,.class  " Ignore these suffixes in file autocomplete
set visualbell                  " Visual bell instead of beeping
syntax enable                   " Enable syntax highlighting
colorscheme darkblue            " Colors
set ignorecase                  " Searching is not case sensitive
set smartcase                   " Searching case sensitive if uppercase in pattern
set incsearch                   " Search as you add characters to search string
set hlsearch                    " Highlight all matches
set splitbelow                  " Split window below current window
set splitright                  " Split window to the right of current window
set backspace=indent,eol,start  " Backspace stopped working after version 8.1.1800 

let mapleader=","
nnoremap <leader><space> :nohlsearch<Bar>:echo<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map <leader>t :NERDTreeToggle<CR>
map <leader>/ :Commentary<CR>j
map <leader>f :CtrlP<CR>
let g:ycm_autoclose_preview_window_after_completion = 1 "YouCompleteMe close preview after autocomplete
" let g:EnvImprovement_SetTitleEnabled = 1 "delete maybe
