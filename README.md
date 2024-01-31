### Installation

```
git clone https://github.com/gontcharovd/vim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule update --init
```

### Add modules

```
git submodule add https://github.com/instant-markdown/vim-instant-markdown.git pack/plugins/start/vim-instant-markdown
```

### Update all plugins

```
git submodule update --remote --merge
```

### Removing a plugin and its git submodule

Delete the relevant section from the .gitmodules file. <br>
Stage the .gitmodules changes git add .gitmodules. <br>
Delete the relevant section from .git/config. <br>
Run git rm --cached path_to_submodule. <br>
Run rm -rf .git/modules/path_to_submodule. <br>
Commit git commit -m "Removed submodule " <br>
Delete the now untracked submodule files rm -rf path_to_submodule
