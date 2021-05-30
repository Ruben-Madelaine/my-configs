"then :source%
"then :PlugInstall
"vi ~/vim/.vimrc
":source ~/.vim/.vimrc
":so %
nnoremap jk <ESC>
nnoremap jj <ESC>
nnoremap kj <ESC>
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
set relativenumber

"let g:airline_theme='gruvbox'
"colorscheme gruvbox
"set background=dark

call plug#begin('~/.vim/plugged')
Plug 'frazrepo/vim-rainbow'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } } "firevim browser (chrome) extension
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'iamcco/markdown-preview.vim'
Plug 'itchyny/landscape.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'preservim/NERDTree'
Plug 'terryma/vim-multiple-cursors' "vim-multiple-cursors
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/vim-plug'
Plug 'zxqfl/tabnine-vim'
call plug#end()

"Save file with admin protection
cmap w!! w !sudo tee > /dev/null %


"auto source vimrc after change.
autocmd! BufWritePost $MYVIMRC source $MYVIMRC | echom "Reloaded $NVIMRC"
