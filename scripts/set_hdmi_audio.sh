#!/bin/bash

BASHRC=~/.bashrc # for jetson nano
APPEND='pactl set-default-sink 0'

printf "\033[33;1mChecking for previous entries in $BASHRC...\033[0m\n"

if ! grep -qF "pactl set-default-sink 0" $BASHRC >/dev/null 2>/dev/null; then
    printf "\033[33;1mUpdating $BASHRC...\033[0m\n"
    echo >> $BASHRC # add newline
    echo $APPEND >> $BASHRC
    echo $APPEND
    printf "\033[32;1mAudio output is now set to HDMI.\033[0m\n"
else
    printf "\033[34;1mAlready exists in $BASHRC...\033[0m\n"
fi