syntax on
colorscheme desert
set number
set tabstop=4
set shiftwidth=4
set smartcase
set lines=43
set belloff=all
" Always increment as decimal with <C-a>
set nrformats-=octal
set showmode

" Set Backup / Swap etc
" $HOME is: C:\Users\Eric Dorsey
" https://medium.com/@Aenon/vim-swap-backup-undo-git-2bf353caa02f
set backupdir=$HOME/.vim_backupswapundo
set directory=$HOME/.vim_backupswapundo
set undodir=$HOME/.vim_backupswapundo
let skip_loading_mswin=1
