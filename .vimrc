"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
set encoding=utf-8

filetype on
filetype plugin on
filetype indent on

syntax on
set number
"set relativenumber
set cursorline
"set cursorcolumn
set ruler
set laststatus=2
set showcmd
set showmode
set showmatch

set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set autoindent
set smartindent

set nobackup
set noswapfile

set hlsearch
"set incsearch
set ignorecase
set smartcase

" Set the commands to save in history default number is 20.
"set history=1000

set wildmenu
"set wildmode=list:longest
"set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
"
set backspace=indent,eol,start

set background=dark
colorscheme codedark
"let g:solarized_termcolors=256


let g:currentmode={
    \ 'n'   : 'Normal',
    \ 'no'  : 'Normal Operator Pending',
    \ 'v'   : 'Visual',
    \ 'V'   : 'V·Line',
    \ '^V'  : 'V·Block',
    \ 's'   : 'Select',
    \ 'S'   : 'S·Line',
    \ '^S'  : 'S·Block',
    \ 'i'   : 'Insert',
    \ 'R'   : 'Replace',
    \ 'Rv'  : 'V·Replace',
    \ 'c'   : 'Command',
    \ 'cv'  : 'Vim Ex',
    \ 'ce'  : 'Ex',
    \ 'r'   : 'Prompt',
    \ 'rm'  : 'More',
    \ 'r?'  : 'Confirm',
    \ '!'   : 'Shell',
    \ 't'   : 'Terminal'
    \}

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %{toupper(g:currentmode[mode()])}
set statusline+=\ %F
set statusline+=\ %m%r%w

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
"set statusline+=\ \ [%{&fileformat}]
set statusline+=\ \ [%{''.(&fenc!=''?&fenc:&enc).''}]
set statusline+=\ \ %y
"set statusline+=\ \ ASCII:\ 0x%02B(%03b)
set statusline+=\ \ Col:\ %03c,\ Ln:\ %l\/%L(%p%%)
set statusline+=\ 


" Powerline
"set rtp+=~/Library/Python/3.10/lib/python/site-packages/powerline/bindings/vim
set t_Co=256
set t_ut=


if &term =~ '^xterm'
	" Cursor in terminal:
	" Link: https://vim.fandom.com/wiki/Configuring_the_cursor
	" 0 -> blinking block not working in wsl
	" 1 -> blinking block
	" 2 -> solid block
	" 3 -> blinking underscore
	" 4 -> solid underscore
	" Recent versions of xterm (282 or above) also support
	" 5 -> blinking vertical bar
	" 6 -> solid vertical bar

	" normal mode
	let &t_EI .= "\e[2 q" 	
	" insert mode
	let &t_SI .= "\e[5 q"	

	augroup windows_term
		autocmd!
		autocmd VimEnter * silent !echo -ne "\e[2 q" 
		autocmd VimLeave * silent !echo -ne "\e[5 q" 
	augroup END
endif


" PLUGINS ---------------------------------------------------------------- {{{

" Automatic installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

    Plug 'scrooloose/nerdtree'

call plug#end()

" }}}

