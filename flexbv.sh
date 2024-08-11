#!/bin/sh
file=$(realpath "$@") # This is also broken on my system. Why is this needed? It has no arguments passed to it and it prints a error in terminal
mkdir -p $HOME/.config/FlexBV/
cd $HOME/.config/FlexBV/
/opt/flexbv/flexbv $file # "$file" must be related to line 2. Please elaborate on why this is needed. It works fine without it
