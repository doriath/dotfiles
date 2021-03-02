# Dotfiles

## Installation

### Dotfiles

```
git clone https://github.com/doriath/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install.sh
```

### ZSH

#### OS X

Install zsh and zsh completions using homebrew for most up to date zsh.

```
brew install zsh zsh-completions
```

Make zsh your default shell.

```
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh
```

Or just use OS X included zsh.

```
chch -s /bin/zsh
```

#### Linux

Install zsh.

```
sudo apt-get install zsh
```

Make zsh your default shell.

```
chsh -s /bin/zsh
```

(or edit /etc/passwd to change the default shell for given user).


Note that the install script is idempotent: it can safely be run multiple
times.

## Install vim

https://github.com/vim/vim/blob/master/src/INSTALL

```
git clone https://github.com/vim/vim.git
sudo apt-get update
sudo apt-get install make libncurses5-dev lua5.1 liblua5.1-dev python3-dev
./configure --with-features=huge --enable-luainterp=yes --enable-fail-if-missing --enable-python3interp
make
sudo make install
```

## Install node

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
nvm install --lts
```

## Install language servers

```
npm install -g typescript-language-server
```
