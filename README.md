# Dotfiles

## My dotfiles repo.

To use, just clone or download this repo into your home folder then add symlinks from wherever the included files usually live to their home
in the dotfiles repo. Example:

``` bash
ln -s ~/dotfiles/.vimrc ~/.vimrc
```

If using the included `.gitconfig`, add a `.gitinfo` file to your home directory and include your git user info. Example:

```
[user]
  email = example@example.com
  name = Code Wizard
```
