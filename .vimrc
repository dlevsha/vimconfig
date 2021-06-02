set number
set fileencodings=utf-8,cp1251

set nocompatible

filetype indent on
set smartindent

let g:airline#extensions#tabline#enabled = 1

set hlsearch

set clipboard=unnamed
set clipboard=unnamedplus

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/public/shopcatalog,*/public/shopcatalog-resize,*/public/images,*/tmp,*/bower_components,*/node_modules

let g:ctrlp_custom_ignore = {
	\ 	'file' : '\v\.(jpg|gif|png|woff2)$'
	\ }

nmap <C-O> :NERDTreeToggle<CR>
nmap <C-T><Right> :bn<CR>
nmap <C-T><Left> :bp<CR>
nmap <C-T><Up> :bf<CR>
nmap <C-T><Down> :bl<CR>

filetype plugin on
au FileType php setl ofu=phpcomplete#CompletePHP
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType javascript setl ofu=javascriptcomplete#CompleteJavascript
au FileType css setl ofu=csscomplete#CompleteCSS

call plug#begin('~/nvim/plugged')

Plug 'preservim/nerdtree'

Plug 'vim-airline/vim-airline'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-fugitive'

call plug#end()
