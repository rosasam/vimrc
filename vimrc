"Vundle settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugins here
Plugin 'VundleVim/Vundle.vim'
Plugin 'The-NERD-tree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'mfukar/robotframework-vim'

call vundle#end()
filetype plugin indent on

"Tabs
set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

"Higlight search
set hlsearch
hi Search guibg=Blue

"Set indicator for max line width
"Only works for Vim 7.3 upwards
set colorcolumn=80

"Color theme settings
syntax enable
colorscheme solarized
set background=dark

highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$\|\t/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$\|\t/
au InsertLeave * match ExtraWhiteSpace /\s\+$\|\t/

set ic "ignore case in search
set showmatch
let python_highlight_all = 1
set number "show line numbers
highlight LineNr ctermfg=darkgrey

"--------------------------------"
"          Key mappings          "
"--------------------------------"
nmap <silent> <F2> :NERDTreeToggle <CR>
nmap <silent> <F3> :Gblame <CR>
nmap <silent> <C-h> :noh <CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
