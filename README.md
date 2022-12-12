# .vim

1. Clone this as your .vim directory.
2. You need to make a symbolic link to vimrc in .vim:
   ```
   ln -s ~/.vim/vimrc ~/.vimrc
   ```
3. Install vundle for add-ons:
   ```
   git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
   ```
   and then within vim run `:PluginInstall`
4. You will need to install YouCompleteMe.
   Follow instructions from their github on how to do this.
   Note that it requires a vim compiled with Python support.
5. For linting you probably also need to install `flake8` with `pip install 
   flake8`
6. This also has [vim-devicons](https://github.com/ryanoasis/vim-devicons).
   That requires a NERD-compatible font on your local machine (will then work in any SSH session the plugin is installed in).
   Run `fc-match Monospace` to find out your font, then install the NERD-compatible version of that from [nerd-fonts](https://github.com/ryanoasis/nerd-fonts),
   set that to be your terminal's font (on local machine), then it should work everywhere.
7. For tags (to track definitions within a package) this uses [gutentags](https://github.com/ludovicchabant/vim-gutentags).
   To make that work you need a ctags tool, the package recommends installing 
   `exuberant-ctags` on your system (i.e. with `apt`).
