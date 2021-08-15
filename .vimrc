"then :source%
"then :PlugInstall
"vi ~/vim/.vimrc
":source ~/.vim/.vimrc
":so %
nnoremap jk <ESC>
nnoremap jj <ESC>
nnoremap kj <ESC>
nnoremap kk <ESC>

:imap jk <ESC>
:imap jj <ESC>
:imap jk <ESC>
:imap kk <ESC>

syntax on " highlight syntax
set scrolloff=8
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


"VIM PLUG
"VIM PLUG
call plug#begin('~/.vim/plugged')
Plug 'frazrepo/vim-rainbow'
"Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } } "firevim browser (chrome) extension
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'iamcco/markdown-preview.vim'
Plug 'itchyny/landscape.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-lua/completion-nvim'
Plug 'preservim/NERDTree'
Plug 'terryma/vim-multiple-cursors' "vim-multiple-cursors
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/vim-plug'
Plug 'zxqfl/tabnine-vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'morhetz/gruvbox' "Color scheme
call plug#end()

colorscheme gruvbox
highlight Normal guibg=none


"Save file with admin protection
cmap w!! w !sudo tee > /dev/null %


"auto source vimrc after change.
autocmd! BufWritePost $MYVIMRC source $MYVIMRC | echom "Reloaded $NVIMRC"
