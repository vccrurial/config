"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║ 
"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝

call plug#begin('~/.config/nvim/plugged')
 
" THEMES
Plug 'olivertaylor/vacme'
Plug 'ayu-theme/ayu-vim'
Plug 'andreasvc/vim-256noir'
Plug 'tomasr/molokai'
Plug 'andreypopp/vim-colors-plain'
Plug 'dylanaraps/wal.vim'
Plug 'nekonako/xresources-nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" PLUGINS 
Plug 'mhinz/vim-startify'
Plug 'othree/html5.vim'
Plug 'tpope/vim-sensible'
Plug 'justinmk/vim-dirvish'
Plug 'rcarriga/nvim-notify' 

Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }

 " add this line to your .vimrc file
Plug 'mattn/emmet-vim'
Plug 'voldikss/vim-floaterm'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

Plug 'lewis6991/gitsigns.nvim'

Plug 'nvim-lualine/lualine.nvim'
" Plug 'kyazdani42/nvim-web-devicons'
 
Plug 'justinmk/vim-dirvish'
Plug 'lervag/vimtex'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdtree'
Plug 'Raimondi/delimitMate'
Plug 'mbbill/undotree'
Plug 'pprovost/vim-ps1'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-commentary'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-repeat'
Plug 'vim-syntastic/syntastic'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'lambdalisue/suda.vim'

" Plug 'romgrk/barbar.nvim'

" Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }

Plug 'Mofiqul/dracula.nvim'

Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

call plug#end()

set cursorline
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
 
" BASIC SETTINGS
set formatoptions-=ro
set clipboard=unnamedplus
" setting up tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
autocmd Filetype cpp setlocal tabstop=2 shiftwidth=2 smarttab expandtab smartindent 
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 smarttab expandtab smartindent 

" set termguicolors
let mapleader=','
command! -nargs=1 Ss let @/ = <q-args>
let g:NERDTreeWinPos = "left"
set langmenu=en_US.UTF-8  
set background=dark
set ff=unix
set nu rnu   
set ma
set foldmethod=indent
set foldlevel=99	
set textwidth=80
set shiftround
set showmatch
set smarttab
set hlsearch
set scrolloff=4
set history=1000
set undolevels=1000
set title
set ignorecase smartcase incsearch
set visualbell
set noerrorbells
set vb t_vb=
set tildeop
set nobackup
set noswapfile
set wildmenu
set ruler
set showmode
set showcmd
set laststatus=0
set shortmess=atI
set display=lastline,uhex
set mouse=a
set confirm
set ttimeoutlen=100
set clipboard+=unnamed
set splitbelow
set splitright
filetype on
filetype plugin on
filetype plugin indent on
set wildmenu
set smartindent
set hidden
" set wrap
set guioptions=Ace 
" colo vacme
set t_Co=256
set nocompatible
" syntax enable
filetype plugin on
filetype indent on
" syntax on
 
set backspace=indent,eol,start
set noswapfile
" set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h14
set laststatus=2
" let t:root = g:NERDTree.ForCurrentTab().getRoot().path.str()

" MAPPINGS 
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>
nnoremap <Space> :w <CR>
nnoremap <leader>w :SudaWrite<CR>
nnoremap ; :
nnoremap <C-s> :source $MYVIMRC<CR>
nnoremap <CR> o <esc>
nnoremap <C-n> :NERDTreeToggle %<CR>
nnoremap <leader>p :execute 'Files ' . t:root<CR>
nnoremap <leader>e :e $MYVIMRC<CR> 
nnoremap <leader><space> :Goyo<CR>
nnoremap <leader>c :NERDTree D:\CODE <CR>
nnoremap <leader>s :NERDTree D:\scripts <CR>
nnoremap <leader>n :call ToggleNumbers() <CR>
nnoremap /\ :noh <CR>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap r> <c-w>+
nnoremap R> <C-w>-
nnoremap <C-B> :!clear <CR> <ESC>
nnoremap f :F<CR>

 
" BUILDING, RUNNING AND WORKING WITH DIFFERENT FILES
autocmd Filetype cpp nnoremap <f5> :w <CR> :FloatermNew gcc % -o >% && % <CR>
autocmd Filetype cpp nnoremap <f6> :w <CR> :FloatermNew gcc % -o % && timecmd % <CR>
autocmd Filetype c nnoremap <f5> :w <CR> :FloatermNew gcc % -o %< && chmod +x %< && ./%< <CR>
autocmd Filetype c nnoremap <f6> :w <CR> :FloatermNew gcc % -o %< && timecmd % <CR>

autocmd Filetype python nnoremap <f5> :w <CR> :!python % <CR> 
autocmd Filetype python nnoremap <f6> :w <CR> :!timecmd python % <CR> 
autocmd Filetype go nnoremap <f5> :w <CR> :!go run % <CR>
autocmd BufEnter * silent! lcd %:p:h
nnoremap <C-R> :e# <CR>
 
" FUNCTIONS 
function! ToggleNumbers()
if &rnu == 0  
   set nu rnu
elseif &rnu == 1
   set nornu
   set nonu
endif
endfunction
 
if bufwinnr(1)
  map + <C-W>>
  map - <C-W><
endif 

set encoding=utf-8
set shellcmdflag=-ic

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
