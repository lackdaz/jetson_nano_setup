#!/bin/bash

DIR=~/.bash
BASHRC=~/.testrc
# Make directory
if [ ! -f $DIR ]; then
    mkdir ~/.bash
    printf "\033[32;1mCreating $DIR\033[0m\n"
fi

if [ ! -f ~/.bash_aliases ]; then
    printf "\033[33;1mCreating .bash_aliases\033[0m\n"
    wget -P ~ https://raw.githubusercontent.com/lackdaz/jetson_nano_setup/master/scripts/.bash_aliases
    
    if ! grep -Fx ".bash_aliases" $BASHRX >/dev/null 2>/dev/null; then
        printf "\033[33;1mUpdating $BASHRC...\033[0m\n"
        echo >> $BASHRC # add newline
        curl https://raw.githubusercontent.com/lackdaz/jetson_nano_setup/master/scripts/bash_aliases.sh >> $BASHRC
        printf "\033[32;1mComplete!\033[0m\n"
    else
        printf "\033[34;1mAlready exists in $BASHRC. Skipping step...\033[0m\n"
    fi
fi

# if [ ! -f ~/.bash/.bash_prompt.sh ]; then
#     printf "\033[33;1mCreating .bash_prompt\033[0m\n"
#     wget -P .bash https://raw.githubusercontent.com/lackdaz/jetson_nano_setup/master/scripts/.bash_prompt.sh
#     if grep -q ".bash_prompt" $BASHRC; then
#         printf "\033[34;1mAlready exists in $BASHRC. Skipping step...\033[0m\n"
#     else
#         curl https://raw.githubusercontent.com/lackdaz/jetson_nano_setup/master/scripts/bash_prompt.sh >> $BASHRC
#     fi
#     printf "\033[32;1mComplete!\033[0m\n"
# fi

# if [ ! -f ~/.bash/.git-completion.sh ]; then
#     wget -P .bash https://raw.githubusercontent.com/lackdaz/jetson_nano_setup/master/scripts/.git-completion.bash
#     if grep -q ".git-completion" $BASHRC; then
#         printf "\033[34;1mAlready exists in $BASHRC. Skipping step...\033[0m\n"
#     else
#         curl https://raw.githubusercontent.com/lackdaz/jetson_nano_setup/master/scripts/git-completion.sh >> $BASHRC
#     fi
#     printf "\033[32;1mComplete!\033[0m\n"
# fi

if [ -f ~/.testrc ]; then
    curl https://raw.githubusercontent.com/lackdaz/jetson_nano_setup/master/scripts/bashrc-append.sh >> ~/.testrc
fi

printf "\033[32;1mAppend Complete!\033[0m\n"
