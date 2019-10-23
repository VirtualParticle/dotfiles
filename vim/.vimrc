set nocompatible
filetype off
set number
syntax on

set pyxversion=3
set encoding=utf-8

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" alternatively, pass a path where Vundle should install plugins

"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'joshdick/onedark.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'ap/vim-css-color'
Plugin 'junegunn/goyo.vim'
Plugin 'reedes/vim-colors-pencil'
Plugin 'vim-syntastic/syntastic'
Plugin 'Townk/vim-autoclose'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'lifepillar/vim-mucomplete'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'roxma/nvim-yarp'
Plugin 'ncm2/ncm2'

" ncm completion sources
Plugin 'ncm2/ncm2-bufword'
Plugin 'ncm2/ncm2-path'
Plugin 'ncm2/ncm2-github'

" general syntax? I'm not really sure
"Plugin 'ncm2/ncm2-syntax'
"Plugin 'Shougo/neco-syntax'

" css
Plugin 'ncm2/ncm2-cssomni'

" javascript
Plugin 'ncm2/ncm2-tern',  {'do': 'npm install'}

" python
Plugin 'davidhalter/jedi-vim'
Plugin 'ncm2/ncm2-jedi'

" c/c++ (problems because you have to configure the clang files or something)
"Plugin 'ncm2/ncm2-pyclang'

" vim
Plugin 'ncm2/ncm2-vim'
Plugin 'Shougo/neco-vim'

" php
Plugin 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plugin 'phpactor/ncm2-phpactor'

" java
Plugin 'ObserverOfTime/ncm2-jc2', {'for': ['java', 'jsp']}
Plugin 'artur-shaik/vim-javacomplete2', {'for': ['java', 'jsp']}

autocmd BufEnter * call ncm2#enable_for_buffer()



let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']

"let g:indent_guides_guide_size = 1

let g:indent_guides_color_change_percent = 3

let g:indent_guides_enable_on_vim_startup = 1

function! s:goyo_enter()
	colorscheme pencil
endfunction

function! s:goyo_leave()
	colorscheme onedark
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

call vundle#end()

if (empty($TMUX))

	  if (has("nvim"))

		      let $NVIM_TUI_ENABLE_TRUE_COLOR=1

		        endif

			  if (has("termguicolors"))

				      set termguicolors

				        endif

				endif


filetype plugin indent on

let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

"autocmd vimenter * NERDTree | wincmd p
nmap <F6> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

syntax on
colorscheme onedark
set laststatus=2
set noshowmode
set ttimeout
set ttimeoutlen=10
set timeoutlen=11


" autocomplete stuff
"set completeopt+=menuone
"set shortmess+=c
"set belloff+=ctrlg

" Python autocomplete stuff
"set completeopt-=preview
"set completeopt+=noinsert,menuone
"let g:jedi#popup_on_dot = 1  " It may be 1 as well
"let g:mucomplete#enable_auto_at_startup = 1 "

set shortmess+=c

set completeopt=noinsert,menuone,noselect
" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu and also start a
" new line.
"inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>") 

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


