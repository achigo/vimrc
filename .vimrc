"====================================================================
" File: .vimrc (ubuntu: ~/.vimrc)
" Description: Achigo's style
" Created: 2013-02-01
"====================================================================

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
set list                        " show tab symbol
set listchars=tab:>-,trail:-    "

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
set cursorline                  " cursor position
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

"====================================================================
" end
"====================================================================
