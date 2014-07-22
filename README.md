dotvim
======

This is my personal .vim directory.  It uses pathogen to manage the vim path.  The plugins are heavily biased toward Python development.

#### Setup

Checkout project to .vim
```
cd ~
rm -rf .vim
git clone https://github.com/ebattenberg/dotvim .vim
```
Link in vimrc/gvimrc
```
rm .vimrc .gvimrc
ln -s .vim/vimrc .vimrc
ln -s .vim/gvimrc.{your_os_here} .gvimrc
```

Load submodules 
```
cd ~/.vim
git submodule init && git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update
```
