set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" To install from command line do:
" vim +PluginInstall +qall
Plugin 'gmarik/vundle'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'leshill/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'indenthtml.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'myusuf3/numbers.vim'
Plugin 'bling/vim-airline'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'godlygeek/tabular'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'mattn/emmet-vim'

call vundle#end()
filetype plugin on
filetype plugin indent on

syntax on " Syntax highlighting
highlight SignColumn guibg=darkgrey

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.
set relativenumber " Line numbers change based on cursor

" For airline plugin
set laststatus=2
set ttimeoutlen=50

" No backups
set nobackup
set nowritebackup
set noswapfile

" Easier moving in tabs and windows
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h

" Wrapped lines goes down/up to next row, rather than next line in file.
nnoremap j gj
nnoremap k gk
" The following two lines conflict with moving to top and
" bottom of the screen
map <S-H> gT
map <S-L> gt
set nu!

" don't nag me when hiding buffers
set hidden " allow me to have buffers with unsaved changes.
set autoread " when a file has changed on disk, just load it. Don't ask.

" Make search more sane
set ignorecase " case insensitive search
set smartcase " If there are uppercase letters, become case-sensitive.
set incsearch " live incremental searching
set showmatch " live match highlighting
set hlsearch " highlight matches
set gdefault " use the `g` flag by default.

" allow the cursor to go anywhere in visual block mode.
set virtualedit+=block

let mapleader = ","

" Easily open NERDTree
nmap <leader>e :NERDTree<cr>

" Tabularize {
  nmap <Leader>a& :Tabularize /&<CR>
  vmap <Leader>a& :Tabularize /&<CR>
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:<CR>
  vmap <Leader>a: :Tabularize /:<CR>
  nmap <Leader>a:: :Tabularize /:\zs<CR>
  vmap <Leader>a:: :Tabularize /:\zs<CR>
  nmap <Leader>a, :Tabularize /,<CR>
  vmap <Leader>a, :Tabularize /,<CR>
  nmap <Leader>a,, :Tabularize /,\zs<CR>
  vmap <Leader>a,, :Tabularize /,\zs<CR>
  nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
  vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
" }

" So we don't have to reach for escape to leave insert mode.
:imap jk <Esc>

" Case insensitive search
set ic

" Case insensitive save and quit
:command WQ wq
:command Wq wq
:command W w
:command Q q

" Persistent undo
set undofile
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " Maximum number of changes that can be undone
set undoreload=10000        " Maximum number lines to save for undo on a buffer reload

" % to bounce from do to end etc.
runtime! macros/matchit.vim

" Clear match highlighting
noremap <leader><space> :noh<cr>:call clearmatches()<cr>

" Highlight gitgutter sidebar
highlight SignColumn ctermbg=black

" Open file to previous line
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif

" Get rid of annoying bell sound
set noerrorbells visualbell t_vb=

" Scrolling
 set scrolloff=5
 set sidescrolloff=16

" yanking
 nnoremap Y y$

" Visual line nav, not real line nav
" If you wrap lines, vim by default won't let you move down one line to the
" wrapped portion. This fixes that.
noremap j gj
noremap k gk

colorscheme slate
