# NEOVIM DEBIAN EDITION
## install pre-reqs

```bash
apt-get update && sudo apt-get install build-essential
sudo apt-get install ninja-build gettext cmake unzip curl
```

## install neovim nightly version - recommended for telescope plugin

```bash
case "$(uname -m)" in x86_64) NVIM_ARCH=x86_64 ;; aarch64) NVIM_ARCH=arm64 ;; esac
curl -fLo /tmp/nvim.tar.gz "https://github.com/neovim/neovim/releases/latest/download/nvim-linux-${NVIM_ARCH}.tar.gz"

# Install to /opt/nvim and link into PATH
sudo rm -rf /opt/nvim
sudo mkdir -p /opt/nvim
sudo tar -xzf /tmp/nvim.tar.gz -C /opt/nvim --strip-components=1
sudo ln -sf /opt/nvim/bin/nvim /usr/local/bin/nvim
rm /tmp/nvim.tar.gz
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

## how to uninstall neovim if installed via manual build
```
sudo rm /usr/local/bin/nvim
sudo rm -r /usr/local/share/nvim/
```
