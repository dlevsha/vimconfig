if [ ! -d ~/.vim ]; then
    mkdir ~/.vim
fi

if [ ! -d ~/.vim/autoload ]; then
    mkdir ~/.vim/autoload
fi

if [ ! -f ~/.vim/autoload/pathogen.vim ]; then
    cd ~/.vim/autoload
    wget https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
fi

if [ ! -d ~/.vim/bundle ]; then
    mkdir ~/.vim/bundle
fi    
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/kien/ctrlp.vim.git
git clone git://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/kchmck/vim-coffee-script.git
git clone git://github.com/shawncplus/phpcomplete.vim.git
git clone https://github.com/vim-scripts/taglist.vim.git
git clone https://github.com/mattn/emmet-vim.git
git clone https://github.com/Lokaltog/vim-easymotion
git clone https://github.com/scrooloose/syntastic.git
git clone git://github.com/ervandew/supertab.git
git clone git://github.com/tpope/vim-surround.git

if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.backup
fi
cp ~/vimconfig/.vimrc ~/.vimrc