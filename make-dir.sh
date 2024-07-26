#!/bin/bash

# check whether the Dev directory exist or not
if [[ -d "$HOME/Dev/" ]]; then
    echo "Dev direcory exist"
else
    echo "Creating Dev directory in $HOME"
    mkdir "$HOME/Dev/"
    echo "Successfully created Dev directory in $HOME"
    echo "Creating personal-projects directory in $HOME/Dev/"
    mkdir "$HOME/Dev/personal-projects/"
    echo "Successfully created personal-projects directory in $HOME/Dev/"
fi

# check whether the pictures directory exist or not and whether the subdirectories exist or not
if [[ -d "$HOME/Pictures/" ]];then 
    echo "Pictures directory exist"

    # check whether backgroud directory exist or not
    if [[ -d "$HOME/Pictures/background/" ]]; then
        echo "background directory exist in Pictures directory"
    else
        echo "Creating background directory in $HOME/Pictures/"
        mkdir "$HOME/Pictures/background/"
    fi

    # check whether the avatars directory exist or not
    if [[ -d "$HOME/Pictures/avatars/" ]]; then
        echo "avatars directory exist in Pictures directory"
    else
        echo "Creating avatars directory in $HOME/Pictures/"
        mkdir "$HOME/Pictures/avatars/"
    fi
else
    echo "Creating Pictures directory in $HOME"
    mkdir "$HOME/Pictures/"
    echo "Successfully created Pictures directory in $HOME"
    echo "Creating background directory in $HOME/Pictures/"
    mkdir "$HOME/Pictures/background/"
    echo "Successfully created background directory in $HOME/Pictures/"
    echo "Creating avatars directory in $HOME/Pictures/"
    mkdir "$HOME/Pictures/avatars/"
    echo "Successfully created avatars directory in $HOME/Pictures/"
fi
