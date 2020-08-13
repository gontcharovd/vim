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

### Removing a plugin and its git submodule

Delete the relevant section from the .gitmodules file.
Stage the .gitmodules changes git add .gitmodules
Delete the relevant section from .git/config.
Run git rm --cached path_to_submodule (no trailing slash).
Run rm -rf .git/modules/path_to_submodule (no trailing slash).
Commit git commit -m "Removed submodule "
Delete the now untracked submodule files rm -rf path_to_submodule
