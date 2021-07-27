# Personal Configuration ZSH & NVIM

In this repository will be my personal configuration on zsh and neovim.

## Set-Up

### ZSH
1. Install zsh:
  ```sh
  sudo apt install zsh
  ```
2. Install oh-my-zsh:
  ```sh
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)
  ```
3. Install Meslo Nerd Font:
      * [Meslo NF Regular](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
      * [Meslo NF Bold](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
      * [Meslo NF Italic](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
      * [Meslo NF BOld Italic](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)
4. Install powerlevel10k theme:
  ```sh
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
  ```
5. Configure powerlevel10k:
  ```sh
  p10k config
  ```

### NVIM
1. Install neovim:
  ```sh
  sudo apt install neovim
  ```
2. Configurate init.vim in the folder (~/.config/nvim/init.vim):
```sh
  set runtimepath^=~/.vim runtimepath+=~/.vim/after
  let &packpath=&runtimepath
  source ~/.vimrc
```
3. Create .vimrc (optional symbolic):
  ```sh
  touch ~/.vimrc`
  ```
4. Install vim-plug:
```sh
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
5. Configure .vimrc:
```sh
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
```
6. Install plugins:
    Into neovim execute the next command `:PlugInstall` and you wait that terminate of installs all package.
