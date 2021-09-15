# Dotfiles

To use, just clone or download this repo into your home folder then add
symlinks from wherever the included files usually live, e.g. `~/.vimrc` to
their location in the dotfiles repo, e.g `~/dotfiles/.vimrc`.

**Creating a symlink**

``` bash
# ln -s path/to/file path/to/symlink
ln -s ~/dotfiles/.vimrc ~/.vimrc
```

If using the included `.gitconfig`, add a `.gitinfo` file to your home
directory and include your git user info. This is done to avoid committing your
user info. Example:

```
[user]
  email = example@example.com
  name = Code Wizard
```
