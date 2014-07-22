dotvim
======

This is my personal .vim directory.  It uses pathogen to manage the vim path.

#### Setup

1. cd ~
2. git clone https://github.com/ebattenberg/dotvim .vim
3. rm .vimrc .gvimrc
4. ln -s .vim/vimrc .vimrc
5. ln -s .vim/gvimrc.{your_os_here} .gvimrc
6. cd .vim
7. git submodule init && git submodule update
8. git submodule foreach git submodule init
9. git submodule foreach git submodule update
