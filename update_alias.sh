#!/bin/bash

line_begin=`cat ~/.zshrc | grep -n "ft_transcendence" | awk -F':' '{print $1}' | head -1 | tail -2`
line_end=`cat ~/.zshrc | grep -n "ft_transcendence" | awk -F':' '{print $1}' | head -2 | tail -1`

sed -e "${line_begin},${line_end}d" ~/.zshrc > ~/.zshrc_tmp ; mv ~/.zshrc_tmp ~/.zshrc

cat ./alias.sh >> ~/.zshrc

