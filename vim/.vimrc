
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Required vundle
Plugin 'VundleVim/Vundle.vim'

" Bundles here
Plugin 'tpope/vim-surround.git'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline.git'
Plugin 'honza/vim-snippets.git'
Plugin 'altercation/vim-colors-solarized.git'
" Bundle 'majutsushi/tagbar.git'
" Bundle 'ramitos/jsctags.git'
" Bundle 'Valloric/YouCompleteMe.git'
" Bundle 'marijnh/tern_for_vim.git'
" End bundles

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set background=dark
colorscheme solarized

" Syntastic setup
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open=1
let g:syntastic_auto_jump=1
let g:syntastic_javascript_syntax_checker="jshint"
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5

let g:syntastic_mode_map = { "mode": "active",
         \ "active_filetypes": [],
         \ "passive_filetypes": ['html'] }
" End syntastic

" Toggle paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
"

" Hotkeys
imap jj <Esc>
nnoremap <silent> <leader>f :NERDTreeToggle<CR>
" nnoremap <silent> <leader>d :TagbarToggle<CR>
let g:UltiSnipsExpandTrigger="<c-a>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-r>"
"

" Color scheme stuff
set term=xterm-256color
set t_Co=256
" colorscheme wombat256
"
          
set autoindent
set softtabstop=2 shiftwidth=2 tabstop=2
set expandtab
set mouse=a
set number
