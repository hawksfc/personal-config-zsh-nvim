set  number
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
Plug 'sheerun/vimrc'
Plug 'sheerun/vim-polyglot'

"StatusBar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'
Plug 'ffanzhang/vim-airline-stopwatch'

"Theme
Plug 'morhetz/gruvbox'
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
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'Valloric/YouCompleteMe'
Plug 'mattn/emmet-vim'

"IDE
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'turbio/bracey.vim', { 'do': 'npm install --prefix server' }

"Git
Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-repeat'

call plug#end()

"Theme config
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "base16_gruvbox_dark_hard"
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

"IDE config
let mapleader=" "

"Splite resize
nnoremap <Leader>< 10<C-w><
nnoremap <Leader>> 10<C-w>>

"Quick semi
nnoremap <Leader>; $a;<Esc>

"Shorter command
cnoreabbrev tree NERDTreeToggle
cnoreabbrev blame Gblame
cnoreabbrev find NERDTreeFind
cnoreabbrev diff Gdiff

"Plugs
"Emmet
nmap <Leader>, <c-y>,
"Coc
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

"easymotion
map <Leader>s <Plug>(easymotion-s2)

"nerdtree
let NERDTreeQuitOnOpen=1
map <Leader>nt :NERDTreeFind<CR>
let NERDTreeMapOpenInTab = '<Enter>'

"shorcuts
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader><left> :tabn<CR>
nmap <Leader><right> :tabp<CR>

nmap <Leader>[ ysiw[<CR>
nmap <Leader>( ysiw(<CR>
nmap <Leader>{ ysiw{<CR>
nmap <Leader>' ysiw'<CR>
nmap <Leader>" yisw"<CR>

map <Leader>p :Files<CR>
map <Leader>ag :Ag<CR>

"Tmux navigator
map <silent> <Leader><C-h> :TmuxNavigateLeft<CR>
map <silent> <Leader><C-j> :TmuxNavigateDown<CR>
map <silent> <Leader><C-k> :TmuxNavigateUp<CR>
map <silent> <Leader><C-l> :TmuxNavigateRight<CR>

"Tabs navigation
map <Leader>h :bprevious<cr>
map <Leader>l :bnext<cr>

"Buffer
map <Leader>ob :Buffers<cr>

"Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-reference)

"Faster scrolling
nnoremap <C-j> 10 <C-e>
nnoremap <C-k> 10 <C-y>

"Stopwatch
nmap <Leader>r :call airline#extensions#stopwatch#run()<CR> 
nmap <Leader>t :call airline#extensions#stopwatch#stop()<CR> 
nmap <Leader>/ :call airline#extensions#stopwatch#reset()<CR> 

"if &filetype == javascript || &filetype == python
	"inoremap <c-space> <C-x><C-u>
"else
	"inoremap <silent><expr> <c-space> coc#refressh()
"endif
