set nocompatible
set nobackup
set noswapfile
set number relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set guioptions=
set mouse=a
set showcmd
set cursorline
set encoding=UTF-8

" highlight search results
" use :noh to remove highlights until next search
set hlsearch

" set specific tab width for python
autocmd FileType python setlocal ts=4 sts=4 sw=4

" automatically break text document lines at line length
autocmd FileType text,markdown setlocal textwidth=79 formatoptions=tacqwn

" enable Omni completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" enable autocomplete for css files
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocmd FileType scss set omnifunc=csscomplete#CompleteCSS

" Mappings

let mapleader=" "

imap jk <ESC>

" East way to move between windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" toggle line numbers, toggle relative or absolute
nnoremap <leader>n :set number!<cr>
nnoremap <leader>r :set number relativenumber!<cr>

map <C-n> :NERDTreeToggle<cr>

" auto-expansion
nnoremap <leader>( i(<CR>)<C-c>O
nnoremap <leader>[ i [<CR>]<C-c>O
nnoremap <leader>{ i {<CR>}<C-c>O

" plugins
call plug#begin('~/.vim/plugged')

Plug 'ap/vim-css-color'
Plug 'digitaltoad/vim-pug'
Plug 'elixir-editors/vim-elixir'
Plug 'elmcast/elm-vim'
Plug 'Glench/Vim-Jinja2-Syntax'
"Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'mkitt/tabline.vim'
Plug 'mxw/vim-jsx'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'nvie/vim-flake8'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'prettier/vim-prettier', {
\ 'do': 'yarn install',
\ 'for': ['javascript', 'css', 'scss', 'json', 'markdown', 'vue'] }
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sophacles/vim-processing',
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/indentpython.vim'
Plug 'w0rp/ale'

" Themes

Plug 'altercation/vim-colors-solarized'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'jnurmine/zenburn'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'trevordmiller/nova-vim'

"Plug 'ryanoasis/vim-devicons'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

call plug#end()

" theme stuff
syntax enable

set guifont=Monospace\ 11
set background=dark
colorscheme gruvbox

" Set transparent background in terminal mode
hi Normal ctermbg=none

" Plugin settings

"ale
let g:ale_linters = {
\  'javascript': ['eslint'],
\  'python': ['flake8'],
\}

" NERDTree
let NERDTreeShowHidden = 1

" ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_open_new_file = 't'

" vim-indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1

" vim-prettier
let g:prettier#config#bracket_spacing = 'true'
