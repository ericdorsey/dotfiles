filetype plugin on
set guifont=Consolas:h11:cANSI
" Enable <C-x><C-o> Omnicompletion
set omnifunc=syntaxcomplete#Complete
set number
" Make backspace function more like other editors
set backspace=indent,eol,start
syntax on
" Disable background color erase
" https://superuser.com/questions/399296/256-color-support-for-vim-background-in-tmux/562423#562423
set t_ut=
" set 256 colors; needs to come before colorscheme
" https://vim.fandom.com/wiki/256_colors_in_vim
set t_Co=256
"http://vimcasts.org/e/2
"tabstop specifies the width of a tab character
"expandtab causes spaces to be used in place of tab characters
"softtabstop fine tunes the amount of white space to be inserted (fix behavior of backspace key in Insert Mode)
"shiftwdith determines the amount of white space to insert using the indentation commands in Normal Mode (< and >)
set shiftwidth=4 softtabstop=4 tabstop=4 expandtab
" https://medium.com/usevim/vim-101-set-hidden-f78800142855
set hidden
set background=dark
set termguicolors "vivid colors
set ruler 
set showmode
" Highlight search match
set hlsearch
" Start searching as search string is typed
set incsearch
let g:gruvbox_contrast_dark = 'medium'
" Requires ~/vimfiles/colors/gruvbox.vim
colorscheme gruvbox
set lines=44 columns=140
set belloff=all
" Always increment as decimal with <C-a>
set nrformats-=octal
let skip_loading_mswin=1
behave xterm
" Set Backup / Swap etc
" https://medium.com/@Aenon/vim-swap-backup-undo-git-2bf353caa02f
set backupdir=$HOME/.vim_backupswapundo
set directory=$HOME/.vim_backupswapundo
set undodir=$HOME/.vim_backupswapundo
