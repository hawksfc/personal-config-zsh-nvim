set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set list
set listchars=tab:>-

"Plugins
call plug#begin('~/.vim/plugged')

"Theme
Plug 'morhetz/gruvbox'

"IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'valloric/YouCompleteMe'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'

call plug#end()

"Theme config
colorscheme gruvbox
let g:gruvbox_contrast_dark = "medium"
"autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
let g:airline_powerline_fonts = 1
let g:airline#extesions#tabline#enabled = 1
"IDE config
let mapleader=" "
"easymotion
nmap <Leader>s <Plug>(easymotion-s2)
"nerdtree
let NERDTreeQuitOnOpen=1
nmap <Leader>nt :NERDTreeFind<CR>
"shorcuts
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader><left> :tabn<CR>
nmap <Leader><right> :tabp<CR>
