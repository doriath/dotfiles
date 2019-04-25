# Dotfiles

## Installation

### Dotfiles

```
$ git clone https://github.com/doriath/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ ./install.sh
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


Note that the install script is idempotent: it can safely be run multiple
times.
