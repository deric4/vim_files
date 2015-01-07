set nocompatible								"be iMproved, required
filetype off									"required

"set the runtime path to include the Vudle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"insert other plugins here"

"Gotham color scheme
Plugin 'whatyouhide/vim-gotham'

"NERDTree
Plugin 'scrooloose/nerdtree'


call vundle#end()								"REQUIRED
filetype plugin indent on 					"REQUIRED


syntax enable									 "syntax highlighting
set relativenumber
set ignorecase 								"ignore case when searching
set hlsearch									"highlight searches
set smartindent								"smart indent
set tabstop=3									"number of spaces for tab
set shiftwidth=3								"number of spaces auto indent


au BufNewFile,BufRead *.handlebars set filetype=html

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

function! NumberToggle()
 if(&relativenumber == 1)
      set number
  else
      set relativenumber
  endif
endfunc

 nnoremap <C-n> :call NumberToggle()<cr>
