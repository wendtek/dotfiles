export PATH=~/bin:~/go/bin:$PATH
export VISUAL=vim
export EDITOR="$VISUAL"
export XDG_CONFIG_HOME=$HOME/.config

# Various Aliases
alias reload='source ~/.zshrc'


# Export OS and Architecture flags
IS_ARM=false
IS_X86=false
IS_LINUX=false
IS_MAC=false
case $(uname -m) in
    x86*)    IS_X86=true ;;
    aarch*)  IS_ARM=true ;;
    arm*)    IS_ARM=true ;;
    *)       echo "unknown architecture in $ZSH_CUSTOM load"
esac

case ${OS_TYPE:-$(uname)} in
    linux*)  export IS_LINUX=true ;;
    Linux*)  export IS_LINUX=true ;;
    darwin*) export IS_MAC=true ;;
    Darwin*) export IS_MAC=true ;;
    *)       echo "unknown OS in $ZSH_CUSTOM load"
esac

export IS_ARM IS_X86 IS_LINUX IS_MAC
