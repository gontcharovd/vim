### Installation

```
git clone https://github.com/gontcharovd/vim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule update --init
```

### Update all plugins

```
git submodule foreach git pull origin master
```
