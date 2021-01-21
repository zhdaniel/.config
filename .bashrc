if [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi

source $HOME/.git-completion.bash
source $HOME/.git-prompt.sh

export GOROOT=$HOME/local/go
export GOPATH=$HOME/go
export PATH=$HOME/local/bin:$GOPATH/bin:$GOROOT/bin:$HOME/.cargo/bin:$PATH

if [ -e $HOME/.localrc ]; then
    source $HOME/.localrc
fi

man() {
  env \
  LESS_TERMCAP_mb=$(printf "\e[1;31m") \
  LESS_TERMCAP_md=$(printf "\e[1;31m") \
  LESS_TERMCAP_me=$(printf "\e[0m") \
  LESS_TERMCAP_se=$(printf "\e[0m") \
  LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
  LESS_TERMCAP_ue=$(printf "\e[0m") \
  LESS_TERMCAP_us=$(printf "\e[1;32m") \
  man "$@"
}
