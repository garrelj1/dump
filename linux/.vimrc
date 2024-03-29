" Jeremy Garrell "
set nocompatible              " be iMproved, required
filetype on                   " required
filetype plugin on
filetype indent on

" Setup make files to tab shift properly
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0


" Auto installs plugged plug-in manager if it is not already installed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

""""""""""""""""
" Start plug ins
call plug#begin('~/.vim/plugged')

" Plugin for Colors
Plug 'lucasprag/simpleblack'

" Markdown Preview
" To run plugin, type
" - `:MarkdownPreview` to start the preview
" - `:MarkdownPreviewStop` to stop the preview
Plug 'iamcco/markdown-preview.vim'

Plug 'prettier/vim-prettier'

Plug 'rust-lang/rust.vim'

Plug 'liuchengxu/vim-which-key'

Plug 'mattn/webapi-vim'

" Docker support
Plug 'danishprakash/vim-docker'

" Kotlin support
Plug 'udalov/kotlin-vim'


call plug#end()
" End plug ins
"""""""""""""""

" MarkdownPreview settings
" Add option to open new window 
let g:mkdp_path_to_chrome = "brave-browser --new-window"

" rust.vim settings "
" Auto format when a rust file is saved
let g:rustfmt_autosave = 1
" Open buffers as tabs "
set switchbuf=usetab

" Colors "
"colorscheme badwolf
syntax enable
colorscheme simpleblack
set termguicolors

" Number "
set number

" Tabs "
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

" Incremental search
set is

" Highlight search
set hls

" Show tabs as characters
set list
set listchars=tab:>-
