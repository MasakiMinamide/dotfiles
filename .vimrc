filetype plugin indent on

syntax on

set nowrap

set hlsearch
set ignorecase
set smartcase
set incsearch

set autoindent
set smartindent

set ruler
set number
set list
set wildmenu
set showcmd
set history=5000

set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4
set smarttab

set clipboard=unnamed

"Plugings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'tomasr/molokai'
Plugin 'itchyny/lightline.vim' " coolify vim status line
Plugin 'rust-lang/rust.vim'

call vundle#end()
filetype plugin indent on

"----------------------------------------------------------
" molokai settings
"----------------------------------------------------------
colorscheme molokai
set t_Co=256
syntax enable 

set laststatus=2
set showmode

"key mapping
nnoremap <Space>w : <C-u>write<Cr>
nnoremap <Space>. : <C-u>tabnew ~/.vimrc<Cr>
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
nnoremap nt : NERDTree

set backspace=indent,eol,start
set cursorline
set whichwrap=b,s,h,l,<,>,[,],~
set showmatch
source $VIMRUNTIME/macros/matchit.vim

"Enable mouse:
if has('mouse')
    set mouse=a
    if has('mouse_sgr')
        set ttymouse=sgr
    elseif v:version > 703 || v:version is 703 && has('patch632')
        set ttymouse=sgr
    else
        set ttymouse=xterm2
    endif
endif

"Prevent pasting code to auto indent:
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif
