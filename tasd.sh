#!/usr/bin/env bash

tput setaf 0;
tput setab 10;
printf $"\n\uE0B0 There are detached tmux sessions on this machine.\x1B[K";
tput sgr0;
printf "\n";
tmux ls
