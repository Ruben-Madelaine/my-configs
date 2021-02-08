Plug 'vim-scripts/vim-plug'
"then :source%
"then :PlugInstall
vi ~/vim/.vimrc
inoremap jk <ESC>
syntax on " highlight syntax
set number " show line numbers
set noswapfile " disable the swapfile
set hlsearch " highlight all results
set ignorecase " ignore case in search
set incsearch " show search results as you type
"set autoreadi
au FocusGained,BufEnter * :checktime
set t_Co=256
let g:airline_powerline_fonts = 1
set timeoutlen=1000 ttimeoutlen=0

call plug#begin('~/.vim/plugged')
Plug 'preservim/NERDTree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/landscape.vim'
Plug 'zxqfl/tabnine-vim'
Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors' "vim-multiple-cursors

call plug#end()
