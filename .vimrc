" Show a vertical bar where code should break
set colorcolumn=81
set cursorline
set encoding=UTF-8
set expandtab
set guioptions=
set hlsearch
set mouse=a
set nocompatible
set nobackup
set noswapfile
set number relativenumber
set shiftwidth=2
set showcmd
set tabstop=2

let loaded_spellfile_plugin = 1
hi SpellBad cterm=underline

filetype plugin on

" set specific tab width for languages that use 4-space indentation
autocmd FileType python,c,cpp,rust setlocal ts=4 sts=4 sw=4

" automatically break text document lines at line length
autocmd FileType text,markdown setlocal textwidth=79 formatoptions=tacqwn spell spelllang=en_us

" enable Omni completion
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" Mappings

" <Space> is the one true leader key
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

" toggle line numbers, toggle relative or absolute
nnoremap <leader>n :set number!<cr>
nnoremap <leader>r :set number relativenumber!<cr>

noremap <C-n> :NERDTreeToggle<cr>

" auto-expansion
nnoremap <leader>( i(<CR>)<C-c>O
nnoremap <leader>[ i [<CR>]<C-c>O
nnoremap <leader>{ i {<CR>}<C-c>O

" plugins
call plug#begin('~/.vim/plugged')

Plug 'alx741/vim-hindent'
"Plug 'ambv/black'
Plug 'ap/vim-css-color'
Plug 'elixir-editors/vim-elixir'
Plug 'elmcast/elm-vim'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'junegunn/goyo.vim'
"Plug 'junegunn/limelight.vim'
Plug 'kien/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'mitsuhiko/vim-jinja'
Plug 'mattn/emmet-vim'
Plug 'mkitt/tabline.vim'
Plug 'mxw/vim-jsx'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'neovimhaskell/haskell-vim'
Plug 'nvie/vim-flake8'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'prettier/vim-prettier', {
\ 'do': 'yarn install',
\ 'for': ['javascript', 'css', 'scss', 'json', 'markdown', 'vue'] }
Plug 'reasonml-editor/vim-reason-plus'
Plug 'rstacruz/vim-closer'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sophacles/vim-processing',
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'tidalcycles/vim-tidal'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
\  'elixir': ['mix'],
\}

" ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_open_new_file = 't'

" NERDCommenter
let g:NERDCustomDelimiters = { 'jinja': { 'left': '{# ', 'right': ' #}' } }

" NERDTree
let NERDTreeShowHidden = 1

" vim-indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1

" vim-prettier
let g:prettier#config#bracket_spacing = 'true'
