"====================================================================
" File: .vimrc (ubuntu: ~/.vimrc)
" Description: Achigo's style
" Created: 2013-11-27
"====================================================================

"-------------------------
" vim basic setting
"-------------------------
set t_Co=256                    " 256 colors
colorscheme colorful256
syntax on                       " syntex color

"set mouse=a                     " terminal mapping mouse
"set guifont=Luxi\ Mono\ 9       " set font
"set backspace=2                 " use backspace anywhere
set backspace=indent,eol,start  " <BS>,<Del>,<CTRL-W>,<CTRL-U> in Insert mode
set showmode                    " show bottom-left mode
"set background=dark             " background color
set nocompatible                " vim and vi compatible
set confirm                     " confirm window
set history=100                 " command history
set cmdheight=1                 " command bar line height
"set expandtab                   " repaces instead of tabs
"set list                        " show end of line $ symbol
"set listchars=tab:>-,trail:-    " set listchars=eol:$,tab:>-,trail:~

"-------------------------
" search and replace
"-------------------------
set encoding=utf-8              " File encoding
set fileencodings=utf-8,cp950   " File encoding
set termencoding=utf-8          " vim terminal encoding

"-------------------------
" search and replace
"-------------------------
set hlsearch                    " highlight search keyword
set incsearch                   " jump to search keyword
set ignorecase                  " ignore case
"set gdefault

"-------------------------
" coding
"-------------------------
set showmatch                   " type '(' auto insert ')'
set shiftwidth=4                " 
"set autoindent                  " auto indent
"set smartindent                 " smart indent
set tabstop=4                   " tab stop
set softtabstop=4               " backspace delete space
set number                      " line number

"-------------------------
" windows setting
"-------------------------
"vmap <C-c>                      " yy
"vmap <C-x>                      " yd
"nmap <C-v>                      " yp
"vmap <C-v>                      " yp
"nmap <C-a> ggvG$                "
"-------------------------
" Status and Cursor
"-------------------------
set showcmd                     " show partial command
set laststatus=2                " show status bar
set ruler                       " show line and column of cursor position
"set cursorline                  " cursor position
"set cursorcolumn                " 

"set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[%l,%v][%p%%]
"set statusline=%<%f%m\ \[%{&ff}:%{&fenc}:%Y]\ %{getcwd()}\ \ \[%{strftime('%Y/%b/%d\ %a\ %I:%M\ %p')}\]\ %=\ Line:%l\/%L\ Column:%c%V\ %P
set statusline=%F%m%r%h%w\ [%{&ff},%{&fileencoding},%Y]%=\[ASCII=\%03.3b][HEX=\%02.2B][%l,%v][%p%%][%l\/%L]

"highlight CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"highlight CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"highlight StatusLine cterm=reverse ctermfg=darkblue  ctermbg=white  gui=reverse guifg=darkblue guibg=white

"-------------------------
" abbreviations
"-------------------------
ab S split
ab Q quit

"-------------------------
" vundle
"-------------------------
filetype off                  " start required!

" Auto get vundle module when vi execute
"
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

" rtp: run time path
"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" My buddles here:
"
" fugitive.vim: for Gblame, Gstatus, Gcommit
Bundle 'git://github.com/tpope/vim-fugitive.git'

" NOTE: comments after Bundle commands are not allowed.

filetype plugin indent on     " end required!

"====================================================================
" end
"====================================================================
