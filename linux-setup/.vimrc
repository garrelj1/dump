" Jeremy Garrell "
set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" Plugin for Colors
Plug 'lucasprag/simpleblack'

" Markdown Preview
" To run plugin, type
" - `:MarkdownPreview` to start the preview
" - `:MarkdownPreviewStop` to stop the preview
Plug 'iamcco/markdown-preview.vim'

Plug 'prettier/vim-prettier'

call plug#end()

" MarkdownPreview settings
" Add option to open new window when opening google chrome
let g:mkdp_path_to_chrome = "google-chrome --new-window"

" Colors "
syntax enable
colorscheme badwolf
set termguicolors

" Number "
set number

" Tabs "
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
