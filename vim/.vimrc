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
set laststatus=2
set noshowmode

"Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"Plugins
call plug#begin('~/.vim/plugged')

"Sintax
Plug 'sheerum/vim-polyglot'

"StatusBar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
"Plug 'vim-airline/vim-airline'

"Theme
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'ryanoasis/vim-devicons'

"Tree
Plug 'scrooloose/nerdtree'

"Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

"Tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

"Autocomple
Plug 'sierver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"IDE
Plug 'easymotion/vim-easymotion'
Plug 'editor-config/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/identline'
Plug 'scrooloose/nerdcommenter'

"Git
Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-repeat'

call plug#end()

"Theme config
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
"autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
let g:airline_powerline_fonts = 1
let g:airline#extesions#tabline#enabled = 1
"IDE config
let mapleader=" "
"Splite resize
nnoremap <Leader>< 10<C-w><
nnoremap <Leader>> 10<C-w>>

"Quick semi
nnoremap <Leader>; $a;<Esc

"easymotion
map <Leader>s <Plug>(easymotion-s2)
"nerdtree
let NERDTreeQuitOnOpen=1
map <Leader>nt :NERDTreeFind<CR>
"shorcuts
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader><left> :tabn<CR>
nmap <Leader><right> :tabp<CR>

map <Leader>p :Files<CR>
map <Leader>ag :Ag<CR>

"Tmux navigator
map <silent> <Leader><C-h> :TmuxNavigateLeft<CR>
map <silent> <Leader><C-j> :TmuxNavigateDown<CR>
map <silent> <Leader><C-k> :TmuxNavigateUp<CR>
map <silent> <Leader><C-l> :TmuxNavigateRight<CR>

"Tabs navigation
map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>

"Buffer
map <Leader>ob :Buffers<cr>

