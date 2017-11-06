#!/usr/bin/env bash

DETACHED_COUNT_RES=`tmux ls | grep -v "(attached)" | wc -l`
DETACHED_COUNT=$((DETACHED_COUNT_RES + 0))

if [[ $DETACHED_COUNT -gt 0 ]]; then
  tput setaf 0
  tput setab 10
  printf $"\n\uE0B0 There are detached tmux sessions on this machine.\x1B[K";
  tput sgr0;
  printf "\n"
  exit;
fi
