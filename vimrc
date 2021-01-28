set tabstop=2
set shiftwidth=2
set expandtab
set bs=2


set number
syntax enable

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'jiangmiao/auto-pairs'

Plugin 'powerline/fonts'

Plugin 'tpope/vim-fugitive'

Plugin 'airblade/vim-gitgutter'

Plugin 'bling/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'Shougo/unite.vim'

Plugin 'matze/vim-move'

Plugin 'klen/python-mode'

Plugin 'lervag/vimtex'

Plugin 'mattn/emmet-vim'

Plugin 'tpope/vim-surround'

Plugin 'ajh17/spacegray.vim'

Plugin 'sbdchd/neoformat'

Plugin 'scrooloose/nerdcommenter'

Plugin 'pangloss/vim-javascript'

Plugin 'mxw/vim-jsx'

Plugin 'jparise/vim-graphql'

Plugin 'prettier/vim-prettier'

Plugin 'yggdroot/indentline'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'morhetz/gruvbox'

Plugin 'davidhalter/jedi-vim'

Plugin 'Shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'carlitux/deoplete-ternjs'
Plugin 'deoplete-plugins/deoplete-jedi'

call vundle#end()
filetype plugin indent on

"prettier
" when running at every change you may want to disable quickfix


"autocomplete

let g:deoplete#enable_at_startup = 1

"NerdTree
map <c-n> :NERDTreeToggle<CR>

"Colorscheme Spacegray

set background=dark
"colorscheme spacegray
"colorscheme one
colorscheme gruvbox


"Airline
let g:airline_extensions = ['tabline']
set laststatus=2
set ttimeoutlen=30
let g:airline_powerline_fonts = 1
let g:airline_theme='angr'
let g:airline#extensions#hunks#enabled=1


"Powerline

" old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.spell = 'Ꞩ'

"vim-gutter

function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}


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
