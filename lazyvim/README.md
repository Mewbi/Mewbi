# 💤 LazyVim

My LazyVim setup

## Installing Neovim
### Using Bob

This way is using a version manager to NeoVim.

In `debian 10` or lower, this way will not work, so install from source. Because
is required `GLIBC 229>=` and it's available only in `debian 11`.

First of all, install a NeoVim manager

<https://github.com/MordechaiHadad/bob/releases>

Download the zip file, extract and install nightly version

Using a `Debian` or `Ubuntu` download `bob-linux-rustls-x86_64.zip` otherwise `bob-linux-x86_64.zip`

```bash
unzip bob-linux-rustls-x86_64.zip
chmod +x bob
./bob install nightly
```

### Install from source

See detailed guide [here](https://github.com/neovim/neovim/wiki/Building-Neovim)

In Debian, to install newer version

```bash
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```

## Installing LazyVim

Just follow the documentation [here](http://www.lazyvim.org/installation)

## Others Dependencies

To enable clipboard sync with system clipboard and another NeoVim instance:

```sh
sudo apt install xsel xclip
```

## Setting Configurations Files

Download this repository
```bash
git clone https://github.com/Mewbi/Mewbi.git
```

Change to this directory
```bash
cd lazyvim
```

Delete previous configurations lua files
```bash
rm ~/.config/nvim/lua/config/*lua
rm ~/.config/nvim/lua/plugins/*lua
```

Then copy the files
```bash
cp config/*.lua ~/.config/nvim/lua/config/
cp plugins/*.lua ~/.config/nvim/lua/plugins/
```
