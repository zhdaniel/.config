export EDITOR=vim
export CLICOLOR=1
export HISTTIMEFORMAT="%m-%d %T "

OS=$(uname -s)

if [ "x$OS" = "xDarwin" ]; then
    [[ -e /usr/local/etc/profile.d/z.sh ]] && source /usr/local/etc/profile.d/z.sh
    [[ -r /usr/local/etc/profile.d/bash_completion.sh ]] && source /usr/local/etc/profile.d/bash_completion.sh

    export PS1='[\u@\h \w$(__git_ps1 "@%s")]\$ '
    export PATH=/usr/local/opt/openssl@1.1/bin:/usr/local/opt/protobuf@3.6/bin:/usr/local/opt/php@7.2/bin:/usr/local/opt/mysql@5.7/bin:$PATH
else
    export PS1='[\u@\h \w$(__git_ps1 "@%s")]\$ '
fi

if [ -e "$HOME"/.bashrc ]; then
    source "$HOME"/.bashrc
fi
