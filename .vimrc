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
Plugin 'Valloric/YouCompleteMe'
Plugin 'joshdick/onedark.vim'
Plugin 'itchyny/lightline.vim'


let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<Enter>']

"let g:indent_guides_guide_size = 1

let g:indent_guides_color_change_percent = 3

let g:indent_guides_enable_on_vim_startup = 1

function! s:goyo_enter()
	colorscheme pencil
endfunction

function! s:goyo_leave()
	colorscheme dracula
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


syntax on
colorscheme onedark
set laststatus=2
set noshowmode
set timeoutlen=1000
set ttimeoutlen=5


