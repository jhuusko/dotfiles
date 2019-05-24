set number
set clipboard=unnamedplus

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with >, use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


call plug#begin()
Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()
