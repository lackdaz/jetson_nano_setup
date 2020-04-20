#!/bin/bash

# Make directory
if [! -f ~/.bash ]; then
    mkdir ~/.bash
fi

if [ -f ~/.testrc ]; then
    curl -K https://raw.githubusercontent.com/lackdaz/jetson_nano_setup/master/scripts/bashrc-append.sh >> ~/.testrc
fi