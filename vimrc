" plugin
call plug#begin("~/.vim/plugged")
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'airblade/vim-gitgutter'
call plug#end()

" plugin: coc
let g:coc_node_path = "~/.nvm/versions/node/v16.15.0/bin/node"

" plugin: gitgutter
let g:gitgutter_enabled=1

" settings
filetype on
filetype plugin on
filetype indent on
set autoread
set backspace=indent,eol,start
set confirm
set hidden
set history=1000
set path+=**10
set nobackup
set nocompatible
set noerrorbells
set visualbell
set noswapfile
set shortmess+=c
set showcmd
set showmatch
set showmode
set updatetime=100
set wildignorecase
set wildignore+=*.git,*.tags,*.doc,*.doc,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.swp

" settings: color options
set background=dark
colorscheme hybrid_material
set t_Co=256

" settings: completion options
set complete+=k
set complete-=i
set completeopt=longest,menuone
set omnifunc=syntaxcomplete#Complete
set wildmenu
set wildmode=list,full

" settings: fold options
set nofoldenable

" settings: indention options
set autoindent
set expandtab
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4

" settings: performance options
set lazyredraw

" settings: search options
set hlsearch
set ignorecase
set incsearch
set smartcase
set showmatch

" settings: text rendering options
nohlsearch
set encoding=utf-8
set linebreak
set scrolloff=10
set sidescrolloff=10
set nowrap
syntax enable
syntax on

" settings: ui options
set cursorline
set laststatus=2
set number
set relativenumber
set signcolumn=yes
set splitright
set splitbelow

" mapping: basic options
execute "set <A-h>=\eh"
execute "set <A-j>=\ej"
execute "set <A-k>=\ek"
execute "set <A-l>=\el"
let mapleader = " "

cnoremap <c-k> <esc>
inoremap <c-k> <esc>
vnoremap <c-k> <esc>
nnoremap , <esc>:
nnoremap <leader>q :q  <cr>
nnoremap <leader>Q :q! <cr>
nnoremap <leader>w :w  <cr>
nnoremap <leader>W :w! <cr>
nnoremap j gj
nnoremap k gk

" mapping: buffers
nnoremap <leader>bb :buffers<cr>:buffer<space>
nnoremap <leader>bd :bdelete<cr>
nnoremap <silent>{  :bprevious<cr>
nnoremap <silent>}  :bnext<cr>

" mapping: files
function! g:Fgrep(args) abort
    execute ":silent grep -r " . a:args . " **" | redraw!
endfunction
command -nargs=+ -complete=command Filegrep call g:Fgrep(<q-args>)

nnoremap <leader>ff :find **/
nnoremap <leader>fe :edit **/
nnoremap <leader>fg :Filegrep<space>
nnoremap <leader>fr :%s/
nnoremap <leader>fv :vimgrep<space>
nnoremap <leader>fx :Ex<cr>

" mapping: panes
nnoremap <leader>sh :sp<cr>
nnoremap <leader>sv :vs<cr>
nnoremap <silent><c-h> :wincmd h<cr>
nnoremap <silent><c-j> :wincmd j<cr>
nnoremap <silent><c-k> :wincmd k<cr>
nnoremap <silent><c-l> :wincmd l<cr>
"nnoremap <A-up>   :resize -2<cr>
"nnoremap <A-down> :resize +2<cr>
"nnoremap <A-left> :vertical resize -2<cr>
"nnoremap <A-left> :vertical resize +2<cr>

" mapping: lines
nnoremap <A-h> 0
nnoremap <A-l> $
nnoremap <A-k> :m .-2<cr>==
nnoremap <A-j> :m .+1<cr>==
nnoremap o o<esc>D<esc>
nnoremap O O<esc>D<esc>

" mapping: quick fix windows
nnoremap <leader>cw :vert cwindow <cr><c-w>=<cr>
nnoremap <silent><leader>cc :cclose <cr>
nnoremap <leader>cf :cfirst <cr>
nnoremap <leader>cl :clast  <cr>
nnoremap <leader>co :copen  <cr>
nnoremap <silent>[c :cprevious<cr>
nnoremap <silent>]c :cnext    <cr>

" mapping: terminal
nnoremap <leader>th :term      <cr>
nnoremap <leader>tv :vert term <cr>

" mapping: vim file
nnoremap <silent><leader>ve :vs $MYVIMRC<cr>
nnoremap <silent><leader>vs :so $MYVIMRC<cr>

" mapping: toggle, helpers
nnoremap <silent><bslash>_  :set cursorline!  <cr>
nnoremap <silent><bslash>\| :set cursorcolumn!<cr>
nnoremap <silent><bslash>/  :noh<cr>
nnoremap <silent><bslash>+  :execute 'set colorcolumn=' . (&colorcolumn == '' ? '80' : '')<cr>
nnoremap <silent><bslash>r  :set rnu! <cr>
nnoremap <silent><bslash>l  :set list! <cr>

" mapping: auto completion
inoremap <expr> <tab>   pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
