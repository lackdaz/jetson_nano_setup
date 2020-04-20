#!/bin/bash

$DIR = ~/.bash
# Make directory
if [ ! -f $DIR ]; then
    mkdir ~/.bash
    printf "\033[32;1mCreating $DIR\033[0m\n"
fi

if [ ! -f ~/.bash_aliases ]; then
    wget -P ~ https://raw.githubusercontent.com/lackdaz/jetson_nano_setup/master/scripts/.bash_aliases
    printf "\033[32;1mCreated .bash_aliases\033[0m\n"
fi

if [ ! -f ~/.bash/.bash_prompt.sh ]; then
    wget -P .bash https://raw.githubusercontent.com/lackdaz/jetson_nano_setup/master/scripts/.bash_prompt.sh
    printf "\033[32;1mCreated .bash_prompt\033[0m\n"
fi

if [ ! -f ~/.bash/.git-completion.sh ]; then
    wget -P .bash https://raw.githubusercontent.com/lackdaz/jetson_nano_setup/master/scripts/.git-completion.bash
    printf "\033[32;1mCreated .git-completion\033[0m\n"
fi

if [ -f ~/.testrc ]; then
    curl https://raw.githubusercontent.com/lackdaz/jetson_nano_setup/master/scripts/bashrc-append.sh >> ~/.testrc
fi

printf "\033[32;1mAppend Complete!\033[0m\n"
