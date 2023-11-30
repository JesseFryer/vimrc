"Don't let defaults do stuff
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

"No vi
set nocompatible

"Enable plugins
filetype plugin on

"Fuzzy finder
set path+=**

"Show available tab completes
set wildmenu

"Indentation and Line
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set relativenumber
set smartindent
set expandtab
set autoindent

"Apprearance
set colorcolumn=80
set termguicolors
set scrolloff=10
set signcolumn=yes

"Behaviour
set encoding=UTF-8
set mouse=r

"Last line
set showmode
set showcmd


"============================================================================="
"//////////////////////////////// Plugins ////////////////////////////////////"
"============================================================================="
call plug#begin()

"Nerd tree
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Colour Schemes
Plug 'junegunn/seoul256.vim'
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
"Autocomplete
Plug 'vim-scripts/AutoComplPop'
"Surrounding
Plug 'tpope/vim-surround'
"LSP
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

call plug#end()


"============================================================================="
"/////////////////////////////// Functions ///////////////////////////////////"
"============================================================================="
"LSP
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
endfunction

augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

"Set colour scheme
let g:dracula_colorterm = 0
:colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE


"============================================================================="
"///////////////////////////////// Remaps ////////////////////////////////////"
"============================================================================="
let mapleader = " "
"Nerd Tree
nnoremap <C-t> :NERDTreeToggle<CR>
"Pane Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"Window Navigation
nnoremap <leader>sv :vsplit<CR>
nnoremap <leader>sh :split<CR>


