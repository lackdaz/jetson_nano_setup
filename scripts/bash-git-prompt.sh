#!/bin/bash

# Make directory
if [! -f ~/.bash ]; then
    mkdir ~/.bash
fi

if [ -f ~/.testrc ]; then
    curl -K https://raw.githubusercontent.com/lackdaz/jetson_nano_setup/master/scripts/bashrc-append.sh >> ~/.testrc
fi

printf "\033[32;1mAppend Complete!\033[0m\n"
