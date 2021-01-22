set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
"Plugin 'cormacrelf/vim-colors-github'
Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'flazz/vim-colorschemes'
"Plugin 'google/vim-colorscheme-primary'
"Plugin 'preservim/nerdtree'
"Plugin 'rakr/vim-one'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'bfrg/vim-cpp-modern'

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

"VIM PLUG
call plug#begin('~/.vim/plugged')
Plug 'arzg/vim-colors-xcode'
Plug 'https://github.com/joshdick/onedark.vim.git'
Plug 'google/vim-maktaba'
"Plug 'sheerun/vim-polyglot'
"Plug 'bazelbuild/vim-bazel'
call plug#end()


if 1
  set colorcolumn=80
else
  if v:version > 730
    augroup ColorcolumnOnlyInInsertMode
      autocmd!
      autocmd InsertEnter * setlocal colorcolumn=80
      autocmd InsertLeave * setlocal colorcolumn=0
    augroup END
  endif
endif

" Basic settings
set nu
set nows
set ruler
set cursorline
set ai
set si
set backspace=indent,eol,start
autocmd FileType * setlocal fo-=c fo-=r fo-=o

" Converting tabs to spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

au FileType python setl ts=2 sw=2 sts=2 et

" Noexpandtab for Makefile
autocmd FileType make setlocal noexpandtab

" Applying syntax color
set t_Co=256
set t_ut=
syntax on

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif
"set t_8b=[48;2;%lu;%lu;%lum
"set t_8f=[38;2;%lu;%lu;%lum

set background=light
"color github
"color molokai
"color one
"color jellybeans
"color PaperColor
"color borland-wkim
"color xcodelight
color onedark
set hlsearch

" Open a file at the same line as closed
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif
" let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#show_buffers = 0
"let g:airline_theme = "sol"
"let g:airline_theme = "light"
"let g:airline_theme = "papercolor"
"let g:airline_theme = "one"
"let g:airline_theme = "xcodelight"

" IDK
"let g:lightline = { 'colorscheme': 'github' }

"hi Normal guibg=NONE ctermbg=NONE
"let t:is_transparent = 1
