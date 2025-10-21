# dotfiles
Some poor attempt at making my workstation's config portable using GNU stow

This repository contains a series of applications/categories divided into modules to be "installed" using [GNU stow](https://www.gnu.org/software/stow). Additionally, it contains other components and instructions for configuring other things on my workstations.

### Mac Prerequisites:

1. **Install oh-my-zsh** using instructions from https://ohmyz.sh.
```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

2. **Install brew** using instructions at https://brew.sh.  
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

3. **Download this repository** by whatever means possible. 
```shell
git clone https://github.com/wendtek/dotfiles.git && cd dotfiles 
```

4. **Install brew bundle** using `brew` to get `stow` installed.  
```shell
brew bundle install
```

6. **Change shell to homebrew's zsh**
```shell
sudo dscl . -create /Users/$USER UserShell /opt/homebrew/bin/zsh
```

### Installing using `stow`

Each module here can be installed using a 2 step process:
1. `stow -t $HOME --dotfiles -n <module>` to check for conflicts in a dry-run. Rename any files necessary.
2. `stow -t $HOME --dotfiles <module>` to link the module to the repository.

May have to manually remove `~/.zshrc` if it conflicts.

#### Module install order

1. `shell`
2. `git`

More to come later
