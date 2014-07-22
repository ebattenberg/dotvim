dotvim
======

This is my personal .vim directory.  It uses pathogen to manage the vim path.  The plugins are heavily biased toward Python development.

#### Setup

1. Checkout project to .vim
```
cd ~
git clone https://github.com/ebattenberg/dotvim .vim
```
2. Link in vimrc/gvimrc
```
rm .vimrc .gvimrc
ln -s .vim/vimrc .vimrc
ln -s .vim/gvimrc.{your_os_here} .gvimrc
```

3. Load submodules 
```
cd ~/.vim
git submodule init && git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update
```
