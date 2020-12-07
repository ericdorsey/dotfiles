filetype plugin on
syntax on
" Always increment as decimal with <C-a>
set nrformats-=octal
" Disable background color erase
" https://superuser.com/questions/399296/256-color-support-for-vim-background-in-tmux/562423#562423
set t_ut=
" set 256 colors; needs to come before colorscheme
" https://vim.fandom.com/wiki/256_colors_in_vim
set t_Co=256
" Show line and column number
set ruler 
" https://medium.com/usevim/vim-101-set-hidden-f78800142855
set hidden
" Enable <C-x><C-o> Omnicompletion
set omnifunc=syntaxcomplete#Complete
set number " Line numbers
"http://vimcasts.org/e/2
"tabstop specifies the width of a tab character
"expandtab causes spaces to be used in place of tab characters
"softtabstop fine tunes the amount of white space to be inserted (fix behavior of backspace key in Insert Mode)
"shiftwdith determines the amount of white space to insert using the indentation commands in Normal Mode (< and >)
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" Make backspace work more like other editors / as expected in Insert Mode
set backspace=indent,eol,start
set smartcase " Match when search pattern contains uppercase letter
set belloff=all
set ruler " Show row, column in status bar 
" Highlight search match
set hlsearch
" Start searching as search string is typed
set incsearch
" Show when in -- INSERT -- mode in status bar
set showmode 
set termguicolors
set lines=45 " Window height
set columns=100 " Window width
" let g:skip_loading_mswin=1
" Characters to denote line endings, tabs, carriage return, spaces etc
set list
set listchars=
set listchars+=eol:¬
set listchars+=trail:·
set listchars+=space:·
" History, swap and dir config -- assumes existence of $USERPROFILE/vimhistory
set backupdir=$HOME//vimhistory
set directory=$HOME//vimhistory
set undodir=$HOME//vimhistory
" Colorscheme gruvbox stuff
" Options come before colorscheme call
" https://github.com/morhetz/gruvbox/issues/258#issuecomment-457215075
let g:gruvbox_contrast_dark = 'soft' " Brighter for gVim
let g:gruvbox_italic=0 " Disable italic
colorscheme gruvbox " ~/vimfiles/colors/gruvbox.vim must exist
" Font
"silent! set guifont=Fira\ Code\ Medium:h9:w6:cDEFAULT:qDEFAULT
set guifont=Fira\ Code\ Medium:h9:w6:cDEFAULT:qDEFAULT
if &guifont != 'Fira Code Medium:h9:w6:cDEFAULT:qDEFAULT'
    set guifont=
endif
