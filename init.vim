set number

set encoding=utf-8

set noswapfile

set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set expandtab

set mouse=a

" Не уверен что делает. Вроде как улучшает работу backspace
set backspace=indent,eol,start
                      

set colorcolumn=79

set nowrap


set title
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70

call plug#begin('~/.vim/plugged')

" File manager
Plug 'https://github.com/preservim/nerdtree'
" Comments
Plug 'https://github.com/tpope/vim-commentary'
" Surround
Plug 'https://github.com/tpope/vim-surround'
" poliglot
Plug 'https://github.com/sheerun/vim-polyglot'

" Color schemes
Plug 'https://github.com/morhetz/gruvbox'



call plug#end()


colorscheme gruvbox


" NERDTree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Start NERDTree. If a file is specified, move the cursor to its window.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
