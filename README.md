# .vim

Clone this as your .vim directory.

Need to make a symbolic link to vimrc in .vim:
```
ln -s ~/.vim/vimrc ~/.vimrc
```

Also requires vundle for add-ons:
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

You will need to install YouCompleteMe.
Follow instructions from their github on how to do this.
Note that it requires a vim compiled with Python support.

This also has [vim-devicons](https://github.com/ryanoasis/vim-devicons).
That requires a NERD-compatible font on your local machine (will then work in any SSH session the plugin is installed in).
Run `fc-match Monospace` to find out your font, then install the NERD-compatible version of that from [nerd-fonts](https://github.com/ryanoasis/nerd-fonts),
set that to be your terminal's font (on local machine), then it should work everywhere.

