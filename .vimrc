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
" Plugin 'vim-syntastic/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/fzf.vim' "alternative to ctrlp
Plugin 'pangloss/vim-javascript'
Plugin 'tomasr/molokai'
Plugin 'itchyny/lightline.vim' " coolify vim status line
Plugin 'rust-lang/rust.vim'
Plugin 'airblade/vim-gitgutter' "show lines with changed git
Plugin 'w0rp/ale' "lint async
Plugin 'tpope/vim-commentary' "comment out visual blocked with gc
Plugin 'simeji/winresizer' "ctrl + e to change size of window pane
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'

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

"----------------------------------------------------------
" ale settings
"----------------------------------------------------------
" 保存時のみ実行する
let g:ale_lint_on_text_changed = 0
" 表示に関する設定
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:airline#extensions#ale#open_lnum_symbol = '('
let g:airline#extensions#ale#close_lnum_symbol = ')'
let g:ale_echo_msg_format = '[%linter%]%code: %%s'
highlight link ALEErrorSign Tag
highlight link ALEWarningSign StorageClass
" Ctrl + kで次の指摘へ、Ctrl + jで前の指摘へ移動
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" winresizer step
let g:winresizer_vert_resize = 1
let g:winresizer_horiz_resize = 1

"----------------------------------------------------------
" air-line settings
"----------------------------------------------------------
set encoding=utf8
let g:airline_powerline_fonts = 1
let g:airline_theme = 'wombat'
set laststatus=2
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z']]
let g:airline_section_c = '%t'
let g:airline_section_x = '%{&filetype}'
let g:airline_section_z = '%3l:%2v %{airline#extensions#ale#get_warning()} %{airline#extensions#ale#get_error()}'
let g:airline#extensions#ale#error_symbol = ' '
let g:airline#extensions#ale#warning_symbol = ' '
let g:airline#extensions#default#section_truncate_width = {}
let g:airline#extensions#whitespace#enabled = 1

"key mapping
nnoremap <Space>w : <C-u>write<Cr>
nnoremap <Space>. : <C-u>tabnew ~/dotfiles/.vimrc<Cr>
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
