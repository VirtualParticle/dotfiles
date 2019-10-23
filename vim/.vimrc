set nocompatible              " be iMproved, required
filetype off
set number
syntax on


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
Plugin 'Shougo/neocomplete.vim'

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

