syntax on
colorscheme desert
set number
set tabstop=4
set shiftwidth=4
set smartcase
set scrolloff=3
" Make backspace function more like other editors
set backspace=indent,eol,start
set lines=43
set belloff=all
" Always increment as decimal with <C-a>
set nrformats-=octal
set showmode
" highlight search match
set hls
" Start searching as search string is typed
set incsearch
"
let skip_loading_mswin=1

" Set Backup / Swap etc
" https://medium.com/@Aenon/vim-swap-backup-undo-git-2bf353caa02f
set backupdir=$HOME/.vim_backupswapundo
set directory=$HOME/.vim_backupswapundo
set undodir=$HOME/.vim_backupswapundo
