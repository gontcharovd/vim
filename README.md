### Installation

```
git clone git://github.com/gontcharovd/dotfiles.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule update --init
```

### Update all plugins

```
git submodule foreach git pull origin master
```
