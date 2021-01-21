#!/bin/sh

ROOT=$(cd "`dirname $0`"; pwd)

cd ~
for i in .bash_profile .bashrc .tmux.conf .git-completion.bash .git-prompt.sh npm/.npmrc
do
    ln -s $ROOT/$i
done

if [ ! -e ~/.composer ]; then
    mkdir -p ~/.composer
    cd ~/.composer
    ln -s $ROOT/composer/config.json
fi

