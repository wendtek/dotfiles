# dotfiles
Some poor attempt at making my workstation's config portable using GNU stow

This repository contains a series of applications/categories divided into modules to be "installed" using [GNU stow](https://www.gnu.org/software/stow). Additionally, it contains other components and instructions for configuring other things on my workstations.

### Prerequisites:

1. **Install brew** using instructions at https://brew.sh.  
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`

2. **Download this repository** by whatever means possible.  
`git clone git@github.com:wendtek/dotfiles.git`

3. **Install brew bundle** using `brew` to get `stow` installed.  
`brew bundle install`



### Installing using `stow`

Each module here can be installed using a 2 step process:
1. `stow -n <module>` to check for conflicts in a dry-run.
2. `stow <module>` to link the module to the repository.

#### Module install order

1. `shell`
2. `git`

More to come later
