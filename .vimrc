" https://vi.stackexchange.com/questions/10124/what-is-the-difference-between-filetype-plugin-indent-on-and-filetype-indent/10125#10125
" http://vimdoc.sourceforge.net/htmldoc/filetype.html#:filetype-overview
filetype plugin on
" Enable <C-x><C-o> Omnicompletion
set omnifunc=syntaxcomplete#Complete
set number
" Make backspace function more like other editors
set backspace=indent,eol,start
syntax on
" Treat numberals as digits, regardless of padded zeros (Practical Vim, p. 22)
set nrformats-=octal
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
" use 2 spaces for YAML
autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
" https://medium.com/usevim/vim-101-set-hidden-f78800142855
set hidden
set background=dark
set termguicolors "vivid colors
" Make Vim colorscheme(s) work inside tmux (also requires export TERM=xterm-256color in .bashrc)
" set Vim-specific sequences for RGB colors
" https://stackoverflow.com/questions/47969858/vim-colors-not-showing-in-tmux/47994805#47994805
" From GitHub > Vim repo > Issue: 'termguicolors doesn't work in terminal Vim'
" https://github.com/vim/vim/issues/993#issuecomment-255651605
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set showmode
" Highlight search match
set hlsearch
" Start searching as search string is typed
set incsearch
try
    let g:gruvbox_contrast_dark = 'medium'
    colorscheme gruvbox
catch /^Vim\%((\a\+)\)\=:E185/
    " gruvbox colorscheme doesn't exist -- do nothing
endtry
set list
set listchars=
set listchars+=eol:¬
set listchars+=trail:⋅
set listchars+=space:⋅
" Set Backup / Swap / Undo
" https://medium.com/@Aenon/vim-swap-backup-undo-git-2bf353caa02f
set backupdir=$HOME/.vim_backupswapundo
set directory=$HOME/.vim_backupswapundo
set undodir=$HOME/.vim_backupswapundo
" http://adrianlikins.com/2011/06/git-diff-like-highlighting-of-extra-whitespace-in-vim-and-emacs/
let c_space_errors=1
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t/
