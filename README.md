# Dotfiles

My dotfiles repo. To use, add a `.gitinfo` file to your home directory and include your git user info. Example:

```
[user]
  email = example@example.com
  name = Code Wizard
```

Then add symlinks from wherever the included files usually live to their home
in the dotfiles repo. Example:

``` bash
ln -s ~/dotfiles/.vimrc ~/.vimrc
```
