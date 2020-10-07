# dotfiles
Some poor attempt at making my workstation's config portable using GNU stow

This repository contains a series of applications/categories divided into modules to be "installed" using [GNU stow](https://www.gnu.org/software/stow). Additionally, it contains other components and instructions for configuring other things on my workstations.

### Prerequisites:

1. **Install brew** using instructions at https://brew.sh.  
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

2. **Download this repository** by whatever means possible and update submodules. 
```shell
git clone https://github.com/wendtek/dotfiles.git && cd dotfiles 
git submodule update --init --recursive
```

3. **Install brew bundle** using `brew` to get `stow` installed.  
```shell
brew bundle install
```

4. **Fix default zsh perms** with `chmod` (only needed for macOS)
```shell
chmod -R 755 /usr/local/share/zsh
```



### Installing using `stow`

Each module here can be installed using a 2 step process:
1. `stow -t $HOME -n <module>` to check for conflicts in a dry-run. Rename any files necessary.
2. `stow -t $HOME <module>` to link the module to the repository.

#### Module install order

1. `shell`
2. `git`

More to come later
