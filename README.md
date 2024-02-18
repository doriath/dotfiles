# Dotfiles

## Installation

### Dotfiles

```
git clone https://github.com/doriath/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install.sh
```

### Nix

```
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

### ZSH

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


## Install tmux

```
nix profile install tmux
```

To install plugins, press `CTRL+a I`.

## Install vim

```
nix profile install vim
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

## Install zoxide

```
nix profile install zoxide
```
