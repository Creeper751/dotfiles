# Welcome to my dotfiles repo

This is the prime place to use my config files.

### Nvim

My neovim config files are in a folder called "nvim".
In there, there will be two folders, titled "config" and "local".
Inside the config folder, there will be two folders called nvim and coc.
Please place these folders in your `~/.config` folder.
To avoid plugin installation issues, the local folder has it preinstalled for you.
All you have to do is follow the next instructions.

### Other Installation issues

For the installation of coc.nvim, you may have to go to a plugin's
install directory. On a mac that is the `~/.local/share/nvim/lazy` folder. In there, navigate to the plugin folder, and there are its files. It's config however, are in the `~/.config/nvim` folder somewhere. For coc.nvim, please navigate to its install directory and run `yarn install`.
