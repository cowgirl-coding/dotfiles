" Show a vertical bar where code should break
set colorcolumn=81
set cursorline
set encoding=UTF-8
set expandtab
set guioptions=
set hlsearch
" Show trailing whitespace as $ character
set list
set listchars=trail:$
set mouse=a
set nocompatible
set nobackup
set noswapfile
set number
set shiftwidth=2
set showcmd
set tabstop=2
" Without this line lightline won't show on single window.
set laststatus=2

let loaded_spellfile_plugin = 1
hi SpellBad cterm=underline

filetype plugin on

" set specific tab width for languages that use 4-space indentation
autocmd FileType python,c,cpp,rust,erlang setlocal ts=4 sts=4 sw=4

" automatically break text document lines at line length
autocmd FileType text,markdown setlocal textwidth=79 formatoptions=tacqwn spell spelllang=en_us

" enable Omni completion
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" Mappings

" <Space> is the eader key
let mapleader=" "

inoremap jk <ESC>

" Make it easy to open .vimrc and source it
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" East way to move between windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Insert a date
nnoremap <leader>r :put =strftime('%c')<cr>

" Simple Copy/Paste
nnoremap <leader>y "+y
nnoremap <leader>p "+gp

" Mappings for plugins
noremap <C-n> :NERDTreeToggle<cr>
noremap <leader>ad :ALEDetail<cr>

" plugins
call plug#begin('~/.vim/plugged')

Plug 'ap/vim-css-color'
Plug 'itchyny/lightline.vim'
Plug 'kien/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'lepture/vim-jinja'
Plug 'mxw/vim-jsx'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'nvie/vim-flake8'
Plug 'pangloss/vim-javascript'
Plug 'rstacruz/vim-closer'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/indentpython.vim'
Plug 'w0rp/ale'
" Themes
Plug 'morhetz/gruvbox'

call plug#end()

" theme stuff
syntax enable

set guifont=Ubuntu\ Mono\ 12
set background=dark
colorscheme gruvbox

" Set transparent background in terminal mode
hi Normal ctermbg=none

" Plugin settings

" ale
let g:ale_linters = {
\  'javascript': ['eslint'],
\  'python': ['flake8'],
\}

" ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_open_new_file = 't'

" lightline
let g:lightline = {
\ 'colorscheme': 'seoul256',
\ }

" NERDCommenter
let g:NERDCustomDelimiters = { 'jinja': { 'left': '{# ', 'right': ' #}' } }

" NERDTree
let NERDTreeShowHidden = 1

" vim-indent-guides
let g:indent_guides_start_level = 1
let g:indent_guides_enable_on_vim_startup = 1
