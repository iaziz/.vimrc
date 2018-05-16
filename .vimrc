set number
syntax enable

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'jiangmiao/auto-pairs'

Plugin 'bling/vim-airline'

Plugin 'Shougo/unite.vim'

Plugin 'matze/vim-move'

Plugin 'klen/python-mode'

Plugin 'lervag/vimtex'

Plugin 'mattn/emmet-vim'

Plugin 'tpope/vim-surround'

Plugin 'sbdchd/neoformat'

Plugin 'scrooloose/nerdcommenter'

Plugin 'pangloss/vim-javascript'

Plugin 'jparise/vim-graphql'

Plugin 'yggdroot/indentline'

Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on

"NerdTree
map <c-n> :NERDTreeToggle<CR>

"Colorscheme Spacegray
set t_Co=256
set background=dark
colorscheme spacegray

"Airline
let g:airline_extensions = ['tabline']
set laststatus=2
set ttimeoutlen=30
let g:airline_powerline_fonts = 1

"Vim-Move
let g:move_key_modifier = 'C'

"Vimtex

let g:tex_flavor='latex'

"Unite

nnoremap <leader>f :<C-u>Unite -tab file<CR>

"indentline

let g:indentLine_enabled = 0
let g:indentLine_color_term = 240
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '.'
