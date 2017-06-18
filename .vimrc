set nocompatible              " be iMproved, required
filetype off                  " required
set list
set wildmenu
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'leafgarland/typescript-vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'vim-syntastic/syntastic'
Plugin 'jason0x43/vim-js-indent'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
let mapleader = ','
map <Up> <Nop>
map <Down> <Nop>
map <Left> <Nop>
map <Right> <Nop>

inoremap jk <esc>

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$\|bower_components$\|dist$\|node_modules$\|project_files$\|test$',
    \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
autocmd FileType typescript :set makeprg=tsc

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:NERDTreeDirArrow=0
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let g:NERDTreeFileExtensionHighlightFullName = 1
let NERDTreeQuitOnOpen = 1

set encoding=utf-8
set relativenumber
set hlsearch
set ignorecase
set smartcase
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

set autoindent
set nostartofline
set ruler
set laststatus=2

set t_Co=256
let g:Powerline_symbols= 'fancy'
set showtabline=2
set confirm
set shiftwidth=4
set softtabstop=4
set expandtab

set listchars=tab:>-,trail:-,eol:¬ " Visualize tabs and newlines

nnoremap <C-L> :nohl<CR><C-L>
nnoremap <LEADER>f :NERDTreeToggle<CR>
syntax on 
set colorcolumn=80
colorscheme desert
set cursorline  " highlight current line
" set cursorcolumn " highlight current column
" hi CursorLine   cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkred guifg=white
" hi CursorColumn cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkred guifg=white
set autowrite
set showmatch
set incsearch
" set foldmethod=marker
set foldenable
set modelines=1
" set foldlevel=0
" set foldlevelstart=1
" Section Name {{{
 set number "This will be folded
" " }}}
" vim:foldmethod=marker:foldlevel=0
