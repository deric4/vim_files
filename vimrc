set nocompatible								"be iMproved, required
filetype off									"required

"set the runtime path to include the Vudle and initialize

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"Self Management
Bundle 'gmarik/vundle'


""""""""""""""""""""""""""""""""""
		"BUNDLES"
""""""""""""""""""""""""""""""""""

"	ColorScheme (problems on OS X)
"Bundle 	'altercation/vim-colors-solarized'

"	General Bundles
Bundle	'scrooloose/nerdtree'

"	Programming Bundles
Bundle	'scrooloose/syntastic'

"	AutoComplete + Snippets
Bundle 	'scrooloose/snipmate-snippets'
"Bundle 	'Valloric/YouCompleteMe'  

"	Python Plugins
Bundle	'klen/python-mode'

call vundle#end()								"REQUIRED
filetype plugin indent on 					"REQUIRED



"set background=dark
"don't use on mac"
"colorscheme solarized



syntax enable									"syntax highlighting
set relativenumber
set ignorecase 								"ignore case when searching
set incsearch									"seacrch while you type
set hlsearch									"highlight searches
set smartindent								"smart indent
set tabstop=3									"number of spaces for tab
set shiftwidth=3								"number of spaces auto indent
set ignorecase									"Case insensitive search
set wildmenu 		   	               "Show list instead of just completing
set wildmode=list:longest,full			"Command <Tab> completion
set cursorline 								"show cursor line
hi CursorLine term=bold cterm=bold guibg=Grey40


""""""""""""""""""""""""""""""""""""""""
		"Cursor Movement"
""""""""""""""""""""""""""""""""""""""""

" Mappings between splits.
map <C-J> <C-W>j<C-W>
map <C-K> <C-W>k<C-W>
map <C-L> <C-W>l<C-W>
map <C-H> <C-W>h<C-W>

" Don't skip wrapped lines when moving
nnoremap j gj
nnoremap k gk


""""""""""""""""""""""""""""""""""""""""
			"Miscelanious"
""""""""""""""""""""""""""""""""""""""""

"set html syntax for handlebars files
au BufNewFile,BufRead *.handlebars set filetype=html

"Auto close opening braces and parenthesis 
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

"Toggle between Fixed and Relative line numbers Ctrl-n"
function! NumberToggle()
 if(&relativenumber == 1)
      set number
  else
      set relativenumber
  endif
endfunc

 nnoremap <C-n> :call NumberToggle()<cr>
