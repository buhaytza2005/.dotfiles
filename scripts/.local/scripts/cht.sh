#!/usr/bin/env bash


languages=$(echo "golang python rust typescript" | tr " " "\n")
core_utils=$(echo "find tr sed awk" | tr " " "\n")


selected=$(echo -e "$languages\n$core_utils" | fzf)

read -p "What are you looking for: " query

if echo $languages | grep -qs $selected; then
	tmux split-window -h bash -c "curl cht.sh/$selected/$(echo "$query" | tr " " "+")| less"
else
	curl cht.sh/$selected~$query
fi
