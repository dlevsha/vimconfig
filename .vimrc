set autochdir
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTree .<CR>
nmap <S-p> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows=0

set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.png,*.gif,*.zip,*.jpg

au BufRead,BufNewFile *.html.twig setfiletype html

map <F5> :!php -l %<CR>

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

set nocompatible
set ruler
set showcmd
set nu
set incsearch
set nohlsearch
set scrolljump=7
set scrolloff=7
set novisualbell
set t_vb=
set hidden
set ch=1
set autoindent
set backspace=indent,eol,start whichwrap+=<,>,[,]
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P
set laststatus=2
set smartindent
set fo+=cr
set sessionoptions=curdir,buffers,tabpages

call pathogen#infect()

filetype plugin indent on

colorscheme solarized
set background=dark
