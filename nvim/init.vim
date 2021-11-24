"-------------------------------------------------------------------
" General settings -------------------------------------------------------------------
syntax on
set noerrorbells
set number
set expandtab          "insert spaces instead of tabs 
set smartindent        "forces use of shiftwidth and tabstop
set shiftwidth=4       "Change the number of spaces to use as indentation
set tabstop=4 softtabstop=4       "tabs insert 4 spaces
set nu
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set number relativenumber
set showcmd
set showmatch
highlight ColorColumn ctermbg=0 guibg=lightgray
set mouse=a
set incsearch
set list
set listchars=tab:->\ ,trail:.
set hidden
set ignorecase
set scrolloff=8
set sidescrolloff=8
call plug#begin('~/.vim/plugged')


"-------------------------------------------------------------------
" Key maps
"-------------------------------------------------------------------

let mapleader = "\<space>"

nmap <leader>ve :edit ~/.config/nvim/init.vim<cr>
nmap <leader>vc :edit ~/.config/nvim/coc-settings.json<cr>
nmap <leader>vr :source ~/.config/nvim/init.vim<cr>

nmap <leader>k :nohlserach<CR>
nmap <leader>Q bufdo bdelete<cr>

map gf :edit <cfile><cr>
" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv
" Maintain cursor position when yanking a visual selection
vnoremap y myy`y
vnoremap Y myY`y

"Insert trailing ; or , smoothly
imap ;; <Esc>A;<Esc>
imap ,, <Esc>A;<Esc>

" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/dracula.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/floatterm.vim
source ~/.config/nvim/plugins/nerdtree.vim

call plug#end()
doautocmd User PlugLoaded
