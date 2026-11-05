" ~/.vimrc (from github.com/<you>/dotfiles, linked into place by machine-setup)
" Plugins via vim-plug; run :PlugInstall after adding one.
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
call plug#end()

set termguicolors
set background=dark
silent! colorscheme catppuccin_mocha

set number
set autoindent expandtab softtabstop=2 shiftwidth=2 tabstop=2
set ignorecase smartcase
set hlsearch
set mouse=a

imap jj <Esc>
