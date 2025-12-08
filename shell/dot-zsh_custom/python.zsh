export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_PYTHON=$(brew --prefix)/bin/python3
source $(brew --prefix)/bin/virtualenvwrapper.sh

alias jupyter-build='docker build -f ~/misc/jupyter/Dockerfile -t wendtek-jupyter:latest ~/misc/jupyter'
alias jupyter-run='docker run -p 8888:8888 -v ~/:/home/jovyan/work --name jupyter wendtek-jupyter:latest'
alias jupyter-start='docker start jupyter'

# source $(brew --prefix)/bin/uv generate-shell-completion zsh
eval "$($(brew --prefix)/bin/uv --generate-shell-completion zsh)"
eval "$($(brew --prefix)/bin/uvx --generate-shell-completion zsh)"
