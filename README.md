# NEOVIM DEBIAN EDITION
## install pre-reqs

```bash
apt-get update && sudo apt-get install build-essential
sudo apt-get install ninja-build gettext cmake unzip curl
```

## install neovim nightly version - recommended for telescope plugin

```bash
git clone https://github.com/neovim/neovim.git
cd neovim
git checkout nightly
make CMAKE_BUILD_TYPE=Release
sudo make install
```

## clone neovim config files

```bash
git clone https://github.com/techeddie/nvim_debian.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
#wget https://github.com/techeddie/dotfiles_linux/blob/playground/nvim/lua/config/keymaps.lua "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim/lua/config

# run nvim (plugins will be installed automatically)
nvim

#if error, execute
:PackerSync
#DONE
```

---
## how to reinstall neovim plugin mananager

```bash
mv ~/.local/share/nvim/site/ /tmp
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
