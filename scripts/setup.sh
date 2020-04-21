#!/bin/bash

DIR=~/.bash
BASHRC=~/testrc # for jetson nano
# Make directory
if [ ! -d $DIR ]; then
    mkdir ~/.bash
    printf "\033[32;1mCreating $DIR\033[0m\n"
fi

function_install () {
# $1 = SRC
# #2 = DESTINATION
    local TARGET=$(basename $2) # gets filename
    local SRC=$2
    local TARGET_DIR=$1
    local DEST=$TARGET_DIR/$TARGET
    local APPEND=https://raw.githubusercontent.com/lackdaz/jetson_nano_setup/master/scripts/$TARGET.sh
    printf "\033[33;1mChecking for $DEST\033[0m\n"
    if [ ! -f $DEST ]; then
        printf "\033[34;1m$DEST not found!\033[0m\n"
        printf "\033[33;1mCreating $DEST\033[0m\n"
        wget -P $TARGET_DIR $SRC
    else
        printf "\033[34;1m$DEST exists. Skipping step...\033[0m\n"
    fi

    if ! grep "$DEST" $BASHRC >/dev/null 2>/dev/null; then
        printf "\033[33;1mUpdating $BASHRC...\033[0m\n"
        echo >> $BASHRC # add newline
        curl $APPEND >> $BASHRC
        printf "\033[32;1mComplete!\033[0m\n"
    else
        printf "\033[34;1mAlready exists in $BASHRC. Skipping step...\033[0m\n"
    fi
    printf "\033[32;1m$TARGET Install Complete!\033[0m\n"
}

function_install ~ https://raw.githubusercontent.com/lackdaz/jetson_nano_setup/master/scripts/.bash_aliases
function_install .bash https://raw.githubusercontent.com/lackdaz/jetson_nano_setup/master/scripts/.bash_prompt.sh
function_install .bash https://raw.githubusercontent.com/lackdaz/jetson_nano_setup/master/scripts/.git-completion.bash

