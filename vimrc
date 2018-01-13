"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable Vundle and install Plugins
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" Vundle 
Plugin 'VundleVim/Vundle.vim'

" Fugetive 
Plugin 'tpope/vim-fugitive'

" NERDTree 
Plugin 'scrooloose/nerdtree'

" NERDTree - GIT
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Lightline
Plugin 'itchyny/lightline.vim'

" Color schemes
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'joshdick/onedark.vim'
Plugin 'rakr/vim-one'

" Syntax
Plugin 'sheerun/vim-polyglot'

" Dev Icons 
Plugin 'ryanoasis/vim-devicons'

" Line indentation and nesting
Plugin 'Yggdroot/indentLine'

" Auto completion
Plugin 'Valloric/YouCompleteMe'

" ALE Linting
Plugin 'w0rp/ale'

" Integrate LightLine to ALE
Plugin 'maximbaz/lightline-ale'

" Surround for closing tags 
Plugin 'tpope/vim-surround'

" Vim Test 
Plugin 'janko-m/vim-test'

" Better Diffs
Plugin 'chrisbra/vim-diff-enhanced'

" Fuzzy search 
Plugin 'ctrlpvim/ctrlp.vim'

" Better Fuzzy search 
Plugin 'sgur/ctrlp-extensions.vim'

" Better syntax and indenting for js and json.
Plugin 'pangloss/vim-javascript'

" vim node
Plugin 'moll/vim-node'


Plugin 'jparise/vim-graphql'

call vundle#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto CMD 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Compatibility
set nocompatible

" => Enable mouse 
set mouse=a

" => Syntax
syntax on

" => Set display encoding
set encoding=utf-8

" => Set language for seplling
set spell spelllang=en

" Use the system clipboard.
set clipboard=unnamed

" => onedark color scheme
set background=dark
colorscheme onedark

" => Allow backspace
set backspace=indent,eol,start

" => Highlight Search
set hlsearch

" => Enable Auto Indentation
filetype indent on
filetype plugin indent on

" => Use spaces instead of tabs
set expandtab

" => Be smart when using tabs ;)
set smarttab

" => 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

" => Linebreak on 500 characters
set lbr
set tw=80

" => Good Tabs
set smarttab
set autoindent

" => "Wrap lines
set nowrap 

" => Make command menus look better with options listed
set wildmenu

" => Search better
set path+=**

" => Show keys 
set showcmd

" Show the buffers in the tabline.
let g:airline#extensions#tabline#enabled = 1

" Enable Line number (Hybrid)
set number relativenumber

" Move VISUAL LINE selection within buffer.
xnoremap <silent> K :call mivym#functions#move_selection_up()<CR>
xnoremap <silent> J :call mivym#functions#move_selection_down()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key Bindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" => Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?
map <F7> mzgg=G`z

" => Smart way to move between windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" => Vim-Test
nnoremap <C-t> :TestNearest<CR>
nnoremap <C-t-t> :TestFile<CR>

" => NERDTree
map <C-n> :NERDTreeToggle<cr>

" => Save/Quit file mapping 
map <C-w> :w<cr>
map <C-q> :q!<cr>

" => Window navigation mapping 
nmap <C-h> :wincmd h<CR>
nmap <C-j> :wincmd j<CR>
nmap <C-k> :wincmd k<CR>
nmap <C-l> :wincmd l<CR>
nmap <C-\> :wincmd v<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Line Number
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" All languages - no autocommenting on newlines, 4 spaces soft tabs + expand
au FileType * set fo-=c fo-=r fo-=o sw=2 sts=2 et

" Language specific indentation.
au FileType javascript setl sw=2 sts=2 et
au FileType html setl sw=2 sts=2 et
au FileType json  setl sw=2 sts=2 et
au FileType yaml setl sw=2 sts=2 et
au FileType terraform setl sw=2 sts=2 et
au FileType make set noexpandtab shiftwidth=8 softtabstop=0 " makefiles must use tabs
